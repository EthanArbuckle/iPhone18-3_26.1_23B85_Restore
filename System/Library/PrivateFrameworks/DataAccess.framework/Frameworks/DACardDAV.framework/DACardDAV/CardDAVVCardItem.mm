@interface CardDAVVCardItem
+ (Class)currentImplementationClass;
+ (id)itemWithABRecord:(void *)record addressBook:(void *)book outNeedsDBSave:(BOOL *)save maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize inContainerWithURL:(id)l afterImageSyncFailed:(BOOL)failed;
+ (id)itemWithDACardDAVRecord:(id)record contactStore:(id)store outNeedsDBSave:(BOOL *)save maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize inContainerWithURL:(id)l;
- (BOOL)deleteFromContainer:(void *)container;
- (BOOL)deleteFromContainer:(void *)container account:(id)account;
- (BOOL)loadLocalItemWithAccount:(id)account;
- (BOOL)saveServerIDToExistingItem;
- (CardDAVVCardItem)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider;
- (NSData)dataPayload;
- (NSMutableDictionary)UUIDToPersonCache;
- (NSNumber)clientID;
- (NSString)syncKey;
- (NSURL)serverID;
- (id)convertToDAContactSearchResultElement;
- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)type;
- (unsigned)abRecordType;
- (void)abRecord;
- (void)loadClientIDs;
- (void)setClientID:(id)d;
- (void)setLocalItem:(void *)item;
- (void)setServerID:(id)d;
- (void)setUUIDToPersonCache:(id)cache;
@end

@implementation CardDAVVCardItem

+ (Class)currentImplementationClass
{
  useContactsFramework = [MEMORY[0x277D03910] useContactsFramework];
  v3 = off_278F1A920;
  if (!useContactsFramework)
  {
    v3 = off_278F1A918;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

+ (id)itemWithABRecord:(void *)record addressBook:(void *)book outNeedsDBSave:(BOOL *)save maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize inContainerWithURL:(id)l afterImageSyncFailed:(BOOL)failed
{
  lCopy = l;
  LOBYTE(v17) = failed;
  v15 = [[CardDAVVCardItemABImplementation alloc] initWithABRecord:record addressBook:book outNeedsDBSave:save maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:lCopy afterImageSyncFailed:v17];

  return v15;
}

+ (id)itemWithDACardDAVRecord:(id)record contactStore:(id)store outNeedsDBSave:(BOOL *)save maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize inContainerWithURL:(id)l
{
  lCopy = l;
  storeCopy = store;
  recordCopy = record;
  v16 = [[CardDAVVCardItemCNImplementation alloc] initWithDACardDAVRecord:recordCopy contactStore:storeCopy outNeedsDBSave:save maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:lCopy];

  return v16;
}

- (CardDAVVCardItem)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:54 description:@"Subclasses implement"];

  return 0;
}

- (void)setLocalItem:(void *)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:71 description:@"Subclasses implement"];
}

- (BOOL)loadLocalItemWithAccount:(id)account
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:76 description:@"Subclasses implement"];

  return 0;
}

- (BOOL)saveServerIDToExistingItem
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:81 description:@"Subclasses implement"];

  return 0;
}

- (BOOL)deleteFromContainer:(void *)container account:(id)account
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:86 description:@"Subclasses implement"];

  return 0;
}

- (BOOL)deleteFromContainer:(void *)container
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:92 description:{@"Should never be called, see comments in CardDAVVCardItem.h"}];

  return 0;
}

- (void)loadClientIDs
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:103 description:@"Subclasses implement"];
}

- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)type
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:108 description:@"Subclasses implement"];

  return 0;
}

- (id)convertToDAContactSearchResultElement
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:113 description:@"Subclasses implement"];

  return 0;
}

- (NSURL)serverID
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:118 description:@"Subclasses implement"];

  return 0;
}

- (void)setServerID:(id)d
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:123 description:@"Subclasses implement"];
}

- (NSNumber)clientID
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:129 description:@"Subclasses implement"];

  return 0;
}

- (void)setClientID:(id)d
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:134 description:@"Subclasses implement"];
}

- (NSData)dataPayload
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:139 description:@"Subclasses implement"];

  return 0;
}

- (void)abRecord
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:144 description:@"Subclasses implement"];

  return 0;
}

- (unsigned)abRecordType
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:149 description:@"Subclasses implement"];

  return -1;
}

- (NSString)syncKey
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:155 description:@"Subclasses implement"];

  return 0;
}

- (NSMutableDictionary)UUIDToPersonCache
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:160 description:@"Subclasses implement"];

  return 0;
}

- (void)setUUIDToPersonCache:(id)cache
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:165 description:@"Subclasses implement"];
}

@end