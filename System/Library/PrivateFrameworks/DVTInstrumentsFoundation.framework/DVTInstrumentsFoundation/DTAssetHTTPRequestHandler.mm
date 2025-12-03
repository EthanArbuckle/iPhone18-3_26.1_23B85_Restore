@interface DTAssetHTTPRequestHandler
- (DTAssetHTTPRequestHandler)initWithSocket:(id)socket channel:(id)channel;
- (void)dealloc;
- (void)receivedMessage:(id)message;
- (void)requestAssetAtPath:(id)path;
- (void)sendDataChunk:(id)chunk;
- (void)serveErrorMessageForError:(id)error;
- (void)serveResponseAndDisconnect:(__CFHTTPMessage *)disconnect;
- (void)socket:(id)socket didReadData:(id)data withTag:(int64_t)tag;
- (void)socketDidDisconnect:(id)disconnect withError:(id)error;
- (void)startReading;
@end

@implementation DTAssetHTTPRequestHandler

- (DTAssetHTTPRequestHandler)initWithSocket:(id)socket channel:(id)channel
{
  socketCopy = socket;
  channelCopy = channel;
  v15.receiver = self;
  v15.super_class = DTAssetHTTPRequestHandler;
  v8 = [(DTAssetHTTPRequestHandler *)&v15 init];
  if (v8)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v8->_identifier;
    v8->_identifier = uUIDString;

    [(DTAssetHTTPRequestHandler *)v8 setSocket:socketCopy];
    socket = [(DTAssetHTTPRequestHandler *)v8 socket];
    [socket setDelegate:v8];

    [(DTAssetHTTPRequestHandler *)v8 setChannel:channelCopy];
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
  socket = [(DTAssetHTTPRequestHandler *)self socket];
  [socket readDataWithTimeout:0 tag:600.0];
}

- (void)requestAssetAtPath:(id)path
{
  pathCopy = path;
  identifier = [(DTAssetHTTPRequestHandler *)self identifier];
  v8 = [DTAssetRequest requestWithIdentifier:identifier path:pathCopy];

  channel = [(DTAssetHTTPRequestHandler *)self channel];
  message = [v8 message];
  [channel sendMessage:message replyHandler:0];
}

- (void)receivedMessage:(id)message
{
  messageCopy = message;
  error = [messageCopy error];

  if (error)
  {
    error2 = [messageCopy error];
    [(DTAssetHTTPRequestHandler *)self serveErrorMessageForError:error2];
    goto LABEL_12;
  }

  error2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v6 = [messageCopy objectWithAllowedClasses:error2];

  if (!v6)
  {
    goto LABEL_10;
  }

  socket = [(DTAssetHTTPRequestHandler *)self socket];

  if (!socket)
  {
    goto LABEL_12;
  }

  v8 = [messageCopy objectWithAllowedClasses:error2];
  data = [v8 data];

  if (!data)
  {
    if ([v8 isCompleted])
    {
      identifier = [(DTAssetHTTPRequestHandler *)self identifier];
      syslog(5, "ODR: Request %s sent %llu bytes", [identifier UTF8String], -[DTAssetHTTPRequestHandler dataSent](self, "dataSent"));

      socket2 = [(DTAssetHTTPRequestHandler *)self socket];
      v12 = [@"0\r\n\r\n" dataUsingEncoding:1];
      [socket2 writeData:v12 withTimeout:2 tag:600.0];

      socket3 = [(DTAssetHTTPRequestHandler *)self socket];
      [socket3 disconnectAfterWriting];

      goto LABEL_11;
    }

LABEL_10:
    v8 = [messageCopy description];
    syslog(3, "ODR: Got a message we're not sure how to handle: %s", [v8 UTF8String]);
    goto LABEL_11;
  }

  [(DTAssetHTTPRequestHandler *)self sendDataChunk:v8];
LABEL_11:

LABEL_12:
}

- (void)sendDataChunk:(id)chunk
{
  chunkCopy = chunk;
  if (![(DTAssetHTTPRequestHandler *)self sentHeader])
  {
    Response = CFHTTPMessageCreateResponse(0, 200, 0, *MEMORY[0x277CBAD00]);
    CFHTTPMessageSetHeaderFieldValue(Response, @"Transfer-Encoding", @"chunked");
    v6 = CFHTTPMessageCopySerializedMessage(Response);
    socket = [(DTAssetHTTPRequestHandler *)self socket];
    [socket writeData:v6 withTimeout:0 tag:600.0];

    CFRelease(Response);
    [(DTAssetHTTPRequestHandler *)self setSentHeader:1];
  }

  v8 = MEMORY[0x277CCACA8];
  data = [chunkCopy data];
  v17 = [v8 stringWithFormat:@"%lx\r\n", objc_msgSend(data, "length")];

  socket2 = [(DTAssetHTTPRequestHandler *)self socket];
  v11 = [v17 dataUsingEncoding:1];
  [socket2 writeData:v11 withTimeout:2 tag:600.0];

  socket3 = [(DTAssetHTTPRequestHandler *)self socket];
  data2 = [chunkCopy data];
  [socket3 writeData:data2 withTimeout:1 tag:600.0];

  data3 = [chunkCopy data];

  -[DTAssetHTTPRequestHandler setDataSent:](self, "setDataSent:", -[DTAssetHTTPRequestHandler dataSent](self, "dataSent") + [data3 length]);
  socket4 = [(DTAssetHTTPRequestHandler *)self socket];
  v16 = [@"\r\n" dataUsingEncoding:1];
  [socket4 writeData:v16 withTimeout:2 tag:600.0];
}

- (void)serveErrorMessageForError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  Response = CFHTTPMessageCreateResponse(0, code, 0, *MEMORY[0x277CBACF8]);
  v7 = MEMORY[0x277CCACA8];
  localizedDescription = [errorCopy localizedDescription];

  v9 = [v7 stringWithFormat:@"Error retrieving requested asset: %@", localizedDescription];

  CFHTTPMessageSetBody(Response, [v9 dataUsingEncoding:4]);
  [(DTAssetHTTPRequestHandler *)self serveResponseAndDisconnect:Response];
  CFRelease(Response);
}

- (void)serveResponseAndDisconnect:(__CFHTTPMessage *)disconnect
{
  v6 = CFHTTPMessageCopySerializedMessage(disconnect);
  socket = [(DTAssetHTTPRequestHandler *)self socket];
  [socket writeData:v6 withTimeout:0 tag:600.0];

  socket2 = [(DTAssetHTTPRequestHandler *)self socket];
  [socket2 disconnectAfterWriting];
}

- (void)socket:(id)socket didReadData:(id)data withTag:(int64_t)tag
{
  v32[1] = *MEMORY[0x277D85DE8];
  socketCopy = socket;
  httpMessage = self->_httpMessage;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v12 = [dataCopy2 length];

  CFHTTPMessageAppendBytes(httpMessage, bytes, v12);
  if (CFHTTPMessageIsHeaderComplete(self->_httpMessage))
  {
    v13 = CFHTTPMessageCopyRequestMethod(self->_httpMessage);
    if ([@"GET" isEqualToString:v13])
    {
      v14 = CFHTTPMessageCopyRequestURL(self->_httpMessage);
      allowedResources = [(DTAssetHTTPRequestHandler *)self allowedResources];
      absoluteString = [v14 absoluteString];
      v17 = [allowedResources containsObject:absoluteString];

      if (v17)
      {
        identifier = [(DTAssetHTTPRequestHandler *)self identifier];
        uTF8String = [identifier UTF8String];
        absoluteString2 = [v14 absoluteString];
        syslog(5, "ODR: Received GET request %s for asset pack %s. Requesting from Xcode.", uTF8String, [absoluteString2 UTF8String]);

        path = [v14 path];
        [(DTAssetHTTPRequestHandler *)self requestAssetAtPath:path];
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

    path = [v25 errorWithDomain:@"DTAssetHTTPRequestHandler" code:v26 userInfo:v24];

    [(DTAssetHTTPRequestHandler *)self serveErrorMessageForError:path];
    goto LABEL_11;
  }

  [socketCopy readDataWithTimeout:0 tag:600.0];
LABEL_13:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)socketDidDisconnect:(id)disconnect withError:(id)error
{
  errorCopy = error;
  [(DTAssetHTTPRequestHandler *)self setSocket:0];
  identifier = [(DTAssetHTTPRequestHandler *)self identifier];
  uTF8String = [identifier UTF8String];
  if (errorCopy)
  {
    v7 = [errorCopy description];
    syslog(4, "ODR: Socket %s disconnected with error: %s", uTF8String, [v7 UTF8String]);
  }

  else
  {
    syslog(6, "ODR: Socket %s disconnected without error.", uTF8String);
  }

  v8 = +[DTAssetResponseBroker sharedBroker];
  [v8 unregisterHandler:self];
}

@end