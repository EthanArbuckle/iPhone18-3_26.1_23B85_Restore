@interface MFMailMimePart
+ (BOOL)isRecognizedClassForContent:(id)a3;
+ (id)log;
- (BOOL)_shouldContinueDecodingProcess;
- (id)decodeMessagePartial;
- (id)decodeMessageRfc822;
- (id)decodeMultipartAppledouble;
- (id)decodeTextEnriched;
- (id)decodeTextHtml;
- (id)decodeTextPlain;
- (id)decodeTextRichtext;
- (id)fileWrapperForDecodedObject:(id)a3 withFileData:(id *)a4;
- (void)configureFileWrapper:(id)a3;
@end

@implementation MFMailMimePart

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MFMailMimePart_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_8 != -1)
  {
    dispatch_once(&log_onceToken_8, block);
  }

  v2 = log_log_8;

  return v2;
}

void __21__MFMailMimePart_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_8;
  log_log_8 = v1;
}

- (id)decodeTextRichtext
{
  v3 = _MFDecodeText();
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 threadDictionary];

  v6 = [v5 objectForKey:*MEMORY[0x1E69AD640]];
  v7 = [v6 BOOLValue];

  v8 = [MEMORY[0x1E696AEC0] mf_stringFromMimeRichTextString:v3 asHTML:v7];
  v9 = [MFWebMessageDocument alloc];
  v10 = [v8 dataUsingEncoding:4];
  v11 = [(MFWebMessageDocument *)v9 initWithMimePart:self htmlData:v10 encoding:134217984];

  return v11;
}

- (id)decodeTextEnriched
{
  v3 = _MFDecodeText();
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 threadDictionary];

  v6 = [v5 objectForKey:*MEMORY[0x1E69AD640]];
  v7 = [v6 BOOLValue];

  v8 = [MEMORY[0x1E696AEC0] mf_stringFromMimeEnrichedString:v3 asHTML:v7];
  v9 = [MFWebMessageDocument alloc];
  v10 = [v8 dataUsingEncoding:4];
  v11 = [(MFWebMessageDocument *)v9 initWithMimePart:self htmlData:v10 encoding:134217984];

  return v11;
}

- (id)decodeTextHtml
{
  v3 = +[MFActivityMonitor currentMonitor];
  [v3 recordTransportType:1];

  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 threadDictionary];

  v6 = _MFOffsetFromThreadDictionary();
  v7 = [v5 objectForKey:*MEMORY[0x1E69AD650]];
  v8 = [v7 BOOLValue];

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0;
  v9 = [(MFMailMimePart *)self copyBodyDataToOffset:v6 resultOffset:&v17 downloadIfNecessary:v8 isComplete:&v16];
  if (v9)
  {
    v10 = [[MFWebMessageDocument alloc] initWithMimePart:self htmlData:v9 encoding:[(MFMailMimePart *)self textEncoding]];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
    [v5 setObject:v11 forKey:*MEMORY[0x1E69AD668]];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:v16];
    [v5 setObject:v12 forKey:*MEMORY[0x1E69AD658]];
  }

  else
  {
    v13 = +[MFMailMimePart log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MFMailMimePart *)v13 decodeTextHtml];
    }

    v12 = +[MFActivityMonitor currentMonitor];
    v14 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1039 localizedDescription:0];
    [v12 setError:v14];

    v10 = 0;
  }

  return v10;
}

- (id)decodeTextPlain
{
  v14 = -1431655766;
  v3 = _MFCopyDecodeText();
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 threadDictionary];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AD640]];
  v7 = [v6 BOOLValue];

  v13 = 0;
  if (v7)
  {
    v8 = [(MFMimePart *)self formatFlowedOptions]| 0xC;
  }

  else
  {
    v8 = [(MFMimePart *)self formatFlowedOptions]| 4;
  }

  v9 = [v3 mf_convertFromFlowedText:v8 visuallyEmpty:&v13];
  v10 = [v9 mf_dataUsingEncoding:4];
  v11 = [objc_allocWithZone(MFWebMessageDocument) initWithMimePart:self htmlData:v10 encoding:134217984];
  [v11 setVisuallyEmpty:v13];

  return v11;
}

- (id)decodeMultipartAppledouble
{
  v2 = [(MFMailMimePart *)self firstChildPart];
  v3 = [v2 nextSiblingPart];
  v4 = [v3 fileWrapperForcingDownload:0];

  return v4;
}

- (id)fileWrapperForDecodedObject:(id)a3 withFileData:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 fileWrapper];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MFMailMimePart;
    v7 = [(MFMailMimePart *)&v10 fileWrapperForDecodedObject:v6 withFileData:a4];
  }

  v8 = v7;

  return v8;
}

- (void)configureFileWrapper:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFMailMimePart;
  [(MFMailMimePart *)&v10 configureFileWrapper:v4];
  if (v4)
  {
    v5 = [(MFMailMimePart *)self bodyParameterForKey:*MEMORY[0x1E69AD630]];
    if (v5)
    {
      goto LABEL_3;
    }

    v6 = [(MFMailMimePart *)self mimeBody];
    v7 = [v6 message];
    v5 = [v7 URL];

    if (v5)
    {
      v8 = [(MFMailMimePart *)self partNumber];
      v9 = [v5 stringByAppendingFormat:@"&aid=%@", v8];

      v5 = v9;
      if (v9)
      {
LABEL_3:
        [v4 setURL:v5];
      }
    }
  }
}

- (BOOL)_shouldContinueDecodingProcess
{
  v2 = +[MFActivityMonitor currentMonitor];
  v3 = [v2 error];
  v4 = v3 == 0;

  return v4;
}

+ (BOOL)isRecognizedClassForContent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___MFMailMimePart;
    v5 = objc_msgSendSuper2(&v7, sel_isRecognizedClassForContent_, v4);
  }

  return v5;
}

- (id)decodeMessageRfc822
{
  v3 = [(MFMailMimePart *)self bodyData];
  if (v3)
  {
    v4 = [(MFMessage *)MFMailMessage messageWithRFC822Data:v3 withParentPart:self];
    v5 = [(MFMailMimePart *)self mimeBody];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 message];
      v8 = [v7 messageURL];

      [v4 setMessageURL:v8];
      v9 = [MFRFC822AttachmentDataProvider alloc];
      v10 = [v6 topLevelPart];
      v11 = [(MFRFC822AttachmentDataProvider *)v9 initWithMessageData:v3 parentPart:v10];

      v12 = +[MFAttachmentManager allManagers];
      v13 = [v12 anyObject];
      [v13 addProvider:v11 forBaseURL:v8];
    }

    v22 = 0;
    v14 = [v4 messageBody];
    if ([(MFMailMimePart *)self isGenerated])
    {
      v15 = [v14 contentToOffset:0x7FFFFFFFFFFFFFFFLL resultOffset:0 asHTML:1 isComplete:&v22];
    }

    else
    {
      v15 = v3;
      v22 = 1;
    }

    v16 = [MEMORY[0x1E696AF00] currentThread];
    v17 = [v16 threadDictionary];

    v18 = [MEMORY[0x1E696AD98] numberWithBool:v22];
    [v17 setObject:v18 forKey:*MEMORY[0x1E69AD658]];

    if (v14)
    {
      v19 = [v17 objectForKey:*MEMORY[0x1E69AD648]];
      v20 = [v19 BOOLValue];

      if (v20)
      {
        [v17 setObject:v14 forKey:*MEMORY[0x1E69AD660]];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)decodeMessagePartial
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MFMailMimePart *)self bodyParameterForKey:@"number"];
  v5 = [(MFMailMimePart *)self bodyParameterForKey:@"total"];
  v6 = [v3 stringWithFormat:@"Partial message, part %@ of %@\nTo read this message, select all of the parts of the message and select the Message --> MIME --> Combine Messages menu item.\n", v4, v5];

  return v6;
}

@end