@interface BMDSL
- (id)bmdsl_serialize;
@end

@implementation BMDSL

- (id)bmdsl_serialize
{
  v15 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v13 = 0;
    v1 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v13];
    v2 = v13;
    if (!v1)
    {
      v3 = __biome_log_for_category();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v14) = HIDWORD(v2);
        OUTLINED_FUNCTION_0_3(&dword_244177000, v4, v5, "Failed to convert DSL to data because %@", v6, v7, v8, v9, v12, v13, 2u);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v1;
}

@end