@interface SFFolderPickerList
- (SFFolderPickerList)initWithBookmarkCollection:(id)a3 style:(unint64_t)a4;
- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider;
- (id)folderListItemsIgnoringIdentifiers:(id)a3;
- (void)_appendChildrenOfFolder:(id)a3 toArray:(id)a4 depth:(unint64_t)a5 ignoringIdentifiers:(id)a6;
- (void)_appendFolderAndChildren:(id)a3 toArray:(id)a4 depth:(unint64_t)a5 ignoringIdentifiers:(id)a6;
- (void)_appendPerTabGroupFavoritesIntoArray:(id)a3;
@end

@implementation SFFolderPickerList

- (SFFolderPickerList)initWithBookmarkCollection:(id)a3 style:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = SFFolderPickerList;
  v8 = [(SFFolderPickerList *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_style = a4;
    objc_storeStrong(&v8->_bookmarkCollection, a3);
    v10 = v9;
  }

  return v9;
}

- (id)folderListItemsIgnoringIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  style = self->_style;
  if (style == 1)
  {
    v9 = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
    [(SFFolderPickerList *)self _appendChildrenOfFolder:v9 toArray:v5 depth:0 ignoringIdentifiers:v4];
    goto LABEL_6;
  }

  if (!style)
  {
    v7 = [(WebBookmarkCollection *)self->_bookmarkCollection favoritesFolder];
    [(SFFolderPickerList *)self _appendFolderAndChildren:v7 toArray:v5 depth:0 ignoringIdentifiers:v4];

    [(SFFolderPickerList *)self _appendPerTabGroupFavoritesIntoArray:v5];
    v8 = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
    [(SFFolderPickerList *)self _appendFolderAndChildren:v8 toArray:v5 depth:0 ignoringIdentifiers:v4];

    if (self->_includesReadingList)
    {
      v9 = [(WebBookmarkCollection *)self->_bookmarkCollection readingListFolder];
      [(SFFolderPickerList *)self _appendFolderAndChildren:v9 toArray:v5 depth:0 ignoringIdentifiers:v4];
LABEL_6:
    }
  }

  return v5;
}

- (void)_appendChildrenOfFolder:(id)a3 toArray:(id)a4 depth:(unint64_t)a5 ignoringIdentifiers:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a4;
  v10 = a6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = -[WebBookmarkCollection subfoldersOfID:](self->_bookmarkCollection, "subfoldersOfID:", [a3 identifier]);
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
              [(SFFolderPickerList *)self _appendFolderAndChildren:v16 toArray:v19 depth:a5 ignoringIdentifiers:v10];
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

- (void)_appendFolderAndChildren:(id)a3 toArray:(id)a4 depth:(unint64_t)a5 ignoringIdentifiers:(id)a6
{
  v23 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "identifier")}];
  v13 = [v11 containsObject:v12];

  if ((v13 & 1) == 0)
  {
    v14 = [[_SFFolderPickerItem alloc] _initWithBookmark:v23 depth:a5];
    v15 = [(WebBookmarkCollection *)self->_bookmarkCollection bookmarksBarBookmark];
    v16 = [v15 isEqualToBookmark:v23];

    if (v16)
    {
      v17 = @"star.fill";
    }

    else
    {
      v18 = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
      v19 = [v18 isEqualToBookmark:v23];

      if (v19)
      {
        v17 = @"book.fill";
      }

      else
      {
        v20 = [(WebBookmarkCollection *)self->_bookmarkCollection readingListFolder];
        v21 = [v20 isEqualToBookmark:v23];

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

    [v10 addObject:v14];
    [(SFFolderPickerList *)self _appendChildrenOfFolder:v23 toArray:v10 depth:a5 + 1 ignoringIdentifiers:v11];
  }
}

- (void)_appendPerTabGroupFavoritesIntoArray:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_syntheticBookmarkProvider);
  if ([WeakRetained hasNamedTabGroups])
  {
    v6 = [WeakRetained activeTabGroup];
    v7 = [v6 supportsTabGroupFavorites];
    v20 = v6;
    if (v7)
    {
      v8 = [WeakRetained syntheticBookmarkFolderForTabGroup:v6 withAttribution:1];
      v9 = [[_SFFolderPickerItem alloc] _initWithSyntheticFolder:v8 depth:0];
      [v4 addObject:v9];
    }

    v10 = [SFSyntheticBookmarkFolder alloc];
    v11 = _WBSLocalizedString();
    v12 = [(SFSyntheticBookmarkFolder *)v10 initWithBookmarkList:0 title:v11];

    v13 = [[_SFFolderPickerItem alloc] _initWithSyntheticFolder:v12 depth:0];
    [v4 addObject:v13];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [WeakRetained syntheticBookmarkFoldersIncludingActiveTabGroup:v7 ^ 1u];
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
          [v4 addObject:v19];

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