@interface ACAccountStore
@end

@implementation ACAccountStore

uint64_t __90__ACAccountStore_BRAdditions__br_allEnabledAppleAccountsIncludingDataSeparated_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 br_isEligibleiCloudAccount] && objc_msgSend(v3, "br_isEnabledForCloudDocs"))
  {
    if (*(a1 + 32))
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isDataSeparatedAccount] ^ 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __52__ACAccountStore_BRAdditions__br_accountForPersona___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _accountForPersona;
  _accountForPersona = v0;

  return +[BRAccount startAccountTokenChangeObserverIfNeeded];
}

@end