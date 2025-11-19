@interface IsLLVMDylibLoaded
@end

@implementation IsLLVMDylibLoaded

char *___IsLLVMDylibLoaded_block_invoke()
{
  result = _dyld_image_count();
  if (result)
  {
    v1 = result;
    v2 = 0;
    while (1)
    {
      image_name = _dyld_get_image_name(v2);
      result = strstr(image_name, "libLLVM.dylib");
      if (result)
      {
        break;
      }

      if (v1 == ++v2)
      {
        return result;
      }
    }

    _IsLLVMDylibLoaded_llvmLoaded = 1;
  }

  return result;
}

@end