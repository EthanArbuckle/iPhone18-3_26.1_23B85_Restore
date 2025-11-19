@interface FCAMSBag
+ (id)bag;
@end

@implementation FCAMSBag

+ (id)bag
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __15__FCAMSBag_bag__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1EDB278C0 != -1)
  {
    dispatch_once(&qword_1EDB278C0, block);
  }

  v2 = _MergedGlobals_199;

  return v2;
}

uint64_t __15__FCAMSBag_bag__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_self();
  v2 = MEMORY[0x1E698C7E0];
  v3 = [MEMORY[0x1E698C9A0] bagKeySet];
  [v2 registerBagKeySet:v3 forProfile:@"AppleNews" profileVersion:@"1"];

  v4 = MEMORY[0x1E698C7E0];
  v5 = [MEMORY[0x1E698CAF8] bagKeySet];
  [v4 registerBagKeySet:v5 forProfile:@"AppleNews" profileVersion:@"1"];

  v6 = MEMORY[0x1E698C7E0];
  v7 = [MEMORY[0x1E698CAE8] bagKeySet];
  [v6 registerBagKeySet:v7 forProfile:@"AppleNews" profileVersion:@"1"];

  v8 = MEMORY[0x1E698C7E0];
  v9 = [MEMORY[0x1E698CB70] bagKeySet];
  [v8 registerBagKeySet:v9 forProfile:@"AppleNews" profileVersion:@"1"];

  v10 = MEMORY[0x1E698C7E0];
  v11 = [MEMORY[0x1E698CA00] bagKeySet];
  [v10 registerBagKeySet:v11 forProfile:@"AppleNews" profileVersion:@"1"];

  v12 = MEMORY[0x1E698C7E0];
  v13 = [MEMORY[0x1E698C9F0] bagKeySet];
  [v12 registerBagKeySet:v13 forProfile:@"AppleNews" profileVersion:@"1"];

  v14 = MEMORY[0x1E698C7E0];
  v15 = [MEMORY[0x1E698C8A8] bagKeySet];
  [v14 registerBagKeySet:v15 forProfile:@"AppleNews" profileVersion:@"1"];

  v16 = MEMORY[0x1E698C7E0];
  v17 = [MEMORY[0x1E698CB88] bagKeySet];
  [v16 registerBagKeySet:v17 forProfile:@"AppleNews" profileVersion:@"1"];

  v18 = MEMORY[0x1E698C7E0];
  v19 = [MEMORY[0x1E698C9E8] bagKeySet];
  [v18 registerBagKeySet:v19 forProfile:@"AppleNews" profileVersion:@"1"];

  v20 = MEMORY[0x1E698C7E0];
  v21 = [MEMORY[0x1E698C970] bagKeySet];
  [v20 registerBagKeySet:v21 forProfile:@"AppleNews" profileVersion:@"1"];

  _MergedGlobals_199 = [MEMORY[0x1E698C7D8] bagForProfile:@"AppleNews" profileVersion:@"1"];

  return MEMORY[0x1EEE66BB8]();
}

@end