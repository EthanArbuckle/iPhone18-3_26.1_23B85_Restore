@interface DTAssetHTTPRequestHandler
- (DTAssetHTTPRequestHandler)initWithSocket:(id)a3 channel:(id)a4;
- (void)dealloc;
- (void)receivedMessage:(id)a3;
- (void)requestAssetAtPath:(id)a3;
- (void)sendDataChunk:(id)a3;
- (void)serveErrorMessageForError:(id)a3;
- (void)serveResponseAndDisconnect:(__CFHTTPMessage *)a3;
- (void)socket:(id)a3 didReadData:(id)a4 withTag:(int64_t)a5;
- (void)socketDidDisconnect:(id)a3 withError:(id)a4;
- (void)startReading;
@end

@implementation DTAssetHTTPRequestHandler

- (DTAssetHTTPRequestHandler)initWithSocket:(id)a3 channel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = DTAssetHTTPRequestHandler;
  v8 = [(DTAssetHTTPRequestHandler *)&v15 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    identifier = v8->_identifier;
    v8->_identifier = v10;

    [(DTAssetHTTPRequestHandler *)v8 setSocket:v6];
    v12 = [(DTAssetHTTPRequestHandler *)v8 socket];
    [v12 setDelegate:v8];

    [(DTAssetHTTPRequestHandler *)v8 setChannel:v7];
    [(DTAssetHTTPRequestHandler *)v8 setDataSent:0];
    v13 = +[DTAssetResponseBroker sharedBroker];
    [v13 registerHandler:v8];
  }

  return v8;
}

- (void)dealloc
{
  httpMessage = self->_httpMessage;
  if (httpMessage)
  {
    CFRelease(httpMessage);
    self->_httpMessage = 0;
  }

  v4.receiver = self;
  v4.super_class = DTAssetHTTPRequestHandler;
  [(DTAssetHTTPRequestHandler *)&v4 dealloc];
}

- (void)startReading
{
  httpMessage = self->_httpMessage;
  if (httpMessage)
  {
    CFRelease(httpMessage);
  }

  self->_httpMessage = CFHTTPMessageCreateEmpty(0, 1u);
  v4 = [(DTAssetHTTPRequestHandler *)self socket];
  [v4 readDataWithTimeout:0 tag:600.0];
}

- (void)requestAssetAtPath:(id)a3
{
  v4 = a3;
  v5 = [(DTAssetHTTPRequestHandler *)self identifier];
  v8 = [DTAssetRequest requestWithIdentifier:v5 path:v4];

  v6 = [(DTAssetHTTPRequestHandler *)self channel];
  v7 = [v8 message];
  [v6 sendMessage:v7 replyHandler:0];
}

- (void)receivedMessage:(id)a3
{
  v14 = a3;
  v4 = [v14 error];

  if (v4)
  {
    v5 = [v14 error];
    [(DTAssetHTTPRequestHandler *)self serveErrorMessageForError:v5];
    goto LABEL_12;
  }

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v6 = [v14 objectWithAllowedClasses:v5];

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [(DTAssetHTTPRequestHandler *)self socket];

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [v14 objectWithAllowedClasses:v5];
  v9 = [v8 data];

  if (!v9)
  {
    if ([v8 isCompleted])
    {
      v10 = [(DTAssetHTTPRequestHandler *)self identifier];
      syslog(5, "ODR: Request %s sent %llu bytes", [v10 UTF8String], -[DTAssetHTTPRequestHandler dataSent](self, "dataSent"));

      v11 = [(DTAssetHTTPRequestHandler *)self socket];
      v12 = [@"0\r\n\r\n" dataUsingEncoding:1];
      [v11 writeData:v12 withTimeout:2 tag:600.0];

      v13 = [(DTAssetHTTPRequestHandler *)self socket];
      [v13 disconnectAfterWriting];

      goto LABEL_11;
    }

LABEL_10:
    v8 = [v14 description];
    syslog(3, "ODR: Got a message we're not sure how to handle: %s", [v8 UTF8String]);
    goto LABEL_11;
  }

  [(DTAssetHTTPRequestHandler *)self sendDataChunk:v8];
LABEL_11:

LABEL_12:
}

- (void)sendDataChunk:(id)a3
{
  v4 = a3;
  if (![(DTAssetHTTPRequestHandler *)self sentHeader])
  {
    Response = CFHTTPMessageCreateResponse(0, 200, 0, *MEMORY[0x277CBAD00]);
    CFHTTPMessageSetHeaderFieldValue(Response, @"Transfer-Encoding", @"chunked");
    v6 = CFHTTPMessageCopySerializedMessage(Response);
    v7 = [(DTAssetHTTPRequestHandler *)self socket];
    [v7 writeData:v6 withTimeout:0 tag:600.0];

    CFRelease(Response);
    [(DTAssetHTTPRequestHandler *)self setSentHeader:1];
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = [v4 data];
  v17 = [v8 stringWithFormat:@"%lx\r\n", objc_msgSend(v9, "length")];

  v10 = [(DTAssetHTTPRequestHandler *)self socket];
  v11 = [v17 dataUsingEncoding:1];
  [v10 writeData:v11 withTimeout:2 tag:600.0];

  v12 = [(DTAssetHTTPRequestHandler *)self socket];
  v13 = [v4 data];
  [v12 writeData:v13 withTimeout:1 tag:600.0];

  v14 = [v4 data];

  -[DTAssetHTTPRequestHandler setDataSent:](self, "setDataSent:", -[DTAssetHTTPRequestHandler dataSent](self, "dataSent") + [v14 length]);
  v15 = [(DTAssetHTTPRequestHandler *)self socket];
  v16 = [@"\r\n" dataUsingEncoding:1];
  [v15 writeData:v16 withTimeout:2 tag:600.0];
}

- (void)serveErrorMessageForError:(id)a3
{
  v4 = a3;
  v5 = [v4 code];
  Response = CFHTTPMessageCreateResponse(0, v5, 0, *MEMORY[0x277CBACF8]);
  v7 = MEMORY[0x277CCACA8];
  v8 = [v4 localizedDescription];

  v9 = [v7 stringWithFormat:@"Error retrieving requested asset: %@", v8];

  CFHTTPMessageSetBody(Response, [v9 dataUsingEncoding:4]);
  [(DTAssetHTTPRequestHandler *)self serveResponseAndDisconnect:Response];
  CFRelease(Response);
}

- (void)serveResponseAndDisconnect:(__CFHTTPMessage *)a3
{
  v6 = CFHTTPMessageCopySerializedMessage(a3);
  v4 = [(DTAssetHTTPRequestHandler *)self socket];
  [v4 writeData:v6 withTimeout:0 tag:600.0];

  v5 = [(DTAssetHTTPRequestHandler *)self socket];
  [v5 disconnectAfterWriting];
}

- (void)socket:(id)a3 didReadData:(id)a4 withTag:(int64_t)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  httpMessage = self->_httpMessage;
  v9 = a4;
  v10 = a4;
  v11 = [v10 bytes];
  v12 = [v10 length];

  CFHTTPMessageAppendBytes(httpMessage, v11, v12);
  if (CFHTTPMessageIsHeaderComplete(self->_httpMessage))
  {
    v13 = CFHTTPMessageCopyRequestMethod(self->_httpMessage);
    if ([@"GET" isEqualToString:v13])
    {
      v14 = CFHTTPMessageCopyRequestURL(self->_httpMessage);
      v15 = [(DTAssetHTTPRequestHandler *)self allowedResources];
      v16 = [v14 absoluteString];
      v17 = [v15 containsObject:v16];

      if (v17)
      {
        v18 = [(DTAssetHTTPRequestHandler *)self identifier];
        v19 = [v18 UTF8String];
        v20 = [v14 absoluteString];
        syslog(5, "ODR: Received GET request %s for asset pack %s. Requesting from Xcode.", v19, [v20 UTF8String]);

        v21 = [v14 path];
        [(DTAssetHTTPRequestHandler *)self requestAssetAtPath:v21];
LABEL_11:

        goto LABEL_12;
      }

      v23 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      v32[0] = @"Not found.";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      v25 = v23;
      v26 = 404;
    }

    else
    {
      if ([@"HEAD" isEqualToString:v13])
      {
        syslog(5, "ODR: Received HEAD request for asset pack. Sending default 200 response.");
        Response = CFHTTPMessageCreateResponse(0, 200, 0, *MEMORY[0x277CBACF8]);
        [(DTAssetHTTPRequestHandler *)self serveResponseAndDisconnect:Response];
        CFRelease(Response);
LABEL_12:

        goto LABEL_13;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"This server does not handle %@ requests.", v13];
      v27 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v30 = v14;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v25 = v27;
      v26 = 500;
    }

    v21 = [v25 errorWithDomain:@"DTAssetHTTPRequestHandler" code:v26 userInfo:v24];

    [(DTAssetHTTPRequestHandler *)self serveErrorMessageForError:v21];
    goto LABEL_11;
  }

  [v7 readDataWithTimeout:0 tag:600.0];
LABEL_13:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)socketDidDisconnect:(id)a3 withError:(id)a4
{
  v9 = a4;
  [(DTAssetHTTPRequestHandler *)self setSocket:0];
  v5 = [(DTAssetHTTPRequestHandler *)self identifier];
  v6 = [v5 UTF8String];
  if (v9)
  {
    v7 = [v9 description];
    syslog(4, "ODR: Socket %s disconnected with error: %s", v6, [v7 UTF8String]);
  }

  else
  {
    syslog(6, "ODR: Socket %s disconnected without error.", v6);
  }

  v8 = +[DTAssetResponseBroker sharedBroker];
  [v8 unregisterHandler:self];
}

@end