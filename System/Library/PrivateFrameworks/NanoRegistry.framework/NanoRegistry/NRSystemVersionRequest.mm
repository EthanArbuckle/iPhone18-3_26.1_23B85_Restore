@interface NRSystemVersionRequest
- (void)sendVersionRequestToCompanion;
@end

@implementation NRSystemVersionRequest

void __36__NRSystemVersionRequest_connection__block_invoke()
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5B8D850];
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.nanoregistry.versionrequest" options:4096];
  v1 = qword_1ED6F0BC0;
  qword_1ED6F0BC0 = v0;

  [qword_1ED6F0BC0 setRemoteObjectInterface:v2];
  [qword_1ED6F0BC0 resume];
}

- (void)sendVersionRequestToCompanion
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = nr_framework_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1E0ADF000, v5, OS_LOG_TYPE_DEFAULT, "Send version request in framework", &v15, 2u);
    }
  }

  if (self)
  {
    v6 = &__block_literal_global_57;
    v7 = nr_framework_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = nr_framework_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_error_impl(&dword_1E0ADF000, v9, OS_LOG_TYPE_ERROR, "connection called", &v15, 2u);
      }
    }

    if (_MergedGlobals_17 != -1)
    {
      dispatch_once(&_MergedGlobals_17, &__block_literal_global_19);
    }

    v10 = nr_framework_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = nr_framework_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = qword_1ED6F0BC0;
        _os_log_error_impl(&dword_1E0ADF000, v12, OS_LOG_TYPE_ERROR, "return connection: %@", &v15, 0xCu);
      }
    }

    v13 = qword_1ED6F0BC0;
    self = [v13 remoteObjectProxyWithErrorHandler:&__block_literal_global_57];
  }

  [(NRSystemVersionRequest *)self sendVersionRequestToCompanion];

  v14 = *MEMORY[0x1E69E9840];
}

void __55__NRSystemVersionRequest_sendVersionRequestToCompanion__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = nr_framework_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = nr_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_error_impl(&dword_1E0ADF000, v5, OS_LOG_TYPE_ERROR, "Error sending NRSystemVersionRequest : XPC error %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end