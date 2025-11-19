@interface ECCramMD5AuthScheme
+ (ECCramMD5AuthScheme)cramMD5AuthScheme;
+ (id)allocWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation ECCramMD5AuthScheme

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot directly allocate a %@ object, use +sharedInstance instead.", a1];
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v6);
  }

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___ECCramMD5AuthScheme;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
}

+ (ECCramMD5AuthScheme)cramMD5AuthScheme
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ECCramMD5AuthScheme_cramMD5AuthScheme__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (cramMD5AuthScheme_predicate != -1)
  {
    dispatch_once(&cramMD5AuthScheme_predicate, block);
  }

  v2 = cramMD5AuthScheme_sharedInstance;

  return v2;
}

void __40__ECCramMD5AuthScheme_cramMD5AuthScheme__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___ECCramMD5AuthScheme;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = cramMD5AuthScheme_sharedInstance;
  cramMD5AuthScheme_sharedInstance = v1;
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
  v5.super_class = ECCramMD5AuthScheme;
  [(ECCramMD5AuthScheme *)&v5 dealloc];
}

@end