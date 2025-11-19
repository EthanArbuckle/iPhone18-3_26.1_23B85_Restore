@interface ICAppURLUtilities(UI)
+ (BOOL)isShowVirtualSmartFolderURL:()UI;
+ (ICVirtualSmartFolderItemIdentifier)virtualSmartFolderMentionedInURL:()UI context:;
+ (id)appURLForNote:()UI inVirtualSmartFolder:;
+ (id)appURLForNoteIdentifier:()UI inVirtualSmartFolder:actionName:;
+ (id)appURLForVirtualSmartFolder:()UI;
+ (id)notePredicateFromNoteInVirtualSmartFolderInURL:()UI;
+ (uint64_t)isShowNoteInVirtualSmartFolderURL:()UI;
@end

@implementation ICAppURLUtilities(UI)

+ (id)appURLForNote:()UI inVirtualSmartFolder:
{
  v6 = a4;
  v7 = [a3 identifier];
  v8 = [a1 appURLForNoteIdentifier:v7 inVirtualSmartFolder:v6 actionName:@"showNoteInVirtualSmartFolder"];

  return v8;
}

+ (id)appURLForNoteIdentifier:()UI inVirtualSmartFolder:actionName:
{
  v27[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a3)
  {
    v8 = MEMORY[0x1E695DF70];
    v9 = a5;
    v10 = a3;
    v11 = [v8 array];
    v12 = MEMORY[0x1E696AF60];
    v13 = [v7 type];
    v14 = [v12 queryItemWithName:@"type" value:v13];
    v27[0] = v14;
    v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"note" value:v10];

    v27[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    [v11 addObjectsFromArray:v16];

    v17 = [v7 accountObjectID];

    if (v17)
    {
      v18 = [v7 accountObjectID];
      v19 = [v18 URIRepresentation];
      v20 = [v19 absoluteString];

      v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"accountObjectIDURL" value:v20];
      [v11 addObject:v21];
    }

    v22 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v23 = ICNotesAppURLScheme();
    [v22 setScheme:v23];

    [v22 setHost:v9];
    v24 = [v11 copy];
    [v22 setQueryItems:v24];

    v25 = [v22 URL];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)appURLForVirtualSmartFolder:()UI
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AF60];
  v6 = [v3 type];
  v7 = [v5 queryItemWithName:@"type" value:v6];

  [v4 addObject:v7];
  v8 = [v3 accountObjectID];

  if (v8)
  {
    v9 = [v3 accountObjectID];
    v10 = [v9 URIRepresentation];
    v11 = [v10 absoluteString];

    v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"accountObjectIDURL" value:v11];
    [v4 addObject:v12];
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v14 = ICNotesAppURLScheme();
  [v13 setScheme:v14];

  [v13 setHost:@"showVirtualSmartFolder"];
  v15 = [v4 copy];
  [v13 setQueryItems:v15];

  v16 = [v13 URL];

  return v16;
}

+ (ICVirtualSmartFolderItemIdentifier)virtualSmartFolderMentionedInURL:()UI context:
{
  v6 = a3;
  v7 = a4;
  if (([a1 isShowVirtualSmartFolderURL:v6] & 1) != 0 || objc_msgSend(a1, "isShowNoteInVirtualSmartFolderURL:", v6))
  {
    v8 = [MEMORY[0x1E696AF20] componentsWithURL:v6 resolvingAgainstBaseURL:0];
    v9 = [v8 ic_queryItemWithKey:@"type"];
    v10 = [v9 value];

    v11 = +[ICVirtualSmartFolderItemIdentifier allTypes];
    v12 = [v11 containsObject:v10];

    if (v12)
    {
      v13 = [v8 ic_queryItemWithKey:@"accountObjectIDURL"];
      v14 = [v13 value];

      if (v14)
      {
        v15 = [v7 persistentStoreCoordinator];
        v16 = [v15 ic_managedObjectIDForURIString:v14];
      }

      else
      {
        v16 = 0;
      }

      v18 = [ICVirtualSmartFolderItemIdentifier alloc];
      v19 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
      v17 = [(ICVirtualSmartFolderItemIdentifier *)v18 initWithType:v10 parentIdentifier:v19 accountObjectID:v16];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)notePredicateFromNoteInVirtualSmartFolderInURL:()UI
{
  v4 = a3;
  if ([a1 isShowNoteInVirtualSmartFolderURL:v4])
  {
    v5 = [v4 host];
    v6 = [a1 predicateForNotesMentionedInURL:v4 action:v5 queryItemName:@"note"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isShowVirtualSmartFolderURL:()UI
{
  if (!a3)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:1];
  v4 = [v3 scheme];
  if (ICIsNotesURLScheme())
  {
    v5 = [v3 host];
    if ([v5 isEqualToString:@"showVirtualSmartFolder"])
    {
      v6 = [v3 ic_queryItemWithKey:@"type"];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (uint64_t)isShowNoteInVirtualSmartFolderURL:()UI
{
  if (!a3)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:1];
  v4 = [v3 scheme];
  if (ICIsNotesURLScheme())
  {
    v5 = [v3 host];
    v6 = [v5 isEqualToString:@"showNoteInVirtualSmartFolder"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end