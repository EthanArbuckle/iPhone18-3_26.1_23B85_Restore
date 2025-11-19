@interface LACBATS
+ (BOOL)_isBATSEnvironmentSet;
+ (id)sharedInstance;
- (LACBATS)init;
@end

@implementation LACBATS

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[LACBATS sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_4;

  return v3;
}

uint64_t __25__LACBATS_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_4 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (LACBATS)init
{
  v6.receiver = self;
  v6.super_class = LACBATS;
  v2 = [(LACBATS *)&v6 init];
  if (v2)
  {
    v3 = +[LACBATS _isBATSEnvironmentSet];
    v2->_wasLaunchedByBATS = v3;
    if (v3)
    {
      v2->_isRunningInBATS = 1;
      [LACGlobalDomain setRunningInBATS:MEMORY[0x1E695E118]];
    }

    else
    {
      v4 = +[LACGlobalDomain runningInBATS];
      v2->_isRunningInBATS = [v4 BOOLValue];
    }
  }

  return v2;
}

+ (BOOL)_isBATSEnvironmentSet
{
  v2 = os_variant_allows_internal_security_policies();
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 environment];

    v5 = [v4 objectForKeyedSubscript:@"BATS"];
    v6 = [v5 isEqualToString:@"1"];

    LOBYTE(v2) = v6;
  }

  return v2;
}

@end