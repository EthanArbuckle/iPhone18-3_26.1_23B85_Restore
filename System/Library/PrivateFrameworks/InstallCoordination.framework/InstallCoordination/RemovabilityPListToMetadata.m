@interface RemovabilityPListToMetadata
@end

@implementation RemovabilityPListToMetadata

void ___RemovabilityPListToMetadata_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v9 = v7;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    objc_opt_class();
    v11 = v8;
    if (objc_opt_isKindOfClass())
    {
      if (v11)
      {
        v12 = [[IXApplicationIdentity alloc] initWithPlistKeySerialization:v9];
        if (v12)
        {
          v13 = *(a1 + 40);
          v14 = v11;
          v15 = v12;
          if (v13 == 2)
          {
            v17 = [[IXAppRemovabilityMetadata alloc] initWithMetadataDictionary:v14];
            v16 = [[IXAppRemovabilityMetadataList alloc] initWithInitialRemovabilityMetadata:v17];
          }

          else if (v13 == 3)
          {
            v16 = [[IXAppRemovabilityMetadataList alloc] initWithSerializedDictionary:v14];
          }

          else
          {
            v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              ___RemovabilityPListToMetadata_block_invoke_cold_1();
            }

            v16 = 0;
          }

          [*(a1 + 32) setObject:v16 forKeyedSubscript:v15];
        }

        else
        {
          v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
          {
            ___RemovabilityPListToMetadata_block_invoke_cold_2();
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ___RemovabilityPListToMetadata_block_invoke_cold_3();
    }
  }

  else
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ___RemovabilityPListToMetadata_block_invoke_cold_4();
    }
  }

LABEL_24:

  *a4 = 0;
}

void ___RemovabilityPListToMetadata_block_invoke_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to deserialize removability metadata for identity %@, version %lu", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void ___RemovabilityPListToMetadata_block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___RemovabilityPListToMetadata_block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___RemovabilityPListToMetadata_block_invoke_cold_4()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Deserialized key for removability entry is not string %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

@end