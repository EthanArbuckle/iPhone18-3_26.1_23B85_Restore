@interface SGContactStoreFactory
+ (id)contactStore;
+ (id)contactStoreWithDonatedContacts;
@end

@implementation SGContactStoreFactory

+ (id)contactStore
{
  WeakRetained = objc_loadWeakRetained(&_mockContactStore);
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    if (contactStore_onceToken != -1)
    {
      dispatch_once(&contactStore_onceToken, &__block_literal_global_15368);
    }

    v3 = contactStore__instance;
  }

  v4 = v3;

  return v4;
}

+ (id)contactStoreWithDonatedContacts
{
  WeakRetained = objc_loadWeakRetained(&_mockContactStore);
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    if (contactStoreWithDonatedContacts_onceToken != -1)
    {
      dispatch_once(&contactStoreWithDonatedContacts_onceToken, &__block_literal_global_2);
    }

    v3 = contactStoreWithDonatedContacts__instance;
  }

  v4 = v3;

  return v4;
}

void __56__SGContactStoreFactory_contactStoreWithDonatedContacts__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBDAB8]);
  v3 = objc_opt_new();
  [v3 setIncludeDonatedContacts:1];
  v1 = [v0 initWithConfiguration:v3];
  v2 = contactStoreWithDonatedContacts__instance;
  contactStoreWithDonatedContacts__instance = v1;
}

uint64_t __37__SGContactStoreFactory_contactStore__block_invoke()
{
  v0 = objc_opt_new();
  v1 = contactStore__instance;
  contactStore__instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end