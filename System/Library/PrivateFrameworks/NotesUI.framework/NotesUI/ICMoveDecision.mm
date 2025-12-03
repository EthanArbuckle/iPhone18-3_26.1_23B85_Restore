@interface ICMoveDecision
+ (BOOL)isValidHTMLDestinationObject:(id)object;
+ (BOOL)isValidHTMLSourceObject:(id)object;
+ (BOOL)isValidModernDestinationObject:(id)object;
+ (BOOL)isValidModernSourceObject:(id)object;
+ (BOOL)isValidVirtualDestinationObject:(id)object;
+ (BOOL)shouldCopyThenDeleteWhenMovingObject:(id)object toNoteContainer:(id)container;
+ (id)objectsForMakingDecisionForNonSharedFolder:(id)folder;
- (BOOL)hasLockedObjects;
- (ICAccount)modernDestinationAccount;
- (ICFolder)modernDestinationFolder;
- (ICMoveDecision)initWithSourceObjects:(id)objects destination:(id)destination;
- (ICMoveDecision)initWithSourceObjects:(id)objects destination:(id)destination allowsManagedToUnmanagedMove:(BOOL)move allowsUnmanagedToManagedMove:(BOOL)managedMove;
- (id)accountForObject:(id)object;
- (id)description;
- (id)htmlAccountForObject:(id)object;
- (id)typeString;
- (void)_makeDecisionForMovingBetweenManagedAndUnmanagedAccounts;
- (void)_makeDecisionForMovingHTMLObjectsToHTMLDestination;
- (void)_makeDecisionForMovingHTMLObjectsToModernDestination;
- (void)_makeDecisionForMovingHTMLObjectsToVirtualDestination;
- (void)_makeDecisionForMovingModernObjectsToHTMLDestination;
- (void)_makeDecisionForMovingModernObjectsToModernDestination;
- (void)_makeDecisionForMovingModernObjectsToVirtualDestination;
- (void)_sanitizeAndScreenFilteredModernSourceObjectsIfNecessary;
- (void)_setDecisionWithType:(unint64_t)type additionalStep:(unint64_t)step guiltyObjects:(id)objects;
@end

@implementation ICMoveDecision

- (ICMoveDecision)initWithSourceObjects:(id)objects destination:(id)destination
{
  v6 = MEMORY[0x1E69ADFB8];
  destinationCopy = destination;
  objectsCopy = objects;
  sharedConnection = [v6 sharedConnection];
  mayOpenFromManagedToUnmanaged = [sharedConnection mayOpenFromManagedToUnmanaged];

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  mayOpenFromUnmanagedToManaged = [mEMORY[0x1E69ADFB8] mayOpenFromUnmanagedToManaged];

  v13 = [(ICMoveDecision *)self initWithSourceObjects:objectsCopy destination:destinationCopy allowsManagedToUnmanagedMove:mayOpenFromManagedToUnmanaged allowsUnmanagedToManagedMove:mayOpenFromUnmanagedToManaged];
  return v13;
}

- (ICMoveDecision)initWithSourceObjects:(id)objects destination:(id)destination allowsManagedToUnmanagedMove:(BOOL)move allowsUnmanagedToManagedMove:(BOOL)managedMove
{
  objectsCopy = objects;
  destinationCopy = destination;
  v49.receiver = self;
  v49.super_class = ICMoveDecision;
  v12 = [(ICMoveDecision *)&v49 init];
  v13 = v12;
  if (v12)
  {
    v12->_allowsManagedToUnmanagedMove = move;
    v12->_allowsUnmanagedToManagedMove = managedMove;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __110__ICMoveDecision_initWithSourceObjects_destination_allowsManagedToUnmanagedMove_allowsUnmanagedToManagedMove___block_invoke;
    v45[3] = &unk_1E846E278;
    v16 = v13;
    v46 = v16;
    v17 = v14;
    v47 = v17;
    v18 = v15;
    v48 = v18;
    [objectsCopy enumerateObjectsUsingBlock:v45];
    if ([v17 count])
    {
      v19 = [v17 copy];
      modernSourceObjects = v16->_modernSourceObjects;
      v16->_modernSourceObjects = v19;
    }

    if ([v18 count])
    {
      v21 = [v18 copy];
      htmlSourceObjects = v16->_htmlSourceObjects;
      v16->_htmlSourceObjects = v21;

      v23 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](v16->_htmlSourceObjects, "count")}];
      accountsOfHTMLSourceObjects = v16->_accountsOfHTMLSourceObjects;
      v16->_accountsOfHTMLSourceObjects = v23;

      v25 = v16->_htmlSourceObjects;
      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __110__ICMoveDecision_initWithSourceObjects_destination_allowsManagedToUnmanagedMove_allowsUnmanagedToManagedMove___block_invoke_2;
      v43 = &unk_1E846E2A0;
      v44 = v16;
      [(NSArray *)v25 enumerateObjectsUsingBlock:&v40];
    }

    if ([objc_opt_class() isValidModernDestinationObject:destinationCopy])
    {
      v26 = 32;
    }

    else if ([objc_opt_class() isValidHTMLDestinationObject:destinationCopy])
    {
      v26 = 40;
    }

    else
    {
      if (![objc_opt_class() isValidVirtualDestinationObject:destinationCopy])
      {
        goto LABEL_13;
      }

      v26 = 48;
    }

    objc_storeStrong((&v16->super.isa + v26), destination);
LABEL_13:
    [(ICMoveDecision *)v16 _makeDecisionForMovingBetweenManagedAndUnmanagedAccounts:v40];
    if ([(ICMoveDecision *)v16 type]> 1)
    {
LABEL_31:
      modernSourceObjects = [(ICMoveDecision *)v16 modernSourceObjects];
      v38 = [modernSourceObjects ic_objectsOfClass:objc_opt_class()];
      [(ICMoveDecision *)v16 setModernNotes:v38];

      goto LABEL_32;
    }

    modernDestination = [(ICMoveDecision *)v16 modernDestination];

    if (modernDestination)
    {
      modernSourceObjects2 = [(ICMoveDecision *)v16 modernSourceObjects];

      v29 = modernSourceObjects2 != 0;
      if (modernSourceObjects2)
      {
        [(ICMoveDecision *)v16 _makeDecisionForMovingModernObjectsToModernDestination];
      }

      htmlSourceObjects = [(ICMoveDecision *)v16 htmlSourceObjects];

      if (htmlSourceObjects)
      {
        [(ICMoveDecision *)v16 _makeDecisionForMovingHTMLObjectsToModernDestination];
        goto LABEL_31;
      }
    }

    else
    {
      htmlDestinationFolder = [(ICMoveDecision *)v16 htmlDestinationFolder];

      if (htmlDestinationFolder)
      {
        modernSourceObjects3 = [(ICMoveDecision *)v16 modernSourceObjects];

        v29 = modernSourceObjects3 != 0;
        if (modernSourceObjects3)
        {
          [(ICMoveDecision *)v16 _makeDecisionForMovingModernObjectsToHTMLDestination];
        }

        htmlSourceObjects2 = [(ICMoveDecision *)v16 htmlSourceObjects];

        if (htmlSourceObjects2)
        {
          [(ICMoveDecision *)v16 _makeDecisionForMovingHTMLObjectsToHTMLDestination];
          goto LABEL_31;
        }
      }

      else
      {
        virtualDestinationFolder = [(ICMoveDecision *)v16 virtualDestinationFolder];

        if (!virtualDestinationFolder)
        {
          goto LABEL_30;
        }

        modernSourceObjects4 = [(ICMoveDecision *)v16 modernSourceObjects];

        v29 = modernSourceObjects4 != 0;
        if (modernSourceObjects4)
        {
          [(ICMoveDecision *)v16 _makeDecisionForMovingModernObjectsToVirtualDestination];
        }

        htmlSourceObjects3 = [(ICMoveDecision *)v16 htmlSourceObjects];

        if (htmlSourceObjects3)
        {
          [(ICMoveDecision *)v16 _makeDecisionForMovingHTMLObjectsToVirtualDestination];
          goto LABEL_31;
        }
      }
    }

    if (v29)
    {
      goto LABEL_31;
    }

LABEL_30:
    [(ICMoveDecision *)v16 _setDecisionWithType:2 guiltyObjects:0];
    goto LABEL_31;
  }

LABEL_32:

  return v13;
}

void __110__ICMoveDecision_initWithSourceObjects_destination_allowsManagedToUnmanagedMove_allowsUnmanagedToManagedMove___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([objc_opt_class() isValidModernSourceObject:v5])
  {
    v3 = v5;
    v4 = 40;
  }

  else
  {
    if (![objc_opt_class() isValidHTMLSourceObject:v5])
    {
      goto LABEL_6;
    }

    v3 = v5;
    v4 = 48;
  }

  [*(a1 + v4) addObject:v3];
LABEL_6:
}

void __110__ICMoveDecision_initWithSourceObjects_destination_allowsManagedToUnmanagedMove_allowsUnmanagedToManagedMove___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) htmlAccountForObject:a2];
  v3 = [*(a1 + 32) accountsOfHTMLSourceObjects];
  [v3 ic_addNonNilObject:v4];
}

- (void)_setDecisionWithType:(unint64_t)type additionalStep:(unint64_t)step guiltyObjects:(id)objects
{
  objectsCopy = objects;
  if (self->_type < type)
  {
    self->_type = type;
    self->_additionalStep = step;
    v10 = objectsCopy;
    objc_storeStrong(&self->_guiltyObjects, objects);
    objectsCopy = v10;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ICMoveDecision;
  v4 = [(ICMoveDecision *)&v9 description];
  typeString = [(ICMoveDecision *)self typeString];
  guiltyObjects = [(ICMoveDecision *)self guiltyObjects];
  v7 = [v3 stringWithFormat:@"%@: type = %@, guiltyObjects = %@", v4, typeString, guiltyObjects];

  return v7;
}

- (id)typeString
{
  type = [(ICMoveDecision *)self type];
  if (type > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E846E3E0[type];
  }
}

- (void)_makeDecisionForMovingBetweenManagedAndUnmanagedAccounts
{
  v33[1] = *MEMORY[0x1E69E9840];
  [(ICMoveDecision *)self _sanitizeAndScreenFilteredModernSourceObjectsIfNecessary];
  accountsOfModernSourceObjects = [(ICMoveDecision *)self accountsOfModernSourceObjects];
  allObjects = [accountsOfModernSourceObjects allObjects];

  v5 = [allObjects ic_objectsPassingTest:&__block_literal_global_91];
  v32 = allObjects;
  v6 = [allObjects ic_objectsPassingTest:&__block_literal_global_34];
  accountsOfHTMLSourceObjects = [(ICMoveDecision *)self accountsOfHTMLSourceObjects];
  allObjects2 = [accountsOfHTMLSourceObjects allObjects];

  v9 = [allObjects2 ic_objectsPassingTest:&__block_literal_global_37_1];
  v10 = [allObjects2 ic_objectsPassingTest:&__block_literal_global_39_1];
  v30 = [allObjects2 ic_objectsPassingTest:&__block_literal_global_41_2];
  v11 = [v5 arrayByAddingObjectsFromArray:v9];
  v31 = v5;
  if ([v5 count])
  {
    v12 = v9;
    v13 = 0;
  }

  else
  {
    v12 = v9;
    v13 = [v9 count] == 0;
  }

  v14 = [v6 arrayByAddingObjectsFromArray:v10];
  v15 = [v6 count];
  v28 = v6;
  v29 = v10;
  v16 = v14;
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = [v10 count] == 0;
  }

  htmlDestinationFolder = [(ICMoveDecision *)self htmlDestinationFolder];
  account = [htmlDestinationFolder account];

  modernDestinationAccount = [(ICMoveDecision *)self modernDestinationAccount];
  if ([modernDestinationAccount isManaged])
  {
    isManaged = 1;
  }

  else
  {
    isManaged = [account isManaged];
  }

  if ([(ICMoveDecision *)self allowsManagedToUnmanagedMove]|| v13 || (isManaged & 1) != 0)
  {
    v22 = v30;
    if ([(ICMoveDecision *)self allowsUnmanagedToManagedMove]|| v17 || ((isManaged ^ 1) & 1) != 0)
    {
      if (![v30 count])
      {
        goto LABEL_22;
      }

      modernDestinationAccount2 = [(ICMoveDecision *)self modernDestinationAccount];
      if (modernDestinationAccount2)
      {
      }

      else
      {
        v33[0] = account;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
        v27 = [v30 isEqual:v26];

        if (v27)
        {
          goto LABEL_22;
        }
      }

      selfCopy2 = self;
      v24 = v30;
    }

    else
    {
      selfCopy2 = self;
      v24 = v16;
    }

    [(ICMoveDecision *)selfCopy2 _setDecisionWithType:2 guiltyObjects:v24];
    goto LABEL_22;
  }

  [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:v11];
  v22 = v30;
LABEL_22:
}

- (void)_makeDecisionForMovingModernObjectsToModernDestination
{
  v80[1] = *MEMORY[0x1E69E9840];
  if (![(ICMoveDecision *)self shouldContinueDecisionMaking])
  {
    return;
  }

  modernDestinationFolder = [(ICMoveDecision *)self modernDestinationFolder];
  isUnsupported = [modernDestinationFolder isUnsupported];

  if (isUnsupported || (-[ICMoveDecision modernDestinationFolder](self, "modernDestinationFolder"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isSharedReadOnly], v5, v6) || (-[ICMoveDecision modernDestinationFolder](self, "modernDestinationFolder"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isSmartFolder"), v7, v8))
  {
    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:0];
  }

  else
  {
    modernSourceObjects = [(ICMoveDecision *)self modernSourceObjects];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __72__ICMoveDecision__makeDecisionForMovingModernObjectsToModernDestination__block_invoke;
    v79[3] = &unk_1E846E308;
    v79[4] = self;
    [modernSourceObjects enumerateObjectsUsingBlock:v79];
  }

  if (![(ICMoveDecision *)self type])
  {
    v9 = objc_alloc(MEMORY[0x1E695DFA8]);
    modernSourceObjects2 = [(ICMoveDecision *)self modernSourceObjects];
    v11 = [v9 initWithArray:modernSourceObjects2];

    modernSourceObjects3 = [(ICMoveDecision *)self modernSourceObjects];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __72__ICMoveDecision__makeDecisionForMovingModernObjectsToModernDestination__block_invoke_2;
    v77[3] = &unk_1E846E330;
    v77[4] = self;
    v13 = v11;
    v78 = v13;
    [modernSourceObjects3 enumerateObjectsUsingBlock:v77];

    filteredModernSourceObjects = [(ICMoveDecision *)self filteredModernSourceObjects];
    v15 = [filteredModernSourceObjects isEqual:v13];

    if ((v15 & 1) == 0)
    {
      [(ICMoveDecision *)self setFilteredModernSourceObjects:v13];
      [(ICMoveDecision *)self setHasSanitizedAndScreenedModernSourceObjects:0];
    }

    filteredModernSourceObjects2 = [(ICMoveDecision *)self filteredModernSourceObjects];
    v17 = [filteredModernSourceObjects2 count];

    if (!v17)
    {
      [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:0];
    }
  }

  if ([(ICMoveDecision *)self type])
  {
    return;
  }

  [(ICMoveDecision *)self _sanitizeAndScreenFilteredModernSourceObjectsIfNecessary];
  unsupportedObjectsInSource = [(ICMoveDecision *)self unsupportedObjectsInSource];
  if (![unsupportedObjectsInSource count])
  {
    goto LABEL_16;
  }

  modernDestinationFolder2 = [(ICMoveDecision *)self modernDestinationFolder];
  if ([modernDestinationFolder2 isDefaultFolderForAccount])
  {

LABEL_16:
    goto LABEL_17;
  }

  modernDestinationFolder3 = [(ICMoveDecision *)self modernDestinationFolder];
  isTrashFolder = [modernDestinationFolder3 isTrashFolder];

  if ((isTrashFolder & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  unsupportedObjectsInSource2 = [(ICMoveDecision *)self unsupportedObjectsInSource];
  if ([unsupportedObjectsInSource2 count])
  {
    sharedObjectsInSource = [(ICMoveDecision *)self sharedObjectsInSource];
    v22 = [sharedObjectsInSource count];

    if (v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  unsupportedObjectsInSource3 = [(ICMoveDecision *)self unsupportedObjectsInSource];
  if (![unsupportedObjectsInSource3 count])
  {

    goto LABEL_31;
  }

  accountsOfModernSourceObjects = [(ICMoveDecision *)self accountsOfModernSourceObjects];
  v26 = MEMORY[0x1E695DFD8];
  modernDestinationAccount = [(ICMoveDecision *)self modernDestinationAccount];
  v28 = [v26 setWithObject:modernDestinationAccount];
  v29 = [accountsOfModernSourceObjects isEqual:v28];

  if ((v29 & 1) == 0)
  {
LABEL_26:
    unsupportedObjectsInSource4 = [(ICMoveDecision *)self unsupportedObjectsInSource];
LABEL_27:
    modernDestinationFolder5 = unsupportedObjectsInSource4;
    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:unsupportedObjectsInSource4];
LABEL_28:

    return;
  }

LABEL_31:
  modernFoldersInSource = [(ICMoveDecision *)self modernFoldersInSource];
  if ([modernFoldersInSource count] && (-[ICMoveDecision modernDestinationFolder](self, "modernDestinationFolder"), (v35 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v36 = v35;
    modernDestinationFolder4 = [(ICMoveDecision *)self modernDestinationFolder];
    depth = [modernDestinationFolder4 depth];
    v39 = MEMORY[0x1E69B7760];
    modernFoldersInSource2 = [(ICMoveDecision *)self modernFoldersInSource];
    v41 = [v39 maximumDistanceToLeafFolderOfFolders:modernFoldersInSource2] + depth;
    folderDepthLimit = [MEMORY[0x1E69B7760] folderDepthLimit];

    if (v41 >= folderDepthLimit)
    {
      modernDestinationFolder5 = [(ICMoveDecision *)self modernDestinationFolder];
      v80[0] = modernDestinationFolder5;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
      [(ICMoveDecision *)self _setDecisionWithType:3 additionalStep:1 guiltyObjects:v43];
LABEL_35:

      goto LABEL_28;
    }
  }

  else
  {
  }

  modernFoldersInSource3 = [(ICMoveDecision *)self modernFoldersInSource];
  if ([modernFoldersInSource3 count])
  {
    modernDestinationFolder6 = [(ICMoveDecision *)self modernDestinationFolder];
    isSystemFolder = [modernDestinationFolder6 isSystemFolder];

    if (isSystemFolder)
    {
      unsupportedObjectsInSource4 = [(ICMoveDecision *)self modernFoldersInSource];
      goto LABEL_27;
    }
  }

  else
  {
  }

  readOnlySharedSubObjectsInSource = [(ICMoveDecision *)self readOnlySharedSubObjectsInSource];
  v48 = [readOnlySharedSubObjectsInSource count];

  if (v48)
  {
    unsupportedObjectsInSource4 = [(ICMoveDecision *)self readOnlySharedSubObjectsInSource];
    goto LABEL_27;
  }

  if ([(ICMoveDecision *)self hasSharedObjectsNotFromDestinationAccountInSource])
  {
    modernDestinationFolder5 = [(ICMoveDecision *)self sharedObjectsInSource];
    selfCopy7 = self;
    v50 = 3;
    v51 = 4;
LABEL_67:
    [(ICMoveDecision *)selfCopy7 _setDecisionWithType:v50 additionalStep:v51 guiltyObjects:modernDestinationFolder5];
    goto LABEL_28;
  }

  modernDestinationFolder7 = [(ICMoveDecision *)self modernDestinationFolder];
  if ([modernDestinationFolder7 isSharedViaICloud])
  {
  }

  else
  {
    readWriteSharedSubObjectsInSource = [(ICMoveDecision *)self readWriteSharedSubObjectsInSource];
    v54 = [readWriteSharedSubObjectsInSource count];

    if (v54)
    {
      readWriteSharedSubObjectsInSource2 = [(ICMoveDecision *)self readWriteSharedSubObjectsInSource];
LABEL_49:
      modernDestinationFolder5 = readWriteSharedSubObjectsInSource2;
      selfCopy7 = self;
      v50 = 1;
      v51 = 6;
      goto LABEL_67;
    }
  }

  modernDestinationFolder8 = [(ICMoveDecision *)self modernDestinationFolder];
  isSharedViaICloud = [modernDestinationFolder8 isSharedViaICloud];

  lockedObjectsInSource = [(ICMoveDecision *)self lockedObjectsInSource];
  v59 = [lockedObjectsInSource count];
  if (isSharedViaICloud)
  {
    if (v59)
    {

LABEL_57:
      lockedObjectsInSource2 = [(ICMoveDecision *)self lockedObjectsInSource];
      joinedSharedRootObjectsInSource = [(ICMoveDecision *)self joinedSharedRootObjectsInSource];
      modernDestinationFolder5 = [lockedObjectsInSource2 arrayByAddingObjectsFromArray:joinedSharedRootObjectsInSource];

      selfCopy7 = self;
      v50 = 3;
      v51 = 3;
      goto LABEL_67;
    }

    joinedSharedRootObjectsInSource2 = [(ICMoveDecision *)self joinedSharedRootObjectsInSource];
    v62 = [joinedSharedRootObjectsInSource2 count];

    if (v62)
    {
      goto LABEL_57;
    }

    sharedObjectsNotFromDestinationFolderInSource = [(ICMoveDecision *)self sharedObjectsNotFromDestinationFolderInSource];
    v70 = [sharedObjectsNotFromDestinationFolderInSource count];

    if (v70)
    {
      readWriteSharedSubObjectsInSource2 = [(ICMoveDecision *)self sharedObjectsNotFromDestinationFolderInSource];
      goto LABEL_49;
    }
  }

  else
  {
    if (v59)
    {
      hasLockedNotesNotFromDestinationAccountInSource = [(ICMoveDecision *)self hasLockedNotesNotFromDestinationAccountInSource];

      if (hasLockedNotesNotFromDestinationAccountInSource)
      {
        modernDestinationFolder5 = [(ICMoveDecision *)self lockedObjectsInSource];
        selfCopy7 = self;
        v50 = 3;
        v51 = 2;
        goto LABEL_67;
      }
    }

    else
    {
    }

    systemPaperNotesInSource = [(ICMoveDecision *)self systemPaperNotesInSource];
    v66 = [systemPaperNotesInSource count];

    if (v66)
    {
      modernDestinationFolder5 = [(ICMoveDecision *)self systemPaperNotesInSource];
      selfCopy7 = self;
      v50 = 1;
      v51 = 8;
      goto LABEL_67;
    }

    mathNotesNotesInSource = [(ICMoveDecision *)self mathNotesNotesInSource];
    v68 = [mathNotesNotesInSource count];

    if (v68)
    {
      modernDestinationFolder5 = [(ICMoveDecision *)self mathNotesNotesInSource];
      selfCopy7 = self;
      v50 = 1;
      v51 = 10;
      goto LABEL_67;
    }

    callNotesInSource = [(ICMoveDecision *)self callNotesInSource];
    v72 = [callNotesInSource count];

    if (v72)
    {
      modernDestinationFolder5 = [(ICMoveDecision *)self callNotesInSource];
      selfCopy7 = self;
      v50 = 1;
      v51 = 12;
      goto LABEL_67;
    }

    modernDestinationAccount2 = [(ICMoveDecision *)self modernDestinationAccount];
    isLocalAccount = [modernDestinationAccount2 isLocalAccount];

    if (isLocalAccount)
    {
      filteredModernSourceObjects3 = [(ICMoveDecision *)self filteredModernSourceObjects];
      modernDestinationFolder5 = [filteredModernSourceObjects3 ic_objectsPassingTest:&__block_literal_global_48_0];

      v43 = [modernDestinationFolder5 ic_objectsPassingTest:&__block_literal_global_51];
      if ([v43 count])
      {
        allObjects = [v43 allObjects];
        [(ICMoveDecision *)self _setDecisionWithType:3 additionalStep:13 guiltyObjects:allObjects];
      }

      goto LABEL_35;
    }
  }
}

void __72__ICMoveDecision__makeDecisionForMovingModernObjectsToModernDestination__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  objc_opt_class();
  v7 = ICDynamicCast();
  if (v7)
  {
    v8 = [*(a1 + 32) modernDestinationFolder];
    if ([v8 isDescendantOfFolder:v7])
    {
    }

    else
    {
      v11 = [*(a1 + 32) modernDestination];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        goto LABEL_9;
      }

      v12 = [v7 isSmartFolder];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v9 = *(a1 + 32);
    v13[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v9 _setDecisionWithType:2 guiltyObjects:v10];

    *a4 = 1;
  }

LABEL_9:
}

void __72__ICMoveDecision__makeDecisionForMovingModernObjectsToModernDestination__block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 identifier];
  v4 = [*(a1 + 32) modernDestination];
  v5 = [v4 identifier];
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    [*(a1 + 40) removeObject:v18];
  }

  else
  {
    v7 = [v18 cloudAccount];
    v8 = [v7 identifier];
    v9 = [*(a1 + 32) modernDestinationAccount];
    v10 = [v9 identifier];
    v11 = [v8 isEqualToString:v10];

    if (v11)
    {
      objc_opt_class();
      v12 = ICDynamicCast();
      v13 = [v12 folder];
      v14 = [v13 identifier];
      v15 = [*(a1 + 32) modernDestination];
      v16 = [v15 identifier];
      if ([v14 isEqualToString:v16] && (objc_msgSend(v12, "isSystemPaper") & 1) == 0)
      {
        v17 = [v12 isMathNote];

        if ((v17 & 1) == 0)
        {
          [*(a1 + 40) removeObject:v18];
        }
      }

      else
      {
      }
    }
  }
}

uint64_t __72__ICMoveDecision__makeDecisionForMovingModernObjectsToModernDestination__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  if ([v3 isSmartFolder])
  {
    v4 = [v3 account];
    v5 = [v4 isLocalAccount] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __72__ICMoveDecision__makeDecisionForMovingModernObjectsToModernDestination__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 smartFolderQuery];
  v4 = [v2 managedObjectContext];
  v5 = [v2 account];

  v6 = [v5 objectID];
  v7 = [v3 filterSelectionWithManagedObjectContext:v4 account:v6];

  v8 = [v7 filterTypeSelections];
  v9 = [v8 ic_containsObjectPassingTest:&__block_literal_global_54];

  return v9;
}

uint64_t __72__ICMoveDecision__makeDecisionForMovingModernObjectsToModernDestination__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69B7758];
  v3 = a2;
  v4 = [v2 cloudSpecificFilterTypes];
  v5 = MEMORY[0x1E696AD98];
  v6 = [v3 filterType];

  v7 = [v5 numberWithInteger:v6];
  v8 = [v4 containsObject:v7];

  return v8;
}

- (void)_makeDecisionForMovingModernObjectsToHTMLDestination
{
  if (![(ICMoveDecision *)self shouldContinueDecisionMaking])
  {
    return;
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA8]);
  modernSourceObjects = [(ICMoveDecision *)self modernSourceObjects];
  v23 = [v3 initWithArray:modernSourceObjects];

  filteredModernSourceObjects = [(ICMoveDecision *)self filteredModernSourceObjects];
  LOBYTE(modernSourceObjects) = [filteredModernSourceObjects isEqual:v23];

  if ((modernSourceObjects & 1) == 0)
  {
    [(ICMoveDecision *)self setFilteredModernSourceObjects:v23];
    [(ICMoveDecision *)self setHasSanitizedAndScreenedModernSourceObjects:0];
  }

  [(ICMoveDecision *)self _sanitizeAndScreenFilteredModernSourceObjectsIfNecessary];
  modernSourceObjects2 = [(ICMoveDecision *)self modernSourceObjects];
  v7 = [modernSourceObjects2 count];

  if (v7)
  {
    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:0];
  }

  modernFoldersInSource = [(ICMoveDecision *)self modernFoldersInSource];
  v9 = [modernFoldersInSource count];

  if (v9)
  {
    modernFoldersInSource2 = [(ICMoveDecision *)self modernFoldersInSource];
LABEL_11:
    lockedObjectsInSource2 = modernFoldersInSource2;
    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:modernFoldersInSource2];
    goto LABEL_12;
  }

  unsupportedObjectsInSource = [(ICMoveDecision *)self unsupportedObjectsInSource];
  v12 = [unsupportedObjectsInSource count];

  if (v12)
  {
    modernFoldersInSource2 = [(ICMoveDecision *)self unsupportedObjectsInSource];
    goto LABEL_11;
  }

  lockedObjectsInSource = [(ICMoveDecision *)self lockedObjectsInSource];
  v15 = [lockedObjectsInSource count];

  if (v15)
  {
    lockedObjectsInSource2 = [(ICMoveDecision *)self lockedObjectsInSource];
    selfCopy3 = self;
    v17 = 3;
    v18 = 2;
  }

  else
  {
    sharedObjectsInSource = [(ICMoveDecision *)self sharedObjectsInSource];
    v20 = [sharedObjectsInSource count];

    if (v20)
    {
      lockedObjectsInSource2 = [(ICMoveDecision *)self sharedObjectsInSource];
      selfCopy3 = self;
      v17 = 3;
      v18 = 4;
    }

    else
    {
      privateModernNoteWithAttachmentsInSource = [(ICMoveDecision *)self privateModernNoteWithAttachmentsInSource];
      v22 = [privateModernNoteWithAttachmentsInSource count];

      if (!v22)
      {
        goto LABEL_13;
      }

      lockedObjectsInSource2 = [(ICMoveDecision *)self privateModernNoteWithAttachmentsInSource];
      selfCopy3 = self;
      v17 = 1;
      v18 = 5;
    }
  }

  [(ICMoveDecision *)selfCopy3 _setDecisionWithType:v17 additionalStep:v18 guiltyObjects:lockedObjectsInSource2];
LABEL_12:

LABEL_13:
}

- (void)_makeDecisionForMovingModernObjectsToVirtualDestination
{
  modernSourceObjects = [(ICMoveDecision *)self modernSourceObjects];
  firstObject = [modernSourceObjects firstObject];
  managedObjectContext = [firstObject managedObjectContext];

  if (!managedObjectContext)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((context) != nil)" functionName:"-[ICMoveDecision _makeDecisionForMovingModernObjectsToVirtualDestination]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "context"}];
  }

  if ([(ICMoveDecision *)self shouldContinueDecisionMaking])
  {
    virtualDestinationFolder = [(ICMoveDecision *)self virtualDestinationFolder];

    if (managedObjectContext)
    {
      if (virtualDestinationFolder)
      {
        filteredModernSourceObjects = [(ICMoveDecision *)self filteredModernSourceObjects];
        v7 = [filteredModernSourceObjects mutableCopy];

        v8 = MEMORY[0x1E69B77F0];
        virtualDestinationFolder2 = [(ICMoveDecision *)self virtualDestinationFolder];
        v10 = [virtualDestinationFolder2 predicateForContext:managedObjectContext];
        v11 = [v8 ic_objectsMatchingPredicate:v10 context:managedObjectContext];

        v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
        [v7 minusSet:v12];

        filteredModernSourceObjects2 = [(ICMoveDecision *)self filteredModernSourceObjects];
        LOBYTE(v10) = [filteredModernSourceObjects2 isEqual:v7];

        if ((v10 & 1) == 0)
        {
          [(ICMoveDecision *)self setFilteredModernSourceObjects:v7];
          [(ICMoveDecision *)self setHasSanitizedAndScreenedModernSourceObjects:0];
        }

        [(ICMoveDecision *)self _sanitizeAndScreenFilteredModernSourceObjectsIfNecessary];
        filteredModernSourceObjects3 = [(ICMoveDecision *)self filteredModernSourceObjects];
        v15 = [filteredModernSourceObjects3 count];

        if (!v15)
        {
          modernSourceObjects2 = [(ICMoveDecision *)self modernSourceObjects];
          goto LABEL_16;
        }

        unsupportedObjectsInSource = [(ICMoveDecision *)self unsupportedObjectsInSource];
        v17 = [unsupportedObjectsInSource count];

        if (v17)
        {
          modernSourceObjects2 = [(ICMoveDecision *)self unsupportedObjectsInSource];
LABEL_16:
          sharedObjectsInSource = modernSourceObjects2;
          [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:modernSourceObjects2];
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        modernFoldersInSource = [(ICMoveDecision *)self modernFoldersInSource];
        v20 = [modernFoldersInSource count];

        if (v20)
        {
          modernSourceObjects2 = [(ICMoveDecision *)self modernFoldersInSource];
          goto LABEL_16;
        }

        readOnlySharedSubObjectsInSource = [(ICMoveDecision *)self readOnlySharedSubObjectsInSource];
        v22 = [readOnlySharedSubObjectsInSource count];

        if (v22)
        {
          modernSourceObjects2 = [(ICMoveDecision *)self readOnlySharedSubObjectsInSource];
          goto LABEL_16;
        }

        if ([(ICMoveDecision *)self hasSharedObjectsNotFromDestinationAccountInSource])
        {
          sharedObjectsInSource = [(ICMoveDecision *)self sharedObjectsInSource];
          selfCopy6 = self;
          v25 = 3;
          v26 = 4;
        }

        else if ([(ICMoveDecision *)self hasLockedNotesNotFromDestinationAccountInSource])
        {
          sharedObjectsInSource = [(ICMoveDecision *)self lockedObjectsInSource];
          selfCopy6 = self;
          v25 = 3;
          v26 = 2;
        }

        else
        {
          virtualDestinationFolder3 = [(ICMoveDecision *)self virtualDestinationFolder];
          type = [virtualDestinationFolder3 type];
          v29 = [type isEqual:@"ICVirtualSmartFolderItemIdentifierTypeSharedWithYou"];

          if (v29)
          {
            modernSourceObjects3 = [(ICMoveDecision *)self modernSourceObjects];
          }

          else
          {
            virtualDestinationFolder4 = [(ICMoveDecision *)self virtualDestinationFolder];
            type2 = [virtualDestinationFolder4 type];
            v33 = [type2 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeSystemPaper"];

            if (!v33)
            {
              virtualDestinationFolder5 = [(ICMoveDecision *)self virtualDestinationFolder];
              type3 = [virtualDestinationFolder5 type];
              v38 = [type3 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeMathNotes"];

              if (v38)
              {
                nonMathNotesNotesInSource = [(ICMoveDecision *)self nonMathNotesNotesInSource];
                v40 = [nonMathNotesNotesInSource count];

                if (!v40)
                {
                  goto LABEL_18;
                }

                sharedObjectsInSource = [(ICMoveDecision *)self nonMathNotesNotesInSource];
                selfCopy6 = self;
                v25 = 1;
                v26 = 9;
              }

              else
              {
                virtualDestinationFolder6 = [(ICMoveDecision *)self virtualDestinationFolder];
                type4 = [virtualDestinationFolder6 type];
                v43 = [type4 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeCallNotes"];

                if (!v43)
                {
                  goto LABEL_18;
                }

                nonCallNotesInSource = [(ICMoveDecision *)self nonCallNotesInSource];
                v45 = [nonCallNotesInSource count];

                if (!v45)
                {
                  goto LABEL_18;
                }

                sharedObjectsInSource = [(ICMoveDecision *)self nonCallNotesInSource];
                selfCopy6 = self;
                v25 = 1;
                v26 = 11;
              }

              goto LABEL_32;
            }

            lockedObjectsInSource = [(ICMoveDecision *)self lockedObjectsInSource];
            v35 = [lockedObjectsInSource count];

            if (!v35)
            {
              nonSystemPaperNotesInSource = [(ICMoveDecision *)self nonSystemPaperNotesInSource];
              v47 = [nonSystemPaperNotesInSource count];

              if (!v47)
              {
                goto LABEL_18;
              }

              sharedObjectsInSource = [(ICMoveDecision *)self nonSystemPaperNotesInSource];
              selfCopy6 = self;
              v25 = 1;
              v26 = 7;
              goto LABEL_32;
            }

            modernSourceObjects3 = [(ICMoveDecision *)self lockedObjectsInSource];
          }

          sharedObjectsInSource = modernSourceObjects3;
          selfCopy6 = self;
          v25 = 2;
          v26 = 0;
        }

LABEL_32:
        [(ICMoveDecision *)selfCopy6 _setDecisionWithType:v25 additionalStep:v26 guiltyObjects:sharedObjectsInSource];
        goto LABEL_17;
      }
    }
  }

LABEL_19:
}

- (void)_makeDecisionForMovingHTMLObjectsToModernDestination
{
  if ([(ICMoveDecision *)self shouldContinueDecisionMaking])
  {
    modernDestinationFolder = [(ICMoveDecision *)self modernDestinationFolder];
    isSharedReadOnly = [modernDestinationFolder isSharedReadOnly];

    if ((isSharedReadOnly & 1) != 0 || (-[ICMoveDecision modernDestinationFolder](self, "modernDestinationFolder"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isSmartFolder], v5, v6))
    {

      [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:0];
    }
  }
}

- (void)_makeDecisionForMovingHTMLObjectsToHTMLDestination
{
  if ([(ICMoveDecision *)self shouldContinueDecisionMaking])
  {

    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:0];
  }
}

- (void)_makeDecisionForMovingHTMLObjectsToVirtualDestination
{
  if ([(ICMoveDecision *)self shouldContinueDecisionMaking])
  {
    [(ICMoveDecision *)self _sanitizeAndScreenFilteredModernSourceObjectsIfNecessary];
    modernSourceObjects = [(ICMoveDecision *)self modernSourceObjects];
    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:modernSourceObjects];
  }
}

- (void)_sanitizeAndScreenFilteredModernSourceObjectsIfNecessary
{
  v118 = *MEMORY[0x1E69E9840];
  if ([(ICMoveDecision *)self hasSanitizedAndScreenedModernSourceObjects])
  {
    return;
  }

  filteredModernSourceObjects = [(ICMoveDecision *)self filteredModernSourceObjects];

  if (!filteredModernSourceObjects)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFA8]);
    modernSourceObjects = [(ICMoveDecision *)self modernSourceObjects];
    v6 = [v4 initWithArray:modernSourceObjects];
    [(ICMoveDecision *)self setFilteredModernSourceObjects:v6];
  }

  filteredModernSourceObjects2 = [(ICMoveDecision *)self filteredModernSourceObjects];
  allObjects = [filteredModernSourceObjects2 allObjects];
  v9 = [allObjects ic_objectsPassingTest:&__block_literal_global_65];
  [(ICMoveDecision *)self setModernFoldersInSource:v9];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  filteredModernSourceObjects3 = [(ICMoveDecision *)self filteredModernSourceObjects];
  allObjects2 = [filteredModernSourceObjects3 allObjects];
  v13 = [allObjects2 mutableCopy];

  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_2;
  v115[3] = &unk_1E846E308;
  v14 = v10;
  v116 = v14;
  [v13 enumerateObjectsUsingBlock:v115];
  [v13 removeObjectsInArray:v14];
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_3;
  v112[3] = &unk_1E846E330;
  v15 = v13;
  v113 = v15;
  selfCopy = self;
  v102 = v14;
  [v14 enumerateObjectsUsingBlock:v112];
  v101 = v15;
  [(ICMoveDecision *)self setSanitizedFilteredModernSourceObjects:v15];
  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v18 = [v16 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects, "count")}];
  [(ICMoveDecision *)self setOwnedSharedRootObjectsInSource:v18];

  v19 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects2 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v21 = [v19 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects2, "count")}];
  [(ICMoveDecision *)self setJoinedSharedRootObjectsInSource:v21];

  v22 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects3 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v24 = [v22 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects3, "count")}];
  [(ICMoveDecision *)self setReadWriteSharedSubObjectsInSource:v24];

  v25 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects4 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v27 = [v25 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects4, "count")}];
  [(ICMoveDecision *)self setReadOnlySharedSubObjectsInSource:v27];

  v28 = objc_alloc(MEMORY[0x1E695DFA8]);
  sanitizedFilteredModernSourceObjects5 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v30 = [v28 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects5, "count")}];
  [(ICMoveDecision *)self setAccountsOfModernSourceObjects:v30];

  v31 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects6 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v33 = [v31 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects6, "count")}];
  [(ICMoveDecision *)self setSharedObjectsInSource:v33];

  v34 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects7 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v36 = [v34 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects7, "count")}];
  [(ICMoveDecision *)self setLockedObjectsInSource:v36];

  v37 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects8 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v39 = [v37 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects8, "count")}];
  [(ICMoveDecision *)self setUnsupportedObjectsInSource:v39];

  v40 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects9 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v42 = [v40 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects9, "count")}];
  [(ICMoveDecision *)self setPrivateModernNoteWithAttachmentsInSource:v42];

  v43 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects10 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v45 = [v43 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects10, "count")}];
  [(ICMoveDecision *)self setSharedObjectsNotFromDestinationFolderInSource:v45];

  v46 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects11 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v48 = [v46 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects11, "count")}];
  [(ICMoveDecision *)self setSystemPaperNotesInSource:v48];

  v49 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects12 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v51 = [v49 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects12, "count")}];
  [(ICMoveDecision *)self setNonSystemPaperNotesInSource:v51];

  v52 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects13 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v54 = [v52 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects13, "count")}];
  [(ICMoveDecision *)self setMathNotesNotesInSource:v54];

  v55 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects14 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v57 = [v55 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects14, "count")}];
  [(ICMoveDecision *)self setNonMathNotesNotesInSource:v57];

  v58 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects15 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v60 = [v58 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects15, "count")}];
  [(ICMoveDecision *)self setCallNotesInSource:v60];

  v61 = objc_alloc(MEMORY[0x1E695DF70]);
  sanitizedFilteredModernSourceObjects16 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v63 = [v61 initWithCapacity:{objc_msgSend(sanitizedFilteredModernSourceObjects16, "count")}];
  [(ICMoveDecision *)self setNonCallNotesInSource:v63];

  sanitizedFilteredModernSourceObjects17 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_4;
  v111[3] = &unk_1E846E308;
  v111[4] = self;
  [sanitizedFilteredModernSourceObjects17 enumerateObjectsUsingBlock:v111];

  sharedObjectsInSource = [(ICMoveDecision *)self sharedObjectsInSource];
  ownedSharedRootObjectsInSource = [(ICMoveDecision *)self ownedSharedRootObjectsInSource];
  [sharedObjectsInSource addObjectsFromArray:ownedSharedRootObjectsInSource];

  sharedObjectsInSource2 = [(ICMoveDecision *)self sharedObjectsInSource];
  joinedSharedRootObjectsInSource = [(ICMoveDecision *)self joinedSharedRootObjectsInSource];
  [sharedObjectsInSource2 addObjectsFromArray:joinedSharedRootObjectsInSource];

  sharedObjectsInSource3 = [(ICMoveDecision *)self sharedObjectsInSource];
  readWriteSharedSubObjectsInSource = [(ICMoveDecision *)self readWriteSharedSubObjectsInSource];
  [sharedObjectsInSource3 addObjectsFromArray:readWriteSharedSubObjectsInSource];

  sharedObjectsInSource4 = [(ICMoveDecision *)self sharedObjectsInSource];
  readOnlySharedSubObjectsInSource = [(ICMoveDecision *)self readOnlySharedSubObjectsInSource];
  [sharedObjectsInSource4 addObjectsFromArray:readOnlySharedSubObjectsInSource];

  modernDestinationFolder = [(ICMoveDecision *)self modernDestinationFolder];
  rootSharingFolder = [modernDestinationFolder rootSharingFolder];

  if (rootSharingFolder)
  {
    sanitizedFilteredModernSourceObjects18 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 3221225472;
    v108[2] = __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_5;
    v108[3] = &unk_1E846E330;
    v109 = rootSharingFolder;
    selfCopy2 = self;
    [sanitizedFilteredModernSourceObjects18 enumerateObjectsUsingBlock:v108];
  }

  sharedObjectsInSource5 = [(ICMoveDecision *)self sharedObjectsInSource];
  v77 = [sharedObjectsInSource5 count];

  if (v77)
  {
    accountsOfModernSourceObjects = [(ICMoveDecision *)self accountsOfModernSourceObjects];
    v79 = [accountsOfModernSourceObjects count];

    if (v79 < 2)
    {
      accountsOfModernSourceObjects2 = [(ICMoveDecision *)self accountsOfModernSourceObjects];
      if ([accountsOfModernSourceObjects2 count] == 1)
      {
        accountsOfModernSourceObjects3 = [(ICMoveDecision *)self accountsOfModernSourceObjects];
        anyObject = [accountsOfModernSourceObjects3 anyObject];
        identifier = [anyObject identifier];
        modernDestinationAccount = [(ICMoveDecision *)self modernDestinationAccount];
        identifier2 = [modernDestinationAccount identifier];
        v86 = [identifier isEqualToString:identifier2];

        if ((v86 & 1) == 0)
        {
          [(ICMoveDecision *)self setHasSharedObjectsNotFromDestinationAccountInSource:1];
        }

        goto LABEL_13;
      }
    }

    else
    {
      accountsOfModernSourceObjects2 = [(ICMoveDecision *)self sharedObjectsInSource];
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_6;
      v107[3] = &unk_1E846E398;
      v107[4] = self;
      -[ICMoveDecision setHasSharedObjectsNotFromDestinationAccountInSource:](self, "setHasSharedObjectsNotFromDestinationAccountInSource:", [accountsOfModernSourceObjects2 ic_containsObjectPassingTest:v107]);
    }
  }

LABEL_13:
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  sanitizedFilteredModernSourceObjects19 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v88 = [sanitizedFilteredModernSourceObjects19 countByEnumeratingWithState:&v103 objects:v117 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v104;
    do
    {
      for (i = 0; i != v89; ++i)
      {
        if (*v104 != v90)
        {
          objc_enumerationMutation(sanitizedFilteredModernSourceObjects19);
        }

        v92 = *(*(&v103 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v93 = v92;
          if ([v93 isSystemPaper])
          {
            [(ICMoveDecision *)self systemPaperNotesInSource];
          }

          else
          {
            [(ICMoveDecision *)self nonSystemPaperNotesInSource];
          }
          v94 = ;
          [v94 addObject:v93];

          if ([v93 isMathNote])
          {
            [(ICMoveDecision *)self mathNotesNotesInSource];
          }

          else
          {
            [(ICMoveDecision *)self nonMathNotesNotesInSource];
          }
          v95 = ;
          [v95 addObject:v93];

          if ([v93 isCallNote])
          {
            [(ICMoveDecision *)self callNotesInSource];
          }

          else
          {
            [(ICMoveDecision *)self nonCallNotesInSource];
          }
          v96 = ;
          [v96 addObject:v93];

          if ([v93 isPasswordProtected])
          {
            account = [v93 account];
            modernDestinationAccount2 = [(ICMoveDecision *)self modernDestinationAccount];
            hasLockedNotesNotFromDestinationAccountInSource = [(ICMoveDecision *)self hasLockedNotesNotFromDestinationAccountInSource];
            v100 = account != modernDestinationAccount2 || hasLockedNotesNotFromDestinationAccountInSource;
            [(ICMoveDecision *)self setHasLockedNotesNotFromDestinationAccountInSource:v100];
          }
        }
      }

      v89 = [sanitizedFilteredModernSourceObjects19 countByEnumeratingWithState:&v103 objects:v117 count:16];
    }

    while (v89);
  }

  [(ICMoveDecision *)self setHasSanitizedAndScreenedModernSourceObjects:1];
}

uint64_t __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();

  if (v4 && ([v4 isSharedViaICloud] & 1) == 0 && (objc_msgSend(v4, "visibleNotesCount") || objc_msgSend(v4, "visibleNoteContainerChildrenCount")))
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = ICDynamicCast();

  v4 = *(a1 + 32);
  v5 = [objc_opt_class() objectsForMakingDecisionForNonSharedFolder:v6];
  [v4 addObjectsFromArray:v5];
}

void __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_4(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) accountForObject:v3];
  v5 = [*(a1 + 32) accountsOfModernSourceObjects];
  [v5 ic_addNonNilObject:v4];

  objc_opt_class();
  v6 = ICDynamicCast();
  if ([v3 isPasswordProtected])
  {
    v7 = [*(a1 + 32) lockedObjectsInSource];
    [v7 addObject:v3];
  }

  if ([v3 isUnsupported])
  {
    v8 = [*(a1 + 32) unsupportedObjectsInSource];
    [v8 addObject:v3];
  }

  if ([v3 isSharedViaICloud])
  {
    if ([v3 isSharedRootObject])
    {
      v9 = [v3 isOwnedByCurrentUser];
      v10 = *(a1 + 32);
      if (v9)
      {
        [v10 ownedSharedRootObjectsInSource];
      }

      else
      {
        [v10 joinedSharedRootObjectsInSource];
      }
      v13 = ;
      v14 = v13;
      v15 = v3;
      goto LABEL_16;
    }

    v16 = [v3 isSharedReadOnly];
    v17 = *(a1 + 32);
    if (v16)
    {
      [v17 readOnlySharedSubObjectsInSource];
    }

    else
    {
      [v17 readWriteSharedSubObjectsInSource];
    }
    v18 = ;
    [v18 addObject:v3];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = [v6 attachments];
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v26 + 1) + 8 * i);
          if ([v24 isUnsupported])
          {
            v25 = [*(a1 + 32) unsupportedObjectsInSource];
            [v25 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v21);
    }
  }

  else if (v6)
  {
    v11 = [v6 attachments];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [*(a1 + 32) privateModernNoteWithAttachmentsInSource];
      v14 = v13;
      v15 = v6;
LABEL_16:
      [v13 addObject:v15];
    }
  }
}

uint64_t __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_5(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 isSharedViaICloud];
  if (v3)
  {
    v4 = [v10 parentCloudObject];
    objc_opt_class();
    v5 = ICCheckedDynamicCast();
    if ([v5 isSharedViaICloud])
    {
      v6 = [v5 identifier];
      v7 = [*(a1 + 32) identifier];
      if ([v6 isEqualToString:v7])
      {

LABEL_7:
        goto LABEL_8;
      }

      v8 = [v5 isDescendantOfFolder:*(a1 + 32)];

      if (v8)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v6 = [*(a1 + 40) sharedObjectsNotFromDestinationFolderInSource];
    [v6 addObject:v10];
    goto LABEL_7;
  }

LABEL_9:

  return MEMORY[0x1EEE66BB8](v3);
}

uint64_t __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) accountForObject:a2];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) modernDestinationAccount];
  v6 = [v5 identifier];
  v7 = [v4 isEqualToString:v6];

  return v7 ^ 1u;
}

- (BOOL)hasLockedObjects
{
  lockedObjectsInSource = [(ICMoveDecision *)self lockedObjectsInSource];
  v3 = [lockedObjectsInSource count] != 0;

  return v3;
}

- (id)accountForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v4 = ICDynamicCast();
  v5 = v4;
  if (v4)
  {
    account = [v4 account];
    if (account)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    v7 = ICDynamicCast();
    v8 = v7;
    if (v7)
    {
      account = [v7 account];
    }

    else
    {
      account = 0;
    }

    if (account)
    {
      goto LABEL_11;
    }
  }

  v9 = os_log_create("com.apple.notes", "Move");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ICMoveDecision *)objectCopy accountForObject:v9, v10, v11, v12, v13, v14, v15];
  }

LABEL_11:

  return account;
}

- (id)htmlAccountForObject:(id)object
{
  objectCopy = object;
  v4 = ICProtocolCast();
  v5 = v4;
  if (v4)
  {
    folder = [v4 folder];
    v7 = folder;
LABEL_4:
    account = [folder account];
    v9 = ICProtocolCast();

    goto LABEL_5;
  }

  folder = ICProtocolCast();
  v7 = folder;
  if (folder)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_5:

  if (!v9)
  {
    v10 = os_log_create("com.apple.notes", "Move");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ICMoveDecision *)objectCopy htmlAccountForObject:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  return v9;
}

+ (id)objectsForMakingDecisionForNonSharedFolder:(id)folder
{
  folderCopy = folder;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (([folderCopy isSharedViaICloud] & 1) != 0 || objc_msgSend(folderCopy, "isSmartFolder"))
  {
    [v5 addObject:folderCopy];
  }

  else
  {
    visibleNotes = [folderCopy visibleNotes];
    [v5 addObjectsFromArray:visibleNotes];

    visibleNoteContainerChildrenUnsorted = [folderCopy visibleNoteContainerChildrenUnsorted];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__ICMoveDecision_objectsForMakingDecisionForNonSharedFolder___block_invoke;
    v9[3] = &unk_1E846E3C0;
    v10 = v5;
    selfCopy = self;
    [visibleNoteContainerChildrenUnsorted enumerateObjectsUsingBlock:v9];
  }

  return v5;
}

void __61__ICMoveDecision_objectsForMakingDecisionForNonSharedFolder___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectsForMakingDecisionForNonSharedFolder:a2];
  [v2 addObjectsFromArray:v3];
}

+ (BOOL)isValidModernSourceObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (BOOL)isValidHTMLSourceObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (BOOL)isValidModernDestinationObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (BOOL)isValidHTMLDestinationObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isValidVirtualDestinationObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (ICFolder)modernDestinationFolder
{
  objc_opt_class();
  modernDestination = [(ICMoveDecision *)self modernDestination];
  v4 = ICDynamicCast();

  return v4;
}

- (ICAccount)modernDestinationAccount
{
  modernSourceObjects = [(ICMoveDecision *)self modernSourceObjects];
  firstObject = [modernSourceObjects firstObject];
  managedObjectContext = [firstObject managedObjectContext];

  objc_opt_class();
  modernDestination = [(ICMoveDecision *)self modernDestination];
  v7 = ICDynamicCast();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    modernDestinationFolder = [(ICMoveDecision *)self modernDestinationFolder];
    account = [modernDestinationFolder account];
    v12 = account;
    if (account)
    {
      v9 = account;
    }

    else
    {
      virtualDestinationFolder = [(ICMoveDecision *)self virtualDestinationFolder];
      accountObjectID = [virtualDestinationFolder accountObjectID];
      if (accountObjectID)
      {
        virtualDestinationFolder2 = [(ICMoveDecision *)self virtualDestinationFolder];
        accountObjectID2 = [virtualDestinationFolder2 accountObjectID];
        v9 = [managedObjectContext objectWithID:accountObjectID2];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

+ (BOOL)shouldCopyThenDeleteWhenMovingObject:(id)object toNoteContainer:(id)container
{
  objectCopy = object;
  containerCopy = container;
  objc_opt_class();
  v7 = ICDynamicCast();
  objc_opt_class();
  v8 = ICDynamicCast();
  v9 = v8;
  if (v7)
  {
    v8 = v7;
  }

  account = [v8 account];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = containerCopy;
    account2 = [v11 account];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    account2 = containerCopy;
    v11 = 0;
LABEL_7:
    if (account == account2)
    {
      isSharedViaICloud = [v11 isSharedViaICloud];
      if ([objectCopy isSharedViaICloud])
      {
        isSharedRootObject = [objectCopy isSharedRootObject];
        if (!isSharedViaICloud || (isSharedRootObject & 1) != 0)
        {
          LOBYTE(isSharedViaICloud) = isSharedViaICloud | isSharedRootObject ^ 1;
        }

        else
        {
          if (v7)
          {
            folder = [v7 folder];
            v16 = [folder isSharedViaSharedFolder:v11];
          }

          else if (v9)
          {
            v16 = [v9 isSharedViaSharedFolder:v11];
          }

          else
          {
            v16 = 0;
          }

          LOBYTE(isSharedViaICloud) = v16 ^ 1;
        }
      }
    }

    else
    {
      LOBYTE(isSharedViaICloud) = 1;
    }

    goto LABEL_22;
  }

  v17 = os_log_create("com.apple.notes", "Move");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(ICMoveDecision *)containerCopy shouldCopyThenDeleteWhenMovingObject:v17 toNoteContainer:v18, v19, v20, v21, v22, v23];
  }

  account2 = 0;
  v11 = 0;
  LOBYTE(isSharedViaICloud) = 0;
LABEL_22:

  return isSharedViaICloud & 1;
}

@end