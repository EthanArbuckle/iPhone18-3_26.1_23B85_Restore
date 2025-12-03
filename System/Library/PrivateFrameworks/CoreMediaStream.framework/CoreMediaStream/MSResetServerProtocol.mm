@interface MSResetServerProtocol
- (MSResetServerProtocol)initWithPersonID:(id)d baseURL:(id)l;
- (id)delegate;
- (void)_coreProtocolDidFailAuthenticationError:(id)error;
- (void)_coreProtocolDidFinishError:(id)error;
- (void)dealloc;
- (void)resetServerState;
- (void)setDelegate:(id)delegate;
@end

@implementation MSResetServerProtocol

- (void)_coreProtocolDidFailAuthenticationError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    personID = [(MSStreamsProtocol *)self personID];
    mSVerboseDescription = [errorCopy MSVerboseDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = personID;
    v15 = 2114;
    v16 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed authentication. Error: %{public}@", &v11, 0x20u);
  }

  delegate = [(MSResetServerProtocol *)self delegate];
  [delegate resetServerProtocol:self didReceiveAuthenticationError:errorCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_coreProtocolDidFinishError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    personID = [(MSStreamsProtocol *)self personID];
    mSVerboseDescription = [errorCopy MSVerboseDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = personID;
    v15 = 2114;
    v16 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Reset server state protocol has failed. Error: %{public}@", &v11, 0x20u);
  }

  delegate = [(MSResetServerProtocol *)self delegate];
  [delegate resetServerProtocol:self didFinishWithError:errorCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetServerState
{
  p_context = &self->_context;
  [(MSStreamsProtocol *)self _refreshAuthTokenForContext:&self->_context];
  resetURL = [(MSStreamsProtocol *)self resetURL];
  v5 = MSPURLConnectionProperties();
  p_context->_super.__didReceiveDataCallback = 0;
  p_context->_super.__didFinishCallback = _didFinish_2484;
  p_context->_super.__didFailAuthenticationCallback = _didFailAuthentication_2483;
  p_context->_super.__didReceiveServerSideConfigVersionCallback = _didReceiveServerSideConfigurationVersion_2482;

  MSSPCStartHTTPTransaction(p_context, @"POST", resetURL, v5, 0, 0, 0);
}

- (void)dealloc
{
  p_context = &self->_context;

  v4.receiver = self;
  v4.super_class = MSResetServerProtocol;
  [(MSResetServerProtocol *)&v4 dealloc];
}

- (MSResetServerProtocol)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = MSResetServerProtocol;
  v7 = [(MSStreamsProtocol *)&v10 initWithPersonID:dCopy baseURL:l];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v7->_context._super.personID = dCopy;
    v8->_context._super.deviceInfo = [(MSStreamsProtocol *)v8 deviceInfoDict];
    v8->_context._super.connectionTimeout = 0.0;
    v8->_context.finishedCallback = _protocolDidFinish_2561;
    v8->_context.authFailedCallback = _protocolDidFailAuthentication_2560;
    v8->_context.didReceiveServerSideConfigurationVersionCallback = _protocolDidReceiveServerSideConfigurationVersion_2559;
  }

  return v8;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = MSResetServerProtocol;
  [(MSStreamsProtocol *)&v3 setDelegate:delegate];
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MSResetServerProtocol;
  delegate = [(MSStreamsProtocol *)&v4 delegate];

  return delegate;
}

@end