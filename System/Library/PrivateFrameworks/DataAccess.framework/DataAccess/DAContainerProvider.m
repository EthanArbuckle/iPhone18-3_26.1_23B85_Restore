@interface DAContainerProvider
+ (id)providerWithAddressBook:(void *)a3;
+ (id)providerWithContactStore:(id)a3;
- (BOOL)setLastSyncDateForContainer:(id)a3;
- (id)allContainers;
- (id)allContainersForAccountWithExternalIdentifier:(id)a3;
- (id)containerWithExternalIdentifier:(id)a3 forAccountWithExternalIdentifier:(id)a4;
- (id)createNewContainerWithType:(int)a3 name:(id)a4 externalIdentifier:(id)a5 constraintsPath:(id)a6 syncData:(id)a7 contentReadonly:(BOOL)a8 propertiesReadonly:(BOOL)a9 forAccount:(id)a10;
- (void)mergeAllRecordsIntoContainer:(id)a3 shouldInsertChangeHistoryRecords:(BOOL)a4;
- (void)setDefaultContainer:(id)a3 withLocalDBHelper:(id)a4 onlyIfNotSet:(BOOL)a5;
@end

@implementation DAContainerProvider

+ (id)providerWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_DAContactsContainerProvider alloc] initWithContactStore:v3];

  return v4;
}

+ (id)providerWithAddressBook:(void *)a3
{
  v3 = [[_DAABLegacyContainerProvider alloc] initWithAddressBook:a3];

  return v3;
}

- (id)containerWithExternalIdentifier:(id)a3 forAccountWithExternalIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"containerWithExternalIdentifier:forAccountWithExternalIdentifier is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (id)allContainers
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"allContainers is abstract" userInfo:0];
  objc_exception_throw(v2);
}

- (id)allContainersForAccountWithExternalIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"allContainersForAccountWithExternalIdentifier is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)createNewContainerWithType:(int)a3 name:(id)a4 externalIdentifier:(id)a5 constraintsPath:(id)a6 syncData:(id)a7 contentReadonly:(BOOL)a8 propertiesReadonly:(BOOL)a9 forAccount:(id)a10
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a10;
  v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"createNewContainerWithType is abstract" userInfo:0];
  objc_exception_throw(v18);
}

- (void)setDefaultContainer:(id)a3 withLocalDBHelper:(id)a4 onlyIfNotSet:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"setDefaultContainer:onlyIfNotSet: is abstract" userInfo:0];
  objc_exception_throw(v8);
}

- (BOOL)setLastSyncDateForContainer:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"setLastSyncDateForContainer: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (void)mergeAllRecordsIntoContainer:(id)a3 shouldInsertChangeHistoryRecords:(BOOL)a4
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"mergeAllRecordIntoContainer: is abstract" userInfo:0];
  objc_exception_throw(v5);
}

@end