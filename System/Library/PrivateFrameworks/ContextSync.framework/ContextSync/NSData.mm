@interface NSData
- (id)bmdsl_deserialize;
@end

@implementation NSData

- (id)bmdsl_deserialize
{
  selfCopy = self;
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = MEMORY[0x277CCAAC8];
    allowed = [MEMORY[0x277CF0DE0] allowed];
    v15 = 0;
    selfCopy = [v2 unarchivedObjectOfClasses:allowed fromData:selfCopy error:&v15];
    v4 = v15;

    if (!selfCopy)
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v16) = HIDWORD(v4);
        OUTLINED_FUNCTION_0_3(&dword_244177000, v6, v7, "Failed to unarchive DSL %@", v8, v9, v10, v11, v14, v15, 2u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

@end