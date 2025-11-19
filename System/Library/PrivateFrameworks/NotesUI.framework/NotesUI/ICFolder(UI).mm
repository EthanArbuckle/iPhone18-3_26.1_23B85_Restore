@interface ICFolder(UI)
+ (id)foldersWithHashtagAsOnlyFilter:()UI;
+ (id)smartFoldersThatWillBeDeletedAfterDeletingHashtags:()UI;
+ (void)removeUsageOfHashtag:()UI;
- (__CFString)filledSystemImageName;
- (__CFString)systemImageName;
- (id)navigationBarIconOverlaySystemImage;
- (id)navigationBarIconWithSize:()UI;
@end

@implementation ICFolder(UI)

+ (void)removeUsageOfHashtag:()UI
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E69B7760];
  v5 = [v3 standardizedContent];
  v6 = [v3 account];
  v7 = [v4 visibleSmartFoldersForHashtagStandardizedContent:v5 account:v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 smartFolderQuery];
        v15 = [v3 standardizedContent];
        v16 = [v14 removingTagIdentifier:v15];
        [v13 setSmartFolderQuery:v16];

        [v13 updateChangeCountWithReason:@"Removed tag"];
        v17 = [v13 smartFolderQuery];

        if (!v17)
        {
          [v13 markForDeletion];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

+ (id)foldersWithHashtagAsOnlyFilter:()UI
{
  v3 = a3;
  v4 = MEMORY[0x1E69B7760];
  v5 = [v3 standardizedContent];
  v6 = [v3 account];
  v7 = [v4 visibleSmartFoldersForHashtagStandardizedContent:v5 account:v6];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__ICFolder_UI__foldersWithHashtagAsOnlyFilter___block_invoke;
  v11[3] = &unk_1E846E200;
  v12 = v3;
  v8 = v3;
  v9 = [v7 ic_objectsPassingTest:v11];

  return v9;
}

+ (id)smartFoldersThatWillBeDeletedAfterDeletingHashtags:()UI
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = v3;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v46;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v46 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v45 + 1) + 8 * i);
          v11 = MEMORY[0x1E69B7760];
          v12 = [v10 standardizedContent];
          v13 = [v10 account];
          v14 = [v11 visibleSmartFoldersForHashtagStandardizedContent:v12 account:v13];

          [v4 ic_addObjectsFromNonNilArray:v14];
          v15 = [v10 standardizedContent];
          [v5 ic_addNonNilObject:v15];
        }

        v7 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v7);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v38 = v4;
    v16 = [v38 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      obja = *v42;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v42 != obja)
          {
            objc_enumerationMutation(v38);
          }

          v19 = *(*(&v41 + 1) + 8 * j);
          v20 = [v19 smartFolderQuery];
          v21 = [v19 managedObjectContext];
          v22 = [v19 account];
          v23 = [v22 objectID];
          v24 = [v20 filterSelectionWithManagedObjectContext:v21 account:v23];

          objc_opt_class();
          v25 = [v24 filterTypeSelectionForFilterType:0];
          v26 = ICDynamicCast();

          v27 = MEMORY[0x1E695DFD8];
          v28 = [v26 tagIdentifiers];
          v29 = [v27 setWithArray:v28];
          v30 = [MEMORY[0x1E695DFD8] setWithArray:v5];
          v31 = [v29 isSubsetOfSet:v30];

          if (v31)
          {
            v32 = [v24 filterTypeSelections];
            v33 = [v32 count];

            if (v33 == 1)
            {
              [v37 ic_addNonNilObject:v19];
            }
          }
        }

        v17 = [v38 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v17);
    }

    v34 = [v37 copy];
    v3 = v36;
  }

  else
  {
    v34 = [MEMORY[0x1E695DFD8] set];
  }

  return v34;
}

- (__CFString)systemImageName
{
  if ([a1 isTrashFolder])
  {
    v2 = @"trash";
  }

  else if ([a1 isSmartFolder])
  {
    v2 = @"gearshape";
  }

  else if ([a1 isSharedViaICloud])
  {
    v2 = @"folder.badge.person.crop";
  }

  else
  {
    v2 = [objc_opt_class() defaultSystemImageName];
  }

  return v2;
}

- (__CFString)filledSystemImageName
{
  if ([a1 isTrashFolder])
  {
    v2 = @"trash.fill";
  }

  else if ([a1 isSmartFolder])
  {
    v2 = @"gearshape.fill";
  }

  else if ([a1 isSharedViaICloud])
  {
    v2 = @"folder.fill.badge.person.crop";
  }

  else
  {
    v2 = [objc_opt_class() defaultFilledSystemImageName];
  }

  return v2;
}

- (id)navigationBarIconOverlaySystemImage
{
  if ([a1 isTrashFolder])
  {
    v2 = @"trash.fill";
LABEL_7:
    v3 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:v2];
    goto LABEL_8;
  }

  if ([a1 isSmartFolder])
  {
    v2 = @"gearshape.fill";
    goto LABEL_7;
  }

  if ([a1 isSharedViaICloud])
  {
    v2 = @"person.crop.circle.fill";
    goto LABEL_7;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (id)navigationBarIconWithSize:()UI
{
  v6 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a2, a3}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__ICFolder_UI__navigationBarIconWithSize___block_invoke;
  v9[3] = &unk_1E8468C80;
  v9[4] = a1;
  *&v9[5] = a2;
  *&v9[6] = a3;
  v7 = [v6 imageWithActions:v9];

  return v7;
}

@end