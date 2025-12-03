@interface ICFolderListSectionIdentifier
+ (ICFolderListSectionIdentifier)systemSectionIdentifier;
+ (ICFolderListSectionIdentifier)tagSectionIdentifier;
+ (NSArray)sortDescriptors;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToICFolderListSectionIdentifier:(id)identifier;
- (ICFolderListSectionIdentifier)initWithObject:(id)object;
- (ICFolderListSectionIdentifier)initWithSectionType:(int64_t)type;
- (NSString)description;
- (NSString)expansionStateContext;
- (int64_t)accountSectionTypeForLegacyAccount:(id)account;
- (int64_t)accountSectionTypeForModernAccount:(id)account;
- (unint64_t)hash;
@end

@implementation ICFolderListSectionIdentifier

+ (ICFolderListSectionIdentifier)tagSectionIdentifier
{
  if (tagSectionIdentifier_once != -1)
  {
    +[ICFolderListSectionIdentifier tagSectionIdentifier];
  }

  v3 = tagSectionIdentifier_identifier;

  return v3;
}

uint64_t __53__ICFolderListSectionIdentifier_tagSectionIdentifier__block_invoke()
{
  tagSectionIdentifier_identifier = [[ICFolderListSectionIdentifier alloc] initWithSectionType:8];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSArray)sortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sectionType" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    sectionType = [(ICFolderListSectionIdentifier *)self sectionType];
    accountObjectID = [(ICFolderListSectionIdentifier *)self accountObjectID];
    v6 = [accountObjectID hash];
    self->_hash = ICHashWithHashKeys(sectionType, v7, v8, v9, v10, v11, v12, v13, v6);

    return self->_hash;
  }

  return result;
}

+ (ICFolderListSectionIdentifier)systemSectionIdentifier
{
  if (systemSectionIdentifier_once != -1)
  {
    +[ICFolderListSectionIdentifier systemSectionIdentifier];
  }

  v3 = systemSectionIdentifier_identifier;

  return v3;
}

- (ICFolderListSectionIdentifier)initWithObject:(id)object
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = ICFolderListSectionIdentifier;
  v5 = [(ICFolderListSectionIdentifier *)&v11 init];
  if (v5)
  {
    managedObjectContext = [objectCopy managedObjectContext];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__ICFolderListSectionIdentifier_initWithObject___block_invoke;
    v8[3] = &unk_1E8468F80;
    v9 = objectCopy;
    v10 = v5;
    [managedObjectContext performBlockAndWait:v8];
  }

  return v5;
}

uint64_t __48__ICFolderListSectionIdentifier_initWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v4 = *(a1 + 40);
    v45 = v3;
    v5 = [v4 accountSectionTypeForModernAccount:v45];
LABEL_5:
    *(*(a1 + 40) + 24) = v5;
    v7 = [*(a1 + 32) objectID];
    v8 = *(a1 + 40);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    v10 = [v45 localizedName];
    v11 = *(a1 + 40);
    v12 = *(v11 + 32);
    *(v11 + 32) = v10;

    goto LABEL_15;
  }

  if ([v3 conformsToProtocol:&unk_1F5091860])
  {
    v6 = *(a1 + 40);
    v45 = *(a1 + 32);
    v5 = [v6 accountSectionTypeForLegacyAccount:v45];
    goto LABEL_5;
  }

  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = v14;
    v16 = [v15 account];
    v17 = [v16 objectID];
    v18 = *(a1 + 40);
    v19 = *(v18 + 16);
    *(v18 + 16) = v17;

    v20 = [v15 account];
    v21 = [v20 localizedName];
    v22 = *(a1 + 40);
    v23 = *(v22 + 32);
    *(v22 + 32) = v21;

    v24 = *(a1 + 40);
    [v15 account];
    *(*(a1 + 40) + 24) = [v24 accountSectionTypeForModernAccount:objc_claimAutoreleasedReturnValue()];
LABEL_14:

    goto LABEL_15;
  }

  if ([v14 conformsToProtocol:&unk_1F50918C0])
  {
    v25 = *(a1 + 40);
    v15 = *(a1 + 32);
    v26 = [v15 account];
    v27 = [v25 accountSectionTypeForLegacyAccount:v26];
LABEL_12:
    *(*(a1 + 40) + 24) = v27;

    v31 = [v15 account];
    v32 = [v31 objectID];
    v33 = *(a1 + 40);
    v34 = *(v33 + 16);
    *(v33 + 16) = v32;

    [v15 account];
    v35 = [objc_claimAutoreleasedReturnValue() localizedName];
LABEL_13:
    v36 = *(a1 + 40);
    v37 = *(v36 + 32);
    *(v36 + 32) = v35;

    goto LABEL_14;
  }

  objc_opt_class();
  v28 = objc_opt_isKindOfClass();
  v29 = *(a1 + 32);
  if (v28)
  {
    v30 = *(a1 + 40);
    v15 = v29;
    v26 = [v15 account];
    v27 = [v30 accountSectionTypeForModernAccount:v26];
    goto LABEL_12;
  }

  if ([v29 conformsToProtocol:&unk_1F5091920])
  {
    v38 = *(a1 + 40);
    v15 = *(a1 + 32);
    v39 = [v15 account];
    *(*(a1 + 40) + 24) = [v38 accountSectionTypeForLegacyAccount:v39];

    v40 = [v15 account];
    v41 = [v40 objectID];
    v42 = *(a1 + 40);
    v43 = *(v42 + 16);
    *(v42 + 16) = v41;

    [v15 account];
    v35 = [objc_claimAutoreleasedReturnValue() name];
    goto LABEL_13;
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return result;
  }

  *(*(a1 + 40) + 24) = 8;
  *(*(a1 + 40) + 32) = [MEMORY[0x1E69B7768] localizedSectionTitle];
LABEL_15:

  return MEMORY[0x1EEE66BB8]();
}

- (ICFolderListSectionIdentifier)initWithSectionType:(int64_t)type
{
  v11.receiver = self;
  v11.super_class = ICFolderListSectionIdentifier;
  v4 = [(ICFolderListSectionIdentifier *)&v11 init];
  v5 = v4;
  if (v4)
  {
    accountObjectID = v4->_accountObjectID;
    v4->_accountObjectID = 0;
    v4->_sectionType = type;

    if (type > 5)
    {
      switch(type)
      {
        case 6:
          localizedLocalAccountName = [MEMORY[0x1E69B7658] localizedLocalAccountName];
          goto LABEL_13;
        case 7:
          goto LABEL_4;
        case 8:
          localizedLocalAccountName = [MEMORY[0x1E69B7768] localizedSectionTitle];
LABEL_13:
          title = v5->_title;
          v5->_title = localizedLocalAccountName;
          goto LABEL_15;
      }
    }

    else
    {
      if ((type - 2) < 4)
      {
LABEL_4:
        v7 = MEMORY[0x1E69B7A38];
        title = NSStringFromICFolderListSectionType(type);
LABEL_15:

        return v5;
      }

      if (!type)
      {
        title = v5->_title;
        v5->_title = &stru_1F4F94F00;
        goto LABEL_15;
      }

      if (type == 1)
      {
        localizedLocalAccountName = __ICLocalizedFrameworkString_impl(@"Quick Notes", @"Quick Notes", 0, 1);
        goto LABEL_13;
      }
    }
  }

  return v5;
}

uint64_t __56__ICFolderListSectionIdentifier_systemSectionIdentifier__block_invoke()
{
  systemSectionIdentifier_identifier = [[ICFolderListSectionIdentifier alloc] initWithSectionType:0];

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)expansionStateContext
{
  v3 = NSStringFromICFolderListSectionType([(ICFolderListSectionIdentifier *)self sectionType]);
  accountObjectID = [(ICFolderListSectionIdentifier *)self accountObjectID];
  if (accountObjectID)
  {
    v5 = MEMORY[0x1E696AEC0];
    accountObjectID2 = [(ICFolderListSectionIdentifier *)self accountObjectID];
    uRIRepresentation = [accountObjectID2 URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
    v9 = [v5 stringWithFormat:@"%@:%@", v3, absoluteString];
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromICFolderListSectionType([(ICFolderListSectionIdentifier *)self sectionType]);
  accountObjectID = [(ICFolderListSectionIdentifier *)self accountObjectID];
  v8 = [v3 stringWithFormat:@"<%@: %p, sectionType: %@, accountObjectID: %@>", v5, self, v6, accountObjectID];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    v6 = ICDynamicCast();
    v7 = [(ICFolderListSectionIdentifier *)self isEqualToICFolderListSectionIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToICFolderListSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sectionType = [(ICFolderListSectionIdentifier *)self sectionType];
  sectionType2 = [identifierCopy sectionType];
  accountObjectID = [(ICFolderListSectionIdentifier *)self accountObjectID];
  if (accountObjectID)
  {
    accountObjectID2 = [identifierCopy accountObjectID];
    v9 = accountObjectID2 != 0;
  }

  else
  {
    v9 = 0;
  }

  accountObjectID3 = [(ICFolderListSectionIdentifier *)self accountObjectID];
  if (accountObjectID3)
  {
    v11 = 0;
  }

  else
  {
    accountObjectID4 = [identifierCopy accountObjectID];
    v11 = accountObjectID4 == 0;
  }

  if (v9)
  {
    accountObjectID5 = [(ICFolderListSectionIdentifier *)self accountObjectID];
    accountObjectID6 = [identifierCopy accountObjectID];
    v11 |= [accountObjectID5 isEqual:accountObjectID6];
  }

  return (sectionType == sectionType2) & v11;
}

- (int64_t)accountSectionTypeForModernAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy accountType] == 3)
  {
    v4 = 6;
  }

  else if ([accountCopy isManaged])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (int64_t)accountSectionTypeForLegacyAccount:(id)account
{
  legacyAccountType = [account legacyAccountType];
  v4 = 7;
  if (legacyAccountType == 1)
  {
    v4 = 4;
  }

  if (legacyAccountType == 2)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

@end