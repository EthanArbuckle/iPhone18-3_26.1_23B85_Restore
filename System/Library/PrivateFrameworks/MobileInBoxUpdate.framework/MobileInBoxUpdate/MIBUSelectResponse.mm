@interface MIBUSelectResponse
- (BOOL)_deserialize:(id)_deserialize;
- (MIBUSelectResponse)init;
- (id)serialize;
@end

@implementation MIBUSelectResponse

- (MIBUSelectResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUSelectResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUSelectResponse *)v2 setProtocolVersion:0];
  }

  return v3;
}

void __31__MIBUSelectResponse_serialize__block_invoke()
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

void __31__MIBUSelectResponse_serialize__block_invoke_5()
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

void __35__MIBUSelectResponse__deserialize___block_invoke()
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

void __35__MIBUSelectResponse__deserialize___block_invoke_11()
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

void __35__MIBUSelectResponse__deserialize___block_invoke_14()
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

- (id)serialize
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (![(MIBUNFCResponse *)self rejected])
  {
    protocolVersion = [(MIBUSelectResponse *)self protocolVersion];
    v18[0] = protocolVersion;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v6 = [v3 serialize:&unk_286AC83D0 withValue:v5];

    if (v6)
    {
      error = [(MIBUNFCResponse *)self error];
      v8 = [v3 serializeResponseError:error];

      if (v8)
      {
        serializedData = [v3 serializedData];
        goto LABEL_5;
      }

      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_7);
      }

      v13 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        error2 = [(MIBUNFCResponse *)self error];
        v16 = 138543362;
        v17 = error2;
        _os_log_error_impl(&dword_259ABF000, v14, OS_LOG_TYPE_ERROR, "Failed to serialize response error: %{public}@", &v16, 0xCu);
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_5);
      }

      v12 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_error_impl(&dword_259ABF000, v12, OS_LOG_TYPE_ERROR, "Failed to serialize protocol version", &v16, 2u);
      }
    }
  }

  serializedData = 0;
LABEL_5:

  v10 = *MEMORY[0x277D85DE8];

  return serializedData;
}

- (BOOL)_deserialize:(id)_deserialize
{
  _deserializeCopy = _deserialize;
  v5 = [[MIBUDeserializer alloc] initWithData:_deserializeCopy];

  deserialize = [(MIBUDeserializer *)v5 deserialize];
  if (!deserialize)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_10);
    }

    v14 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v21 = 0;
    v15 = "Failed to deserialize payload for Select command";
    v16 = &v21;
    goto LABEL_24;
  }

  v20 = 0;
  v7 = [(MIBUDeserializer *)v5 deserializeResponseError:&v20];
  v8 = v20;
  v9 = v8;
  if (!v7)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_13_0);
    }

    v17 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_259ABF000, v17, OS_LOG_TYPE_ERROR, "Failed to deserialize response error", buf, 2u);
    }

    v11 = 0;
    goto LABEL_22;
  }

  if (v8)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v10 = [deserialize objectForKey:&unk_286AC7E00];
  if (!v10)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_16);
    }

    v14 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LOWORD(v18) = 0;
    v15 = "Failed to deserialize protocol version";
    v16 = &v18;
LABEL_24:
    _os_log_error_impl(&dword_259ABF000, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
LABEL_21:
    v11 = 0;
    v9 = 0;
LABEL_22:
    v12 = 0;
    goto LABEL_7;
  }

  v11 = v10;
  [(MIBUSelectResponse *)self setProtocolVersion:v10];
  v9 = 0;
LABEL_6:
  v12 = 1;
LABEL_7:
  [(MIBUNFCResponse *)self setError:v9, v18];

  return v12;
}

@end