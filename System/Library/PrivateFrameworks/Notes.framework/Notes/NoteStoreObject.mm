@interface NoteStoreObject
- (BOOL)isHiddenFromIndexing;
- (CSSearchableItemAttributeSet)searchableItemAttributeSet;
- (CSSearchableItemAttributeSet)userActivityContentAttributeSet;
- (NSArray)ancestorStores;
- (NSString)searchDomainIdentifier;
- (NSString)searchIndexingIdentifier;
- (NoteStoreObject)parentStore;
- (id)basicAccountIdentifier;
- (id)collectionInfo;
- (id)notesForGUIDs:(id)ds;
- (id)notesForIntegerIds:(id)ids;
- (id)notesForServerIds:(id)ids;
- (id)titleForTableViewCell;
- (unint64_t)minimumSequenceNumberForServerIntIds:(id)ids;
- (unsigned)maximumServerIntId;
@end

@implementation NoteStoreObject

- (NoteStoreObject)parentStore
{
  externalIdentifier = [(NoteStoreObject *)self externalIdentifier];

  if (externalIdentifier)
  {
    v4 = MEMORY[0x277CBEBC0];
    externalIdentifier2 = [(NoteStoreObject *)self externalIdentifier];
    v6 = [v4 URLWithString:externalIdentifier2];

    uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
    absoluteString = [uRLByDeletingLastPathComponent absoluteString];
    if ([absoluteString hasSuffix:@"/"])
    {
      v9 = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - 1}];

      absoluteString = v9;
    }

    account = [(NoteStoreObject *)self account];
    v11 = [account storeForExternalId:absoluteString];

    account2 = [v11 account];
    defaultStore = [account2 defaultStore];

    if (v11 == defaultStore)
    {
      v14 = 0;
    }

    else
    {
      v14 = v11;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSArray)ancestorStores
{
  array = [MEMORY[0x277CBEB18] array];
  parentStore = [(NoteStoreObject *)self parentStore];
  if (parentStore)
  {
    v5 = parentStore;
    do
    {
      [array addObject:v5];
      parentStore2 = [v5 parentStore];

      v5 = parentStore2;
    }

    while (parentStore2);
  }

  v7 = [array copy];

  return v7;
}

- (id)notesForServerIds:(id)ids
{
  v4 = MEMORY[0x277CBE428];
  idsCopy = ids;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteStoreObject *)self managedObjectContext];
  v9 = [v7 entityForName:@"Note" inManagedObjectContext:managedObjectContext];

  [v6 setEntity:v9];
  idsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(store == %@) AND (serverId IN %@)", self, idsCopy];

  [v6 setPredicate:idsCopy];
  managedObjectContext2 = [(NoteStoreObject *)self managedObjectContext];
  v12 = [managedObjectContext2 executeFetchRequest:v6 error:0];

  return v12;
}

- (id)notesForIntegerIds:(id)ids
{
  v4 = MEMORY[0x277CBE428];
  idsCopy = ids;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteStoreObject *)self managedObjectContext];
  v9 = [v7 entityForName:@"Note" inManagedObjectContext:managedObjectContext];

  [v6 setEntity:v9];
  idsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(store == %@) AND (integerId IN %@)", self, idsCopy];

  [v6 setPredicate:idsCopy];
  managedObjectContext2 = [(NoteStoreObject *)self managedObjectContext];
  v12 = [managedObjectContext2 executeFetchRequest:v6 error:0];

  return v12;
}

- (id)notesForGUIDs:(id)ds
{
  v4 = MEMORY[0x277CBE428];
  dsCopy = ds;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteStoreObject *)self managedObjectContext];
  v9 = [v7 entityForName:@"Note" inManagedObjectContext:managedObjectContext];

  [v6 setEntity:v9];
  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(store == %@) AND (guid IN %@)", self, dsCopy];

  [v6 setPredicate:dsCopy];
  managedObjectContext2 = [(NoteStoreObject *)self managedObjectContext];
  v12 = [managedObjectContext2 executeFetchRequest:v6 error:0];

  return v12;
}

- (unsigned)maximumServerIntId
{
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteStoreObject *)self managedObjectContext];
  v6 = [v4 entityForName:@"Note" inManagedObjectContext:managedObjectContext];

  [v3 setEntity:v6];
  predicateForNotes = [(NoteStoreObject *)self predicateForNotes];
  [v3 setPredicate:predicateForNotes];

  v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"externalServerIntId" ascending:0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
  [v3 setSortDescriptors:v9];

  [v3 setFetchLimit:1];
  managedObjectContext2 = [(NoteStoreObject *)self managedObjectContext];
  v18 = 0;
  v11 = [managedObjectContext2 executeFetchRequest:v3 error:&v18];
  v12 = v18;

  if (v12)
  {
    userInfo = [v12 userInfo];
    NSLog(&cfstr_UnresolvedErro.isa, self, v12, userInfo);

    v14 = 0;
  }

  else
  {
    lastObject = [v11 lastObject];
    serverIntId = [lastObject serverIntId];

    v14 = serverIntId & ~(serverIntId >> 63);
  }

  return v14;
}

- (unint64_t)minimumSequenceNumberForServerIntIds:(id)ids
{
  v4 = MEMORY[0x277CBE428];
  idsCopy = ids;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteStoreObject *)self managedObjectContext];
  v9 = [v7 entityForName:@"Note" inManagedObjectContext:managedObjectContext];

  [v6 setEntity:v9];
  idsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(store == %@) AND (externalServerIntId IN %@)", self, idsCopy];

  [v6 setPredicate:idsCopy];
  v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"externalSequenceNumber" ascending:1];
  v12 = [MEMORY[0x277CBEA60] arrayWithObject:v11];
  [v6 setSortDescriptors:v12];

  [v6 setFetchLimit:1];
  managedObjectContext2 = [(NoteStoreObject *)self managedObjectContext];
  v19 = 0;
  v14 = [managedObjectContext2 executeFetchRequest:v6 error:&v19];
  v15 = v19;

  if (v15)
  {
    userInfo = [v15 userInfo];
    NSLog(&cfstr_UnresolvedErro_0.isa, self, v15, userInfo);
    sequenceNumber = 0;
  }

  else
  {
    userInfo = [v14 lastObject];
    sequenceNumber = [userInfo sequenceNumber];
  }

  return sequenceNumber;
}

- (id)collectionInfo
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  [v3 setValue:@"Store" forKey:@"NoteCollectionType"];
  account = [(NoteStoreObject *)self account];
  accountIdentifier = [account accountIdentifier];
  [v3 setValue:accountIdentifier forKey:@"NoteCollectionPrimaryIdentifier"];

  externalIdentifier = [(NoteStoreObject *)self externalIdentifier];
  [v3 setValue:externalIdentifier forKey:@"NoteCollectionSecondaryIdentifier"];

  return v3;
}

- (id)basicAccountIdentifier
{
  account = [(NoteStoreObject *)self account];
  accountIdentifier = [account accountIdentifier];

  return accountIdentifier;
}

- (NSString)searchDomainIdentifier
{
  account = [(NoteStoreObject *)self account];
  searchDomainIdentifier = [account searchDomainIdentifier];

  return searchDomainIdentifier;
}

- (id)titleForTableViewCell
{
  account = [(NoteStoreObject *)self account];
  defaultStore = [account defaultStore];
  v5 = [(NoteStoreObject *)self isEqual:defaultStore];

  if (v5)
  {
    __ICLocalizedFrameworkString_impl(@"Notes", @"Notes", 0);
  }

  else
  {
    [(NoteStoreObject *)self name];
  }
  v6 = ;

  return v6;
}

- (BOOL)isHiddenFromIndexing
{
  account = [(NoteStoreObject *)self account];
  didChooseToMigrate = [account didChooseToMigrate];

  return didChooseToMigrate;
}

- (NSString)searchIndexingIdentifier
{
  objectID = [(NoteStoreObject *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];

  return absoluteString;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v2 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];

  return v2;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  userActivityContentAttributeSet = [(NoteStoreObject *)self userActivityContentAttributeSet];
  name = [(NoteStoreObject *)self name];
  [userActivityContentAttributeSet setDisplayName:name];

  name2 = [(NoteStoreObject *)self name];
  [userActivityContentAttributeSet setTextContent:name2];

  [userActivityContentAttributeSet setIc_searchResultType:3];
  account = [(NoteStoreObject *)self account];
  if ([account preventMovingNotesToOtherAccounts])
  {
    v7 = &unk_286E32AC8;
  }

  else
  {
    v7 = &unk_286E32AE0;
  }

  [userActivityContentAttributeSet setDataOwnerType:v7];

  [userActivityContentAttributeSet ic_populateValuesForSpecializedFields];
  if (objc_opt_respondsToSelector())
  {
    [(NoteStoreObject *)self associateAppEntityWithSearchableItemAttributeSet:userActivityContentAttributeSet];
  }

  return userActivityContentAttributeSet;
}

@end