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
- (id)notesForGUIDs:(id)a3;
- (id)notesForIntegerIds:(id)a3;
- (id)notesForServerIds:(id)a3;
- (id)titleForTableViewCell;
- (unint64_t)minimumSequenceNumberForServerIntIds:(id)a3;
- (unsigned)maximumServerIntId;
@end

@implementation NoteStoreObject

- (NoteStoreObject)parentStore
{
  v3 = [(NoteStoreObject *)self externalIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(NoteStoreObject *)self externalIdentifier];
    v6 = [v4 URLWithString:v5];

    v7 = [v6 URLByDeletingLastPathComponent];
    v8 = [v7 absoluteString];
    if ([v8 hasSuffix:@"/"])
    {
      v9 = [v8 substringToIndex:{objc_msgSend(v8, "length") - 1}];

      v8 = v9;
    }

    v10 = [(NoteStoreObject *)self account];
    v11 = [v10 storeForExternalId:v8];

    v12 = [v11 account];
    v13 = [v12 defaultStore];

    if (v11 == v13)
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(NoteStoreObject *)self parentStore];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:v5];
      v6 = [v5 parentStore];

      v5 = v6;
    }

    while (v6);
  }

  v7 = [v3 copy];

  return v7;
}

- (id)notesForServerIds:(id)a3
{
  v4 = MEMORY[0x277CBE428];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CBE408];
  v8 = [(NoteStoreObject *)self managedObjectContext];
  v9 = [v7 entityForName:@"Note" inManagedObjectContext:v8];

  [v6 setEntity:v9];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(store == %@) AND (serverId IN %@)", self, v5];

  [v6 setPredicate:v10];
  v11 = [(NoteStoreObject *)self managedObjectContext];
  v12 = [v11 executeFetchRequest:v6 error:0];

  return v12;
}

- (id)notesForIntegerIds:(id)a3
{
  v4 = MEMORY[0x277CBE428];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CBE408];
  v8 = [(NoteStoreObject *)self managedObjectContext];
  v9 = [v7 entityForName:@"Note" inManagedObjectContext:v8];

  [v6 setEntity:v9];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(store == %@) AND (integerId IN %@)", self, v5];

  [v6 setPredicate:v10];
  v11 = [(NoteStoreObject *)self managedObjectContext];
  v12 = [v11 executeFetchRequest:v6 error:0];

  return v12;
}

- (id)notesForGUIDs:(id)a3
{
  v4 = MEMORY[0x277CBE428];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CBE408];
  v8 = [(NoteStoreObject *)self managedObjectContext];
  v9 = [v7 entityForName:@"Note" inManagedObjectContext:v8];

  [v6 setEntity:v9];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(store == %@) AND (guid IN %@)", self, v5];

  [v6 setPredicate:v10];
  v11 = [(NoteStoreObject *)self managedObjectContext];
  v12 = [v11 executeFetchRequest:v6 error:0];

  return v12;
}

- (unsigned)maximumServerIntId
{
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  v5 = [(NoteStoreObject *)self managedObjectContext];
  v6 = [v4 entityForName:@"Note" inManagedObjectContext:v5];

  [v3 setEntity:v6];
  v7 = [(NoteStoreObject *)self predicateForNotes];
  [v3 setPredicate:v7];

  v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"externalServerIntId" ascending:0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
  [v3 setSortDescriptors:v9];

  [v3 setFetchLimit:1];
  v10 = [(NoteStoreObject *)self managedObjectContext];
  v18 = 0;
  v11 = [v10 executeFetchRequest:v3 error:&v18];
  v12 = v18;

  if (v12)
  {
    v13 = [v12 userInfo];
    NSLog(&cfstr_UnresolvedErro.isa, self, v12, v13);

    v14 = 0;
  }

  else
  {
    v15 = [v11 lastObject];
    v16 = [v15 serverIntId];

    v14 = v16 & ~(v16 >> 63);
  }

  return v14;
}

- (unint64_t)minimumSequenceNumberForServerIntIds:(id)a3
{
  v4 = MEMORY[0x277CBE428];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CBE408];
  v8 = [(NoteStoreObject *)self managedObjectContext];
  v9 = [v7 entityForName:@"Note" inManagedObjectContext:v8];

  [v6 setEntity:v9];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(store == %@) AND (externalServerIntId IN %@)", self, v5];

  [v6 setPredicate:v10];
  v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"externalSequenceNumber" ascending:1];
  v12 = [MEMORY[0x277CBEA60] arrayWithObject:v11];
  [v6 setSortDescriptors:v12];

  [v6 setFetchLimit:1];
  v13 = [(NoteStoreObject *)self managedObjectContext];
  v19 = 0;
  v14 = [v13 executeFetchRequest:v6 error:&v19];
  v15 = v19;

  if (v15)
  {
    v16 = [v15 userInfo];
    NSLog(&cfstr_UnresolvedErro_0.isa, self, v15, v16);
    v17 = 0;
  }

  else
  {
    v16 = [v14 lastObject];
    v17 = [v16 sequenceNumber];
  }

  return v17;
}

- (id)collectionInfo
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  [v3 setValue:@"Store" forKey:@"NoteCollectionType"];
  v4 = [(NoteStoreObject *)self account];
  v5 = [v4 accountIdentifier];
  [v3 setValue:v5 forKey:@"NoteCollectionPrimaryIdentifier"];

  v6 = [(NoteStoreObject *)self externalIdentifier];
  [v3 setValue:v6 forKey:@"NoteCollectionSecondaryIdentifier"];

  return v3;
}

- (id)basicAccountIdentifier
{
  v2 = [(NoteStoreObject *)self account];
  v3 = [v2 accountIdentifier];

  return v3;
}

- (NSString)searchDomainIdentifier
{
  v2 = [(NoteStoreObject *)self account];
  v3 = [v2 searchDomainIdentifier];

  return v3;
}

- (id)titleForTableViewCell
{
  v3 = [(NoteStoreObject *)self account];
  v4 = [v3 defaultStore];
  v5 = [(NoteStoreObject *)self isEqual:v4];

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
  v2 = [(NoteStoreObject *)self account];
  v3 = [v2 didChooseToMigrate];

  return v3;
}

- (NSString)searchIndexingIdentifier
{
  v2 = [(NoteStoreObject *)self objectID];
  v3 = [v2 URIRepresentation];
  v4 = [v3 absoluteString];

  return v4;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v2 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];

  return v2;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  v3 = [(NoteStoreObject *)self userActivityContentAttributeSet];
  v4 = [(NoteStoreObject *)self name];
  [v3 setDisplayName:v4];

  v5 = [(NoteStoreObject *)self name];
  [v3 setTextContent:v5];

  [v3 setIc_searchResultType:3];
  v6 = [(NoteStoreObject *)self account];
  if ([v6 preventMovingNotesToOtherAccounts])
  {
    v7 = &unk_286E32AC8;
  }

  else
  {
    v7 = &unk_286E32AE0;
  }

  [v3 setDataOwnerType:v7];

  [v3 ic_populateValuesForSpecializedFields];
  if (objc_opt_respondsToSelector())
  {
    [(NoteStoreObject *)self associateAppEntityWithSearchableItemAttributeSet:v3];
  }

  return v3;
}

@end