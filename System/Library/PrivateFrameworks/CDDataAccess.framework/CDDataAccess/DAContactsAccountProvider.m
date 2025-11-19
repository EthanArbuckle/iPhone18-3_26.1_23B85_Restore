@interface DAContactsAccountProvider
+ (id)providerWithAddressBook:(void *)a3;
+ (id)providerWithContactStore:(id)a3;
- (id)accountForContainerWithIdentifier:(id)a3;
- (id)accountWithExternalIdentifier:(id)a3 createIfNecessary:(BOOL)a4;
- (id)allAccounts;
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

- (id)accountWithExternalIdentifier:(id)a3 createIfNecessary:(BOOL)a4
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"accountWithExternalIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v5);
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