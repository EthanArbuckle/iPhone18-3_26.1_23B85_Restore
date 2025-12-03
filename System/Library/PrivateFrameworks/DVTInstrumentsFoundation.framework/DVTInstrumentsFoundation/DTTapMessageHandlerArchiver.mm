@interface DTTapMessageHandlerArchiver
- (DTTapMessageHandlerArchiver)initWithConfig:(id)config archiveURL:(id)l;
- (id)messageReceived:(id)received;
- (void)_helperConnectionError;
- (void)dealloc;
@end

@implementation DTTapMessageHandlerArchiver

- (DTTapMessageHandlerArchiver)initWithConfig:(id)config archiveURL:(id)l
{
  configCopy = config;
  lCopy = l;
  v22.receiver = self;
  v22.super_class = DTTapMessageHandlerArchiver;
  v8 = [(DTTapMessageHandler *)&v22 initWithConfig:configCopy];
  if (v8)
  {
    if (!lCopy)
    {
      sub_24802FF04();
    }

    v9 = objc_alloc(MEMORY[0x277D03658]);
    path = [lCopy path];
    v21 = 0;
    v11 = [v9 initWithIncomingFilePath:0 outgoingFilePath:path error:&v21];
    v12 = v21;

    if (v11 && !v12 && (v13 = [objc_alloc(MEMORY[0x277D03650]) initWithTransport:v11], v14 = v8->_helperConnection, v8->_helperConnection = v13, v14, (v15 = v8->_helperConnection) != 0))
    {
      [(DTXConnection *)v15 setDispatchTarget:v8];
      [(DTXConnection *)v8->_helperConnection setCompressionHint:4 forChannel:0];
      objc_initWeak(&location, v8);
      helperConnection = v8->_helperConnection;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_247FE6894;
      v18[3] = &unk_278EF3330;
      objc_copyWeak(&v19, &location);
      [(DTXConnection *)helperConnection setMessageHandler:v18];
      [(DTXConnection *)v8->_helperConnection setMaximumEnqueueSize:0x800000];
      [(DTXConnection *)v8->_helperConnection resume];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      v12 = v11;
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  [(DTXConnection *)self->_helperConnection sendMessageSync:*MEMORY[0x277D03690] replyHandler:&unk_285A18D00];
  v3.receiver = self;
  v3.super_class = DTTapMessageHandlerArchiver;
  [(DTTapMessageHandlerArchiver *)&v3 dealloc];
}

- (id)messageReceived:(id)received
{
  receivedCopy = received;
  config = [(DTTapMessageHandler *)self config];
  statusHandler = [config statusHandler];

  if (statusHandler)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v8 = [receivedCopy objectWithAllowedClasses:v7];

    if (v8)
    {
      config2 = [(DTTapMessageHandler *)self config];
      statusHandler2 = [config2 statusHandler];
      status = [v8 status];
      timestamp = [v8 timestamp];
      notice = [v8 notice];
      info = [v8 info];
      (statusHandler2)[2](statusHandler2, status, timestamp, notice, info);
    }
  }

  if (![receivedCopy errorStatus])
  {
    [(DTXConnection *)self->_helperConnection sendMessage:receivedCopy replyHandler:0];
  }

  return 0;
}

- (void)_helperConnectionError
{
  [(DTXConnection *)self->_helperConnection cancel];
  helperConnection = self->_helperConnection;
  self->_helperConnection = 0;

  NSLog(&cfstr_AnUnexpectedEr.isa);
}

@end