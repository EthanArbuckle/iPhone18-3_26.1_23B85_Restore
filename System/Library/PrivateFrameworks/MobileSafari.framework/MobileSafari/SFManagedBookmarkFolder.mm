@interface SFManagedBookmarkFolder
+ (id)managedBookmarkFolderWithTitle:(id)a3 children:(id)a4;
+ (id)topLevelManagedBookmarkFolderWithTitle:(id)a3 bookmarkDictionary:(id)a4;
- (BOOL)containsLeafBookmark;
- (NSArray)directChildrenAsWebBookmarks;
- (SFManagedBookmarkFolder)initWithTitle:(id)a3 children:(id)a4;
- (id)allDescendantsAsWebBookmarks;
- (id)bookmarksMatchingQueryString:(id)a3;
- (id)findChildBookmarkWithUUID:(id)a3;
@end

@implementation SFManagedBookmarkFolder

+ (id)managedBookmarkFolderWithTitle:(id)a3 children:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = *MEMORY[0x1E69C8C20];
    v11 = *MEMORY[0x1E69C8C28];
    v24 = *MEMORY[0x1E69C8C30];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v13 objectForKey:{v10, v23}];

        if (v14)
        {
          v15 = [v13 safari_stringForKey:v11];
          v16 = [v13 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:v10];
          v17 = [a1 managedBookmarkFolderWithTitle:v15 children:v16];
          [v6 addObject:v17];
        }

        else
        {
          v18 = [SFManagedBookmark alloc];
          v19 = [v13 safari_stringForKey:v11];
          v20 = [v13 safari_stringForKey:v24];
          v15 = [(SFManagedBookmark *)v18 initWithTitle:v19 urlString:v20];

          [v6 addObject:v15];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v21 = [[SFManagedBookmarkFolder alloc] initWithTitle:v23 children:v6];

  return v21;
}

+ (id)topLevelManagedBookmarkFolderWithTitle:(id)a3 bookmarkDictionary:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    if ([v7 count] == 1)
    {
      v8 = [v7 allValues];
      v9 = [v8 firstObject];
      v10 = [a1 managedBookmarkFolderWithTitle:v6 children:v9];
    }

    else
    {
      v20 = v6;
      v8 = [MEMORY[0x1E695DF70] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            v17 = [v11 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:v16];
            v18 = [a1 managedBookmarkFolderWithTitle:v16 children:v17];

            [v8 addObject:v18];
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      v6 = v20;
      v10 = [[SFManagedBookmarkFolder alloc] initWithTitle:v20 children:v8];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (SFManagedBookmarkFolder)initWithTitle:(id)a3 children:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SFManagedBookmarkFolder;
  v8 = [(SFManagedBookmark *)&v14 initWithTitle:v6 urlString:0];
  if (v8)
  {
    v9 = [v6 copy];
    [(SFManagedBookmark *)v8 setTitle:v9];

    v10 = [v7 copy];
    children = v8->_children;
    v8->_children = v10;

    v12 = v8;
  }

  return v8;
}

- (NSArray)directChildrenAsWebBookmarks
{
  if ([(NSArray *)self->_children count])
  {
    v3 = [(NSArray *)self->_children safari_mapObjectsUsingBlock:&__block_literal_global_39];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

id __55__SFManagedBookmarkFolder_directChildrenAsWebBookmarks__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isFolder];
  v4 = objc_alloc(MEMORY[0x1E69E20F0]);
  v5 = [v2 title];
  if (v3)
  {
    v6 = [v2 uuid];

    v7 = [v4 initManagedBookmarkFolderWithTitle:v5 uuid:v6];
  }

  else
  {
    v6 = [v2 urlString];
    v8 = [v2 uuid];

    v7 = [v4 initManagedBookmarkWithTitle:v5 address:v6 uuid:v8];
  }

  return v7;
}

- (id)findChildBookmarkWithUUID:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFManagedBookmark *)self uuid];
  if ([v4 isEqual:v5])
  {
    v6 = self;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(SFManagedBookmarkFolder *)self children];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 uuid];
          v14 = [v4 isEqual:v13];

          if (v14)
          {
            v15 = v12;
LABEL_15:
            v6 = v15;

            goto LABEL_16;
          }

          if ([v12 isFolder])
          {
            v15 = [v12 findChildBookmarkWithUUID:v4];
            if (v15)
            {
              goto LABEL_15;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
  }

LABEL_16:

  return v6;
}

- (id)bookmarksMatchingQueryString:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    [MEMORY[0x1E69C90B8] initializeURLCompletionOnMainThread];
    v5 = [objc_alloc(MEMORY[0x1E69C90C8]) initWithString:v4];
    v6 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(SFManagedBookmarkFolder *)self children];
    v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if ([v11 isFolder])
          {
            v12 = [v11 bookmarksMatchingQueryString:v4];
            [v6 addObjectsFromArray:v12];
          }

          else
          {
            v13 = MEMORY[0x1E69C90C0];
            v14 = [v11 title];
            v15 = [v13 matchLocationForString:v5 inTitle:v14];

            if (v15 > 2 || (v16 = MEMORY[0x1E69C90C0], [v11 urlString], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "matchLocationForString:inURLString:", v5, v17), v17, v18 >= 2))
            {
              [v6 addObject:v11];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    v19 = [v6 copy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)containsLeafBookmark
{
  v2 = [(SFManagedBookmarkFolder *)self children];
  v3 = [v2 safari_containsObjectPassingTest:&__block_literal_global_10_1];

  return v3;
}

- (id)allDescendantsAsWebBookmarks
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SFManagedBookmarkFolder *)self children];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) allDescendantsAsWebBookmarks];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

@end