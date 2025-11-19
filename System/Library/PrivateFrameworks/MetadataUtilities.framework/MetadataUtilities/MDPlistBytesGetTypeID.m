@interface MDPlistBytesGetTypeID
@end

@implementation MDPlistBytesGetTypeID

uint64_t ___MDPlistBytesGetTypeID_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  qword_1ED6F3F58 = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end