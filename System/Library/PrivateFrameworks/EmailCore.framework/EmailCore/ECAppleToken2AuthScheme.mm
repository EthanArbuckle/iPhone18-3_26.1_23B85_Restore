@interface ECAppleToken2AuthScheme
+ (ECAppleToken2AuthScheme)appleToken2AuthScheme;
+ (id)allocWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation ECAppleToken2AuthScheme

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot directly allocate a %@ object, use +sharedInstance instead.", self];
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v6);
  }

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___ECAppleToken2AuthScheme;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
}

+ (ECAppleToken2AuthScheme)appleToken2AuthScheme
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ECAppleToken2AuthScheme_appleToken2AuthScheme__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (appleToken2AuthScheme_predicate != -1)
  {
    dispatch_once(&appleToken2AuthScheme_predicate, block);
  }

  v2 = appleToken2AuthScheme_sharedInstance;

  return v2;
}

void __48__ECAppleToken2AuthScheme_appleToken2AuthScheme__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___ECAppleToken2AuthScheme;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = appleToken2AuthScheme_sharedInstance;
  appleToken2AuthScheme_sharedInstance = v1;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot deallocate a %@ object.", objc_opt_class()];
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v4);
  }

  v5.receiver = self;
  v5.super_class = ECAppleToken2AuthScheme;
  [(ECAppleToken2AuthScheme *)&v5 dealloc];
}

@end