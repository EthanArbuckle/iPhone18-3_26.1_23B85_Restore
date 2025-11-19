@interface MSResetServerProtocol
- (MSResetServerProtocol)initWithPersonID:(id)a3 baseURL:(id)a4;
- (id)delegate;
- (void)_coreProtocolDidFailAuthenticationError:(id)a3;
- (void)_coreProtocolDidFinishError:(id)a3;
- (void)dealloc;
- (void)resetServerState;
- (void)setDelegate:(id)a3;
@end

@implementation MSResetServerProtocol

- (void)_coreProtocolDidFailAuthenticationError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(MSStreamsProtocol *)self personID];
    v10 = [v4 MSVerboseDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed authentication. Error: %{public}@", &v11, 0x20u);
  }

  v5 = [(MSResetServerProtocol *)self delegate];
  [v5 resetServerProtocol:self didReceiveAuthenticationError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_coreProtocolDidFinishError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(MSStreamsProtocol *)self personID];
    v10 = [v4 MSVerboseDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Reset server state protocol has failed. Error: %{public}@", &v11, 0x20u);
  }

  v5 = [(MSResetServerProtocol *)self delegate];
  [v5 resetServerProtocol:self didFinishWithError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetServerState
{
  p_context = &self->_context;
  [(MSStreamsProtocol *)self _refreshAuthTokenForContext:&self->_context];
  v4 = [(MSStreamsProtocol *)self resetURL];
  v5 = MSPURLConnectionProperties();
  p_context->_super.__didReceiveDataCallback = 0;
  p_context->_super.__didFinishCallback = _didFinish_2484;
  p_context->_super.__didFailAuthenticationCallback = _didFailAuthentication_2483;
  p_context->_super.__didReceiveServerSideConfigVersionCallback = _didReceiveServerSideConfigurationVersion_2482;

  MSSPCStartHTTPTransaction(p_context, @"POST", v4, v5, 0, 0, 0);
}

- (void)dealloc
{
  p_context = &self->_context;

  v4.receiver = self;
  v4.super_class = MSResetServerProtocol;
  [(MSResetServerProtocol *)&v4 dealloc];
}

- (MSResetServerProtocol)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MSResetServerProtocol;
  v7 = [(MSStreamsProtocol *)&v10 initWithPersonID:v6 baseURL:a4];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v7->_context._super.personID = v6;
    v8->_context._super.deviceInfo = [(MSStreamsProtocol *)v8 deviceInfoDict];
    v8->_context._super.connectionTimeout = 0.0;
    v8->_context.finishedCallback = _protocolDidFinish_2561;
    v8->_context.authFailedCallback = _protocolDidFailAuthentication_2560;
    v8->_context.didReceiveServerSideConfigurationVersionCallback = _protocolDidReceiveServerSideConfigurationVersion_2559;
  }

  return v8;
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = MSResetServerProtocol;
  [(MSStreamsProtocol *)&v3 setDelegate:a3];
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MSResetServerProtocol;
  v2 = [(MSStreamsProtocol *)&v4 delegate];

  return v2;
}

@end