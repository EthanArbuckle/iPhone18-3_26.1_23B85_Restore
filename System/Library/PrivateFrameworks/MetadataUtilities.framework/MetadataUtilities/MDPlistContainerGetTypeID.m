@interface MDPlistContainerGetTypeID
@end

@implementation MDPlistContainerGetTypeID

uint64_t ___MDPlistContainerGetTypeID_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kMDPlistContainerTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end