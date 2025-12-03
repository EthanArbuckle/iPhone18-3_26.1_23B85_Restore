@interface MFMailMimePart
+ (BOOL)isRecognizedClassForContent:(id)content;
- (id)decodeMessageRfc822;
- (id)decodeMultipartAppledouble;
- (id)decodeTextEnriched;
- (id)decodeTextHtml;
- (id)decodeTextPlain;
- (id)decodeTextRichtext;
- (id)fileWrapperForDecodedObject:(id)object withFileData:(id *)data;
- (void)configureFileWrapper:(id)wrapper;
@end

@implementation MFMailMimePart

- (id)decodeTextRichtext
{
  v3 = _MFDecodeText();
  v4 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v5 = [objc_msgSend(v4 objectForKey:{*MEMORY[0x277D24E88]), "BOOLValue"}];
  return -[MFWebMessageDocument initWithMimePart:htmlData:encoding:]([MFWebMessageDocument alloc], "initWithMimePart:htmlData:encoding:", self, [objc_msgSend(MEMORY[0x277CCACA8] mf_stringFromMimeRichTextString:v3 asHTML:{v5), "dataUsingEncoding:", 4}], 134217984);
}

- (id)decodeTextEnriched
{
  v3 = _MFDecodeText();
  v4 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v5 = [objc_msgSend(v4 objectForKey:{*MEMORY[0x277D24E88]), "BOOLValue"}];
  return -[MFWebMessageDocument initWithMimePart:htmlData:encoding:]([MFWebMessageDocument alloc], "initWithMimePart:htmlData:encoding:", self, [objc_msgSend(MEMORY[0x277CCACA8] mf_stringFromMimeEnrichedString:v3 asHTML:{v5), "dataUsingEncoding:", 4}], 134217984);
}

- (id)decodeTextHtml
{
  v3 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v4 = _MFOffsetFromThreadDictionary();
  v5 = [objc_msgSend(v3 objectForKey:{*MEMORY[0x277D24E98]), "BOOLValue"}];
  v12 = 0;
  v11 = 0;
  v6 = [(MFMailMimePart *)self copyBodyDataToOffset:v4 resultOffset:&v12 downloadIfNecessary:v5 isComplete:&v11];
  v7 = [objc_allocWithZone(MFWebMessageDocument) initWithMimePart:self htmlData:v6 encoding:{-[MFMailMimePart textEncoding](self, "textEncoding")}];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  [v3 setObject:v8 forKey:*MEMORY[0x277D24EB0]];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  [v3 setObject:v9 forKey:*MEMORY[0x277D24EA0]];
  return v7;
}

- (id)decodeTextPlain
{
  v12 = 0;
  v3 = _MFCopyDecodeText();
  v4 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v5 = [objc_msgSend(v4 objectForKeyedSubscript:{*MEMORY[0x277D24E88]), "BOOLValue"}];
  v11 = 0;
  v6 = _formatFlowedOptions(self);
  if (v5)
  {
    v7 = 12;
  }

  else
  {
    v7 = 4;
  }

  v8 = [v3 mf_convertFromFlowedText:v6 | v7 visuallyEmpty:&v11];

  v9 = [objc_allocWithZone(MFWebMessageDocument) initWithMimePart:self htmlData:objc_msgSend(v8 encoding:{"mf_dataUsingEncoding:", 4), 134217984}];
  [v9 setVisuallyEmpty:v11];
  return v9;
}

- (id)decodeMultipartAppledouble
{
  v2 = [-[MFMailMimePart firstChildPart](self "firstChildPart")];

  return [v2 fileWrapperForcingDownload:0];
}

- (id)fileWrapperForDecodedObject:(id)object withFileData:(id *)data
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [object fileWrapper];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFMailMimePart;
    return [(MFMailMimePart *)&v8 fileWrapperForDecodedObject:object withFileData:data];
  }
}

- (void)configureFileWrapper:(id)wrapper
{
  v13.receiver = self;
  v13.super_class = MFMailMimePart;
  [(MFMailMimePart *)&v13 configureFileWrapper:?];
  if (wrapper)
  {
    v5 = [(MFMailMimePart *)self bodyParameterForKey:*MEMORY[0x277D24E78]];
    if (v5 || (v12 = [objc_msgSend(-[MFMailMimePart mimeBody](self "mimeBody")]) != 0 && (v5 = objc_msgSend(v12, "stringByAppendingFormat:", @"&aid=%@", -[MFMailMimePart partNumber](self, "partNumber"))) != 0)
    {
      [wrapper setURL:v5];
    }
  }

  if (([wrapper isPlaceholder] & 1) == 0)
  {
    v6 = [-[MFMailMimePart mimeBody](self "mimeBody")];
    if (objc_opt_respondsToSelector())
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [v6 performSelector:sel__attachmentStorageLocation];
      if (v8)
      {
        v9 = [v8 stringByAppendingPathComponent:{-[MFMailMimePart partNumber](self, "partNumber")}];
        if (([defaultManager fileExistsAtPath:v9] & 1) == 0)
        {
          [defaultManager createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];
        }

        preferredFilename = [wrapper preferredFilename];
        if (preferredFilename)
        {
          v11 = [v9 stringByAppendingPathComponent:preferredFilename];
          if (([defaultManager fileExistsAtPath:v11] & 1) == 0)
          {
            [defaultManager createFileAtPath:v11 contents:objc_msgSend(wrapper attributes:{"regularFileContents"), objc_msgSend(wrapper, "fileAttributes")}];
            [wrapper setPath:v11];
          }
        }
      }
    }
  }
}

+ (BOOL)isRecognizedClassForContent:(id)content
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MFMailMimePart;
  return objc_msgSendSuper2(&v6, sel_isRecognizedClassForContent_, content);
}

- (id)decodeMessageRfc822
{
  bodyData = [(MFMailMimePart *)self bodyData];
  if (bodyData)
  {
    v4 = [(MFMessage *)MFMailMessage messageWithRFC822Data:bodyData withParentPart:self];
    mimeBody = [(MFMailMimePart *)self mimeBody];
    if (mimeBody)
    {
      v6 = mimeBody;
      v7 = [objc_msgSend(mimeBody "message")];
      [(MFMailMessage *)v4 setMessageURL:v7];
      v8 = -[MFRFC822AttachmentDataProvider initWithMessageData:parentPart:]([MFRFC822AttachmentDataProvider alloc], "initWithMessageData:parentPart:", bodyData, [v6 topLevelPart]);
      [objc_msgSend(+[MFAttachmentManager allManagers](MFAttachmentManager "allManagers")];
    }

    v13 = 0;
    messageBody = [(MFMailMessage *)v4 messageBody];
    if ([(MFMailMimePart *)self isGenerated])
    {
      bodyData = [messageBody contentToOffset:0x7FFFFFFFFFFFFFFFLL resultOffset:0 asHTML:1 isComplete:&v13];
    }

    else
    {
      v13 = 1;
    }

    v10 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    [v10 setObject:v11 forKey:*MEMORY[0x277D24EA0]];
    if (messageBody && [objc_msgSend(v10 objectForKey:{*MEMORY[0x277D24E90]), "BOOLValue"}])
    {
      [v10 setObject:messageBody forKey:*MEMORY[0x277D24EA8]];
    }
  }

  return bodyData;
}

@end