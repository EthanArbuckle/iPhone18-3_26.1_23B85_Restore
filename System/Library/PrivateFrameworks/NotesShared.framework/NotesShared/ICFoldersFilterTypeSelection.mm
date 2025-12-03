@interface ICFoldersFilterTypeSelection
+ (id)keyPathsForValuesAffectingIsEmpty;
- (BOOL)containsSharedFolder;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToICFoldersFilterTypeSelection:(id)selection;
- (ICFoldersFilterTypeSelection)initWithManagedObjectContext:(id)context inclusionType:(unint64_t)type folderIdentifiers:(id)identifiers;
- (NSString)folderSummaryList;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)emptySummary;
- (id)emptySummaryTitle;
- (id)folderTitlesForIdentifiers:(id)identifiers;
- (id)rawFilterValue;
- (id)shortEmptySummary;
- (unint64_t)hash;
- (void)addFolderIdentifier:(id)identifier;
- (void)removeFolderIdentifier:(id)identifier;
@end

@implementation ICFoldersFilterTypeSelection

- (ICFoldersFilterTypeSelection)initWithManagedObjectContext:(id)context inclusionType:(unint64_t)type folderIdentifiers:(id)identifiers
{
  contextCopy = context;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = ICFoldersFilterTypeSelection;
  v11 = [(ICFoldersFilterTypeSelection *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_managedObjectContext, context);
    v12->_inclusionType = type;
    objc_storeStrong(&v12->_folderIdentifiers, identifiers);
  }

  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  inclusionType = [(ICFoldersFilterTypeSelection *)self inclusionType];
  v5 = @"Exclude";
  if (!inclusionType)
  {
    v5 = @"Include";
  }

  v6 = v5;
  folderIdentifiers = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
  v8 = [folderIdentifiers componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"inclusionType: %@\nfolder identifiers: %@", v6, v8];

  return v9;
}

- (void)addFolderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  folderIdentifiers = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
  v5 = [folderIdentifiers arrayByAddingObject:identifierCopy];

  [(ICFoldersFilterTypeSelection *)self setFolderIdentifiers:v5];
}

- (void)removeFolderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  folderIdentifiers = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
  v7 = [folderIdentifiers mutableCopy];

  [v7 removeObject:identifierCopy];
  v6 = [v7 copy];
  [(ICFoldersFilterTypeSelection *)self setFolderIdentifiers:v6];
}

- (NSString)folderSummaryList
{
  v22[1] = *MEMORY[0x277D85DE8];
  folderIdentifiers = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
  v4 = [folderIdentifiers count];

  if (!v4)
  {
    v11 = __ICLocalizedFrameworkString_impl(@"0 selected", @"0 selected", 0, 1);
    goto LABEL_10;
  }

  folderIdentifiers2 = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
  v6 = [folderIdentifiers2 count];

  folderIdentifiers3 = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
  firstObject3 = folderIdentifiers3;
  if (v6 == 1)
  {
    v9 = [(ICFoldersFilterTypeSelection *)self folderTitlesForIdentifiers:folderIdentifiers3];
    firstObject = [v9 firstObject];
  }

  else
  {
    v12 = [folderIdentifiers3 count];

    folderIdentifiers4 = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
    v14 = folderIdentifiers4;
    if (v12 != 2)
    {
      firstObject2 = [folderIdentifiers4 firstObject];
      v22[0] = firstObject2;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      v17 = [(ICFoldersFilterTypeSelection *)self folderTitlesForIdentifiers:v16];
      firstObject3 = [v17 firstObject];

      v18 = MEMORY[0x277CCACA8];
      v19 = __ICLocalizedFrameworkString_impl(@"FOLDERS_%@_AND_%lu_OTHERS", @"FOLDERS_%@_AND_%lu_OTHERS", 0, 1);
      folderIdentifiers5 = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
      v11 = [v18 localizedStringWithFormat:v19, firstObject3, objc_msgSend(folderIdentifiers5, "count") - 1];

      goto LABEL_9;
    }

    firstObject3 = [(ICFoldersFilterTypeSelection *)self folderTitlesForIdentifiers:folderIdentifiers4];

    v9 = objc_alloc_init(MEMORY[0x277CCAAF0]);
    firstObject = [v9 stringFromItems:firstObject3];
  }

  v11 = firstObject;

LABEL_9:
LABEL_10:

  return v11;
}

- (BOOL)containsSharedFolder
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICFoldersFilterTypeSelection *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__ICFoldersFilterTypeSelection_containsSharedFolder__block_invoke;
  v5[3] = &unk_278194D68;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __52__ICFoldersFilterTypeSelection_containsSharedFolder__block_invoke(uint64_t a1)
{
  v2 = +[ICFolder fetchRequest];
  v3 = MEMORY[0x277CCAC30];
  v4 = [*(a1 + 32) folderIdentifiers];
  v5 = [v3 predicateWithFormat:@"identifier in %@", v4];
  [v2 setPredicate:v5];

  [v2 setResultType:0];
  v6 = [*(a1 + 32) managedObjectContext];
  v10 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __52__ICFoldersFilterTypeSelection_containsSharedFolder__block_invoke_cold_1((a1 + 32), v8, v9);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = [v7 ic_containsObjectPassingTest:&__block_literal_global_39];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ICFoldersFilterTypeSelection allocWithZone:?];
  managedObjectContext = [(ICFoldersFilterTypeSelection *)self managedObjectContext];
  inclusionType = [(ICFoldersFilterTypeSelection *)self inclusionType];
  folderIdentifiers = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
  v9 = [folderIdentifiers copyWithZone:zone];
  v10 = [(ICFoldersFilterTypeSelection *)v5 initWithManagedObjectContext:managedObjectContext inclusionType:inclusionType folderIdentifiers:v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICFoldersFilterTypeSelection *)self isEqualToICFoldersFilterTypeSelection:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICFoldersFilterTypeSelection inclusionType](self, "inclusionType")}];
  v4 = [v3 hash];
  folderIdentifiers = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v7 hash];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = folderIdentifiers;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v8 = ICHashWithObject(*(*(&v23 + 1) + 8 * i)) - v8 + 32 * v8;
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v21 = ICHashWithHashKeys(v4, v14, v15, v16, v17, v18, v19, v20, v8);
  return v21;
}

- (id)rawFilterValue
{
  if ([(ICFoldersFilterTypeSelection *)self inclusionType])
  {
    v2 = @"Exclude";
  }

  else
  {
    v2 = @"Include";
  }

  return v2;
}

- (BOOL)isEmpty
{
  folderIdentifiers = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
  v3 = [folderIdentifiers count] == 0;

  return v3;
}

+ (id)keyPathsForValuesAffectingIsEmpty
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___ICFoldersFilterTypeSelection;
  v2 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingIsValid);
  v3 = [v2 mutableCopy];

  [v3 addObjectsFromArray:&unk_282748030];
  v4 = [v3 copy];

  return v4;
}

- (id)emptySummaryTitle
{
  if ([(ICFoldersFilterTypeSelection *)self isEmpty])
  {
    v2 = __ICLocalizedFrameworkString_impl(@"Folders Filter Incomplete", @"Folders Filter Incomplete", 0, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)emptySummary
{
  if ([(ICFoldersFilterTypeSelection *)self isEmpty])
  {
    v2 = __ICLocalizedFrameworkString_impl(@"You must select at least one folder for the Folders filter.", @"You must select at least one folder for the Folders filter.", 0, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)shortEmptySummary
{
  if ([(ICFoldersFilterTypeSelection *)self isEmpty])
  {
    v2 = __ICLocalizedFrameworkString_impl(@"Folder for the Folders filter", @"Folder for the Folders filter", 0, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)folderTitlesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__36;
  v18 = __Block_byref_object_dispose__36;
  v19 = 0;
  managedObjectContext = [(ICFoldersFilterTypeSelection *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__ICFoldersFilterTypeSelection_folderTitlesForIdentifiers___block_invoke;
  v9[3] = &unk_2781960A8;
  v6 = identifiersCopy;
  v10 = v6;
  v11 = @"title";
  selfCopy = self;
  v13 = &v14;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __59__ICFoldersFilterTypeSelection_folderTitlesForIdentifiers___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = +[ICFolder fetchRequest];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier in %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v13[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v2 setPropertiesToFetch:v4];

  [v2 setResultType:0];
  v5 = [*(a1 + 48) managedObjectContext];
  v12 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__ICFoldersFilterTypeSelection_folderTitlesForIdentifiers___block_invoke_cold_1((a1 + 32), v7, v8);
    }
  }

  v9 = [v6 ic_compactMap:&__block_literal_global_63];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (BOOL)isEqualToICFoldersFilterTypeSelection:(id)selection
{
  selectionCopy = selection;
  inclusionType = [(ICFoldersFilterTypeSelection *)self inclusionType];
  if (inclusionType == [selectionCopy inclusionType])
  {
    folderIdentifiers = [(ICFoldersFilterTypeSelection *)self folderIdentifiers];
    folderIdentifiers2 = [selectionCopy folderIdentifiers];
    v8 = [folderIdentifiers isEqualToArray:folderIdentifiers2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __52__ICFoldersFilterTypeSelection_containsSharedFolder__block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a1 folderIdentifiers];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_214D51000, a3, OS_LOG_TYPE_ERROR, "Error fetching folders for identifiers: %@ : %@", &v6, 0x16u);
}

void __59__ICFoldersFilterTypeSelection_folderTitlesForIdentifiers___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Error fetching folder titles for identifiers: %@ : %@", &v4, 0x16u);
}

@end