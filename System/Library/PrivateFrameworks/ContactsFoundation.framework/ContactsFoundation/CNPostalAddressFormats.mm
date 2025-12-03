@interface CNPostalAddressFormats
+ (id)makeLocalizer;
+ (id)sharedLocalizer;
@end

@implementation CNPostalAddressFormats

+ (id)sharedLocalizer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CNPostalAddressFormats_sharedLocalizer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedLocalizer_cn_once_token_2 != -1)
  {
    dispatch_once(&sharedLocalizer_cn_once_token_2, block);
  }

  v2 = sharedLocalizer_cn_once_object_2;

  return v2;
}

uint64_t __41__CNPostalAddressFormats_sharedLocalizer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) makeLocalizer];
  v2 = sharedLocalizer_cn_once_object_2;
  sharedLocalizer_cn_once_object_2 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)makeLocalizer
{
  v2 = +[(CNEnvironmentBase *)CNEnvironment];
  isExtendedGreenTeaDevice = [v2 isExtendedGreenTeaDevice];

  v4 = off_1E6ED4B20;
  if (!isExtendedGreenTeaDevice)
  {
    v4 = &off_1E6ED4B28;
  }

  v5 = *v4;
  v6 = objc_opt_new();

  return v6;
}

@end