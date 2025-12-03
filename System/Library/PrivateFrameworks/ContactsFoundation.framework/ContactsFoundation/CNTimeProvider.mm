@interface CNTimeProvider
+ (CNTimeProvider)defaultProvider;
@end

@implementation CNTimeProvider

uint64_t __33__CNTimeProvider_defaultProvider__block_invoke(uint64_t a1)
{
  defaultProvider_cn_once_object_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

+ (CNTimeProvider)defaultProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CNTimeProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultProvider_cn_once_token_0 != -1)
  {
    dispatch_once(&defaultProvider_cn_once_token_0, block);
  }

  v2 = defaultProvider_cn_once_object_0;

  return v2;
}

@end