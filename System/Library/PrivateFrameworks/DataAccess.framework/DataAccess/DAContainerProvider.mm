@interface DAContainerProvider
+ (id)providerWithAddressBook:(void *)book;
+ (id)providerWithContactStore:(id)store;
- (BOOL)setLastSyncDateForContainer:(id)container;
- (id)allContainers;
- (id)allContainersForAccountWithExternalIdentifier:(id)identifier;
- (id)containerWithExternalIdentifier:(id)identifier forAccountWithExternalIdentifier:(id)externalIdentifier;
- (id)createNewContainerWithType:(int)type name:(id)name externalIdentifier:(id)identifier constraintsPath:(id)path syncData:(id)data contentReadonly:(BOOL)readonly propertiesReadonly:(BOOL)propertiesReadonly forAccount:(id)self0;
- (void)mergeAllRecordsIntoContainer:(id)container shouldInsertChangeHistoryRecords:(BOOL)records;
- (void)setDefaultContainer:(id)container withLocalDBHelper:(id)helper onlyIfNotSet:(BOOL)set;
@end

@implementation DAContainerProvider

+ (id)providerWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_DAContactsContainerProvider alloc] initWithContactStore:storeCopy];

  return v4;
}

+ (id)providerWithAddressBook:(void *)book
{
  v3 = [[_DAABLegacyContainerProvider alloc] initWithAddressBook:book];

  return v3;
}

- (id)containerWithExternalIdentifier:(id)identifier forAccountWithExternalIdentifier:(id)externalIdentifier
{
  identifierCopy = identifier;
  externalIdentifierCopy = externalIdentifier;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"containerWithExternalIdentifier:forAccountWithExternalIdentifier is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (id)allContainers
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"allContainers is abstract" userInfo:0];
  objc_exception_throw(v2);
}

- (id)allContainersForAccountWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"allContainersForAccountWithExternalIdentifier is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)createNewContainerWithType:(int)type name:(id)name externalIdentifier:(id)identifier constraintsPath:(id)path syncData:(id)data contentReadonly:(BOOL)readonly propertiesReadonly:(BOOL)propertiesReadonly forAccount:(id)self0
{
  nameCopy = name;
  identifierCopy = identifier;
  pathCopy = path;
  dataCopy = data;
  accountCopy = account;
  v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"createNewContainerWithType is abstract" userInfo:0];
  objc_exception_throw(v18);
}

- (void)setDefaultContainer:(id)container withLocalDBHelper:(id)helper onlyIfNotSet:(BOOL)set
{
  containerCopy = container;
  helperCopy = helper;
  v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"setDefaultContainer:onlyIfNotSet: is abstract" userInfo:0];
  objc_exception_throw(v8);
}

- (BOOL)setLastSyncDateForContainer:(id)container
{
  containerCopy = container;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"setLastSyncDateForContainer: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (void)mergeAllRecordsIntoContainer:(id)container shouldInsertChangeHistoryRecords:(BOOL)records
{
  containerCopy = container;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"mergeAllRecordIntoContainer: is abstract" userInfo:0];
  objc_exception_throw(v5);
}

@end