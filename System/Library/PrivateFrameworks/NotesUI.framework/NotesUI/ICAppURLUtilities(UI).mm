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
  identifier = [a3 identifier];
  v8 = [self appURLForNoteIdentifier:identifier inVirtualSmartFolder:v6 actionName:@"showNoteInVirtualSmartFolder"];

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
    array = [v8 array];
    v12 = MEMORY[0x1E696AF60];
    type = [v7 type];
    v14 = [v12 queryItemWithName:@"type" value:type];
    v27[0] = v14;
    v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"note" value:v10];

    v27[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    [array addObjectsFromArray:v16];

    accountObjectID = [v7 accountObjectID];

    if (accountObjectID)
    {
      accountObjectID2 = [v7 accountObjectID];
      uRIRepresentation = [accountObjectID2 URIRepresentation];
      absoluteString = [uRIRepresentation absoluteString];

      v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"accountObjectIDURL" value:absoluteString];
      [array addObject:v21];
    }

    v22 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v23 = ICNotesAppURLScheme();
    [v22 setScheme:v23];

    [v22 setHost:v9];
    v24 = [array copy];
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
  array = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AF60];
  type = [v3 type];
  v7 = [v5 queryItemWithName:@"type" value:type];

  [array addObject:v7];
  accountObjectID = [v3 accountObjectID];

  if (accountObjectID)
  {
    accountObjectID2 = [v3 accountObjectID];
    uRIRepresentation = [accountObjectID2 URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];

    v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"accountObjectIDURL" value:absoluteString];
    [array addObject:v12];
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v14 = ICNotesAppURLScheme();
  [v13 setScheme:v14];

  [v13 setHost:@"showVirtualSmartFolder"];
  v15 = [array copy];
  [v13 setQueryItems:v15];

  v16 = [v13 URL];

  return v16;
}

+ (ICVirtualSmartFolderItemIdentifier)virtualSmartFolderMentionedInURL:()UI context:
{
  v6 = a3;
  v7 = a4;
  if (([self isShowVirtualSmartFolderURL:v6] & 1) != 0 || objc_msgSend(self, "isShowNoteInVirtualSmartFolderURL:", v6))
  {
    v8 = [MEMORY[0x1E696AF20] componentsWithURL:v6 resolvingAgainstBaseURL:0];
    v9 = [v8 ic_queryItemWithKey:@"type"];
    value = [v9 value];

    v11 = +[ICVirtualSmartFolderItemIdentifier allTypes];
    v12 = [v11 containsObject:value];

    if (v12)
    {
      v13 = [v8 ic_queryItemWithKey:@"accountObjectIDURL"];
      value2 = [v13 value];

      if (value2)
      {
        persistentStoreCoordinator = [v7 persistentStoreCoordinator];
        v16 = [persistentStoreCoordinator ic_managedObjectIDForURIString:value2];
      }

      else
      {
        v16 = 0;
      }

      v18 = [ICVirtualSmartFolderItemIdentifier alloc];
      v19 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
      v17 = [(ICVirtualSmartFolderItemIdentifier *)v18 initWithType:value parentIdentifier:v19 accountObjectID:v16];
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
  if ([self isShowNoteInVirtualSmartFolderURL:v4])
  {
    host = [v4 host];
    v6 = [self predicateForNotesMentionedInURL:v4 action:host queryItemName:@"note"];
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
  scheme = [v3 scheme];
  if (ICIsNotesURLScheme())
  {
    host = [v3 host];
    if ([host isEqualToString:@"showVirtualSmartFolder"])
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
  scheme = [v3 scheme];
  if (ICIsNotesURLScheme())
  {
    host = [v3 host];
    v6 = [host isEqualToString:@"showNoteInVirtualSmartFolder"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end