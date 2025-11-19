@interface SYChange(Additions)
@end

@implementation SYChange(Additions)

+ (void)changeWithObject:()Additions updateType:store:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_1DF835000, a2, OS_LOG_TYPE_FAULT, "SYObject %p does not provide the required syncId!", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end