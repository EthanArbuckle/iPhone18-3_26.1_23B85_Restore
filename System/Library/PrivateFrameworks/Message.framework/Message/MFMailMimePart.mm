@interface MFMailMimePart
+ (BOOL)isRecognizedClassForContent:(id)content;
+ (id)log;
- (BOOL)_shouldContinueDecodingProcess;
- (id)decodeMessagePartial;
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

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MFMailMimePart_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKey:*MEMORY[0x1E69AD640]];
  bOOLValue = [v6 BOOLValue];

  v8 = [MEMORY[0x1E696AEC0] mf_stringFromMimeRichTextString:v3 asHTML:bOOLValue];
  v9 = [MFWebMessageDocument alloc];
  v10 = [v8 dataUsingEncoding:4];
  v11 = [(MFWebMessageDocument *)v9 initWithMimePart:self htmlData:v10 encoding:134217984];

  return v11;
}

- (id)decodeTextEnriched
{
  v3 = _MFDecodeText();
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKey:*MEMORY[0x1E69AD640]];
  bOOLValue = [v6 BOOLValue];

  v8 = [MEMORY[0x1E696AEC0] mf_stringFromMimeEnrichedString:v3 asHTML:bOOLValue];
  v9 = [MFWebMessageDocument alloc];
  v10 = [v8 dataUsingEncoding:4];
  v11 = [(MFWebMessageDocument *)v9 initWithMimePart:self htmlData:v10 encoding:134217984];

  return v11;
}

- (id)decodeTextHtml
{
  v3 = +[MFActivityMonitor currentMonitor];
  [v3 recordTransportType:1];

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = _MFOffsetFromThreadDictionary();
  v7 = [threadDictionary objectForKey:*MEMORY[0x1E69AD650]];
  bOOLValue = [v7 BOOLValue];

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0;
  v9 = [(MFMailMimePart *)self copyBodyDataToOffset:v6 resultOffset:&v17 downloadIfNecessary:bOOLValue isComplete:&v16];
  if (v9)
  {
    v10 = [[MFWebMessageDocument alloc] initWithMimePart:self htmlData:v9 encoding:[(MFMailMimePart *)self textEncoding]];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
    [threadDictionary setObject:v11 forKey:*MEMORY[0x1E69AD668]];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:v16];
    [threadDictionary setObject:v12 forKey:*MEMORY[0x1E69AD658]];
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
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKeyedSubscript:*MEMORY[0x1E69AD640]];
  bOOLValue = [v6 BOOLValue];

  v13 = 0;
  if (bOOLValue)
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
  firstChildPart = [(MFMailMimePart *)self firstChildPart];
  nextSiblingPart = [firstChildPart nextSiblingPart];
  v4 = [nextSiblingPart fileWrapperForcingDownload:0];

  return v4;
}

- (id)fileWrapperForDecodedObject:(id)object withFileData:(id *)data
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fileWrapper = [objectCopy fileWrapper];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MFMailMimePart;
    fileWrapper = [(MFMailMimePart *)&v10 fileWrapperForDecodedObject:objectCopy withFileData:data];
  }

  v8 = fileWrapper;

  return v8;
}

- (void)configureFileWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v10.receiver = self;
  v10.super_class = MFMailMimePart;
  [(MFMailMimePart *)&v10 configureFileWrapper:wrapperCopy];
  if (wrapperCopy)
  {
    v5 = [(MFMailMimePart *)self bodyParameterForKey:*MEMORY[0x1E69AD630]];
    if (v5)
    {
      goto LABEL_3;
    }

    mimeBody = [(MFMailMimePart *)self mimeBody];
    message = [mimeBody message];
    v5 = [message URL];

    if (v5)
    {
      partNumber = [(MFMailMimePart *)self partNumber];
      v9 = [v5 stringByAppendingFormat:@"&aid=%@", partNumber];

      v5 = v9;
      if (v9)
      {
LABEL_3:
        [wrapperCopy setURL:v5];
      }
    }
  }
}

- (BOOL)_shouldContinueDecodingProcess
{
  v2 = +[MFActivityMonitor currentMonitor];
  error = [v2 error];
  v4 = error == 0;

  return v4;
}

+ (BOOL)isRecognizedClassForContent:(id)content
{
  contentCopy = content;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___MFMailMimePart;
    v5 = objc_msgSendSuper2(&v7, sel_isRecognizedClassForContent_, contentCopy);
  }

  return v5;
}

- (id)decodeMessageRfc822
{
  bodyData = [(MFMailMimePart *)self bodyData];
  if (bodyData)
  {
    v4 = [(MFMessage *)MFMailMessage messageWithRFC822Data:bodyData withParentPart:self];
    mimeBody = [(MFMailMimePart *)self mimeBody];
    v6 = mimeBody;
    if (mimeBody)
    {
      message = [mimeBody message];
      messageURL = [message messageURL];

      [v4 setMessageURL:messageURL];
      v9 = [MFRFC822AttachmentDataProvider alloc];
      topLevelPart = [v6 topLevelPart];
      v11 = [(MFRFC822AttachmentDataProvider *)v9 initWithMessageData:bodyData parentPart:topLevelPart];

      v12 = +[MFAttachmentManager allManagers];
      anyObject = [v12 anyObject];
      [anyObject addProvider:v11 forBaseURL:messageURL];
    }

    v22 = 0;
    messageBody = [v4 messageBody];
    if ([(MFMailMimePart *)self isGenerated])
    {
      v15 = [messageBody contentToOffset:0x7FFFFFFFFFFFFFFFLL resultOffset:0 asHTML:1 isComplete:&v22];
    }

    else
    {
      v15 = bodyData;
      v22 = 1;
    }

    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v18 = [MEMORY[0x1E696AD98] numberWithBool:v22];
    [threadDictionary setObject:v18 forKey:*MEMORY[0x1E69AD658]];

    if (messageBody)
    {
      v19 = [threadDictionary objectForKey:*MEMORY[0x1E69AD648]];
      bOOLValue = [v19 BOOLValue];

      if (bOOLValue)
      {
        [threadDictionary setObject:messageBody forKey:*MEMORY[0x1E69AD660]];
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