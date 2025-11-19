@interface CDPDSecureChannelContext
- (BOOL)initialize:(id *)a3;
- (BOOL)initializePiggybackingChannel:(id *)a3;
- (CDPDSecureChannelContext)initWithContext:(id)a3 channel:(id)a4 dataProvider:(id)a5 circleProxy:(id)a6;
- (CDPDSecureChannelContext)initWithContext:(id)a3 circleProxy:(id)a4;
- (void)dealloc;
- (void)initializeTTSUChannel;
- (void)setFlowIDFromRequester:(id)a3;
@end

@implementation CDPDSecureChannelContext

- (CDPDSecureChannelContext)initWithContext:(id)a3 circleProxy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CDPDSecureChannelContext *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_circleProxy, a4);
  }

  return v10;
}

- (CDPDSecureChannelContext)initWithContext:(id)a3 channel:(id)a4 dataProvider:(id)a5 circleProxy:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(CDPDSecureChannelContext *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, a3);
    objc_storeStrong(&v16->_keychainCircleProxy, a5);
    objc_storeStrong(&v16->_secureChannelProxy, a4);
    objc_storeStrong(&v16->_circleProxy, a6);
  }

  return v16;
}

- (BOOL)initialize:(id *)a3
{
  if (self->_keychainCircleProxy && self->_secureChannelProxy)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Context already initialized, returning...", buf, 2u);
    }

    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_context eventName:*MEMORY[0x277CFD848] category:*MEMORY[0x277CFD930]];
    if ([(CDPContext *)self->_context isPiggybackingRecovery])
    {
      v7 = _CDPLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Initializing piggybacking channel", v18, 2u);
      }

      self->_secureChannelType = 1;
      v17 = 0;
      v6 = [(CDPDSecureChannelContext *)self initializePiggybackingChannel:&v17];
      v8 = v17;
    }

    else if ([(CDPContext *)self->_context isTTSURecovery])
    {
      v9 = _CDPLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Initializing TTSU channel", v16, 2u);
      }

      self->_secureChannelType = 2;
      [(CDPDSecureChannelContext *)self initializeTTSUChannel];
      v8 = 0;
      v6 = 1;
    }

    else
    {
      v8 = _CDPStateError();
      v6 = 0;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CDPDSecureChannelContext secureChannelType](self, "secureChannelType")}];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277CFD870]];

    v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

    [v5 populateUnderlyingErrorsStartingWithRootError:v8];
    v12 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v12 sendEvent:v5];

    if (v8)
    {
      v13 = _CDPLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CDPDSecureChannelContext *)v8 initialize:v13];
      }

      if (a3)
      {
        v14 = v8;
        *a3 = v8;
      }
    }
  }

  return v6;
}

- (BOOL)initializePiggybackingChannel:(id *)a3
{
  context = self->_context;
  v13 = 0;
  v6 = [CDPPiggybackingPayloadProvider proxyWithContext:context error:&v13];
  v7 = v13;
  keychainCircleProxy = self->_keychainCircleProxy;
  self->_keychainCircleProxy = v6;

  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      *a3 = v7;
    }
  }

  else
  {
    v10 = [[CDPPiggybackingChannel alloc] initWithContext:self->_context];
    secureChannelProxy = self->_secureChannelProxy;
    self->_secureChannelProxy = v10;
  }

  return v7 == 0;
}

- (void)initializeTTSUChannel
{
  v3 = [[CDPTTSUPayloadProvider alloc] initWithCircleProxy:self->_circleProxy];
  keychainCircleProxy = self->_keychainCircleProxy;
  self->_keychainCircleProxy = v3;

  v5 = [[CDPTTSUChannel alloc] initWithContext:self->_context];
  secureChannelProxy = self->_secureChannelProxy;
  self->_secureChannelProxy = v5;

  MEMORY[0x2821F96F8]();
}

- (void)setFlowIDFromRequester:(id)a3
{
  circleProxy = self->_circleProxy;
  v4 = a3;
  v5 = [(CDPDCircleProxy *)circleProxy cdpContext];
  [v5 setTelemetryFlowID:v4];
}

- (void)dealloc
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEFAULT, "Secure channel proxy going away...", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CDPDSecureChannelContext;
  [(CDPDSecureChannelContext *)&v4 dealloc];
}

- (void)initialize:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to initialize a channel %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end