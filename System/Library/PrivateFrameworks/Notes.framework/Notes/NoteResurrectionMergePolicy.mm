@interface NoteResurrectionMergePolicy
+ (id)sharedNoteResurrectionMergePolicy;
- (BOOL)accountExists:(id)exists;
- (BOOL)resolveConflicts:(id)conflicts error:(id *)error;
- (id)localStoreForNote:(id)note;
- (id)snapshotFromRecord:(id)record;
@end

@implementation NoteResurrectionMergePolicy

+ (id)sharedNoteResurrectionMergePolicy
{
  v2 = sharedNoteResurrectionMergePolicy_sharedMergePolicy;
  if (!sharedNoteResurrectionMergePolicy_sharedMergePolicy)
  {
    v3 = [(NSMergePolicy *)[NoteResurrectionMergePolicy alloc] initWithMergeType:2];
    v4 = sharedNoteResurrectionMergePolicy_sharedMergePolicy;
    sharedNoteResurrectionMergePolicy_sharedMergePolicy = v3;

    v2 = sharedNoteResurrectionMergePolicy_sharedMergePolicy;
  }

  return v2;
}

- (id)localStoreForNote:(id)note
{
  noteCopy = note;
  v4 = objc_alloc_init(MEMORY[0x277CBE440]);
  managedObjectContext = [noteCopy managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:persistentStoreCoordinator];

  v7 = objc_alloc_init(MEMORY[0x277CBE428]);
  v8 = [MEMORY[0x277CBE408] entityForName:@"Account" inManagedObjectContext:v4];
  [v7 setEntity:v8];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", @"local://local/account"];
  [v7 setPredicate:v9];
  v20 = 0;
  v10 = [v4 executeFetchRequest:v7 error:&v20];
  v11 = v20;
  v12 = v11;
  if (v11)
  {
    userInfo = [v11 userInfo];
    NSLog(&cfstr_ErrorGettingDe.isa, v12, userInfo);
  }

  lastObject = [v10 lastObject];
  defaultStore = [lastObject defaultStore];
  objectID = [defaultStore objectID];

  managedObjectContext2 = [noteCopy managedObjectContext];
  v18 = [managedObjectContext2 objectWithID:objectID];

  return v18;
}

- (BOOL)accountExists:(id)exists
{
  v3 = MEMORY[0x277CBE440];
  existsCopy = exists;
  v5 = objc_alloc_init(v3);
  managedObjectContext = [existsCopy managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  [v5 setPersistentStoreCoordinator:persistentStoreCoordinator];

  v8 = objc_alloc_init(MEMORY[0x277CBE428]);
  v9 = [MEMORY[0x277CBE408] entityForName:@"Account" inManagedObjectContext:v5];
  [v8 setEntity:v9];
  v10 = MEMORY[0x277CCAC30];
  accountIdentifier = [existsCopy accountIdentifier];

  v12 = [v10 predicateWithFormat:@"accountIdentifier == %@", accountIdentifier];

  [v8 setPredicate:v12];
  v15 = 0;
  v13 = [v5 executeFetchRequest:v8 error:&v15];
  LOBYTE(accountIdentifier) = [v13 count] == 1;

  return accountIdentifier;
}

- (id)snapshotFromRecord:(id)record
{
  recordCopy = record;
  objectSnapshot = [recordCopy objectSnapshot];
  if (objectSnapshot)
  {
    [recordCopy objectSnapshot];
  }

  else
  {
    [recordCopy cachedSnapshot];
  }
  v5 = ;

  return v5;
}

- (BOOL)resolveConflicts:(id)conflicts error:(id *)error
{
  v138 = *MEMORY[0x277D85DE8];
  conflictsCopy = conflicts;
  selfCopy = self;
  v131.receiver = self;
  v131.super_class = NoteResurrectionMergePolicy;
  v7 = [(NSMergePolicy *)&v131 resolveConflicts:conflictsCopy error:error];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_98;
  }

  v87 = v7;
  v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v97 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v102 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v101 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v88 = conflictsCopy;
  obj = conflictsCopy;
  v9 = [obj countByEnumeratingWithState:&v127 objects:v137 count:16];
  if (v9)
  {
    v10 = v9;
    v105 = 0;
    v106 = 0;
    v96 = 0;
    v100 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v128;
    v93 = *v128;
    while (1)
    {
      v14 = 0;
      v98 = v10;
      do
      {
        if (*v128 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v127 + 1) + 8 * v14);
        sourceObject = [v15 sourceObject];
        entity = [sourceObject entity];
        if (!v106)
        {
          managedObjectContext = [sourceObject managedObjectContext];
          v19 = [MEMORY[0x277CBE408] entityForName:@"Note" inManagedObjectContext:managedObjectContext];

          v20 = [MEMORY[0x277CBE408] entityForName:@"NoteBody" inManagedObjectContext:managedObjectContext];

          v21 = [MEMORY[0x277CBE408] entityForName:@"NoteChange" inManagedObjectContext:managedObjectContext];

          v22 = [MEMORY[0x277CBE408] entityForName:@"Store" inManagedObjectContext:managedObjectContext];

          v106 = managedObjectContext;
          v23 = [MEMORY[0x277CBE408] entityForName:@"Account" inManagedObjectContext:managedObjectContext];

          v96 = v23;
          v13 = v93;
          v10 = v98;
          v100 = v22;
          v105 = v21;
          v11 = v20;
          v12 = v19;
        }

        if (![v15 newVersionNumber])
        {
          if ([entity isEqual:v12])
          {
            objectID = [sourceObject objectID];
            [v95 setObject:sourceObject forKey:objectID];
          }

          else if ([entity isEqual:v11])
          {
            objectID = [(NoteResurrectionMergePolicy *)selfCopy snapshotFromRecord:v15];
            v25 = [objectID objectForKey:@"owner"];
            [v97 setObject:sourceObject forKey:v25];
          }

          else
          {
            if ([entity isEqual:v100])
            {
              objectID = [sourceObject objectID];
              v26 = v102;
            }

            else
            {
              if (![entity isEqual:v96])
              {
                goto LABEL_20;
              }

              objectID = [sourceObject objectID];
              v26 = v101;
            }

            [v26 addObject:objectID];
          }
        }

LABEL_20:

        ++v14;
      }

      while (v10 != v14);
      v10 = [obj countByEnumeratingWithState:&v127 objects:v137 count:16];
      if (!v10)
      {
        goto LABEL_24;
      }
    }
  }

  v105 = 0;
  v106 = 0;
  v96 = 0;
  v100 = 0;
  v11 = 0;
  v12 = 0;
LABEL_24:

  v27 = v97;
  v28 = v106;
  if (![v95 count] && !objc_msgSend(v97, "count") && !objc_msgSend(v102, "count") && !objc_msgSend(v101, "count"))
  {
    goto LABEL_97;
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  insertedObjects = [v106 insertedObjects];
  v29 = [insertedObjects countByEnumeratingWithState:&v123 objects:v136 count:16];
  v90 = v11;
  v99 = v12;
  if (!v29)
  {
    goto LABEL_53;
  }

  v30 = v29;
  v31 = *v124;
  v89 = *v124;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v124 != v31)
      {
        objc_enumerationMutation(insertedObjects);
      }

      v33 = *(*(&v123 + 1) + 8 * i);
      entity2 = [v33 entity];
      v35 = [entity2 isEqual:v12];
      if (v35)
      {
        obja = entity2;
        owner = v33;
        goto LABEL_37;
      }

      if ([entity2 isEqual:v11])
      {
        obja = entity2;
        owner = [v33 owner];
LABEL_37:
        v37 = owner;
        store = [owner store];
        objectID2 = [store objectID];
        if ([v102 containsObject:objectID2])
        {

          goto LABEL_40;
        }

        store2 = [v37 store];
        account = [store2 account];
        [account objectID];
        v43 = v42 = v30;
        v94 = [v101 containsObject:v43];

        v30 = v42;
        v11 = v90;

        v31 = v89;
        if (v94)
        {
LABEL_40:
          objectID3 = [v37 objectID];
          v27 = v97;
          if (v35)
          {
            v45 = v95;
          }

          else
          {
            v45 = v97;
          }

          [v45 setObject:v33 forKey:objectID3];
        }

        else
        {
          v27 = v97;
        }

        v12 = v99;
        entity2 = obja;
        goto LABEL_50;
      }

      if (![entity2 isEqual:v100])
      {
        goto LABEL_51;
      }

      v46 = entity2;
      v37 = v33;
      account2 = [v37 account];
      objectID4 = [account2 objectID];
      v49 = [v101 containsObject:objectID4];

      if (v49)
      {
        objectID5 = [v37 objectID];
        [v102 addObject:objectID5];

        [v106 deleteObject:v37];
      }

      v12 = v99;
      entity2 = v46;
      v11 = v90;
LABEL_50:

      v28 = v106;
LABEL_51:
    }

    v30 = [insertedObjects countByEnumeratingWithState:&v123 objects:v136 count:16];
  }

  while (v30);
LABEL_53:

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v51 = v95;
  v52 = [v51 countByEnumeratingWithState:&v119 objects:v135 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = 0;
    v55 = *v120;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v120 != v55)
        {
          objc_enumerationMutation(v51);
        }

        v57 = *(*(&v119 + 1) + 8 * j);
        v58 = [v51 objectForKey:v57];
        v59 = [v27 objectForKey:v57];
        if (v59)
        {
          [v28 _forceInsertionForObject:v58];
          [v28 _forceInsertionForObject:v59];
          if (!v54)
          {
            v54 = [(NoteResurrectionMergePolicy *)selfCopy localStoreForNote:v58];
          }

          [v58 setStore:v54];
        }

        else
        {
          [v28 deleteObject:v58];
        }

        [v27 removeObjectForKey:v57];
      }

      v53 = [v51 countByEnumeratingWithState:&v119 objects:v135 count:16];
    }

    while (v53);
  }

  else
  {
    v54 = 0;
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v60 = v27;
  v61 = [v60 countByEnumeratingWithState:&v115 objects:v134 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v116;
    do
    {
      for (k = 0; k != v62; ++k)
      {
        if (*v116 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [v60 objectForKey:*(*(&v115 + 1) + 8 * k)];
        [v28 deleteObject:v65];
      }

      v62 = [v60 countByEnumeratingWithState:&v115 objects:v134 count:16];
    }

    while (v62);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  insertedObjects2 = [v28 insertedObjects];
  v67 = [insertedObjects2 countByEnumeratingWithState:&v111 objects:v133 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v112;
    do
    {
      for (m = 0; m != v68; ++m)
      {
        if (*v112 != v69)
        {
          objc_enumerationMutation(insertedObjects2);
        }

        v71 = *(*(&v111 + 1) + 8 * m);
        entity3 = [v71 entity];
        if ([entity3 isEqual:v105])
        {
          store3 = [v71 store];
          objectID6 = [store3 objectID];
          v75 = [v102 containsObject:objectID6];

          if (v75)
          {
            [v106 deleteObject:v71];
          }
        }
      }

      v68 = [insertedObjects2 countByEnumeratingWithState:&v111 objects:v133 count:16];
    }

    while (v68);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v76 = v102;
  v77 = [v76 countByEnumeratingWithState:&v107 objects:v132 count:16];
  v27 = v97;
  v28 = v106;
  if (v77)
  {
    v78 = v77;
    v79 = *v108;
    do
    {
      for (n = 0; n != v78; ++n)
      {
        if (*v108 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = [v106 objectWithID:*(*(&v107 + 1) + 8 * n)];
        account3 = [v81 account];

        if (account3)
        {
          objectID7 = [account3 objectID];
          if ([v101 containsObject:objectID7])
          {
          }

          else
          {
            v84 = [(NoteResurrectionMergePolicy *)selfCopy accountExists:account3];

            if (!v84)
            {
              [v106 deleteObject:account3];
            }
          }
        }
      }

      v78 = [v76 countByEnumeratingWithState:&v107 objects:v132 count:16];
    }

    while (v78);
  }

  v11 = v90;
  v12 = v99;
LABEL_97:

  conflictsCopy = v88;
  v8 = v87;
LABEL_98:

  v85 = *MEMORY[0x277D85DE8];
  return v8;
}

@end