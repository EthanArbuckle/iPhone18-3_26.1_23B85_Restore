@interface _DKEvent(MOConversion)
@end

@implementation _DKEvent(MOConversion)

- (void)metadataFromCustomMetadata:()MOConversion .cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unarchiving object %@", buf, 0xCu);
}

+ (void)objectFromManagedObject:()MOConversion readMetadata:excludedMetadataKeys:cache:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 name];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Error loading custom metadata for object in stream %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)copyMetadata:()MOConversion toManagedObject:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Unable to convert value because it does not conform to NSSecureCoding.", buf, 2u);
}

+ (void)copyMetadata:()MOConversion toManagedObject:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_191750000, v0, OS_LOG_TYPE_FAULT, "Event structured metadata failed on NSKeyedArchiver: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end