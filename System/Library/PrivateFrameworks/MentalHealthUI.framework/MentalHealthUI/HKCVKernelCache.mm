@interface HKCVKernelCache
- (HKCVKernelCache)init;
- (uint64_t)kernelWithIdentifier:(void *)identifier fromLibrary:(uint64_t)library archive:;
- (void)dealloc;
@end

@implementation HKCVKernelCache

- (HKCVKernelCache)init
{
  v4.receiver = self;
  v4.super_class = HKCVKernelCache;
  v2 = [(HKCVKernelCache *)&v4 init];
  if (v2)
  {
    v2->_cache = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = HKCVKernelCache;
  [(HKCVKernelCache *)&v3 dealloc];
}

- (uint64_t)kernelWithIdentifier:(void *)identifier fromLibrary:(uint64_t)library archive:
{
  if (!self)
  {
    return 0;
  }

  v8 = [*(self + 8) objectForKey:a2];
  if (v8)
  {
    v9 = v8;
    v10 = v8;
  }

  else
  {
    v9 = NewComputePipelineState(identifier, library);
    [*(self + 8) setObject:v9 forKey:a2];
  }

  return v9;
}

@end