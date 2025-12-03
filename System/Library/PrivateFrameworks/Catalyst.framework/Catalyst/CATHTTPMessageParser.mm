@interface CATHTTPMessageParser
+ (id)encodeRequestData:(id)data;
+ (id)responseHeaderForContentWithLength:(unint64_t)length;
- (BOOL)appendBytes:(const char *)bytes length:(unint64_t)length;
- (CATHTTPMessageParserDelegate)delegate;
- (void)dealloc;
- (void)delegateDidReceiveRequestData:(id)data;
- (void)delegateDidReceiveRequestWithURL:(id)l;
@end

@implementation CATHTTPMessageParser

- (void)dealloc
{
  mCurrentMessage = self->mCurrentMessage;
  if (mCurrentMessage)
  {
    CFRelease(mCurrentMessage);
    self->mCurrentMessage = 0;
  }

  v4.receiver = self;
  v4.super_class = CATHTTPMessageParser;
  [(CATHTTPMessageParser *)&v4 dealloc];
}

- (BOOL)appendBytes:(const char *)bytes length:(unint64_t)length
{
  if (!length)
  {
    goto LABEL_16;
  }

  mCurrentMessage = self->mCurrentMessage;
  if (!mCurrentMessage)
  {
    mCurrentMessage = CFHTTPMessageCreateEmpty(*MEMORY[0x277CBECE8], *bytes != 72);
    self->mCurrentMessage = mCurrentMessage;
  }

  if (CFHTTPMessageIsHeaderComplete(mCurrentMessage) && !CFHTTPMessageIsRequest(self->mCurrentMessage))
  {
    v8 = 0;
  }

  else
  {
    if (!CFHTTPMessageAppendBytes(self->mCurrentMessage, bytes, length))
    {
      goto LABEL_38;
    }

    v8 = 1;
  }

  mCurrentHeaderFields = self->mCurrentHeaderFields;
  if (mCurrentHeaderFields)
  {
    goto LABEL_13;
  }

  if (CFHTTPMessageIsHeaderComplete(self->mCurrentMessage))
  {
    v10 = CFHTTPMessageCopyAllHeaderFields(self->mCurrentMessage);
    v11 = self->mCurrentHeaderFields;
    self->mCurrentHeaderFields = v10;

    v12 = [(NSDictionary *)self->mCurrentHeaderFields objectForKeyedSubscript:@"Content-Length"];
    v13 = [v12 length];

    if (!v13)
    {
      if (CFHTTPMessageIsRequest(self->mCurrentMessage))
      {
        v17 = CFHTTPMessageCopyRequestMethod(self->mCurrentMessage);
        v18 = [v17 isEqualToString:@"GET"];
        if (v18)
        {
          v27 = CFHTTPMessageCopyRequestURL(self->mCurrentMessage);
          [(CATHTTPMessageParser *)self delegateDidReceiveRequestWithURL:v27];
        }

        goto LABEL_34;
      }

LABEL_38:
      LOBYTE(v18) = 0;
      return v18;
    }
  }

  mCurrentHeaderFields = self->mCurrentHeaderFields;
  if (mCurrentHeaderFields)
  {
LABEL_13:
    v14 = [(NSDictionary *)mCurrentHeaderFields objectForKeyedSubscript:@"Content-Length"];
    integerValue = [v14 integerValue];

    if (CFHTTPMessageIsRequest(self->mCurrentMessage))
    {
      v16 = CFHTTPMessageCopyBody(self->mCurrentMessage);
      if ([(__CFData *)v16 length]< integerValue)
      {
        v17 = 0;
        goto LABEL_31;
      }

      v19 = [(__CFData *)v16 subdataWithRange:0, integerValue];
      v20 = [(__CFData *)v16 subdataWithRange:integerValue, [(__CFData *)v16 length]- integerValue];
      CFRelease(self->mCurrentMessage);
      self->mCurrentMessage = 0;
      [(CATHTTPMessageParser *)self delegateDidReceiveRequestData:v19];
      v21 = self->mCurrentHeaderFields;
      self->mCurrentHeaderFields = 0;

      if ([v20 length])
      {
        LOBYTE(v18) = -[CATHTTPMessageParser appendBytes:length:](self, "appendBytes:length:", [v20 bytes], objc_msgSend(v20, "length"));

        v17 = v20;
LABEL_34:

        return v18;
      }

      v17 = v16;
    }

    else
    {
      if (v8)
      {
        v17 = CFHTTPMessageCopyBody(self->mCurrentMessage);
        if (![v17 length])
        {
          goto LABEL_33;
        }
      }

      else
      {
        v17 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:length];
      }

      v22 = integerValue - self->mCurrentBytesReceived;
      v23 = [v17 length];
      if (v22 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22;
      }

      v19 = [v17 subdataWithRange:{0, v24}];
      v20 = [v17 subdataWithRange:{objc_msgSend(v19, "length"), objc_msgSend(v17, "length") - objc_msgSend(v19, "length")}];
      v25 = self->mCurrentBytesReceived + [v19 length];
      self->mCurrentBytesReceived = v25;
      if (v25 >= integerValue)
      {
        CFRelease(self->mCurrentMessage);
        self->mCurrentMessage = 0;
        [(CATHTTPMessageParser *)self delegateDidReceiveResponseData:v19 moreComing:0];
        v26 = self->mCurrentHeaderFields;
        self->mCurrentHeaderFields = 0;

        self->mCurrentBytesReceived = 0;
      }

      else
      {
        [(CATHTTPMessageParser *)self delegateDidReceiveResponseData:v19 moreComing:1];
      }
    }

    v16 = v17;
    v17 = v20;
LABEL_31:

    if ([v17 length])
    {
      LOBYTE(v18) = -[CATHTTPMessageParser appendBytes:length:](self, "appendBytes:length:", [v17 bytes], objc_msgSend(v17, "length"));
      goto LABEL_34;
    }

LABEL_33:
    LOBYTE(v18) = 1;
    goto LABEL_34;
  }

LABEL_16:
  LOBYTE(v18) = 1;
  return v18;
}

+ (id)encodeRequestData:(id)data
{
  v3 = encodeRequestData__onceToken;
  dataCopy = data;
  if (v3 != -1)
  {
    +[CATHTTPMessageParser encodeRequestData:];
  }

  Request = CFHTTPMessageCreateRequest(*MEMORY[0x277CBECE8], @"POST", encodeRequestData__postURL, @"1.1");
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(dataCopy, "length")];
  CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v6);
  CFHTTPMessageSetBody(Request, dataCopy);

  v7 = CFHTTPMessageCopySerializedMessage(Request);
  CFRelease(Request);

  return v7;
}

uint64_t __42__CATHTTPMessageParser_encodeRequestData___block_invoke()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"http://localhost/"];
  v1 = encodeRequestData__postURL;
  encodeRequestData__postURL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)responseHeaderForContentWithLength:(unint64_t)length
{
  Response = CFHTTPMessageCreateResponse(*MEMORY[0x277CBECE8], 200, 0, *MEMORY[0x277CBAD00]);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", length];
  CFHTTPMessageSetHeaderFieldValue(Response, @"Content-Length", v5);
  v6 = CFHTTPMessageCopySerializedMessage(Response);
  CFRelease(Response);

  return v6;
}

- (void)delegateDidReceiveRequestData:(id)data
{
  dataCopy = data;
  delegate = [(CATHTTPMessageParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CATHTTPMessageParser *)self delegate];
    [delegate2 messageParser:self didParseRequestData:dataCopy];
  }
}

- (void)delegateDidReceiveRequestWithURL:(id)l
{
  lCopy = l;
  delegate = [(CATHTTPMessageParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CATHTTPMessageParser *)self delegate];
    [delegate2 messageParser:self didParseRequestWithURL:lCopy];
  }
}

- (CATHTTPMessageParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end