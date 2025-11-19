@interface ISIcon(LIIconVariant)
@end

@implementation ISIcon(LIIconVariant)

+ (void)variantInfoForSet:()LIIconVariant count:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Unknown variant set %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end