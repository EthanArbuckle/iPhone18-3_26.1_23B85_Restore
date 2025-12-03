@interface DAContactsAccountProvider
+ (id)providerWithAddressBook:(void *)book;
+ (id)providerWithContactStore:(id)store;
- (id)accountByCreatingAccountWithExternalIdentifier:(id)identifier;
- (id)accountForContainerWithIdentifier:(id)identifier;
- (id)allAccounts;
- (id)fetchedAccountWithExternalIdentifier:(id)identifier;
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

- (id)fetchedAccountWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"fetchedAccountWithExternalIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)accountByCreatingAccountWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"accountByCreatingAccountWithExternalIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v4);
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