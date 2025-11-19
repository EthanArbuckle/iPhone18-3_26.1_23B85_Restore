@interface HMDDeviceCapabilitiesModelEncodeWithCoder
@end

@implementation HMDDeviceCapabilitiesModelEncodeWithCoder

void ____HMDDeviceCapabilitiesModelEncodeWithCoder_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  NSSelectorFromString(v5);
  v6 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v7 = [*(a1 + 32) valueForKey:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      [*(a1 + 40) encodeBool:objc_msgSend(v9 forKey:{"BOOLValue"), v10}];
    }
  }
}

@end