@interface SFManagedBookmarkFolder
+ (id)managedBookmarkFolderWithTitle:(id)title children:(id)children;
+ (id)topLevelManagedBookmarkFolderWithTitle:(id)title bookmarkDictionary:(id)dictionary;
- (BOOL)containsLeafBookmark;
- (NSArray)directChildrenAsWebBookmarks;
- (SFManagedBookmarkFolder)initWithTitle:(id)title children:(id)children;
- (id)allDescendantsAsWebBookmarks;
- (id)bookmarksMatchingQueryString:(id)string;
- (id)findChildBookmarkWithUUID:(id)d;
@end

@implementation SFManagedBookmarkFolder

+ (id)managedBookmarkFolderWithTitle:(id)title children:(id)children
{
  v32 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  childrenCopy = children;
  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = childrenCopy;
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
        v14 = [v13 objectForKey:{v10, titleCopy}];

        if (v14)
        {
          v15 = [v13 safari_stringForKey:v11];
          v16 = [v13 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:v10];
          v17 = [self managedBookmarkFolderWithTitle:v15 children:v16];
          [array addObject:v17];
        }

        else
        {
          v18 = [SFManagedBookmark alloc];
          v19 = [v13 safari_stringForKey:v11];
          v20 = [v13 safari_stringForKey:v24];
          v15 = [(SFManagedBookmark *)v18 initWithTitle:v19 urlString:v20];

          [array addObject:v15];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v21 = [[SFManagedBookmarkFolder alloc] initWithTitle:titleCopy children:array];

  return v21;
}

+ (id)topLevelManagedBookmarkFolderWithTitle:(id)title bookmarkDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    if ([dictionaryCopy count] == 1)
    {
      allValues = [dictionaryCopy allValues];
      firstObject = [allValues firstObject];
      v10 = [self managedBookmarkFolderWithTitle:titleCopy children:firstObject];
    }

    else
    {
      v20 = titleCopy;
      allValues = [MEMORY[0x1E695DF70] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = dictionaryCopy;
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
            v18 = [self managedBookmarkFolderWithTitle:v16 children:v17];

            [allValues addObject:v18];
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      titleCopy = v20;
      v10 = [[SFManagedBookmarkFolder alloc] initWithTitle:v20 children:allValues];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (SFManagedBookmarkFolder)initWithTitle:(id)title children:(id)children
{
  titleCopy = title;
  childrenCopy = children;
  v14.receiver = self;
  v14.super_class = SFManagedBookmarkFolder;
  v8 = [(SFManagedBookmark *)&v14 initWithTitle:titleCopy urlString:0];
  if (v8)
  {
    v9 = [titleCopy copy];
    [(SFManagedBookmark *)v8 setTitle:v9];

    v10 = [childrenCopy copy];
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

- (id)findChildBookmarkWithUUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  uuid = [(SFManagedBookmark *)self uuid];
  if ([dCopy isEqual:uuid])
  {
    selfCopy = self;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    children = [(SFManagedBookmarkFolder *)self children];
    v8 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(children);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          uuid2 = [v12 uuid];
          v14 = [dCopy isEqual:uuid2];

          if (v14)
          {
            v15 = v12;
LABEL_15:
            selfCopy = v15;

            goto LABEL_16;
          }

          if ([v12 isFolder])
          {
            v15 = [v12 findChildBookmarkWithUUID:dCopy];
            if (v15)
            {
              goto LABEL_15;
            }
          }
        }

        v9 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_16:

  return selfCopy;
}

- (id)bookmarksMatchingQueryString:(id)string
{
  v27 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy length])
  {
    [MEMORY[0x1E69C90B8] initializeURLCompletionOnMainThread];
    v5 = [objc_alloc(MEMORY[0x1E69C90C8]) initWithString:stringCopy];
    array = [MEMORY[0x1E695DF70] array];
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
            v12 = [v11 bookmarksMatchingQueryString:stringCopy];
            [array addObjectsFromArray:v12];
          }

          else
          {
            v13 = MEMORY[0x1E69C90C0];
            title = [v11 title];
            v15 = [v13 matchLocationForString:v5 inTitle:title];

            if (v15 > 2 || (v16 = MEMORY[0x1E69C90C0], [v11 urlString], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "matchLocationForString:inURLString:", v5, v17), v17, v18 >= 2))
            {
              [array addObject:v11];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    v19 = [array copy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)containsLeafBookmark
{
  children = [(SFManagedBookmarkFolder *)self children];
  v3 = [children safari_containsObjectPassingTest:&__block_literal_global_10_1];

  return v3;
}

- (id)allDescendantsAsWebBookmarks
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(SFManagedBookmarkFolder *)self children];
  v5 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(children);
        }

        allDescendantsAsWebBookmarks = [*(*(&v12 + 1) + 8 * i) allDescendantsAsWebBookmarks];
        [array addObjectsFromArray:allDescendantsAsWebBookmarks];
      }

      v6 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [array copy];

  return v10;
}

@end