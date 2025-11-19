@interface MSResetServer
+ (id)resetServerObjectWithPersonID:(id)a3 baseURL:(id)a4;
- (MSResetServer)initWithPersonID:(id)a3 baseURL:(id)a4;
- (void)resetServer;
- (void)resetServerProtocol:(id)a3 didFinishWithError:(id)a4;
- (void)resetServerProtocol:(id)a3 didReceiveAuthenticationError:(id)a4;
@end

@implementation MSResetServer

- (void)resetServerProtocol:(id)a3 didReceiveAuthenticationError:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = [a4 MSVerboseDescription];
    v11 = 138543362;
    v12 = v10;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Couldn't reset server. Received authentication error: %{public}@", &v11, 0xCu);
  }

  daemon = self->_daemon;
  v7 = [(MSStreamsProtocol *)self->_protocol personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:v7];

  [(MSDaemon *)self->_daemon releaseBusy];
  selfReference = self->_selfReference;
  self->_selfReference = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resetServerProtocol:(id)a3 didFinishWithError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = [v7 MSVerboseDescription];
      v13 = 138543362;
      v14 = v8;
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
    v10 = [(MSResetServer *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:v10];
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

- (MSResetServer)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MSResetServer;
  v8 = [(MSResetServer *)&v12 init];
  if (v8)
  {
    v9 = [[MSResetServerProtocol alloc] initWithPersonID:v6 baseURL:v7];
    protocol = v8->_protocol;
    v8->_protocol = v9;

    [(MSResetServerProtocol *)v8->_protocol setDelegate:v8];
  }

  return v8;
}

+ (id)resetServerObjectWithPersonID:(id)a3 baseURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPersonID:v7 baseURL:v6];

  return v8;
}

@end