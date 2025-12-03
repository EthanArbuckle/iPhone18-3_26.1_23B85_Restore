@interface ICVirtualSmartFolderItemIdentifier
+ (NSArray)allTypes;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHiddenInContext:(id)context;
- (BOOL)isShowingDateHeaders;
- (BOOL)isTrashFolder;
- (BOOL)isType:(id)type;
- (BOOL)supportsDateHeaders;
- (ICFolderCustomNoteSortType)noteSortType;
- (ICQuery)query;
- (ICVirtualSmartFolderItemIdentifier)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier context:(id)context;
- (ICVirtualSmartFolderItemIdentifier)initWithType:(id)type parentIdentifier:(id)identifier accountObjectID:(id)d;
- (NSString)dateHeadersTypeUserDefaultsKey;
- (NSString)description;
- (NSString)identifier;
- (NSString)noteSortTypeUserDefaultsKey;
- (NSString)systemImageName;
- (NSString)title;
- (NSString)visibilityUserDefaultsKey;
- (id)predicateForContext:(id)context;
- (int64_t)dateHeadersType;
- (int64_t)visibility;
- (unint64_t)hash;
- (unint64_t)visibleInvitationCountInContext:(id)context;
- (unint64_t)visibleItemCountInContext:(id)context;
- (unint64_t)visibleNoteCountInContext:(id)context;
- (void)setDateHeadersType:(int64_t)type;
- (void)setNoteSortType:(id)type;
- (void)setVisibility:(int64_t)visibility;
@end

@implementation ICVirtualSmartFolderItemIdentifier

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    type = [(ICVirtualSmartFolderItemIdentifier *)self type];
    v5 = [type hash];
    parentIdentifier = [(ICVirtualSmartFolderItemIdentifier *)self parentIdentifier];
    v7 = [parentIdentifier hash];
    accountObjectID = [(ICVirtualSmartFolderItemIdentifier *)self accountObjectID];
    [accountObjectID hash];
    self->_hash = ICHashWithHashKeys(v5, v9, v10, v11, v12, v13, v14, v15, v7);

    return self->_hash;
  }

  return result;
}

+ (NSArray)allTypes
{
  if (allTypes_onceToken != -1)
  {
    +[ICVirtualSmartFolderItemIdentifier allTypes];
  }

  v3 = allTypes_allTypes;

  return v3;
}

- (int64_t)visibility
{
  objc_opt_class();
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  visibilityUserDefaultsKey = [(ICVirtualSmartFolderItemIdentifier *)self visibilityUserDefaultsKey];
  v5 = [standardUserDefaults objectForKey:visibilityUserDefaultsKey];
  v6 = ICCheckedDynamicCast();

  if (v6)
  {
    if ([v6 BOOLValue])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)visibilityUserDefaultsKey
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(ICVirtualSmartFolderItemIdentifier *)self identifier];
  v4 = [v2 stringWithFormat:@"%@:hidden", identifier];

  return v4;
}

- (NSString)identifier
{
  accountObjectID = [(ICVirtualSmartFolderItemIdentifier *)self accountObjectID];
  if (accountObjectID)
  {
    v4 = MEMORY[0x1E696AEC0];
    type = [(ICVirtualSmartFolderItemIdentifier *)self type];
    accountObjectID2 = [(ICVirtualSmartFolderItemIdentifier *)self accountObjectID];
    uRIRepresentation = [accountObjectID2 URIRepresentation];
    type2 = [v4 stringWithFormat:@"%@:%@", type, uRIRepresentation];
  }

  else
  {
    type2 = [(ICVirtualSmartFolderItemIdentifier *)self type];
  }

  return type2;
}

- (ICQuery)query
{
  type = [(ICVirtualSmartFolderItemIdentifier *)self type];
  v4 = [type isEqual:@"ICVirtualSmartFolderItemIdentifierTypeSharedWithYou"];

  if (v4)
  {
    queryForRecentlyDeletedMathNotes = [MEMORY[0x1E69B7860] queryForSharedNotes:1 allowsRecentlyDeleted:0];
  }

  else
  {
    type2 = [(ICVirtualSmartFolderItemIdentifier *)self type];
    v7 = [type2 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeSystemPaper"];

    if (v7)
    {
      queryForRecentlyDeletedMathNotes = [MEMORY[0x1E69B7860] queryForSystemPaperNotesAllowsRecentlyDeleted:0];
    }

    else
    {
      type3 = [(ICVirtualSmartFolderItemIdentifier *)self type];
      v9 = [type3 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeMathNotes"];

      if (v9)
      {
        queryForRecentlyDeletedMathNotes = [MEMORY[0x1E69B7860] queryForMathNotesAllowsRecentlyDeleted:0];
      }

      else
      {
        type4 = [(ICVirtualSmartFolderItemIdentifier *)self type];
        v11 = [type4 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeCallNotes"];

        if (v11)
        {
          queryForRecentlyDeletedMathNotes = [MEMORY[0x1E69B7860] queryForCallNotesAllowsRecentlyDeleted:0];
        }

        else
        {
          type5 = [(ICVirtualSmartFolderItemIdentifier *)self type];
          v13 = [type5 isEqual:@"ICVirtualSmartFolderItemIdentifierTypeRecentlyDeletedMathNotes"];

          if (!v13)
          {
            v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid virtual smart folder type" userInfo:0];
            objc_exception_throw(v15);
          }

          queryForRecentlyDeletedMathNotes = [MEMORY[0x1E69B7860] queryForRecentlyDeletedMathNotes];
        }
      }
    }
  }

  return queryForRecentlyDeletedMathNotes;
}

void __46__ICVirtualSmartFolderItemIdentifier_allTypes__block_invoke()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"ICVirtualSmartFolderItemIdentifierTypeSystemPaper";
  v2[1] = @"ICVirtualSmartFolderItemIdentifierTypeRecentlyDeletedMathNotes";
  v2[2] = @"ICVirtualSmartFolderItemIdentifierTypeMathNotes";
  v2[3] = @"ICVirtualSmartFolderItemIdentifierTypeCallNotes";
  v2[4] = @"ICVirtualSmartFolderItemIdentifierTypeSharedWithYou";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];
  v1 = allTypes_allTypes;
  allTypes_allTypes = v0;
}

- (ICVirtualSmartFolderItemIdentifier)initWithType:(id)type parentIdentifier:(id)identifier accountObjectID:(id)d
{
  typeCopy = type;
  identifierCopy = identifier;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = ICVirtualSmartFolderItemIdentifier;
  v12 = [(ICVirtualSmartFolderItemIdentifier *)&v17 init];
  if (v12)
  {
    allTypes = [objc_opt_class() allTypes];
    v14 = [allTypes containsObject:typeCopy];

    if ((v14 & 1) == 0)
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid virtual smart folder type" userInfo:0];
      objc_exception_throw(v16);
    }

    objc_storeStrong(&v12->_type, type);
    objc_storeStrong(&v12->_parentIdentifier, identifier);
    objc_storeStrong(&v12->_accountObjectID, d);
  }

  return v12;
}

- (ICVirtualSmartFolderItemIdentifier)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier context:(id)context
{
  parentIdentifierCopy = parentIdentifier;
  contextCopy = context;
  v10 = [identifier componentsSeparatedByString:@":"];
  v11 = v10;
  v12 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  if ([v13 count])
  {
    v14 = [v13 objectAtIndexedSubscript:0];
  }

  else
  {
    v14 = &stru_1F4F94F00;
  }

  if ([v13 count] < 2)
  {
    v17 = 0;
  }

  else
  {
    persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
    v16 = [v13 objectAtIndexedSubscript:1];
    v17 = [persistentStoreCoordinator ic_managedObjectIDForURIString:v16];
  }

  allTypes = [objc_opt_class() allTypes];
  if ([allTypes containsObject:v14])
  {
    self = [(ICVirtualSmartFolderItemIdentifier *)self initWithType:v14 parentIdentifier:parentIdentifierCopy accountObjectID:v17];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v20 = selfCopy;

  return v20;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(ICVirtualSmartFolderItemIdentifier *)self type];
  parentIdentifier = [(ICVirtualSmartFolderItemIdentifier *)self parentIdentifier];
  accountObjectID = [(ICVirtualSmartFolderItemIdentifier *)self accountObjectID];
  title = [(ICVirtualSmartFolderItemIdentifier *)self title];
  v10 = [v3 stringWithFormat:@"<%@: %p, type: %@, parentIdentifier: %@, accountID: %@, title: %@>", v5, self, type, parentIdentifier, accountObjectID, title];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5)
  {
    type = [(ICVirtualSmartFolderItemIdentifier *)self type];
    type2 = [v5 type];
    if (![type isEqualToString:type2])
    {
      v17 = 0;
LABEL_33:

      goto LABEL_34;
    }

    parentIdentifier = [(ICVirtualSmartFolderItemIdentifier *)self parentIdentifier];
    parentIdentifier2 = [v5 parentIdentifier];
    v10 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == parentIdentifier)
    {
      v11 = 0;
    }

    else
    {
      v11 = parentIdentifier;
    }

    accountObjectID = v11;
    if (v10 == parentIdentifier2)
    {
      v13 = 0;
    }

    else
    {
      v13 = parentIdentifier2;
    }

    v14 = v13;
    if (accountObjectID | v14)
    {
      accountObjectID2 = v14;
      if (accountObjectID)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = 0;
LABEL_31:

LABEL_32:
        goto LABEL_33;
      }

      v18 = [accountObjectID isEqual:v14];

      if (!v18)
      {
        v17 = 0;
        goto LABEL_32;
      }
    }

    accountObjectID = [(ICVirtualSmartFolderItemIdentifier *)self accountObjectID];
    accountObjectID2 = [v5 accountObjectID];
    if (v10 == accountObjectID)
    {
      v19 = 0;
    }

    else
    {
      v19 = accountObjectID;
    }

    v20 = v19;
    if (v10 == accountObjectID2)
    {
      v21 = 0;
    }

    else
    {
      v21 = accountObjectID2;
    }

    v22 = v21;
    v23 = v22;
    if (v20 | v22)
    {
      v17 = 0;
      if (v20 && v22)
      {
        v17 = [v20 isEqual:v22];
      }
    }

    else
    {
      v17 = 1;
    }

    goto LABEL_31;
  }

  v17 = 0;
LABEL_34:

  return v17;
}

- (NSString)title
{
  type = [(ICVirtualSmartFolderItemIdentifier *)self type];
  v4 = [type isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeSharedWithYou"];

  if (v4)
  {
    v5 = @"Shared";
  }

  else
  {
    type2 = [(ICVirtualSmartFolderItemIdentifier *)self type];
    v7 = [type2 isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeSystemPaper"];

    if (v7)
    {
      v5 = @"Quick Notes";
    }

    else
    {
      type3 = [(ICVirtualSmartFolderItemIdentifier *)self type];
      v9 = [type3 isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeMathNotes"];

      if (v9)
      {
        v5 = @"Math Notes";
      }

      else
      {
        type4 = [(ICVirtualSmartFolderItemIdentifier *)self type];
        v11 = [type4 isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeCallNotes"];

        if (v11)
        {
          v5 = @"Call Recordings";
        }

        else
        {
          type5 = [(ICVirtualSmartFolderItemIdentifier *)self type];
          v13 = [type5 isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeRecentlyDeletedMathNotes"];

          if (!v13)
          {
            v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid virtual smart folder type" userInfo:0];
            objc_exception_throw(v16);
          }

          v5 = @"Recently Deleted";
        }
      }
    }
  }

  v14 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);

  return v14;
}

- (NSString)systemImageName
{
  type = [(ICVirtualSmartFolderItemIdentifier *)self type];
  v4 = [type isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeSharedWithYou"];

  if (v4)
  {
    return @"person.crop.circle";
  }

  type2 = [(ICVirtualSmartFolderItemIdentifier *)self type];
  v7 = [type2 isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeSystemPaper"];

  if (v7)
  {
    return @"quicknote";
  }

  type3 = [(ICVirtualSmartFolderItemIdentifier *)self type];
  v9 = [type3 isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeMathNotes"];

  if (v9)
  {
    return @"apple.math.notes";
  }

  type4 = [(ICVirtualSmartFolderItemIdentifier *)self type];
  v11 = [type4 isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeCallNotes"];

  if (v11)
  {
    return @"phone.badge.waveform.fill";
  }

  type5 = [(ICVirtualSmartFolderItemIdentifier *)self type];
  v13 = [type5 isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeRecentlyDeletedMathNotes"];

  if ((v13 & 1) == 0)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid virtual smart folder type" userInfo:0];
    objc_exception_throw(v14);
  }

  return @"trash";
}

- (BOOL)isTrashFolder
{
  type = [(ICVirtualSmartFolderItemIdentifier *)self type];
  v3 = [type isEqualToString:@"ICVirtualSmartFolderItemIdentifierTypeRecentlyDeletedMathNotes"];

  return v3;
}

- (id)predicateForContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__ICVirtualSmartFolderItemIdentifier_predicateForContext___block_invoke;
  v8[3] = &unk_1E8469190;
  v8[4] = self;
  v5 = contextCopy;
  v9 = v5;
  v10 = &v11;
  [v5 performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __58__ICVirtualSmartFolderItemIdentifier_predicateForContext___block_invoke(uint64_t a1)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) accountObjectID];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) accountObjectID];
    v5 = [v3 objectWithID:v4];

    v6 = MEMORY[0x1E696AB28];
    v7 = [*(a1 + 32) query];
    v8 = [v7 predicate];
    v22[0] = v8;
    v9 = MEMORY[0x1E69B77F0];
    v10 = [v5 identifier];
    v11 = [v9 predicateForNotesInAccountWithIdentifier:v10];
    v22[1] = v11;
    v12 = [MEMORY[0x1E69B77F0] predicateForFetchedFromCloudObjects];
    v22[2] = v12;
    v13 = [MEMORY[0x1E69B77F0] predicateForUnmarkedForDeletionObjects];
    v22[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    v15 = [v6 andPredicateWithSubpredicates:v14];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
    v18 = MEMORY[0x1E696AB28];
    v5 = [*(a1 + 32) query];
    v7 = [v5 predicate];
    v8 = [MEMORY[0x1E69B77F0] predicateForFetchedFromCloudObjects];
    v21[1] = v8;
    v10 = [MEMORY[0x1E69B77F0] predicateForUnmarkedForDeletionObjects];
    v21[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v19 = [v18 andPredicateWithSubpredicates:v11];
    v20 = *(*(a1 + 48) + 8);
    v12 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

- (unint64_t)visibleNoteCountInContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__ICVirtualSmartFolderItemIdentifier_visibleNoteCountInContext___block_invoke;
  v8[3] = &unk_1E8469640;
  v10 = &v11;
  v8[4] = self;
  v5 = contextCopy;
  v9 = v5;
  [v5 performBlockAndWait:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __64__ICVirtualSmartFolderItemIdentifier_visibleNoteCountInContext___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B77F0];
  v3 = [*(a1 + 32) predicateForContext:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v2 countOfNotesMatchingPredicate:v3 context:*(a1 + 40)];
}

- (unint64_t)visibleInvitationCountInContext:(id)context
{
  contextCopy = context;
  type = [(ICVirtualSmartFolderItemIdentifier *)self type];
  v6 = [type isEqual:@"ICVirtualSmartFolderItemIdentifierTypeSharedWithYou"];

  if (v6)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__ICVirtualSmartFolderItemIdentifier_visibleInvitationCountInContext___block_invoke;
    v9[3] = &unk_1E8469190;
    v9[4] = self;
    v10 = contextCopy;
    v11 = &v12;
    [v10 performBlockAndWait:v9];
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __70__ICVirtualSmartFolderItemIdentifier_visibleInvitationCountInContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountObjectID];
  if (v2)
  {
    objc_opt_class();
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) accountObjectID];
    v5 = [v3 objectWithID:v4];
    v10 = ICCheckedDynamicCast();
  }

  else
  {
    v10 = 0;
  }

  v6 = MEMORY[0x1E69B7790];
  v7 = +[ICInvitationsCoreDataIndexer defaultReceivedSince];
  v8 = [v6 predicateForPendingInvitationsInAccount:v10 receivedSince:v7];

  v9 = [MEMORY[0x1E69B7790] invitationsMatchingPredicate:v8 context:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v9 count];
}

- (unint64_t)visibleItemCountInContext:(id)context
{
  contextCopy = context;
  v5 = [(ICVirtualSmartFolderItemIdentifier *)self visibleNoteCountInContext:contextCopy];
  v6 = [(ICVirtualSmartFolderItemIdentifier *)self visibleInvitationCountInContext:contextCopy];

  return v6 + v5;
}

- (BOOL)isType:(id)type
{
  typeCopy = type;
  type = [(ICVirtualSmartFolderItemIdentifier *)self type];
  v6 = [type isEqual:typeCopy];

  return v6;
}

- (void)setVisibility:(int64_t)visibility
{
  if (visibility == 2)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    visibilityUserDefaultsKey = [(ICVirtualSmartFolderItemIdentifier *)self visibilityUserDefaultsKey];
    v5 = standardUserDefaults;
    v6 = 1;
    goto LABEL_7;
  }

  if (visibility == 1)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    visibilityUserDefaultsKey = [(ICVirtualSmartFolderItemIdentifier *)self visibilityUserDefaultsKey];
    v5 = standardUserDefaults;
    v6 = 0;
LABEL_7:
    [v5 setBool:v6 forKey:visibilityUserDefaultsKey];
    goto LABEL_8;
  }

  if (visibility)
  {
    return;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  visibilityUserDefaultsKey = [(ICVirtualSmartFolderItemIdentifier *)self visibilityUserDefaultsKey];
  [standardUserDefaults removeObjectForKey:visibilityUserDefaultsKey];
LABEL_8:
}

- (BOOL)isHiddenInContext:(id)context
{
  contextCopy = context;
  visibility = [(ICVirtualSmartFolderItemIdentifier *)self visibility];
  if (visibility == 2)
  {
    v6 = 1;
  }

  else if (visibility)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(ICVirtualSmartFolderItemIdentifier *)self isEmptyInContext:contextCopy];
  }

  return v6;
}

- (NSString)noteSortTypeUserDefaultsKey
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(ICVirtualSmartFolderItemIdentifier *)self identifier];
  v4 = [v2 stringWithFormat:@"%@:noteSortType", identifier];

  return v4;
}

- (ICFolderCustomNoteSortType)noteSortType
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  noteSortTypeUserDefaultsKey = [(ICVirtualSmartFolderItemIdentifier *)self noteSortTypeUserDefaultsKey];
  v5 = [standardUserDefaults integerForKey:noteSortTypeUserDefaultsKey];

  v6 = MEMORY[0x1E69B7A68];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v8 = [v6 folderNoteSortTypeFromValue:v7];

  return v8;
}

- (void)setNoteSortType:(id)type
{
  v4 = MEMORY[0x1E695E000];
  typeCopy = type;
  standardUserDefaults = [v4 standardUserDefaults];
  valueRepresentation = [typeCopy valueRepresentation];

  noteSortTypeUserDefaultsKey = [(ICVirtualSmartFolderItemIdentifier *)self noteSortTypeUserDefaultsKey];
  [standardUserDefaults setValue:valueRepresentation forKey:noteSortTypeUserDefaultsKey];
}

- (NSString)dateHeadersTypeUserDefaultsKey
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(ICVirtualSmartFolderItemIdentifier *)self identifier];
  v4 = [v2 stringWithFormat:@"%@:dateHeadersType", identifier];

  return v4;
}

- (int64_t)dateHeadersType
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  dateHeadersTypeUserDefaultsKey = [(ICVirtualSmartFolderItemIdentifier *)self dateHeadersTypeUserDefaultsKey];
  v5 = [standardUserDefaults integerForKey:dateHeadersTypeUserDefaultsKey];

  return v5;
}

- (void)setDateHeadersType:(int64_t)type
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  dateHeadersTypeUserDefaultsKey = [(ICVirtualSmartFolderItemIdentifier *)self dateHeadersTypeUserDefaultsKey];
  [standardUserDefaults setInteger:type forKey:dateHeadersTypeUserDefaultsKey];
}

- (BOOL)supportsDateHeaders
{
  noteSortType = [(ICVirtualSmartFolderItemIdentifier *)self noteSortType];
  v3 = [noteSortType resolvedCustomSortTypeOrder] != 3;

  return v3;
}

- (BOOL)isShowingDateHeaders
{
  supportsDateHeaders = [(ICVirtualSmartFolderItemIdentifier *)self supportsDateHeaders];
  if (supportsDateHeaders)
  {
    dateHeadersType = [(ICVirtualSmartFolderItemIdentifier *)self dateHeadersType];
    if (dateHeadersType == 2)
    {
      LOBYTE(supportsDateHeaders) = 1;
    }

    else if (dateHeadersType)
    {
      LOBYTE(supportsDateHeaders) = 0;
    }

    else
    {
      LOBYTE(supportsDateHeaders) = [MEMORY[0x1E69B7A50] defaultDateHeadersType] == 2;
    }
  }

  return supportsDateHeaders;
}

@end