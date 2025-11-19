@interface CNLocalizationServices
+ (CNLocalizationServices)defaultServices;
- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5 bundleForClass:(Class)a6 comment:(id)a7;
@end

@implementation CNLocalizationServices

+ (CNLocalizationServices)defaultServices
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CNLocalizationServices_defaultServices__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultServices_cn_once_token_1 != -1)
  {
    dispatch_once(&defaultServices_cn_once_token_1, block);
  }

  v2 = defaultServices_cn_once_object_1;

  return v2;
}

uint64_t __41__CNLocalizationServices_defaultServices__block_invoke(uint64_t a1)
{
  defaultServices_cn_once_object_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5 bundleForClass:(Class)a6 comment:(id)a7
{
  v10 = MEMORY[0x1E696AAE8];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 bundleForClass:a6];
  v15 = [v14 localizedStringForKey:v13 value:v12 table:v11];

  return v15;
}

@end