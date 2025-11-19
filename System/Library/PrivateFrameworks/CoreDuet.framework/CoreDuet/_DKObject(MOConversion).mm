@interface _DKObject(MOConversion)
@end

@implementation _DKObject(MOConversion)

- (void)copyToManagedObject:()MOConversion .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [a1 creationDate];
  OUTLINED_FUNCTION_1();
  v9 = 2112;
  v10 = a2;
  v11 = 2112;
  v12 = a1;
  _os_log_fault_impl(&dword_191750000, a3, OS_LOG_TYPE_FAULT, "rdar://77234991 encountered event with non-matching dates (creationDate %@, now %@): %@", v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end