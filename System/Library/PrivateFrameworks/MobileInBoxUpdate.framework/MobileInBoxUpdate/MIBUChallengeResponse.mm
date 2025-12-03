@interface MIBUChallengeResponse
- (BOOL)_deserialize:(id)_deserialize;
- (MIBUChallengeResponse)init;
- (id)serialize;
- (void)serialize;
@end

@implementation MIBUChallengeResponse

- (MIBUChallengeResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUChallengeResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUChallengeResponse *)v2 setSignatureBlob:0];
    [(MIBUChallengeResponse *)v3 setCertChainBlob:0];
  }

  return v3;
}

- (id)serialize
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  signatureBlob = [(MIBUChallengeResponse *)self signatureBlob];
  v5 = signatureBlob;
  if (!signatureBlob)
  {
    v5 = objc_opt_new();
  }

  v15[0] = v5;
  certChainBlob = [(MIBUChallengeResponse *)self certChainBlob];
  v7 = certChainBlob;
  if (!certChainBlob)
  {
    v7 = objc_opt_new();
  }

  v15[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  if (!certChainBlob)
  {
  }

  if (!signatureBlob)
  {
  }

  if ([v3 serialize:&unk_286AC86A0 withValue:v8])
  {
    error = [(MIBUNFCResponse *)self error];
    v10 = [v3 serializeResponseError:error];

    if (v10)
    {
      serializedData = [v3 serializedData];
      goto LABEL_12;
    }

    [(MIBUChallengeResponse *)self serialize];
  }

  else
  {
    [(MIBUChallengeResponse *)&v14 serialize];
  }

  serializedData = v14;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];

  return serializedData;
}

void __34__MIBUChallengeResponse_serialize__block_invoke()
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

void __34__MIBUChallengeResponse_serialize__block_invoke_8()
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

void __38__MIBUChallengeResponse__deserialize___block_invoke()
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

void __38__MIBUChallengeResponse__deserialize___block_invoke_14()
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

void __38__MIBUChallengeResponse__deserialize___block_invoke_17()
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

void __38__MIBUChallengeResponse__deserialize___block_invoke_20()
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

- (BOOL)_deserialize:(id)_deserialize
{
  _deserializeCopy = _deserialize;
  v5 = [[MIBUDeserializer alloc] initWithData:_deserializeCopy];

  deserialize = [(MIBUDeserializer *)v5 deserialize];
  if (!deserialize)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_13_2);
    }

    v16 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *v24 = 0;
    v18 = "Failed to deserialize payload for Challenge command";
    goto LABEL_31;
  }

  v23 = 0;
  v7 = [(MIBUDeserializer *)v5 deserializeResponseError:&v23];
  v8 = v23;
  v9 = v8;
  if (!v7)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_16_1);
    }

    v19 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      OUTLINED_FUNCTION_4_0(&dword_259ABF000, v19, v20, "Failed to deserialize response error", v24);
    }

    v13 = 0;
    v11 = 0;
    goto LABEL_29;
  }

  if (v8)
  {
    v13 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v10 = [deserialize objectForKey:&unk_286AC8370];
  if (!v10)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_19);
    }

    v16 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *v24 = 0;
    v18 = "Failed to deserialize signature blob";
LABEL_31:
    OUTLINED_FUNCTION_4_0(&dword_259ABF000, v16, v17, v18, v24);
LABEL_22:
    v13 = 0;
    v11 = 0;
LABEL_28:
    v9 = 0;
LABEL_29:
    v14 = 0;
    goto LABEL_8;
  }

  v11 = v10;
  [(MIBUChallengeResponse *)self setSignatureBlob:v10];
  v12 = [deserialize objectForKey:&unk_286AC8388];
  if (!v12)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_22);
    }

    v21 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      OUTLINED_FUNCTION_4_0(&dword_259ABF000, v21, v22, "Failed to deserialize cert chain blob", v24);
    }

    v13 = 0;
    goto LABEL_28;
  }

  v13 = v12;
  [(MIBUChallengeResponse *)self setCertChainBlob:v12];
  v9 = 0;
LABEL_7:
  v14 = 1;
LABEL_8:
  [(MIBUNFCResponse *)self setError:v9];

  return v14;
}

- (void)serialize
{
  v10 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_10_0);
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v6 = v4;
    error = [self error];
    v8 = 138543362;
    v9 = error;
    _os_log_error_impl(&dword_259ABF000, v6, OS_LOG_TYPE_ERROR, "Failed to serialize response error: %{public}@", &v8, 0xCu);
  }

  *a2 = 0;
  v5 = *MEMORY[0x277D85DE8];
}

@end