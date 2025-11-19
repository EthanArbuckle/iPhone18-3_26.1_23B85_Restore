@interface CADNullAppProtectionGuard
+ (id)shared;
@end

@implementation CADNullAppProtectionGuard

+ (id)shared
{
  if (shared_onceToken_55 != -1)
  {
    +[CADNullAppProtectionGuard shared];
  }

  v3 = shared_guard_54;

  return v3;
}

uint64_t __35__CADNullAppProtectionGuard_shared__block_invoke()
{
  shared_guard_54 = objc_alloc_init(CADNullAppProtectionGuard);

  return MEMORY[0x2821F96F8]();
}

@end