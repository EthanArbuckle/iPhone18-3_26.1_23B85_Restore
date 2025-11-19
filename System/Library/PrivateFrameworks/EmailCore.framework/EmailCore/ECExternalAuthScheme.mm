@interface ECExternalAuthScheme
+ (ECExternalAuthScheme)externalAuthScheme;
+ (id)allocWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation ECExternalAuthScheme

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot directly allocate a %@ object, use +sharedInstance instead.", a1];
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v6);
  }

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___ECExternalAuthScheme;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
}

+ (ECExternalAuthScheme)externalAuthScheme
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ECExternalAuthScheme_externalAuthScheme__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (externalAuthScheme_predicate != -1)
  {
    dispatch_once(&externalAuthScheme_predicate, block);
  }

  v2 = externalAuthScheme_sharedInstance;

  return v2;
}

void __42__ECExternalAuthScheme_externalAuthScheme__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___ECExternalAuthScheme;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = externalAuthScheme_sharedInstance;
  externalAuthScheme_sharedInstance = v1;
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
  v5.super_class = ECExternalAuthScheme;
  [(ECExternalAuthScheme *)&v5 dealloc];
}

@end