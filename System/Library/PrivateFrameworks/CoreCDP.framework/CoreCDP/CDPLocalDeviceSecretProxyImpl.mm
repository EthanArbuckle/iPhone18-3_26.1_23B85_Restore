@interface CDPLocalDeviceSecretProxyImpl
- (BOOL)hasLocalSecret;
@end

@implementation CDPLocalDeviceSecretProxyImpl

- (BOOL)hasLocalSecret
{
  v2 = objc_alloc_init(CDPDaemonConnection);
  v3 = [(CDPDaemonConnection *)v2 synchronousDaemonWithErrorHandler:&__block_literal_global_12];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Checking if the local device has a secret", buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CDPLocalDeviceSecretProxyImpl_hasLocalSecret__block_invoke_17;
  v7[3] = &unk_1E869DD10;
  v7[4] = buf;
  [v3 hasLocalSecretWithCompletion:v7];
  connection = [(CDPDaemonConnection *)v2 connection];
  [connection invalidate];

  LOBYTE(connection) = v9[24];
  _Block_object_dispose(buf, 8);

  return connection;
}

void __47__CDPLocalDeviceSecretProxyImpl_hasLocalSecret__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __47__CDPLocalDeviceSecretProxyImpl_hasLocalSecret__block_invoke_cold_1();
  }
}

void __47__CDPLocalDeviceSecretProxyImpl_hasLocalSecret__block_invoke_17(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = _CDPLogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v8 = 0;
      v5 = "Local device DOES have a secret";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&dword_1DED99000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v7 = 0;
    v5 = "Local device DOES NOT have a secret";
    v6 = &v7;
    goto LABEL_6;
  }
}

void __47__CDPLocalDeviceSecretProxyImpl_hasLocalSecret__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end