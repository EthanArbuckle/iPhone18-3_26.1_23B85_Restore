@interface DAChangeHistoryClerk
+ (id)clerkWithAddressBook:(void *)a3;
+ (id)clerkWithContactStore:(id)a3;
- (id)identifiersOfAllRegisterdClients;
- (void)registerClientWithIdentifier:(id)a3 forContainer:(id)a4;
- (void)unregisterClientWithIdentifier:(id)a3 forContainer:(id)a4;
@end

@implementation DAChangeHistoryClerk

+ (id)clerkWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_DAChangeHistoryContactsClerk alloc] initWithContactStore:v3];

  return v4;
}

+ (id)clerkWithAddressBook:(void *)a3
{
  v3 = [[_DAChangeHistoryABLegacyClerk alloc] initWithAddressBook:a3];

  return v3;
}

- (void)unregisterClientWithIdentifier:(id)a3 forContainer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"unregisterClientWithIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (void)registerClientWithIdentifier:(id)a3 forContainer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"registerClientWithIdentifier: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (id)identifiersOfAllRegisterdClients
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"identifiersOfAllRegisterdClients: is abstract" userInfo:0];
  objc_exception_throw(v2);
}

@end