@interface SFFolderPickerList
- (SFFolderPickerList)initWithBookmarkCollection:(id)collection style:(unint64_t)style;
- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider;
- (id)folderListItemsIgnoringIdentifiers:(id)identifiers;
- (void)_appendChildrenOfFolder:(id)folder toArray:(id)array depth:(unint64_t)depth ignoringIdentifiers:(id)identifiers;
- (void)_appendFolderAndChildren:(id)children toArray:(id)array depth:(unint64_t)depth ignoringIdentifiers:(id)identifiers;
- (void)_appendPerTabGroupFavoritesIntoArray:(id)array;
@end

@implementation SFFolderPickerList

- (SFFolderPickerList)initWithBookmarkCollection:(id)collection style:(unint64_t)style
{
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = SFFolderPickerList;
  v8 = [(SFFolderPickerList *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_style = style;
    objc_storeStrong(&v8->_bookmarkCollection, collection);
    v10 = v9;
  }

  return v9;
}

- (id)folderListItemsIgnoringIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  style = self->_style;
  if (style == 1)
  {
    rootBookmark = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
    [(SFFolderPickerList *)self _appendChildrenOfFolder:rootBookmark toArray:array depth:0 ignoringIdentifiers:identifiersCopy];
    goto LABEL_6;
  }

  if (!style)
  {
    favoritesFolder = [(WebBookmarkCollection *)self->_bookmarkCollection favoritesFolder];
    [(SFFolderPickerList *)self _appendFolderAndChildren:favoritesFolder toArray:array depth:0 ignoringIdentifiers:identifiersCopy];

    [(SFFolderPickerList *)self _appendPerTabGroupFavoritesIntoArray:array];
    rootBookmark2 = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
    [(SFFolderPickerList *)self _appendFolderAndChildren:rootBookmark2 toArray:array depth:0 ignoringIdentifiers:identifiersCopy];

    if (self->_includesReadingList)
    {
      rootBookmark = [(WebBookmarkCollection *)self->_bookmarkCollection readingListFolder];
      [(SFFolderPickerList *)self _appendFolderAndChildren:rootBookmark toArray:array depth:0 ignoringIdentifiers:identifiersCopy];
LABEL_6:
    }
  }

  return array;
}

- (void)_appendChildrenOfFolder:(id)folder toArray:(id)array depth:(unint64_t)depth ignoringIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  identifiersCopy = identifiers;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = -[WebBookmarkCollection subfoldersOfID:](self->_bookmarkCollection, "subfoldersOfID:", [folder identifier]);
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        if (self->_style || ([(WebBookmarkCollection *)self->_bookmarkCollection bookmarkIsFavoritesFolder:*(*(&v20 + 1) + 8 * v15)]& 1) == 0)
        {
          if ([v16 isSyncable])
          {
            if (![v16 isBookmarksMenuFolder] || (-[WebBookmarkCollection listWithID:](self->_bookmarkCollection, "listWithID:", objc_msgSend(v16, "identifier")), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "bookmarkCount"), v17, v18))
            {
              [(SFFolderPickerList *)self _appendFolderAndChildren:v16 toArray:arrayCopy depth:depth ignoringIdentifiers:identifiersCopy];
            }
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)_appendFolderAndChildren:(id)children toArray:(id)array depth:(unint64_t)depth ignoringIdentifiers:(id)identifiers
{
  childrenCopy = children;
  arrayCopy = array;
  identifiersCopy = identifiers;
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(childrenCopy, "identifier")}];
  v13 = [identifiersCopy containsObject:v12];

  if ((v13 & 1) == 0)
  {
    v14 = [[_SFFolderPickerItem alloc] _initWithBookmark:childrenCopy depth:depth];
    bookmarksBarBookmark = [(WebBookmarkCollection *)self->_bookmarkCollection bookmarksBarBookmark];
    v16 = [bookmarksBarBookmark isEqualToBookmark:childrenCopy];

    if (v16)
    {
      v17 = @"star.fill";
    }

    else
    {
      rootBookmark = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
      v19 = [rootBookmark isEqualToBookmark:childrenCopy];

      if (v19)
      {
        v17 = @"book.fill";
      }

      else
      {
        readingListFolder = [(WebBookmarkCollection *)self->_bookmarkCollection readingListFolder];
        v21 = [readingListFolder isEqualToBookmark:childrenCopy];

        if (v21)
        {
          v17 = @"eyeglasses";
        }

        else
        {
          v17 = @"folder.fill";
        }
      }
    }

    v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:v17];
    [v14 setIcon:v22];

    [arrayCopy addObject:v14];
    [(SFFolderPickerList *)self _appendChildrenOfFolder:childrenCopy toArray:arrayCopy depth:depth + 1 ignoringIdentifiers:identifiersCopy];
  }
}

- (void)_appendPerTabGroupFavoritesIntoArray:(id)array
{
  v26 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  WeakRetained = objc_loadWeakRetained(&self->_syntheticBookmarkProvider);
  if ([WeakRetained hasNamedTabGroups])
  {
    activeTabGroup = [WeakRetained activeTabGroup];
    supportsTabGroupFavorites = [activeTabGroup supportsTabGroupFavorites];
    v20 = activeTabGroup;
    if (supportsTabGroupFavorites)
    {
      v8 = [WeakRetained syntheticBookmarkFolderForTabGroup:activeTabGroup withAttribution:1];
      v9 = [[_SFFolderPickerItem alloc] _initWithSyntheticFolder:v8 depth:0];
      [arrayCopy addObject:v9];
    }

    v10 = [SFSyntheticBookmarkFolder alloc];
    v11 = _WBSLocalizedString();
    v12 = [(SFSyntheticBookmarkFolder *)v10 initWithBookmarkList:0 title:v11];

    v13 = [[_SFFolderPickerItem alloc] _initWithSyntheticFolder:v12 depth:0];
    [arrayCopy addObject:v13];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [WeakRetained syntheticBookmarkFoldersIncludingActiveTabGroup:supportsTabGroupFavorites ^ 1u];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[_SFFolderPickerItem alloc] _initWithSyntheticFolder:*(*(&v21 + 1) + 8 * v18) depth:1];
          [arrayCopy addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }
}

- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_syntheticBookmarkProvider);

  return WeakRetained;
}

@end