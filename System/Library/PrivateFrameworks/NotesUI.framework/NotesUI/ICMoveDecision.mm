@interface ICMoveDecision
+ (BOOL)isValidHTMLDestinationObject:(id)a3;
+ (BOOL)isValidHTMLSourceObject:(id)a3;
+ (BOOL)isValidModernDestinationObject:(id)a3;
+ (BOOL)isValidModernSourceObject:(id)a3;
+ (BOOL)isValidVirtualDestinationObject:(id)a3;
+ (BOOL)shouldCopyThenDeleteWhenMovingObject:(id)a3 toNoteContainer:(id)a4;
+ (id)objectsForMakingDecisionForNonSharedFolder:(id)a3;
- (BOOL)hasLockedObjects;
- (ICAccount)modernDestinationAccount;
- (ICFolder)modernDestinationFolder;
- (ICMoveDecision)initWithSourceObjects:(id)a3 destination:(id)a4;
- (ICMoveDecision)initWithSourceObjects:(id)a3 destination:(id)a4 allowsManagedToUnmanagedMove:(BOOL)a5 allowsUnmanagedToManagedMove:(BOOL)a6;
- (id)accountForObject:(id)a3;
- (id)description;
- (id)htmlAccountForObject:(id)a3;
- (id)typeString;
- (void)_makeDecisionForMovingBetweenManagedAndUnmanagedAccounts;
- (void)_makeDecisionForMovingHTMLObjectsToHTMLDestination;
- (void)_makeDecisionForMovingHTMLObjectsToModernDestination;
- (void)_makeDecisionForMovingHTMLObjectsToVirtualDestination;
- (void)_makeDecisionForMovingModernObjectsToHTMLDestination;
- (void)_makeDecisionForMovingModernObjectsToModernDestination;
- (void)_makeDecisionForMovingModernObjectsToVirtualDestination;
- (void)_sanitizeAndScreenFilteredModernSourceObjectsIfNecessary;
- (void)_setDecisionWithType:(unint64_t)a3 additionalStep:(unint64_t)a4 guiltyObjects:(id)a5;
@end

@implementation ICMoveDecision

- (ICMoveDecision)initWithSourceObjects:(id)a3 destination:(id)a4
{
  v6 = MEMORY[0x1E69ADFB8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedConnection];
  v10 = [v9 mayOpenFromManagedToUnmanaged];

  v11 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v12 = [v11 mayOpenFromUnmanagedToManaged];

  v13 = [(ICMoveDecision *)self initWithSourceObjects:v8 destination:v7 allowsManagedToUnmanagedMove:v10 allowsUnmanagedToManagedMove:v12];
  return v13;
}

- (ICMoveDecision)initWithSourceObjects:(id)a3 destination:(id)a4 allowsManagedToUnmanagedMove:(BOOL)a5 allowsUnmanagedToManagedMove:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v49.receiver = self;
  v49.super_class = ICMoveDecision;
  v12 = [(ICMoveDecision *)&v49 init];
  v13 = v12;
  if (v12)
  {
    v12->_allowsManagedToUnmanagedMove = a5;
    v12->_allowsUnmanagedToManagedMove = a6;
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
    [v10 enumerateObjectsUsingBlock:v45];
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

    if ([objc_opt_class() isValidModernDestinationObject:v11])
    {
      v26 = 32;
    }

    else if ([objc_opt_class() isValidHTMLDestinationObject:v11])
    {
      v26 = 40;
    }

    else
    {
      if (![objc_opt_class() isValidVirtualDestinationObject:v11])
      {
        goto LABEL_13;
      }

      v26 = 48;
    }

    objc_storeStrong((&v16->super.isa + v26), a4);
LABEL_13:
    [(ICMoveDecision *)v16 _makeDecisionForMovingBetweenManagedAndUnmanagedAccounts:v40];
    if ([(ICMoveDecision *)v16 type]> 1)
    {
LABEL_31:
      v37 = [(ICMoveDecision *)v16 modernSourceObjects];
      v38 = [v37 ic_objectsOfClass:objc_opt_class()];
      [(ICMoveDecision *)v16 setModernNotes:v38];

      goto LABEL_32;
    }

    v27 = [(ICMoveDecision *)v16 modernDestination];

    if (v27)
    {
      v28 = [(ICMoveDecision *)v16 modernSourceObjects];

      v29 = v28 != 0;
      if (v28)
      {
        [(ICMoveDecision *)v16 _makeDecisionForMovingModernObjectsToModernDestination];
      }

      v30 = [(ICMoveDecision *)v16 htmlSourceObjects];

      if (v30)
      {
        [(ICMoveDecision *)v16 _makeDecisionForMovingHTMLObjectsToModernDestination];
        goto LABEL_31;
      }
    }

    else
    {
      v31 = [(ICMoveDecision *)v16 htmlDestinationFolder];

      if (v31)
      {
        v32 = [(ICMoveDecision *)v16 modernSourceObjects];

        v29 = v32 != 0;
        if (v32)
        {
          [(ICMoveDecision *)v16 _makeDecisionForMovingModernObjectsToHTMLDestination];
        }

        v33 = [(ICMoveDecision *)v16 htmlSourceObjects];

        if (v33)
        {
          [(ICMoveDecision *)v16 _makeDecisionForMovingHTMLObjectsToHTMLDestination];
          goto LABEL_31;
        }
      }

      else
      {
        v34 = [(ICMoveDecision *)v16 virtualDestinationFolder];

        if (!v34)
        {
          goto LABEL_30;
        }

        v35 = [(ICMoveDecision *)v16 modernSourceObjects];

        v29 = v35 != 0;
        if (v35)
        {
          [(ICMoveDecision *)v16 _makeDecisionForMovingModernObjectsToVirtualDestination];
        }

        v36 = [(ICMoveDecision *)v16 htmlSourceObjects];

        if (v36)
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

- (void)_setDecisionWithType:(unint64_t)a3 additionalStep:(unint64_t)a4 guiltyObjects:(id)a5
{
  v9 = a5;
  if (self->_type < a3)
  {
    self->_type = a3;
    self->_additionalStep = a4;
    v10 = v9;
    objc_storeStrong(&self->_guiltyObjects, a5);
    v9 = v10;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ICMoveDecision;
  v4 = [(ICMoveDecision *)&v9 description];
  v5 = [(ICMoveDecision *)self typeString];
  v6 = [(ICMoveDecision *)self guiltyObjects];
  v7 = [v3 stringWithFormat:@"%@: type = %@, guiltyObjects = %@", v4, v5, v6];

  return v7;
}

- (id)typeString
{
  v2 = [(ICMoveDecision *)self type];
  if (v2 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E846E3E0[v2];
  }
}

- (void)_makeDecisionForMovingBetweenManagedAndUnmanagedAccounts
{
  v33[1] = *MEMORY[0x1E69E9840];
  [(ICMoveDecision *)self _sanitizeAndScreenFilteredModernSourceObjectsIfNecessary];
  v3 = [(ICMoveDecision *)self accountsOfModernSourceObjects];
  v4 = [v3 allObjects];

  v5 = [v4 ic_objectsPassingTest:&__block_literal_global_91];
  v32 = v4;
  v6 = [v4 ic_objectsPassingTest:&__block_literal_global_34];
  v7 = [(ICMoveDecision *)self accountsOfHTMLSourceObjects];
  v8 = [v7 allObjects];

  v9 = [v8 ic_objectsPassingTest:&__block_literal_global_37_1];
  v10 = [v8 ic_objectsPassingTest:&__block_literal_global_39_1];
  v30 = [v8 ic_objectsPassingTest:&__block_literal_global_41_2];
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

  v18 = [(ICMoveDecision *)self htmlDestinationFolder];
  v19 = [v18 account];

  v20 = [(ICMoveDecision *)self modernDestinationAccount];
  if ([v20 isManaged])
  {
    v21 = 1;
  }

  else
  {
    v21 = [v19 isManaged];
  }

  if ([(ICMoveDecision *)self allowsManagedToUnmanagedMove]|| v13 || (v21 & 1) != 0)
  {
    v22 = v30;
    if ([(ICMoveDecision *)self allowsUnmanagedToManagedMove]|| v17 || ((v21 ^ 1) & 1) != 0)
    {
      if (![v30 count])
      {
        goto LABEL_22;
      }

      v25 = [(ICMoveDecision *)self modernDestinationAccount];
      if (v25)
      {
      }

      else
      {
        v33[0] = v19;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
        v27 = [v30 isEqual:v26];

        if (v27)
        {
          goto LABEL_22;
        }
      }

      v23 = self;
      v24 = v30;
    }

    else
    {
      v23 = self;
      v24 = v16;
    }

    [(ICMoveDecision *)v23 _setDecisionWithType:2 guiltyObjects:v24];
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

  v3 = [(ICMoveDecision *)self modernDestinationFolder];
  v4 = [v3 isUnsupported];

  if (v4 || (-[ICMoveDecision modernDestinationFolder](self, "modernDestinationFolder"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isSharedReadOnly], v5, v6) || (-[ICMoveDecision modernDestinationFolder](self, "modernDestinationFolder"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isSmartFolder"), v7, v8))
  {
    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:0];
  }

  else
  {
    v23 = [(ICMoveDecision *)self modernSourceObjects];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __72__ICMoveDecision__makeDecisionForMovingModernObjectsToModernDestination__block_invoke;
    v79[3] = &unk_1E846E308;
    v79[4] = self;
    [v23 enumerateObjectsUsingBlock:v79];
  }

  if (![(ICMoveDecision *)self type])
  {
    v9 = objc_alloc(MEMORY[0x1E695DFA8]);
    v10 = [(ICMoveDecision *)self modernSourceObjects];
    v11 = [v9 initWithArray:v10];

    v12 = [(ICMoveDecision *)self modernSourceObjects];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __72__ICMoveDecision__makeDecisionForMovingModernObjectsToModernDestination__block_invoke_2;
    v77[3] = &unk_1E846E330;
    v77[4] = self;
    v13 = v11;
    v78 = v13;
    [v12 enumerateObjectsUsingBlock:v77];

    v14 = [(ICMoveDecision *)self filteredModernSourceObjects];
    v15 = [v14 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      [(ICMoveDecision *)self setFilteredModernSourceObjects:v13];
      [(ICMoveDecision *)self setHasSanitizedAndScreenedModernSourceObjects:0];
    }

    v16 = [(ICMoveDecision *)self filteredModernSourceObjects];
    v17 = [v16 count];

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
  v18 = [(ICMoveDecision *)self unsupportedObjectsInSource];
  if (![v18 count])
  {
    goto LABEL_16;
  }

  v19 = [(ICMoveDecision *)self modernDestinationFolder];
  if ([v19 isDefaultFolderForAccount])
  {

LABEL_16:
    goto LABEL_17;
  }

  v30 = [(ICMoveDecision *)self modernDestinationFolder];
  v31 = [v30 isTrashFolder];

  if ((v31 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  v20 = [(ICMoveDecision *)self unsupportedObjectsInSource];
  if ([v20 count])
  {
    v21 = [(ICMoveDecision *)self sharedObjectsInSource];
    v22 = [v21 count];

    if (v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v24 = [(ICMoveDecision *)self unsupportedObjectsInSource];
  if (![v24 count])
  {

    goto LABEL_31;
  }

  v25 = [(ICMoveDecision *)self accountsOfModernSourceObjects];
  v26 = MEMORY[0x1E695DFD8];
  v27 = [(ICMoveDecision *)self modernDestinationAccount];
  v28 = [v26 setWithObject:v27];
  v29 = [v25 isEqual:v28];

  if ((v29 & 1) == 0)
  {
LABEL_26:
    v32 = [(ICMoveDecision *)self unsupportedObjectsInSource];
LABEL_27:
    v33 = v32;
    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:v32];
LABEL_28:

    return;
  }

LABEL_31:
  v34 = [(ICMoveDecision *)self modernFoldersInSource];
  if ([v34 count] && (-[ICMoveDecision modernDestinationFolder](self, "modernDestinationFolder"), (v35 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v36 = v35;
    v37 = [(ICMoveDecision *)self modernDestinationFolder];
    v38 = [v37 depth];
    v39 = MEMORY[0x1E69B7760];
    v40 = [(ICMoveDecision *)self modernFoldersInSource];
    v41 = [v39 maximumDistanceToLeafFolderOfFolders:v40] + v38;
    v42 = [MEMORY[0x1E69B7760] folderDepthLimit];

    if (v41 >= v42)
    {
      v33 = [(ICMoveDecision *)self modernDestinationFolder];
      v80[0] = v33;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
      [(ICMoveDecision *)self _setDecisionWithType:3 additionalStep:1 guiltyObjects:v43];
LABEL_35:

      goto LABEL_28;
    }
  }

  else
  {
  }

  v44 = [(ICMoveDecision *)self modernFoldersInSource];
  if ([v44 count])
  {
    v45 = [(ICMoveDecision *)self modernDestinationFolder];
    v46 = [v45 isSystemFolder];

    if (v46)
    {
      v32 = [(ICMoveDecision *)self modernFoldersInSource];
      goto LABEL_27;
    }
  }

  else
  {
  }

  v47 = [(ICMoveDecision *)self readOnlySharedSubObjectsInSource];
  v48 = [v47 count];

  if (v48)
  {
    v32 = [(ICMoveDecision *)self readOnlySharedSubObjectsInSource];
    goto LABEL_27;
  }

  if ([(ICMoveDecision *)self hasSharedObjectsNotFromDestinationAccountInSource])
  {
    v33 = [(ICMoveDecision *)self sharedObjectsInSource];
    v49 = self;
    v50 = 3;
    v51 = 4;
LABEL_67:
    [(ICMoveDecision *)v49 _setDecisionWithType:v50 additionalStep:v51 guiltyObjects:v33];
    goto LABEL_28;
  }

  v52 = [(ICMoveDecision *)self modernDestinationFolder];
  if ([v52 isSharedViaICloud])
  {
  }

  else
  {
    v53 = [(ICMoveDecision *)self readWriteSharedSubObjectsInSource];
    v54 = [v53 count];

    if (v54)
    {
      v55 = [(ICMoveDecision *)self readWriteSharedSubObjectsInSource];
LABEL_49:
      v33 = v55;
      v49 = self;
      v50 = 1;
      v51 = 6;
      goto LABEL_67;
    }
  }

  v56 = [(ICMoveDecision *)self modernDestinationFolder];
  v57 = [v56 isSharedViaICloud];

  v58 = [(ICMoveDecision *)self lockedObjectsInSource];
  v59 = [v58 count];
  if (v57)
  {
    if (v59)
    {

LABEL_57:
      v63 = [(ICMoveDecision *)self lockedObjectsInSource];
      v64 = [(ICMoveDecision *)self joinedSharedRootObjectsInSource];
      v33 = [v63 arrayByAddingObjectsFromArray:v64];

      v49 = self;
      v50 = 3;
      v51 = 3;
      goto LABEL_67;
    }

    v61 = [(ICMoveDecision *)self joinedSharedRootObjectsInSource];
    v62 = [v61 count];

    if (v62)
    {
      goto LABEL_57;
    }

    v69 = [(ICMoveDecision *)self sharedObjectsNotFromDestinationFolderInSource];
    v70 = [v69 count];

    if (v70)
    {
      v55 = [(ICMoveDecision *)self sharedObjectsNotFromDestinationFolderInSource];
      goto LABEL_49;
    }
  }

  else
  {
    if (v59)
    {
      v60 = [(ICMoveDecision *)self hasLockedNotesNotFromDestinationAccountInSource];

      if (v60)
      {
        v33 = [(ICMoveDecision *)self lockedObjectsInSource];
        v49 = self;
        v50 = 3;
        v51 = 2;
        goto LABEL_67;
      }
    }

    else
    {
    }

    v65 = [(ICMoveDecision *)self systemPaperNotesInSource];
    v66 = [v65 count];

    if (v66)
    {
      v33 = [(ICMoveDecision *)self systemPaperNotesInSource];
      v49 = self;
      v50 = 1;
      v51 = 8;
      goto LABEL_67;
    }

    v67 = [(ICMoveDecision *)self mathNotesNotesInSource];
    v68 = [v67 count];

    if (v68)
    {
      v33 = [(ICMoveDecision *)self mathNotesNotesInSource];
      v49 = self;
      v50 = 1;
      v51 = 10;
      goto LABEL_67;
    }

    v71 = [(ICMoveDecision *)self callNotesInSource];
    v72 = [v71 count];

    if (v72)
    {
      v33 = [(ICMoveDecision *)self callNotesInSource];
      v49 = self;
      v50 = 1;
      v51 = 12;
      goto LABEL_67;
    }

    v73 = [(ICMoveDecision *)self modernDestinationAccount];
    v74 = [v73 isLocalAccount];

    if (v74)
    {
      v75 = [(ICMoveDecision *)self filteredModernSourceObjects];
      v33 = [v75 ic_objectsPassingTest:&__block_literal_global_48_0];

      v43 = [v33 ic_objectsPassingTest:&__block_literal_global_51];
      if ([v43 count])
      {
        v76 = [v43 allObjects];
        [(ICMoveDecision *)self _setDecisionWithType:3 additionalStep:13 guiltyObjects:v76];
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
  v4 = [(ICMoveDecision *)self modernSourceObjects];
  v23 = [v3 initWithArray:v4];

  v5 = [(ICMoveDecision *)self filteredModernSourceObjects];
  LOBYTE(v4) = [v5 isEqual:v23];

  if ((v4 & 1) == 0)
  {
    [(ICMoveDecision *)self setFilteredModernSourceObjects:v23];
    [(ICMoveDecision *)self setHasSanitizedAndScreenedModernSourceObjects:0];
  }

  [(ICMoveDecision *)self _sanitizeAndScreenFilteredModernSourceObjectsIfNecessary];
  v6 = [(ICMoveDecision *)self modernSourceObjects];
  v7 = [v6 count];

  if (v7)
  {
    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:0];
  }

  v8 = [(ICMoveDecision *)self modernFoldersInSource];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(ICMoveDecision *)self modernFoldersInSource];
LABEL_11:
    v13 = v10;
    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:v10];
    goto LABEL_12;
  }

  v11 = [(ICMoveDecision *)self unsupportedObjectsInSource];
  v12 = [v11 count];

  if (v12)
  {
    v10 = [(ICMoveDecision *)self unsupportedObjectsInSource];
    goto LABEL_11;
  }

  v14 = [(ICMoveDecision *)self lockedObjectsInSource];
  v15 = [v14 count];

  if (v15)
  {
    v13 = [(ICMoveDecision *)self lockedObjectsInSource];
    v16 = self;
    v17 = 3;
    v18 = 2;
  }

  else
  {
    v19 = [(ICMoveDecision *)self sharedObjectsInSource];
    v20 = [v19 count];

    if (v20)
    {
      v13 = [(ICMoveDecision *)self sharedObjectsInSource];
      v16 = self;
      v17 = 3;
      v18 = 4;
    }

    else
    {
      v21 = [(ICMoveDecision *)self privateModernNoteWithAttachmentsInSource];
      v22 = [v21 count];

      if (!v22)
      {
        goto LABEL_13;
      }

      v13 = [(ICMoveDecision *)self privateModernNoteWithAttachmentsInSource];
      v16 = self;
      v17 = 1;
      v18 = 5;
    }
  }

  [(ICMoveDecision *)v16 _setDecisionWithType:v17 additionalStep:v18 guiltyObjects:v13];
LABEL_12:

LABEL_13:
}

- (void)_makeDecisionForMovingModernObjectsToVirtualDestination
{
  v3 = [(ICMoveDecision *)self modernSourceObjects];
  v4 = [v3 firstObject];
  v48 = [v4 managedObjectContext];

  if (!v48)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((context) != nil)" functionName:"-[ICMoveDecision _makeDecisionForMovingModernObjectsToVirtualDestination]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "context"}];
  }

  if ([(ICMoveDecision *)self shouldContinueDecisionMaking])
  {
    v5 = [(ICMoveDecision *)self virtualDestinationFolder];

    if (v48)
    {
      if (v5)
      {
        v6 = [(ICMoveDecision *)self filteredModernSourceObjects];
        v7 = [v6 mutableCopy];

        v8 = MEMORY[0x1E69B77F0];
        v9 = [(ICMoveDecision *)self virtualDestinationFolder];
        v10 = [v9 predicateForContext:v48];
        v11 = [v8 ic_objectsMatchingPredicate:v10 context:v48];

        v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
        [v7 minusSet:v12];

        v13 = [(ICMoveDecision *)self filteredModernSourceObjects];
        LOBYTE(v10) = [v13 isEqual:v7];

        if ((v10 & 1) == 0)
        {
          [(ICMoveDecision *)self setFilteredModernSourceObjects:v7];
          [(ICMoveDecision *)self setHasSanitizedAndScreenedModernSourceObjects:0];
        }

        [(ICMoveDecision *)self _sanitizeAndScreenFilteredModernSourceObjectsIfNecessary];
        v14 = [(ICMoveDecision *)self filteredModernSourceObjects];
        v15 = [v14 count];

        if (!v15)
        {
          v18 = [(ICMoveDecision *)self modernSourceObjects];
          goto LABEL_16;
        }

        v16 = [(ICMoveDecision *)self unsupportedObjectsInSource];
        v17 = [v16 count];

        if (v17)
        {
          v18 = [(ICMoveDecision *)self unsupportedObjectsInSource];
LABEL_16:
          v23 = v18;
          [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:v18];
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v19 = [(ICMoveDecision *)self modernFoldersInSource];
        v20 = [v19 count];

        if (v20)
        {
          v18 = [(ICMoveDecision *)self modernFoldersInSource];
          goto LABEL_16;
        }

        v21 = [(ICMoveDecision *)self readOnlySharedSubObjectsInSource];
        v22 = [v21 count];

        if (v22)
        {
          v18 = [(ICMoveDecision *)self readOnlySharedSubObjectsInSource];
          goto LABEL_16;
        }

        if ([(ICMoveDecision *)self hasSharedObjectsNotFromDestinationAccountInSource])
        {
          v23 = [(ICMoveDecision *)self sharedObjectsInSource];
          v24 = self;
          v25 = 3;
          v26 = 4;
        }

        else if ([(ICMoveDecision *)self hasLockedNotesNotFromDestinationAccountInSource])
        {
          v23 = [(ICMoveDecision *)self lockedObjectsInSource];
          v24 = self;
          v25 = 3;
          v26 = 2;
        }

        else
        {
          v27 = [(ICMoveDecision *)self virtualDestinationFolder];
          v28 = [v27 type];
          v29 = [v28 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeSharedWithYou"];

          if (v29)
          {
            v30 = [(ICMoveDecision *)self modernSourceObjects];
          }

          else
          {
            v31 = [(ICMoveDecision *)self virtualDestinationFolder];
            v32 = [v31 type];
            v33 = [v32 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeSystemPaper"];

            if (!v33)
            {
              v36 = [(ICMoveDecision *)self virtualDestinationFolder];
              v37 = [v36 type];
              v38 = [v37 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeMathNotes"];

              if (v38)
              {
                v39 = [(ICMoveDecision *)self nonMathNotesNotesInSource];
                v40 = [v39 count];

                if (!v40)
                {
                  goto LABEL_18;
                }

                v23 = [(ICMoveDecision *)self nonMathNotesNotesInSource];
                v24 = self;
                v25 = 1;
                v26 = 9;
              }

              else
              {
                v41 = [(ICMoveDecision *)self virtualDestinationFolder];
                v42 = [v41 type];
                v43 = [v42 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeCallNotes"];

                if (!v43)
                {
                  goto LABEL_18;
                }

                v44 = [(ICMoveDecision *)self nonCallNotesInSource];
                v45 = [v44 count];

                if (!v45)
                {
                  goto LABEL_18;
                }

                v23 = [(ICMoveDecision *)self nonCallNotesInSource];
                v24 = self;
                v25 = 1;
                v26 = 11;
              }

              goto LABEL_32;
            }

            v34 = [(ICMoveDecision *)self lockedObjectsInSource];
            v35 = [v34 count];

            if (!v35)
            {
              v46 = [(ICMoveDecision *)self nonSystemPaperNotesInSource];
              v47 = [v46 count];

              if (!v47)
              {
                goto LABEL_18;
              }

              v23 = [(ICMoveDecision *)self nonSystemPaperNotesInSource];
              v24 = self;
              v25 = 1;
              v26 = 7;
              goto LABEL_32;
            }

            v30 = [(ICMoveDecision *)self lockedObjectsInSource];
          }

          v23 = v30;
          v24 = self;
          v25 = 2;
          v26 = 0;
        }

LABEL_32:
        [(ICMoveDecision *)v24 _setDecisionWithType:v25 additionalStep:v26 guiltyObjects:v23];
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
    v3 = [(ICMoveDecision *)self modernDestinationFolder];
    v4 = [v3 isSharedReadOnly];

    if ((v4 & 1) != 0 || (-[ICMoveDecision modernDestinationFolder](self, "modernDestinationFolder"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isSmartFolder], v5, v6))
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
    v3 = [(ICMoveDecision *)self modernSourceObjects];
    [(ICMoveDecision *)self _setDecisionWithType:2 guiltyObjects:v3];
  }
}

- (void)_sanitizeAndScreenFilteredModernSourceObjectsIfNecessary
{
  v118 = *MEMORY[0x1E69E9840];
  if ([(ICMoveDecision *)self hasSanitizedAndScreenedModernSourceObjects])
  {
    return;
  }

  v3 = [(ICMoveDecision *)self filteredModernSourceObjects];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFA8]);
    v5 = [(ICMoveDecision *)self modernSourceObjects];
    v6 = [v4 initWithArray:v5];
    [(ICMoveDecision *)self setFilteredModernSourceObjects:v6];
  }

  v7 = [(ICMoveDecision *)self filteredModernSourceObjects];
  v8 = [v7 allObjects];
  v9 = [v8 ic_objectsPassingTest:&__block_literal_global_65];
  [(ICMoveDecision *)self setModernFoldersInSource:v9];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [(ICMoveDecision *)self filteredModernSourceObjects];
  v12 = [v11 allObjects];
  v13 = [v12 mutableCopy];

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
  v114 = self;
  v102 = v14;
  [v14 enumerateObjectsUsingBlock:v112];
  v101 = v15;
  [(ICMoveDecision *)self setSanitizedFilteredModernSourceObjects:v15];
  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  v17 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v18 = [v16 initWithCapacity:{objc_msgSend(v17, "count")}];
  [(ICMoveDecision *)self setOwnedSharedRootObjectsInSource:v18];

  v19 = objc_alloc(MEMORY[0x1E695DF70]);
  v20 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v21 = [v19 initWithCapacity:{objc_msgSend(v20, "count")}];
  [(ICMoveDecision *)self setJoinedSharedRootObjectsInSource:v21];

  v22 = objc_alloc(MEMORY[0x1E695DF70]);
  v23 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v24 = [v22 initWithCapacity:{objc_msgSend(v23, "count")}];
  [(ICMoveDecision *)self setReadWriteSharedSubObjectsInSource:v24];

  v25 = objc_alloc(MEMORY[0x1E695DF70]);
  v26 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v27 = [v25 initWithCapacity:{objc_msgSend(v26, "count")}];
  [(ICMoveDecision *)self setReadOnlySharedSubObjectsInSource:v27];

  v28 = objc_alloc(MEMORY[0x1E695DFA8]);
  v29 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v30 = [v28 initWithCapacity:{objc_msgSend(v29, "count")}];
  [(ICMoveDecision *)self setAccountsOfModernSourceObjects:v30];

  v31 = objc_alloc(MEMORY[0x1E695DF70]);
  v32 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v33 = [v31 initWithCapacity:{objc_msgSend(v32, "count")}];
  [(ICMoveDecision *)self setSharedObjectsInSource:v33];

  v34 = objc_alloc(MEMORY[0x1E695DF70]);
  v35 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v36 = [v34 initWithCapacity:{objc_msgSend(v35, "count")}];
  [(ICMoveDecision *)self setLockedObjectsInSource:v36];

  v37 = objc_alloc(MEMORY[0x1E695DF70]);
  v38 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v39 = [v37 initWithCapacity:{objc_msgSend(v38, "count")}];
  [(ICMoveDecision *)self setUnsupportedObjectsInSource:v39];

  v40 = objc_alloc(MEMORY[0x1E695DF70]);
  v41 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v42 = [v40 initWithCapacity:{objc_msgSend(v41, "count")}];
  [(ICMoveDecision *)self setPrivateModernNoteWithAttachmentsInSource:v42];

  v43 = objc_alloc(MEMORY[0x1E695DF70]);
  v44 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v45 = [v43 initWithCapacity:{objc_msgSend(v44, "count")}];
  [(ICMoveDecision *)self setSharedObjectsNotFromDestinationFolderInSource:v45];

  v46 = objc_alloc(MEMORY[0x1E695DF70]);
  v47 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v48 = [v46 initWithCapacity:{objc_msgSend(v47, "count")}];
  [(ICMoveDecision *)self setSystemPaperNotesInSource:v48];

  v49 = objc_alloc(MEMORY[0x1E695DF70]);
  v50 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v51 = [v49 initWithCapacity:{objc_msgSend(v50, "count")}];
  [(ICMoveDecision *)self setNonSystemPaperNotesInSource:v51];

  v52 = objc_alloc(MEMORY[0x1E695DF70]);
  v53 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v54 = [v52 initWithCapacity:{objc_msgSend(v53, "count")}];
  [(ICMoveDecision *)self setMathNotesNotesInSource:v54];

  v55 = objc_alloc(MEMORY[0x1E695DF70]);
  v56 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v57 = [v55 initWithCapacity:{objc_msgSend(v56, "count")}];
  [(ICMoveDecision *)self setNonMathNotesNotesInSource:v57];

  v58 = objc_alloc(MEMORY[0x1E695DF70]);
  v59 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v60 = [v58 initWithCapacity:{objc_msgSend(v59, "count")}];
  [(ICMoveDecision *)self setCallNotesInSource:v60];

  v61 = objc_alloc(MEMORY[0x1E695DF70]);
  v62 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v63 = [v61 initWithCapacity:{objc_msgSend(v62, "count")}];
  [(ICMoveDecision *)self setNonCallNotesInSource:v63];

  v64 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_4;
  v111[3] = &unk_1E846E308;
  v111[4] = self;
  [v64 enumerateObjectsUsingBlock:v111];

  v65 = [(ICMoveDecision *)self sharedObjectsInSource];
  v66 = [(ICMoveDecision *)self ownedSharedRootObjectsInSource];
  [v65 addObjectsFromArray:v66];

  v67 = [(ICMoveDecision *)self sharedObjectsInSource];
  v68 = [(ICMoveDecision *)self joinedSharedRootObjectsInSource];
  [v67 addObjectsFromArray:v68];

  v69 = [(ICMoveDecision *)self sharedObjectsInSource];
  v70 = [(ICMoveDecision *)self readWriteSharedSubObjectsInSource];
  [v69 addObjectsFromArray:v70];

  v71 = [(ICMoveDecision *)self sharedObjectsInSource];
  v72 = [(ICMoveDecision *)self readOnlySharedSubObjectsInSource];
  [v71 addObjectsFromArray:v72];

  v73 = [(ICMoveDecision *)self modernDestinationFolder];
  v74 = [v73 rootSharingFolder];

  if (v74)
  {
    v75 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 3221225472;
    v108[2] = __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_5;
    v108[3] = &unk_1E846E330;
    v109 = v74;
    v110 = self;
    [v75 enumerateObjectsUsingBlock:v108];
  }

  v76 = [(ICMoveDecision *)self sharedObjectsInSource];
  v77 = [v76 count];

  if (v77)
  {
    v78 = [(ICMoveDecision *)self accountsOfModernSourceObjects];
    v79 = [v78 count];

    if (v79 < 2)
    {
      v80 = [(ICMoveDecision *)self accountsOfModernSourceObjects];
      if ([v80 count] == 1)
      {
        v81 = [(ICMoveDecision *)self accountsOfModernSourceObjects];
        v82 = [v81 anyObject];
        v83 = [v82 identifier];
        v84 = [(ICMoveDecision *)self modernDestinationAccount];
        v85 = [v84 identifier];
        v86 = [v83 isEqualToString:v85];

        if ((v86 & 1) == 0)
        {
          [(ICMoveDecision *)self setHasSharedObjectsNotFromDestinationAccountInSource:1];
        }

        goto LABEL_13;
      }
    }

    else
    {
      v80 = [(ICMoveDecision *)self sharedObjectsInSource];
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __74__ICMoveDecision__sanitizeAndScreenFilteredModernSourceObjectsIfNecessary__block_invoke_6;
      v107[3] = &unk_1E846E398;
      v107[4] = self;
      -[ICMoveDecision setHasSharedObjectsNotFromDestinationAccountInSource:](self, "setHasSharedObjectsNotFromDestinationAccountInSource:", [v80 ic_containsObjectPassingTest:v107]);
    }
  }

LABEL_13:
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v87 = [(ICMoveDecision *)self sanitizedFilteredModernSourceObjects];
  v88 = [v87 countByEnumeratingWithState:&v103 objects:v117 count:16];
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
          objc_enumerationMutation(v87);
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
            v97 = [v93 account];
            v98 = [(ICMoveDecision *)self modernDestinationAccount];
            v99 = [(ICMoveDecision *)self hasLockedNotesNotFromDestinationAccountInSource];
            v100 = v97 != v98 || v99;
            [(ICMoveDecision *)self setHasLockedNotesNotFromDestinationAccountInSource:v100];
          }
        }
      }

      v89 = [v87 countByEnumeratingWithState:&v103 objects:v117 count:16];
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
  v2 = [(ICMoveDecision *)self lockedObjectsInSource];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)accountForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = ICDynamicCast();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 account];
    if (v6)
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
      v6 = [v7 account];
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      goto LABEL_11;
    }
  }

  v9 = os_log_create("com.apple.notes", "Move");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ICMoveDecision *)v3 accountForObject:v9, v10, v11, v12, v13, v14, v15];
  }

LABEL_11:

  return v6;
}

- (id)htmlAccountForObject:(id)a3
{
  v3 = a3;
  v4 = ICProtocolCast();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 folder];
    v7 = v6;
LABEL_4:
    v8 = [v6 account];
    v9 = ICProtocolCast();

    goto LABEL_5;
  }

  v6 = ICProtocolCast();
  v7 = v6;
  if (v6)
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
      [(ICMoveDecision *)v3 htmlAccountForObject:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  return v9;
}

+ (id)objectsForMakingDecisionForNonSharedFolder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (([v4 isSharedViaICloud] & 1) != 0 || objc_msgSend(v4, "isSmartFolder"))
  {
    [v5 addObject:v4];
  }

  else
  {
    v6 = [v4 visibleNotes];
    [v5 addObjectsFromArray:v6];

    v7 = [v4 visibleNoteContainerChildrenUnsorted];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__ICMoveDecision_objectsForMakingDecisionForNonSharedFolder___block_invoke;
    v9[3] = &unk_1E846E3C0;
    v10 = v5;
    v11 = a1;
    [v7 enumerateObjectsUsingBlock:v9];
  }

  return v5;
}

void __61__ICMoveDecision_objectsForMakingDecisionForNonSharedFolder___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectsForMakingDecisionForNonSharedFolder:a2];
  [v2 addObjectsFromArray:v3];
}

+ (BOOL)isValidModernSourceObject:(id)a3
{
  v3 = a3;
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

+ (BOOL)isValidHTMLSourceObject:(id)a3
{
  v3 = a3;
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

+ (BOOL)isValidModernDestinationObject:(id)a3
{
  v3 = a3;
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

+ (BOOL)isValidHTMLDestinationObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isValidVirtualDestinationObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (ICFolder)modernDestinationFolder
{
  objc_opt_class();
  v3 = [(ICMoveDecision *)self modernDestination];
  v4 = ICDynamicCast();

  return v4;
}

- (ICAccount)modernDestinationAccount
{
  v3 = [(ICMoveDecision *)self modernSourceObjects];
  v4 = [v3 firstObject];
  v5 = [v4 managedObjectContext];

  objc_opt_class();
  v6 = [(ICMoveDecision *)self modernDestination];
  v7 = ICDynamicCast();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(ICMoveDecision *)self modernDestinationFolder];
    v11 = [v10 account];
    v12 = v11;
    if (v11)
    {
      v9 = v11;
    }

    else
    {
      v13 = [(ICMoveDecision *)self virtualDestinationFolder];
      v14 = [v13 accountObjectID];
      if (v14)
      {
        v15 = [(ICMoveDecision *)self virtualDestinationFolder];
        v16 = [v15 accountObjectID];
        v9 = [v5 objectWithID:v16];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

+ (BOOL)shouldCopyThenDeleteWhenMovingObject:(id)a3 toNoteContainer:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = ICDynamicCast();
  objc_opt_class();
  v8 = ICDynamicCast();
  v9 = v8;
  if (v7)
  {
    v8 = v7;
  }

  v10 = [v8 account];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v6;
    v12 = [v11 account];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
    v11 = 0;
LABEL_7:
    if (v10 == v12)
    {
      v13 = [v11 isSharedViaICloud];
      if ([v5 isSharedViaICloud])
      {
        v14 = [v5 isSharedRootObject];
        if (!v13 || (v14 & 1) != 0)
        {
          LOBYTE(v13) = v13 | v14 ^ 1;
        }

        else
        {
          if (v7)
          {
            v15 = [v7 folder];
            v16 = [v15 isSharedViaSharedFolder:v11];
          }

          else if (v9)
          {
            v16 = [v9 isSharedViaSharedFolder:v11];
          }

          else
          {
            v16 = 0;
          }

          LOBYTE(v13) = v16 ^ 1;
        }
      }
    }

    else
    {
      LOBYTE(v13) = 1;
    }

    goto LABEL_22;
  }

  v17 = os_log_create("com.apple.notes", "Move");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(ICMoveDecision *)v6 shouldCopyThenDeleteWhenMovingObject:v17 toNoteContainer:v18, v19, v20, v21, v22, v23];
  }

  v12 = 0;
  v11 = 0;
  LOBYTE(v13) = 0;
LABEL_22:

  return v13 & 1;
}

@end