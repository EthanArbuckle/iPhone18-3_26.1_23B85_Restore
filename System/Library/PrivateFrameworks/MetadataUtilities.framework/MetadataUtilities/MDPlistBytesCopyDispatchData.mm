@interface MDPlistBytesCopyDispatchData
@end

@implementation MDPlistBytesCopyDispatchData

void ___MDPlistBytesCopyDispatchData_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x1E69E9840];

  CFRelease(v1);
}

@end