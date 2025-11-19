@interface ODIGestaltHlpr
+ (id)getSharedInstance;
- (BOOL)hasPKASupport;
- (id)copyAnswer:(__CFString *)a3;
- (int64_t)sikaVersion;
@end

@implementation ODIGestaltHlpr

+ (id)getSharedInstance
{
  if (getSharedInstance_once[0] != -1)
  {
    +[ODIGestaltHlpr getSharedInstance];
  }

  v3 = getSharedInstance_sharedInstance;

  return v3;
}

uint64_t __35__ODIGestaltHlpr_getSharedInstance__block_invoke()
{
  getSharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)hasPKASupport
{
  v2 = [(ODIGestaltHlpr *)self copyAnswer:@"HasPKA"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyAnswer:(__CFString *)a3
{
  if (a3)
  {
    return MGCopyAnswer();
  }

  else
  {
    return 0;
  }
}

- (int64_t)sikaVersion
{
  v3 = [(ODIGestaltHlpr *)self copyAnswer:@"ssIPnsZyWHPGC5sg3Pzkiw"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 BOOLValue])
  {
    v4 = [(ODIGestaltHlpr *)self copyAnswer:@"ssIPnsZyWHPGC5sg3Pzkiw"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v4 isEqualToString:@"t8015"])
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end