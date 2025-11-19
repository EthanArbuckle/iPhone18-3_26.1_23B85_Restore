@interface CNPluginResponseRegisterClass
@end

@implementation CNPluginResponseRegisterClass

uint64_t ____CNPluginResponseRegisterClass_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kCNPluginResponseTypeID = result;
  return result;
}

@end