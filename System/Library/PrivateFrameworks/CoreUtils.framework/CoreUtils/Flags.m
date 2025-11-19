@interface Flags
@end

@implementation Flags

void __initValEasyConfigKey_Flags_block_invoke()
{
  if (EasyConfigLibrary_sOnce != -1)
  {
    dispatch_once(&EasyConfigLibrary_sOnce, &__block_literal_global_174);
  }

  v0 = dlsym(EasyConfigLibrary_sLib, "EasyConfigKey_Flags");
  if (v0)
  {
    objc_storeStrong(&constantValEasyConfigKey_Flags, *v0);
  }

  getEasyConfigKey_Flags = EasyConfigKey_FlagsFunction;
}

@end