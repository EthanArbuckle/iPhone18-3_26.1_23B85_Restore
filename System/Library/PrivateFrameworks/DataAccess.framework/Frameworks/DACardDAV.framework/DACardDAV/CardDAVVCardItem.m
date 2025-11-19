@interface CardDAVVCardItem
+ (Class)currentImplementationClass;
+ (id)itemWithABRecord:(void *)a3 addressBook:(void *)a4 outNeedsDBSave:(BOOL *)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 inContainerWithURL:(id)a8 afterImageSyncFailed:(BOOL)a9;
+ (id)itemWithDACardDAVRecord:(id)a3 contactStore:(id)a4 outNeedsDBSave:(BOOL *)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 inContainerWithURL:(id)a8;
- (BOOL)deleteFromContainer:(void *)a3;
- (BOOL)deleteFromContainer:(void *)a3 account:(id)a4;
- (BOOL)loadLocalItemWithAccount:(id)a3;
- (BOOL)saveServerIDToExistingItem;
- (CardDAVVCardItem)initWithURL:(id)a3 eTag:(id)a4 dataPayload:(id)a5 inContainerWithURL:(id)a6 withAccountInfoProvider:(id)a7;
- (NSData)dataPayload;
- (NSMutableDictionary)UUIDToPersonCache;
- (NSNumber)clientID;
- (NSString)syncKey;
- (NSURL)serverID;
- (id)convertToDAContactSearchResultElement;
- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)a3;
- (unsigned)abRecordType;
- (void)abRecord;
- (void)loadClientIDs;
- (void)setClientID:(id)a3;
- (void)setLocalItem:(void *)a3;
- (void)setServerID:(id)a3;
- (void)setUUIDToPersonCache:(id)a3;
@end

@implementation CardDAVVCardItem

+ (Class)currentImplementationClass
{
  v2 = [MEMORY[0x277D03910] useContactsFramework];
  v3 = off_278F1A920;
  if (!v2)
  {
    v3 = off_278F1A918;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

+ (id)itemWithABRecord:(void *)a3 addressBook:(void *)a4 outNeedsDBSave:(BOOL *)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 inContainerWithURL:(id)a8 afterImageSyncFailed:(BOOL)a9
{
  v14 = a8;
  LOBYTE(v17) = a9;
  v15 = [[CardDAVVCardItemABImplementation alloc] initWithABRecord:a3 addressBook:a4 outNeedsDBSave:a5 maxImageSize:a6 maxResourceSize:a7 inContainerWithURL:v14 afterImageSyncFailed:v17];

  return v15;
}

+ (id)itemWithDACardDAVRecord:(id)a3 contactStore:(id)a4 outNeedsDBSave:(BOOL *)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 inContainerWithURL:(id)a8
{
  v13 = a8;
  v14 = a4;
  v15 = a3;
  v16 = [[CardDAVVCardItemCNImplementation alloc] initWithDACardDAVRecord:v15 contactStore:v14 outNeedsDBSave:a5 maxImageSize:a6 maxResourceSize:a7 inContainerWithURL:v13];

  return v16;
}

- (CardDAVVCardItem)initWithURL:(id)a3 eTag:(id)a4 dataPayload:(id)a5 inContainerWithURL:(id)a6 withAccountInfoProvider:(id)a7
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:54 description:@"Subclasses implement"];

  return 0;
}

- (void)setLocalItem:(void *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:71 description:@"Subclasses implement"];
}

- (BOOL)loadLocalItemWithAccount:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:76 description:@"Subclasses implement"];

  return 0;
}

- (BOOL)saveServerIDToExistingItem
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:81 description:@"Subclasses implement"];

  return 0;
}

- (BOOL)deleteFromContainer:(void *)a3 account:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:86 description:@"Subclasses implement"];

  return 0;
}

- (BOOL)deleteFromContainer:(void *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:92 description:{@"Should never be called, see comments in CardDAVVCardItem.h"}];

  return 0;
}

- (void)loadClientIDs
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:103 description:@"Subclasses implement"];
}

- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:108 description:@"Subclasses implement"];

  return 0;
}

- (id)convertToDAContactSearchResultElement
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:113 description:@"Subclasses implement"];

  return 0;
}

- (NSURL)serverID
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:118 description:@"Subclasses implement"];

  return 0;
}

- (void)setServerID:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:123 description:@"Subclasses implement"];
}

- (NSNumber)clientID
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:129 description:@"Subclasses implement"];

  return 0;
}

- (void)setClientID:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:134 description:@"Subclasses implement"];
}

- (NSData)dataPayload
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:139 description:@"Subclasses implement"];

  return 0;
}

- (void)abRecord
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:144 description:@"Subclasses implement"];

  return 0;
}

- (unsigned)abRecordType
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:149 description:@"Subclasses implement"];

  return -1;
}

- (NSString)syncKey
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:155 description:@"Subclasses implement"];

  return 0;
}

- (NSMutableDictionary)UUIDToPersonCache
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:160 description:@"Subclasses implement"];

  return 0;
}

- (void)setUUIDToPersonCache:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItem.m" lineNumber:165 description:@"Subclasses implement"];
}

@end