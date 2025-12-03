@interface ICTagSelection
+ (id)tagSelectionWithData:(id)data managedObjectContext:(id)context;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTagSelection:(id)selection;
- (ICTagSelection)initWithCoder:(id)coder;
- (ICTagSelection)initWithManagedObjectContext:(id)context;
- (ICTagSelection)initWithManagedObjectContext:(id)context includedObjectIDs:(id)ds;
- (ICTagSelection)initWithManagedObjectContext:(id)context includedObjectIDs:(id)ds excludedObjectIDs:(id)iDs;
- (ICTagSelection)initWithManagedObjectContext:(id)context includedObjectIDs:(id)ds excludedObjectIDs:(id)iDs tagOperator:(unint64_t)operator;
- (ICTagSelection)initWithManagedObjectContext:(id)context mode:(unint64_t)mode;
- (ICTagSelection)initWithManagedObjectContext:(id)context mode:(unint64_t)mode tagOperator:(unint64_t)operator;
- (NSArray)displayTexts;
- (NSArray)excludedDisplayTexts;
- (NSArray)excludedHashtagPrefixedDisplayTexts;
- (NSArray)excludedTagIdentifiers;
- (NSArray)excludedTags;
- (NSArray)hashtagPrefixedDisplayTexts;
- (NSArray)includedDisplayTexts;
- (NSArray)includedHashtagPrefixedDisplayTexts;
- (NSArray)includedTagIdentifiers;
- (NSArray)includedTags;
- (NSArray)tagIdentifiers;
- (NSArray)tags;
- (NSData)dataRepresentation;
- (NSSet)objectIDs;
- (NSSet)unresolvedTagIdentifiers;
- (NSString)actionTitle;
- (NSString)selectedTagCountString;
- (NSString)smartFolderTitle;
- (NSString)title;
- (id)copyWithManagedObjectContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)displayTextsForObjectIDs:(id)ds;
- (id)emptySummary;
- (id)emptySummaryTitle;
- (id)hashtagsForObjectIDs:(id)ds;
- (id)rawFilterValue;
- (id)shortEmptySummary;
- (id)standardizedContentsForObjectIDs:(id)ds;
- (unint64_t)hash;
- (unint64_t)selectedTagCount;
- (void)addObjectID:(id)d toExcluded:(BOOL)excluded;
- (void)addUnresolvedTagIdentifier:(id)identifier toExcluded:(BOOL)excluded;
- (void)clear;
- (void)commonInitWithManagedObjectContext:(id)context;
- (void)convertUnresolvedDisplayTextsInAccount:(id)account;
- (void)dataRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)managedObjectContextObjectIDsDidSave:(id)save;
- (void)removeObjectID:(id)d fromExcluded:(BOOL)excluded;
- (void)removeObjectIDs:(id)ds;
- (void)removeUnresolvedTagIdentifier:(id)identifier fromExcluded:(BOOL)excluded;
- (void)removeUnresolvedTagIdentifiers:(id)identifiers;
- (void)resolveManagedObjectsFromURLs;
- (void)setExcludedObjectIDs:(id)ds;
- (void)setIncludedObjectIDs:(id)ds;
- (void)setMode:(unint64_t)mode;
@end

@implementation ICTagSelection

- (ICTagSelection)initWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = ICTagSelection;
  v5 = [(ICTagSelection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICTagSelection *)v5 commonInitWithManagedObjectContext:contextCopy];
    v6->_mode = 0;
    v6->_tagOperator = 1;
  }

  return v6;
}

- (ICTagSelection)initWithManagedObjectContext:(id)context mode:(unint64_t)mode
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = ICTagSelection;
  v7 = [(ICTagSelection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICTagSelection *)v7 commonInitWithManagedObjectContext:contextCopy];
    v8->_mode = mode;
    v8->_tagOperator = 1;
  }

  return v8;
}

- (ICTagSelection)initWithManagedObjectContext:(id)context mode:(unint64_t)mode tagOperator:(unint64_t)operator
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = ICTagSelection;
  v9 = [(ICTagSelection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(ICTagSelection *)v9 commonInitWithManagedObjectContext:contextCopy];
    v10->_mode = mode;
    v10->_tagOperator = operator;
  }

  return v10;
}

- (ICTagSelection)initWithManagedObjectContext:(id)context includedObjectIDs:(id)ds
{
  contextCopy = context;
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = ICTagSelection;
  v8 = [(ICTagSelection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ICTagSelection *)v8 commonInitWithManagedObjectContext:contextCopy];
    objc_storeStrong(&v9->_includedObjectIDs, ds);
    v9->_tagOperator = 1;
  }

  return v9;
}

- (ICTagSelection)initWithManagedObjectContext:(id)context includedObjectIDs:(id)ds excludedObjectIDs:(id)iDs
{
  contextCopy = context;
  dsCopy = ds;
  iDsCopy = iDs;
  v14.receiver = self;
  v14.super_class = ICTagSelection;
  v11 = [(ICTagSelection *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ICTagSelection *)v11 commonInitWithManagedObjectContext:contextCopy];
    objc_storeStrong(&v12->_includedObjectIDs, ds);
    objc_storeStrong(&v12->_excludedObjectIDs, iDs);
    v12->_tagOperator = 1;
  }

  return v12;
}

- (ICTagSelection)initWithManagedObjectContext:(id)context includedObjectIDs:(id)ds excludedObjectIDs:(id)iDs tagOperator:(unint64_t)operator
{
  contextCopy = context;
  dsCopy = ds;
  iDsCopy = iDs;
  v16.receiver = self;
  v16.super_class = ICTagSelection;
  v13 = [(ICTagSelection *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(ICTagSelection *)v13 commonInitWithManagedObjectContext:contextCopy];
    objc_storeStrong(&v14->_includedObjectIDs, ds);
    objc_storeStrong(&v14->_excludedObjectIDs, iDs);
    v14->_tagOperator = operator;
  }

  return v14;
}

- (id)copyWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = [[ICTagSelection alloc] initWithManagedObjectContext:contextCopy mode:[(ICTagSelection *)self mode] tagOperator:[(ICTagSelection *)self tagOperator]];

  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  [(ICTagSelection *)v5 setIncludedObjectIDs:includedObjectIDs];

  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  [(ICTagSelection *)v5 setExcludedObjectIDs:excludedObjectIDs];

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICTagSelection;
  [(ICTagSelection *)&v4 dealloc];
}

- (void)commonInitWithManagedObjectContext:(id)context
{
  objc_storeStrong(&self->_managedObjectContext, context);
  contextCopy = context;
  self->_allowsRecentlyDeleted = 0;
  self->_automaticallyRemoveDeletedTags = 1;
  v6 = [MEMORY[0x277CBEB98] set];
  includedObjectIDs = self->_includedObjectIDs;
  self->_includedObjectIDs = v6;

  v8 = [MEMORY[0x277CBEB98] set];
  excludedObjectIDs = self->_excludedObjectIDs;
  self->_excludedObjectIDs = v8;

  v10 = [MEMORY[0x277CBEB98] set];
  unresolvedIncludedTagIdentifiers = self->_unresolvedIncludedTagIdentifiers;
  self->_unresolvedIncludedTagIdentifiers = v10;

  v12 = [MEMORY[0x277CBEB98] set];
  unresolvedExcludedTagIdentifiers = self->_unresolvedExcludedTagIdentifiers;
  self->_unresolvedExcludedTagIdentifiers = v12;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_managedObjectContextObjectIDsDidSave_ name:*MEMORY[0x277CBE1B0] object:0];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  mode = [(ICTagSelection *)self mode];
  v5 = @"Custom";
  if (mode == 1)
  {
    v5 = @"All Tagged";
  }

  if (mode == 2)
  {
    v5 = @"All Untagged";
  }

  v6 = v5;
  tagOperator = [(ICTagSelection *)self tagOperator];
  v8 = @"unknown";
  if (tagOperator == 1)
  {
    v8 = @"all";
  }

  if (tagOperator == 2)
  {
    v8 = @"any";
  }

  v9 = v8;
  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  unresolvedIncludedTagIdentifiers = [(ICTagSelection *)self unresolvedIncludedTagIdentifiers];
  unresolvedExcludedTagIdentifiers = [(ICTagSelection *)self unresolvedExcludedTagIdentifiers];
  v14 = [v3 stringWithFormat:@"mode: %@\noperator:%@\nincluded:%@\nexcluded:%@\nunresolvedIncluded:%@\nunresolvedExcluded:%@", v6, v9, includedObjectIDs, excludedObjectIDs, unresolvedIncludedTagIdentifiers, unresolvedExcludedTagIdentifiers];

  return v14;
}

- (void)setMode:(unint64_t)mode
{
  self->_mode = mode;
  if (mode - 1 >= 2)
  {
    if (!mode && ![(ICTagSelection *)self tagOperator])
    {

      [(ICTagSelection *)self setTagOperator:1];
    }
  }

  else
  {
    [(ICTagSelection *)self setTagOperator:0];
    v4 = [MEMORY[0x277CBEB98] set];
    [(ICTagSelection *)self setIncludedObjectIDs:v4];

    v5 = [MEMORY[0x277CBEB98] set];
    [(ICTagSelection *)self setExcludedObjectIDs:v5];
  }
}

- (void)setIncludedObjectIDs:(id)ds
{
  dsCopy = ds;
  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  v6 = [dsCopy isEqualToSet:includedObjectIDs];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_includedObjectIDs, ds);
    excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
    v8 = [excludedObjectIDs mutableCopy];

    [v8 minusSet:dsCopy];
    v9 = [v8 copy];
    excludedObjectIDs = self->_excludedObjectIDs;
    self->_excludedObjectIDs = v9;

    if ([dsCopy count] && -[ICTagSelection mode](self, "mode"))
    {
      [(ICTagSelection *)self setMode:0];
    }
  }
}

- (void)removeObjectIDs:(id)ds
{
  v15 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(dsCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(ICTagSelection *)self removeObjectID:v9 fromExcluded:0];
        [(ICTagSelection *)self removeObjectID:v9 fromExcluded:1];
      }

      v6 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addObjectID:(id)d toExcluded:(BOOL)excluded
{
  excludedCopy = excluded;
  dCopy = d;
  if (excludedCopy)
  {
    if (dCopy)
    {
      v13 = dCopy;
      excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
      v8 = [excludedObjectIDs containsObject:v13];

      dCopy = v13;
      if ((v8 & 1) == 0)
      {
        excludedObjectIDs2 = [(ICTagSelection *)self excludedObjectIDs];
        v10 = [excludedObjectIDs2 setByAddingObject:v13];
        [(ICTagSelection *)self setExcludedObjectIDs:v10];
LABEL_8:

        dCopy = v13;
      }
    }
  }

  else if (dCopy)
  {
    v13 = dCopy;
    includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
    v12 = [includedObjectIDs containsObject:v13];

    dCopy = v13;
    if ((v12 & 1) == 0)
    {
      excludedObjectIDs2 = [(ICTagSelection *)self includedObjectIDs];
      v10 = [excludedObjectIDs2 setByAddingObject:v13];
      [(ICTagSelection *)self setIncludedObjectIDs:v10];
      goto LABEL_8;
    }
  }
}

- (void)removeObjectID:(id)d fromExcluded:(BOOL)excluded
{
  excludedCopy = excluded;
  dCopy = d;
  if (excludedCopy)
  {
    if (dCopy)
    {
      v15 = dCopy;
      excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
      v8 = [excludedObjectIDs containsObject:v15];

      dCopy = v15;
      if (v8)
      {
        excludedObjectIDs2 = [(ICTagSelection *)self excludedObjectIDs];
        v10 = [excludedObjectIDs2 mutableCopy];

        [v10 removeObject:v15];
        v11 = [v10 copy];
        [(ICTagSelection *)self setExcludedObjectIDs:v11];
LABEL_8:

        dCopy = v15;
      }
    }
  }

  else if (dCopy)
  {
    v15 = dCopy;
    includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
    v13 = [includedObjectIDs containsObject:v15];

    dCopy = v15;
    if (v13)
    {
      includedObjectIDs2 = [(ICTagSelection *)self includedObjectIDs];
      v10 = [includedObjectIDs2 mutableCopy];

      [v10 removeObject:v15];
      v11 = [v10 copy];
      [(ICTagSelection *)self setIncludedObjectIDs:v11];
      goto LABEL_8;
    }
  }
}

- (void)addUnresolvedTagIdentifier:(id)identifier toExcluded:(BOOL)excluded
{
  excludedCopy = excluded;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v13 = identifierCopy;
    if (excludedCopy)
    {
      unresolvedExcludedTagIdentifiers = [(ICTagSelection *)self unresolvedExcludedTagIdentifiers];
      v8 = [unresolvedExcludedTagIdentifiers containsObject:v13];

      if ((v8 & 1) == 0)
      {
        unresolvedExcludedTagIdentifiers2 = [(ICTagSelection *)self unresolvedExcludedTagIdentifiers];
        v10 = [unresolvedExcludedTagIdentifiers2 setByAddingObject:v13];
        [(ICTagSelection *)self setUnresolvedExcludedTagIdentifiers:v10];
LABEL_7:
      }
    }

    else
    {
      unresolvedIncludedTagIdentifiers = [(ICTagSelection *)self unresolvedIncludedTagIdentifiers];
      v12 = [unresolvedIncludedTagIdentifiers containsObject:v13];

      if ((v12 & 1) == 0)
      {
        unresolvedExcludedTagIdentifiers2 = [(ICTagSelection *)self unresolvedIncludedTagIdentifiers];
        v10 = [unresolvedExcludedTagIdentifiers2 setByAddingObject:v13];
        [(ICTagSelection *)self setUnresolvedIncludedTagIdentifiers:v10];
        goto LABEL_7;
      }
    }

    [(ICTagSelection *)self removeUnresolvedTagIdentifier:v13 fromExcluded:!excludedCopy];
    identifierCopy = v13;
  }
}

- (void)removeUnresolvedTagIdentifier:(id)identifier fromExcluded:(BOOL)excluded
{
  excludedCopy = excluded;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v15 = identifierCopy;
    if (excludedCopy)
    {
      unresolvedExcludedTagIdentifiers = [(ICTagSelection *)self unresolvedExcludedTagIdentifiers];
      v8 = [unresolvedExcludedTagIdentifiers containsObject:v15];

      identifierCopy = v15;
      if (!v8)
      {
        goto LABEL_8;
      }

      unresolvedExcludedTagIdentifiers2 = [(ICTagSelection *)self unresolvedExcludedTagIdentifiers];
      v10 = [unresolvedExcludedTagIdentifiers2 mutableCopy];

      [v10 removeObject:v15];
      v11 = [v10 copy];
      [(ICTagSelection *)self setUnresolvedExcludedTagIdentifiers:v11];
    }

    else
    {
      unresolvedIncludedTagIdentifiers = [(ICTagSelection *)self unresolvedIncludedTagIdentifiers];
      v13 = [unresolvedIncludedTagIdentifiers containsObject:v15];

      identifierCopy = v15;
      if (!v13)
      {
        goto LABEL_8;
      }

      unresolvedIncludedTagIdentifiers2 = [(ICTagSelection *)self unresolvedIncludedTagIdentifiers];
      v10 = [unresolvedIncludedTagIdentifiers2 mutableCopy];

      [v10 removeObject:v15];
      v11 = [v10 copy];
      [(ICTagSelection *)self setUnresolvedIncludedTagIdentifiers:v11];
    }

    identifierCopy = v15;
  }

LABEL_8:
}

- (void)setExcludedObjectIDs:(id)ds
{
  dsCopy = ds;
  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  v6 = [dsCopy isEqualToSet:excludedObjectIDs];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_excludedObjectIDs, ds);
    includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
    v8 = [includedObjectIDs mutableCopy];

    [v8 minusSet:dsCopy];
    v9 = [v8 copy];
    includedObjectIDs = self->_includedObjectIDs;
    self->_includedObjectIDs = v9;

    if ([dsCopy count] && -[ICTagSelection mode](self, "mode"))
    {
      [(ICTagSelection *)self setMode:0];
    }
  }
}

- (void)removeUnresolvedTagIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(ICTagSelection *)self removeUnresolvedTagIdentifier:v9 fromExcluded:0];
        [(ICTagSelection *)self removeUnresolvedTagIdentifier:v9 fromExcluded:1];
      }

      v6 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSArray)tags
{
  objectIDs = [(ICTagSelection *)self objectIDs];
  v4 = [(ICTagSelection *)self hashtagsForObjectIDs:objectIDs];

  return v4;
}

- (NSArray)includedTags
{
  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  v4 = [(ICTagSelection *)self hashtagsForObjectIDs:includedObjectIDs];

  return v4;
}

- (NSArray)excludedTags
{
  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  v4 = [(ICTagSelection *)self hashtagsForObjectIDs:excludedObjectIDs];

  return v4;
}

- (NSSet)objectIDs
{
  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  v5 = [includedObjectIDs setByAddingObjectsFromSet:excludedObjectIDs];

  return v5;
}

- (NSArray)includedTagIdentifiers
{
  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  v4 = [(ICTagSelection *)self standardizedContentsForObjectIDs:includedObjectIDs];

  return v4;
}

- (NSArray)excludedTagIdentifiers
{
  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  v4 = [(ICTagSelection *)self standardizedContentsForObjectIDs:excludedObjectIDs];

  return v4;
}

- (NSArray)tagIdentifiers
{
  includedTagIdentifiers = [(ICTagSelection *)self includedTagIdentifiers];
  excludedTagIdentifiers = [(ICTagSelection *)self excludedTagIdentifiers];
  v5 = [includedTagIdentifiers arrayByAddingObjectsFromArray:excludedTagIdentifiers];

  return v5;
}

- (NSArray)includedDisplayTexts
{
  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  v4 = [(ICTagSelection *)self displayTextsForObjectIDs:includedObjectIDs];

  return v4;
}

- (NSArray)excludedDisplayTexts
{
  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  v4 = [(ICTagSelection *)self displayTextsForObjectIDs:excludedObjectIDs];

  return v4;
}

- (NSArray)displayTexts
{
  includedDisplayTexts = [(ICTagSelection *)self includedDisplayTexts];
  excludedDisplayTexts = [(ICTagSelection *)self excludedDisplayTexts];
  v5 = [includedDisplayTexts arrayByAddingObjectsFromArray:excludedDisplayTexts];

  return v5;
}

- (NSArray)includedHashtagPrefixedDisplayTexts
{
  includedDisplayTexts = [(ICTagSelection *)self includedDisplayTexts];
  v4 = [(ICTagSelection *)self hashtagPrefixedDisplayTexts:includedDisplayTexts];

  v5 = [v4 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  return v5;
}

- (NSArray)excludedHashtagPrefixedDisplayTexts
{
  excludedDisplayTexts = [(ICTagSelection *)self excludedDisplayTexts];
  v4 = [(ICTagSelection *)self hashtagPrefixedDisplayTexts:excludedDisplayTexts];

  v5 = [v4 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  return v5;
}

- (NSArray)hashtagPrefixedDisplayTexts
{
  displayTexts = [(ICTagSelection *)self displayTexts];
  v4 = [(ICTagSelection *)self hashtagPrefixedDisplayTexts:displayTexts];

  return v4;
}

- (NSSet)unresolvedTagIdentifiers
{
  unresolvedIncludedTagIdentifiers = [(ICTagSelection *)self unresolvedIncludedTagIdentifiers];
  unresolvedExcludedTagIdentifiers = [(ICTagSelection *)self unresolvedExcludedTagIdentifiers];
  v5 = [unresolvedIncludedTagIdentifiers setByAddingObjectsFromSet:unresolvedExcludedTagIdentifiers];

  return v5;
}

- (unint64_t)selectedTagCount
{
  if ([(ICTagSelection *)self mode])
  {
    return 1;
  }

  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  v5 = [includedObjectIDs count];
  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  v3 = [excludedObjectIDs count] + v5;

  return v3;
}

- (NSString)selectedTagCountString
{
  v3 = MEMORY[0x277CCACA8];
  v4 = __ICLocalizedFrameworkString_impl(@"%lu_TAGS", @"%lu_TAGS", 0, 1);
  v5 = [v3 localizedStringWithFormat:v4, -[ICTagSelection selectedTagCount](self, "selectedTagCount")];

  return v5;
}

- (NSString)title
{
  mode = [(ICTagSelection *)self mode];
  if (!mode)
  {
    if ([(ICTagSelection *)self selectedTagCount])
    {
      if ([(ICTagSelection *)self selectedTagCount]== 1)
      {
        includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
        v7 = [includedObjectIDs count];

        if (v7 == 1)
        {
          hashtagPrefixedDisplayTexts = [(ICTagSelection *)self hashtagPrefixedDisplayTexts];
          firstObject = [hashtagPrefixedDisplayTexts firstObject];

          goto LABEL_15;
        }
      }

      selectedTagCountString = [(ICTagSelection *)self selectedTagCountString];
      goto LABEL_14;
    }

    v5 = @"Tags";
    goto LABEL_13;
  }

  if (mode == 2)
  {
    v5 = @"Untagged";
LABEL_13:
    selectedTagCountString = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
    goto LABEL_14;
  }

  if (mode != 1)
  {
    firstObject = 0;
    goto LABEL_15;
  }

  selectedTagCountString = +[ICHashtag localizedSectionTitle];
LABEL_14:
  firstObject = selectedTagCountString;
LABEL_15:

  return firstObject;
}

- (NSString)actionTitle
{
  selfCopy = self;
  if ([(ICTagSelection *)self isEmpty])
  {
    selfCopy = 0;
    goto LABEL_10;
  }

  mode = [selfCopy mode];
  if (mode)
  {
    if (mode == 2)
    {
      v4 = @"Untagged";
    }

    else
    {
      if (mode != 1)
      {
        goto LABEL_10;
      }

      v4 = @"All Tags";
    }

    selfCopy = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);
  }

  else
  {
    hashtagPrefixedDisplayTexts = [selfCopy hashtagPrefixedDisplayTexts];
    selfCopy = [ICFolder defaultSmartFolderTitleWithComponents:hashtagPrefixedDisplayTexts];
  }

LABEL_10:

  return selfCopy;
}

- (NSString)smartFolderTitle
{
  if ([(ICTagSelection *)self isEmpty])
  {
    goto LABEL_2;
  }

  mode = [(ICTagSelection *)self mode];
  if (mode)
  {
    if (mode == 2)
    {
      v5 = @"Untagged";
      goto LABEL_8;
    }

    if (mode == 1)
    {
      v5 = @"All Tags";
LABEL_8:
      v3 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
      goto LABEL_9;
    }

LABEL_2:
    v3 = 0;
    goto LABEL_9;
  }

  if (![(ICTagSelection *)self selectedTagCount])
  {
    goto LABEL_2;
  }

  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  v8 = [excludedObjectIDs count];

  if (v8)
  {
    v9 = __ICLocalizedFrameworkString_impl(@"New Smart Folder", @"New Smart Folder", 0, 1);
    goto LABEL_2;
  }

  includedDisplayTexts = [(ICTagSelection *)self includedDisplayTexts];
  v3 = [ICFolder defaultSmartFolderTitleWithComponents:includedDisplayTexts];

LABEL_9:

  return v3;
}

- (void)clear
{
  if ([(ICTagSelection *)self mode])
  {
    [(ICTagSelection *)self setMode:0];
  }

  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  v4 = [includedObjectIDs count];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] set];
    [(ICTagSelection *)self setIncludedObjectIDs:v5];
  }

  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  v7 = [excludedObjectIDs count];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] set];
    [(ICTagSelection *)self setExcludedObjectIDs:v8];
  }
}

- (void)convertUnresolvedDisplayTextsInAccount:(id)account
{
  accountCopy = account;
  managedObjectContext = [(ICTagSelection *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ICTagSelection_convertUnresolvedDisplayTextsInAccount___block_invoke;
  v7[3] = &unk_278194AD8;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  [managedObjectContext performBlockAndWait:v7];
}

void __57__ICTagSelection_convertUnresolvedDisplayTextsInAccount___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 ic_existingObjectWithID:*(a1 + 40)];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) unresolvedTagIdentifiers];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [ICHashtag hashtagWithDisplayText:v8 account:v3 createIfNecessary:1];
        if ([v9 ic_obtainPermanentObjectIDIfNecessary])
        {
          v10 = [*(a1 + 32) unresolvedExcludedTagIdentifiers];
          v11 = [v10 containsObject:v8];

          [*(a1 + 32) removeUnresolvedTagIdentifier:v8 fromExcluded:v11];
          v12 = *(a1 + 32);
          v13 = [v9 objectID];
          [v12 addObjectID:v13 toExcluded:v11];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = [*(a1 + 32) managedObjectContext];
  [v14 ic_save];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICTagSelection allocWithZone:zone];
  managedObjectContext = [(ICTagSelection *)self managedObjectContext];
  v6 = [(ICTagSelection *)v4 initWithManagedObjectContext:managedObjectContext mode:[(ICTagSelection *)self mode] tagOperator:[(ICTagSelection *)self tagOperator]];

  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  [(ICTagSelection *)v6 setIncludedObjectIDs:includedObjectIDs];

  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  [(ICTagSelection *)v6 setExcludedObjectIDs:excludedObjectIDs];

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICTagSelection *)self isEqualToTagSelection:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICTagSelection mode](self, "mode")}];
  v33 = [v3 hash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICTagSelection tagOperator](self, "tagOperator")}];
  v5 = [v4 hash];
  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v8 hash];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = includedObjectIDs;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v9 += ICHashWithObject(*(*(&v34 + 1) + 8 * i));
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }

  excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v17 hash];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = excludedObjectIDs;
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v18 += ICHashWithObject(*(*(&v34 + 1) + 8 * j));
      }

      v21 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);
  }

  v31 = ICHashWithHashKeys(v33, v24, v25, v26, v27, v28, v29, v30, v5);
  return v31;
}

- (id)rawFilterValue
{
  mode = [(ICTagSelection *)self mode];
  if (mode)
  {
    if (mode == 2)
    {
      return @"No Tags";
    }

    else
    {
      return @"Any Tag";
    }
  }

  else if ([(ICTagSelection *)self tagOperator]>= 2)
  {
    return @"Any Selected Tag";
  }

  else
  {
    return @"All Selected Tags";
  }
}

- (BOOL)isEmpty
{
  if ([(ICTagSelection *)self mode])
  {
    return 0;
  }

  includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
  if ([includedObjectIDs count])
  {
    v3 = 0;
  }

  else
  {
    excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
    if ([excludedObjectIDs count])
    {
      v3 = 0;
    }

    else
    {
      unresolvedIncludedTagIdentifiers = [(ICTagSelection *)self unresolvedIncludedTagIdentifiers];
      if ([unresolvedIncludedTagIdentifiers count])
      {
        v3 = 0;
      }

      else
      {
        unresolvedExcludedTagIdentifiers = [(ICTagSelection *)self unresolvedExcludedTagIdentifiers];
        v3 = [unresolvedExcludedTagIdentifiers count] == 0;
      }
    }
  }

  return v3;
}

- (id)emptySummaryTitle
{
  if ([(ICTagSelection *)self isEmpty])
  {
    v2 = __ICLocalizedFrameworkString_impl(@"Tags Filter Incomplete", @"Tags Filter Incomplete", 0, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)emptySummary
{
  if ([(ICTagSelection *)self isEmpty])
  {
    v2 = __ICLocalizedFrameworkString_impl(@"You must select at least one tag for the Tags filter.", @"You must select at least one tag for the Tags filter.", 0, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)shortEmptySummary
{
  if ([(ICTagSelection *)self isEmpty])
  {
    v2 = __ICLocalizedFrameworkString_impl(@"Tag for the Tags filter", @"Tag for the Tags filter", 0, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)tagSelectionWithData:(id)data managedObjectContext:(id)context
{
  contextCopy = context;
  v6 = contextCopy;
  v7 = 0;
  if (data && contextCopy)
  {
    v8 = MEMORY[0x277CCAAC8];
    dataCopy = data;
    v14 = 0;
    v10 = [v8 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v14];

    v11 = v14;
    if (v11)
    {
      v12 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ICTagSelection tagSelectionWithData:v11 managedObjectContext:v12];
      }

      v7 = 0;
    }

    else
    {
      [v10 setManagedObjectContext:v6];
      [v10 resolveManagedObjectsFromURLs];
      v7 = v10;
    }
  }

  return v7;
}

- (NSData)dataRepresentation
{
  v6 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ICTagSelection *)v3 dataRepresentation];
    }
  }

  return v2;
}

- (void)managedObjectContextObjectIDsDidSave:(id)save
{
  saveCopy = save;
  if ([(ICTagSelection *)self automaticallyRemoveDeletedTags])
  {
    objectIDs = [(ICTagSelection *)self objectIDs];
    v6 = [objectIDs mutableCopy];

    userInfo = [saveCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE308]];

    [v6 intersectSet:v8];
    managedObjectContext = [(ICTagSelection *)self managedObjectContext];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__ICTagSelection_managedObjectContextObjectIDsDidSave___block_invoke;
    v11[3] = &unk_278194AD8;
    v12 = v6;
    selfCopy = self;
    v10 = v6;
    [managedObjectContext performBlock:v11];
  }
}

void __55__ICTagSelection_managedObjectContextObjectIDsDidSave___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ICTagSelection_managedObjectContextObjectIDsDidSave___block_invoke_2;
  v4[3] = &unk_278196900;
  v4[4] = *(a1 + 40);
  v3 = [v2 ic_objectsPassingTest:v4];
  [*(a1 + 40) removeObjectIDs:v3];
}

uint64_t __55__ICTagSelection_managedObjectContextObjectIDsDidSave___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  v5 = [v4 ic_existingObjectWithID:v3];

  if ([v5 isDeleted])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 markedForDeletion];
  }

  return v6;
}

- (BOOL)isEqualToTagSelection:(id)selection
{
  selectionCopy = selection;
  mode = [(ICTagSelection *)self mode];
  if (mode == [selectionCopy mode] && (v6 = -[ICTagSelection tagOperator](self, "tagOperator"), v6 == objc_msgSend(selectionCopy, "tagOperator")))
  {
    includedObjectIDs = [(ICTagSelection *)self includedObjectIDs];
    includedObjectIDs2 = [selectionCopy includedObjectIDs];
    if ([includedObjectIDs isEqualToSet:includedObjectIDs2])
    {
      excludedObjectIDs = [(ICTagSelection *)self excludedObjectIDs];
      excludedObjectIDs2 = [selectionCopy excludedObjectIDs];
      v11 = [excludedObjectIDs isEqualToSet:excludedObjectIDs2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)standardizedContentsForObjectIDs:(id)ds
{
  dsCopy = ds;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__20;
  v17 = __Block_byref_object_dispose__20;
  v18 = 0;
  managedObjectContext = [(ICTagSelection *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__ICTagSelection_standardizedContentsForObjectIDs___block_invoke;
  v9[3] = &unk_278195740;
  v12 = &v13;
  v6 = dsCopy;
  v10 = v6;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v9];

  v7 = [v14[5] sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __51__ICTagSelection_standardizedContentsForObjectIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allObjects];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__ICTagSelection_standardizedContentsForObjectIDs___block_invoke_2;
  v6[3] = &unk_278196928;
  v6[4] = *(a1 + 40);
  v3 = [v2 ic_compactMap:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __51__ICTagSelection_standardizedContentsForObjectIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ic_isHashtagType])
  {
    objc_opt_class();
    v4 = [*(a1 + 32) managedObjectContext];
    v5 = [v4 ic_existingObjectWithID:v3];
    v6 = ICDynamicCast();
    v7 = [v6 standardizedContent];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)displayTextsForObjectIDs:(id)ds
{
  dsCopy = ds;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__20;
  v17 = __Block_byref_object_dispose__20;
  v18 = 0;
  managedObjectContext = [(ICTagSelection *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__ICTagSelection_displayTextsForObjectIDs___block_invoke;
  v9[3] = &unk_278195740;
  v12 = &v13;
  v6 = dsCopy;
  v10 = v6;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v9];

  v7 = [v14[5] sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __43__ICTagSelection_displayTextsForObjectIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allObjects];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__ICTagSelection_displayTextsForObjectIDs___block_invoke_2;
  v6[3] = &unk_278196928;
  v6[4] = *(a1 + 40);
  v3 = [v2 ic_compactMap:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __43__ICTagSelection_displayTextsForObjectIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ic_isHashtagType])
  {
    objc_opt_class();
    v4 = [*(a1 + 32) managedObjectContext];
    v5 = [v4 ic_existingObjectWithID:v3];
    v6 = ICDynamicCast();
    v7 = [v6 displayText];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hashtagsForObjectIDs:(id)ds
{
  dsCopy = ds;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__20;
  v21 = __Block_byref_object_dispose__20;
  v22 = 0;
  managedObjectContext = [(ICTagSelection *)self managedObjectContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__ICTagSelection_hashtagsForObjectIDs___block_invoke;
  v13[3] = &unk_278195740;
  v16 = &v17;
  v6 = dsCopy;
  v14 = v6;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v13];

  v7 = MEMORY[0x277CBEA60];
  allObjects = [v18[5] allObjects];
  v9 = [v7 arrayWithArray:allObjects];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__ICTagSelection_hashtagsForObjectIDs___block_invoke_3;
  v12[3] = &unk_2781969C0;
  v12[4] = self;
  v10 = [v9 sortedArrayUsingComparator:v12];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __39__ICTagSelection_hashtagsForObjectIDs___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ICTagSelection_hashtagsForObjectIDs___block_invoke_2;
  v6[3] = &unk_278196970;
  v6[4] = a1[5];
  v3 = [v2 ic_compactMap:v6];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __39__ICTagSelection_hashtagsForObjectIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  v5 = [v4 ic_existingObjectWithID:v3];

  return v5;
}

uint64_t __39__ICTagSelection_hashtagsForObjectIDs___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__20;
  v30 = __Block_byref_object_dispose__20;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__20;
  v24 = __Block_byref_object_dispose__20;
  v25 = 0;
  v7 = [*(a1 + 32) managedObjectContext];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __39__ICTagSelection_hashtagsForObjectIDs___block_invoke_4;
  v15 = &unk_278196998;
  v18 = &v26;
  v8 = v5;
  v16 = v8;
  v19 = &v20;
  v9 = v6;
  v17 = v9;
  [v7 performBlockAndWait:&v12];

  v10 = [v27[5] localizedCaseInsensitiveCompare:{v21[5], v12, v13, v14, v15}];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v10;
}

void __39__ICTagSelection_hashtagsForObjectIDs___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) standardizedContent];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v9 = [*(a1 + 40) standardizedContent];
  v6 = [v9 copy];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)resolveManagedObjectsFromURLs
{
  v49 = *MEMORY[0x277D85DE8];
  managedObjectContext = [(ICTagSelection *)self managedObjectContext];

  if (managedObjectContext)
  {
    accountObjectIDURL = [(ICTagSelection *)self accountObjectIDURL];

    if (accountObjectIDURL)
    {
      managedObjectContext2 = [(ICTagSelection *)self managedObjectContext];
      accountObjectIDURL2 = [(ICTagSelection *)self accountObjectIDURL];
      v7 = [managedObjectContext2 ic_objectIDFromURL:accountObjectIDURL2];
      [(ICFilterTypeSelection *)self setAccountObjectID:v7];

      [(ICTagSelection *)self setAccountObjectIDURL:0];
    }

    includedObjectIDURLs = [(ICTagSelection *)self includedObjectIDURLs];
    v9 = [includedObjectIDURLs count];

    if (v9)
    {
      v10 = [MEMORY[0x277CBEB58] set];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      includedObjectIDURLs2 = [(ICTagSelection *)self includedObjectIDURLs];
      v12 = [includedObjectIDURLs2 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v44;
        do
        {
          v15 = 0;
          do
          {
            if (*v44 != v14)
            {
              objc_enumerationMutation(includedObjectIDURLs2);
            }

            v16 = *(*(&v43 + 1) + 8 * v15);
            managedObjectContext3 = [(ICTagSelection *)self managedObjectContext];
            v18 = [managedObjectContext3 ic_objectIDFromURL:v16];
            [v10 ic_addNonNilObject:v18];

            ++v15;
          }

          while (v13 != v15);
          v13 = [includedObjectIDURLs2 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v13);
      }

      v19 = [v10 copy];
      [(ICTagSelection *)self setIncludedObjectIDs:v19];

      [(ICTagSelection *)self setIncludedObjectIDURLs:0];
    }

    excludedObjectIDURLs = [(ICTagSelection *)self excludedObjectIDURLs];
    v21 = [excludedObjectIDURLs count];

    if (v21)
    {
      v22 = [MEMORY[0x277CBEB58] set];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      excludedObjectIDURLs2 = [(ICTagSelection *)self excludedObjectIDURLs];
      v24 = [excludedObjectIDURLs2 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v40;
        do
        {
          v27 = 0;
          do
          {
            if (*v40 != v26)
            {
              objc_enumerationMutation(excludedObjectIDURLs2);
            }

            v28 = *(*(&v39 + 1) + 8 * v27);
            managedObjectContext4 = [(ICTagSelection *)self managedObjectContext];
            v30 = [managedObjectContext4 ic_objectIDFromURL:v28];
            [v22 ic_addNonNilObject:v30];

            ++v27;
          }

          while (v25 != v27);
          v25 = [excludedObjectIDURLs2 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v25);
      }

      v31 = [v22 copy];
      [(ICTagSelection *)self setExcludedObjectIDs:v31];

      [(ICTagSelection *)self setExcludedObjectIDURLs:0];
    }

    hashtagObjectIDURLs = [(ICTagSelection *)self hashtagObjectIDURLs];
    v33 = [hashtagObjectIDURLs count];

    if (v33)
    {
      hashtagObjectIDURLs2 = [(ICTagSelection *)self hashtagObjectIDURLs];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __47__ICTagSelection_resolveManagedObjectsFromURLs__block_invoke;
      v38[3] = &unk_2781969E8;
      v38[4] = self;
      v35 = [hashtagObjectIDURLs2 ic_compactMap:v38];

      v36 = [(ICTagSelection *)self hashtagsForObjectIDs:v35];
      [(ICTagSelection *)self setTags:v36];

      [(ICTagSelection *)self setHashtagObjectIDURLs:0];
    }
  }

  else
  {
    v37 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [(ICTagSelection *)v37 resolveManagedObjectsFromURLs];
    }
  }
}

id __47__ICTagSelection_resolveManagedObjectsFromURLs__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  v5 = [v4 ic_objectIDFromURL:v3];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountObjectID = [(ICFilterTypeSelection *)self accountObjectID];
  uRIRepresentation = [accountObjectID URIRepresentation];
  v7 = NSStringFromSelector(sel_accountObjectIDURL);
  [coderCopy encodeObject:uRIRepresentation forKey:v7];

  mode = self->_mode;
  v9 = NSStringFromSelector(sel_mode);
  [coderCopy encodeInteger:mode forKey:v9];

  tagOperator = self->_tagOperator;
  v11 = NSStringFromSelector(sel_tagOperator);
  [coderCopy encodeInteger:tagOperator forKey:v11];

  allowsRecentlyDeleted = self->_allowsRecentlyDeleted;
  v13 = NSStringFromSelector(sel_allowsRecentlyDeleted);
  [coderCopy encodeBool:allowsRecentlyDeleted forKey:v13];

  automaticallyRemoveDeletedTags = self->_automaticallyRemoveDeletedTags;
  v15 = NSStringFromSelector(sel_automaticallyRemoveDeletedTags);
  [coderCopy encodeBool:automaticallyRemoveDeletedTags forKey:v15];

  v27 = [(NSSet *)self->_includedObjectIDs ic_map:&__block_literal_global_128];
  v16 = NSStringFromSelector(sel_includedObjectIDURLs);
  [coderCopy encodeObject:v27 forKey:v16];

  v17 = [(NSSet *)self->_excludedObjectIDs ic_map:&__block_literal_global_132];
  v18 = NSStringFromSelector(sel_excludedObjectIDURLs);
  [coderCopy encodeObject:v17 forKey:v18];

  v19 = MEMORY[0x277CBEB98];
  v20 = [(NSArray *)self->_tags ic_map:&__block_literal_global_137];
  v21 = [v19 setWithArray:v20];

  v22 = NSStringFromSelector(sel_hashtagObjectIDURLs);
  [coderCopy encodeObject:v21 forKey:v22];

  unresolvedIncludedTagIdentifiers = self->_unresolvedIncludedTagIdentifiers;
  v24 = NSStringFromSelector(sel_unresolvedIncludedTagIdentifiers);
  [coderCopy encodeObject:unresolvedIncludedTagIdentifiers forKey:v24];

  unresolvedExcludedTagIdentifiers = self->_unresolvedExcludedTagIdentifiers;
  v26 = NSStringFromSelector(sel_unresolvedExcludedTagIdentifiers);
  [coderCopy encodeObject:unresolvedExcludedTagIdentifiers forKey:v26];
}

id __34__ICTagSelection_encodeWithCoder___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];
  v3 = [v2 URIRepresentation];

  return v3;
}

- (ICTagSelection)initWithCoder:(id)coder
{
  v37[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(ICTagSelection *)self initWithManagedObjectContext:0];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = MEMORY[0x277CBEB98];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v11 = [v9 setWithArray:v10];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_accountObjectIDURL);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    accountObjectIDURL = v5->_accountObjectIDURL;
    v5->_accountObjectIDURL = v14;

    v16 = NSStringFromSelector(sel_mode);
    v5->_mode = [coderCopy decodeIntegerForKey:v16];

    v17 = NSStringFromSelector(sel_tagOperator);
    v5->_tagOperator = [coderCopy decodeIntegerForKey:v17];

    v18 = NSStringFromSelector(sel_allowsRecentlyDeleted);
    v5->_allowsRecentlyDeleted = [coderCopy decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_automaticallyRemoveDeletedTags);
    v5->_automaticallyRemoveDeletedTags = [coderCopy decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_includedObjectIDURLs);
    v21 = [coderCopy decodeObjectOfClasses:v8 forKey:v20];
    includedObjectIDURLs = v5->_includedObjectIDURLs;
    v5->_includedObjectIDURLs = v21;

    v23 = NSStringFromSelector(sel_excludedObjectIDURLs);
    v24 = [coderCopy decodeObjectOfClasses:v8 forKey:v23];
    excludedObjectIDURLs = v5->_excludedObjectIDURLs;
    v5->_excludedObjectIDURLs = v24;

    v26 = NSStringFromSelector(sel_hashtagObjectIDURLs);
    v27 = [coderCopy decodeObjectOfClasses:v8 forKey:v26];
    hashtagObjectIDURLs = v5->_hashtagObjectIDURLs;
    v5->_hashtagObjectIDURLs = v27;

    v29 = NSStringFromSelector(sel_unresolvedIncludedTagIdentifiers);
    v30 = [coderCopy decodeObjectOfClasses:v11 forKey:v29];
    unresolvedIncludedTagIdentifiers = v5->_unresolvedIncludedTagIdentifiers;
    v5->_unresolvedIncludedTagIdentifiers = v30;

    v32 = NSStringFromSelector(sel_unresolvedExcludedTagIdentifiers);
    v33 = [coderCopy decodeObjectOfClasses:v11 forKey:v32];
    unresolvedExcludedTagIdentifiers = v5->_unresolvedExcludedTagIdentifiers;
    v5->_unresolvedExcludedTagIdentifiers = v33;
  }

  return v5;
}

+ (void)tagSelectionWithData:(uint64_t)a1 managedObjectContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Unarchiving tagSelection data failed with error %@", &v2, 0xCu);
}

- (void)dataRepresentation
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Archiving tagSelection data failed with error %@", &v2, 0xCu);
}

@end