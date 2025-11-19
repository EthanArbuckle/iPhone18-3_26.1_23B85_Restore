@interface CSStore
@end

@implementation CSStore

uint64_t __29___CSStore_setAccessContext___block_invoke()
{
  v0 = CFPreferencesCopyValue(@"CSStoreAssertOnIncorrectQueue", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  if (v0)
  {
    v3 = v0;
    if (objc_opt_respondsToSelector())
    {
      v1 = [v3 BOOLValue];
LABEL_7:
      performConstantAssertions = v1;
      goto LABEL_8;
    }
  }

  if (CSStore2::IsAppleInternal(void)::once != -1)
  {
    dispatch_once(&CSStore2::IsAppleInternal(void)::once, &__block_literal_global_131);
  }

  v1 = 1;
  if (CSStore2::IsAppleInternal(void)::result == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  performMutatingAssertions = v1;

  return MEMORY[0x1EEE66BE0]();
}

@end