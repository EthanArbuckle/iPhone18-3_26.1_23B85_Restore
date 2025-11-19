@interface LNFrameworkConnection
- (BOOL)refreshWithOptions:(id)a3;
- (void)connectWithOptions:(id)a3;
@end

@implementation LNFrameworkConnection

- (BOOL)refreshWithOptions:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = LNFrameworkConnection;
  if ([(LNConnection *)&v8 refreshWithOptions:a3])
  {
    v4 = LNConnectionErrorWithCode(1001);
    v5 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Unable to get remoteObjectProxyWithErrorHandler, error: %{public}@", buf, 0xCu);
    }

    [(LNConnection *)self setDisconnectedWithError:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)connectWithOptions:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = LNFrameworkConnection;
  [(LNConnection *)&v7 connectWithOptions:a3];
  v4 = LNConnectionErrorWithCode(1001);
  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Unable to get remoteObjectProxyWithErrorHandler, error: %{public}@", buf, 0xCu);
  }

  [(LNConnection *)self setDisconnectedWithError:v4];
  v6 = *MEMORY[0x1E69E9840];
}

@end