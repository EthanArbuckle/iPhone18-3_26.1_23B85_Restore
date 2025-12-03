@interface MSResetServer
+ (id)resetServerObjectWithPersonID:(id)d baseURL:(id)l;
- (MSResetServer)initWithPersonID:(id)d baseURL:(id)l;
- (void)resetServer;
- (void)resetServerProtocol:(id)protocol didFinishWithError:(id)error;
- (void)resetServerProtocol:(id)protocol didReceiveAuthenticationError:(id)error;
@end

@implementation MSResetServer

- (void)resetServerProtocol:(id)protocol didReceiveAuthenticationError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    mSVerboseDescription = [error MSVerboseDescription];
    v11 = 138543362;
    v12 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Couldn't reset server. Received authentication error: %{public}@", &v11, 0xCu);
  }

  daemon = self->_daemon;
  personID = [(MSStreamsProtocol *)self->_protocol personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:personID];

  [(MSDaemon *)self->_daemon releaseBusy];
  selfReference = self->_selfReference;
  self->_selfReference = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resetServerProtocol:(id)protocol didFinishWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  errorCopy = error;
  if (errorCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      mSVerboseDescription = [errorCopy MSVerboseDescription];
      v13 = 138543362;
      v14 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Couldn't reset server. Error: %{public}@", &v13, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully reset server state.", &v13, 2u);
    }

    daemon = self->_daemon;
    personID = [(MSResetServer *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:personID];
  }

  [(MSDaemon *)self->_daemon releaseBusy];
  selfReference = self->_selfReference;
  self->_selfReference = 0;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resetServer
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Resetting server state...", v3, 2u);
  }

  objc_storeStrong(&self->_selfReference, self);
  [(MSDaemon *)self->_daemon retainBusy];
  [(MSResetServerProtocol *)self->_protocol resetServerState];
}

- (MSResetServer)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = MSResetServer;
  v8 = [(MSResetServer *)&v12 init];
  if (v8)
  {
    v9 = [[MSResetServerProtocol alloc] initWithPersonID:dCopy baseURL:lCopy];
    protocol = v8->_protocol;
    v8->_protocol = v9;

    [(MSResetServerProtocol *)v8->_protocol setDelegate:v8];
  }

  return v8;
}

+ (id)resetServerObjectWithPersonID:(id)d baseURL:(id)l
{
  lCopy = l;
  dCopy = d;
  v8 = [[self alloc] initWithPersonID:dCopy baseURL:lCopy];

  return v8;
}

@end