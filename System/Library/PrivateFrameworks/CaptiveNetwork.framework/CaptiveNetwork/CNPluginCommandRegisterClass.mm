@interface CNPluginCommandRegisterClass
@end

@implementation CNPluginCommandRegisterClass

uint64_t ____CNPluginCommandRegisterClass_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kCNPluginCommandTypeID = result;
  return result;
}

@end