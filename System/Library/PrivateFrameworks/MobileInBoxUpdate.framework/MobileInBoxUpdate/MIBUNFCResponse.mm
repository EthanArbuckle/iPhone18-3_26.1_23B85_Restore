@interface MIBUNFCResponse
- (BOOL)_deserialize:(id)a3;
- (MIBUNFCResponse)init;
- (MIBUNFCResponse)initWithResponsePayload:(id)a3;
- (id)serialize;
- (void)serialize;
@end

@implementation MIBUNFCResponse

- (MIBUNFCResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUNFCResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUNFCResponse *)v2 setRejected:0];
    [(MIBUNFCResponse *)v3 setError:0];
  }

  return v3;
}

- (MIBUNFCResponse)initWithResponsePayload:(id)a3
{
  v4 = a3;
  v5 = [(MIBUNFCResponse *)self init];
  v6 = v5;
  if (v5 && ![(MIBUNFCResponse *)v5 _deserialize:v4])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)serialize
{
  v3 = objc_opt_new();
  v4 = [(MIBUNFCResponse *)self error];
  v5 = [v3 serializeResponseError:v4];

  if (v5)
  {
    v6 = [v3 serializedData];
  }

  else
  {
    [(MIBUNFCResponse *)self serialize];
    v6 = v8;
  }

  return v6;
}

void __28__MIBUNFCResponse_serialize__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserialize:(id)a3
{
  v4 = a3;
  v5 = [[MIBUDeserializer alloc] initWithData:v4];

  v6 = [(MIBUDeserializer *)v5 deserialize];

  if (v6)
  {
    v12 = 0;
    v7 = [(MIBUDeserializer *)v5 deserializeResponseError:&v12];
    v8 = v12;
    v9 = v8;
    if (v7)
    {
      [(MIBUNFCResponse *)self setError:v8];

      v10 = 1;
    }

    else
    {
      [MIBUNFCResponse _deserialize:v8];
      v10 = 0;
    }
  }

  else
  {
    [MIBUNFCResponse _deserialize:?];
    v10 = v13;
  }

  return v10;
}

void __32__MIBUNFCResponse__deserialize___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCResponse__deserialize___block_invoke_6()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)serialize
{
  v10 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_11);
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v6 = v4;
    v7 = [a1 error];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_259ABF000, v6, OS_LOG_TYPE_ERROR, "Failed to serialize responseerror: %{public}@", &v8, 0xCu);
  }

  *a2 = 0;
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_deserialize:(void *)a1 .cold.1(void *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_8_1);
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_3(&dword_259ABF000, v2, v3, "Failed to deserialize response error", v4, v5, v6, v7, 0);
  }
}

- (void)_deserialize:(_BYTE *)a1 .cold.2(_BYTE *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_5_3);
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_3(&dword_259ABF000, v2, v3, "Failed to deserialize APDU payload", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

@end