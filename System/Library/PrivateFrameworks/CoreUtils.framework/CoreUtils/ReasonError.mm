@interface ReasonError
@end

@implementation ReasonError

void __initValEasyConfigKey_ReasonError_block_invoke()
{
  if (EasyConfigLibrary_sOnce != -1)
  {
    dispatch_once(&EasyConfigLibrary_sOnce, &__block_literal_global_174);
  }

  v0 = dlsym(EasyConfigLibrary_sLib, "EasyConfigKey_ReasonError");
  if (v0)
  {
    objc_storeStrong(&constantValEasyConfigKey_ReasonError, *v0);
  }

  getEasyConfigKey_ReasonError = EasyConfigKey_ReasonErrorFunction;
}

@end