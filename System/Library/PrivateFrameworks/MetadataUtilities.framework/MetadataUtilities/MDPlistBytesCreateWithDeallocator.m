@interface MDPlistBytesCreateWithDeallocator
@end

@implementation MDPlistBytesCreateWithDeallocator

_MDPlistBytes *____MDPlistBytesCreateWithDeallocator_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = objc_alloc_init(_MDPlistBytes);
  qword_1ED6F3FE8 = result;
  *(result + 34) |= 4u;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end