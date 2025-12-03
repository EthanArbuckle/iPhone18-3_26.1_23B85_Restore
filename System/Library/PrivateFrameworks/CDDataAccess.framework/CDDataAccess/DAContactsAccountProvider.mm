@interface DAContactsAccountProvider
+ (id)providerWithAddressBook:(void *)book;
+ (id)providerWithContactStore:(id)store;
- (id)accountForContainerWithIdentifier:(id)identifier;
- (id)accountWithExternalIdentifier:(id)identifier createIfNecessary:(BOOL)necessary;
- (id)allAccounts;
@end

@implementation DAContactsAccountProvider

+ (id)providerWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_DAContactsAccountContactsProvider alloc] initWithContactStore:storeCopy];

  return v4;
}

+ (id)providerWithAddressBook:(void *)book
{
  v3 = [[_DAContactsAccountABLegacyProvider alloc] initWithAddressBook:book];

  return v3;
}

- (id)accountWithExternalIdentifier:(id)identifier createIfNecessary:(BOOL)necessary
{
  identifierCopy = identifier;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"accountWithExternalIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v5);
}

- (id)allAccounts
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"allAccounts: is abstract" userInfo:0];
  objc_exception_throw(v2);
}

- (id)accountForContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"accountForContainerWithIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

@end