@interface CNLocalizationServices
+ (CNLocalizationServices)defaultServices;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table bundleForClass:(Class)class comment:(id)comment;
@end

@implementation CNLocalizationServices

+ (CNLocalizationServices)defaultServices
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CNLocalizationServices_defaultServices__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table bundleForClass:(Class)class comment:(id)comment
{
  v10 = MEMORY[0x1E696AAE8];
  tableCopy = table;
  valueCopy = value;
  keyCopy = key;
  v14 = [v10 bundleForClass:class];
  v15 = [v14 localizedStringForKey:keyCopy value:valueCopy table:tableCopy];

  return v15;
}

@end