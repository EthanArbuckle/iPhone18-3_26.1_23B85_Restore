@interface HMDDeviceCapabilitiesModelDecodeWithCoder
@end

@implementation HMDDeviceCapabilitiesModelDecodeWithCoder

void ____HMDDeviceCapabilitiesModelDecodeWithCoder_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsValueForKey:v9])
  {
    NSSelectorFromString(v5);
    v6 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", v9)}];
      [v7 setValue:v8 forKey:v5];
    }
  }
}

@end