@interface MDPlistBytesCreate
@end

@implementation MDPlistBytesCreate

_MDPlistBytes *____MDPlistBytesCreate_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = objc_alloc_init(_MDPlistBytes);
  qword_1ED6F3FD8 = result;
  *(result + 34) |= 4u;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end