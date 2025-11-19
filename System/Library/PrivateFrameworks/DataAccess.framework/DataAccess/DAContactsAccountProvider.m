@interface DAContactsAccountProvider
+ (id)providerWithAddressBook:(void *)a3;
+ (id)providerWithContactStore:(id)a3;
- (id)accountByCreatingAccountWithExternalIdentifier:(id)a3;
- (id)accountForContainerWithIdentifier:(id)a3;
- (id)allAccounts;
- (id)fetchedAccountWithExternalIdentifier:(id)a3;
@end

@implementation DAContactsAccountProvider

+ (id)providerWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_DAContactsAccountContactsProvider alloc] initWithContactStore:v3];

  return v4;
}

+ (id)providerWithAddressBook:(void *)a3
{
  v3 = [[_DAContactsAccountABLegacyProvider alloc] initWithAddressBook:a3];

  return v3;
}

- (id)fetchedAccountWithExternalIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"fetchedAccountWithExternalIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)accountByCreatingAccountWithExternalIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"accountByCreatingAccountWithExternalIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)allAccounts
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"allAccounts: is abstract" userInfo:0];
  objc_exception_throw(v2);
}

- (id)accountForContainerWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"accountForContainerWithIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

@end