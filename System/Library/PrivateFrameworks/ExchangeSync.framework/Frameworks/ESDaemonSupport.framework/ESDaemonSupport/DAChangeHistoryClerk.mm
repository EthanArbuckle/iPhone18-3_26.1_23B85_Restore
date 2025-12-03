@interface DAChangeHistoryClerk
+ (id)clerkWithAddressBook:(void *)book;
+ (id)clerkWithContactStore:(id)store;
- (id)identifiersOfAllRegisterdClients;
- (void)registerClientWithIdentifier:(id)identifier forContainer:(id)container;
- (void)unregisterClientWithIdentifier:(id)identifier forContainer:(id)container;
@end

@implementation DAChangeHistoryClerk

+ (id)clerkWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_DAChangeHistoryContactsClerk alloc] initWithContactStore:storeCopy];

  return v4;
}

+ (id)clerkWithAddressBook:(void *)book
{
  v3 = [[_DAChangeHistoryABLegacyClerk alloc] initWithAddressBook:book];

  return v3;
}

- (void)unregisterClientWithIdentifier:(id)identifier forContainer:(id)container
{
  identifierCopy = identifier;
  containerCopy = container;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"unregisterClientWithIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (void)registerClientWithIdentifier:(id)identifier forContainer:(id)container
{
  identifierCopy = identifier;
  containerCopy = container;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"registerClientWithIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (id)identifiersOfAllRegisterdClients
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"identifiersOfAllRegisterdClients: is abstract" userInfo:0];
  objc_exception_throw(v2);
}

@end