@interface CNComposeRecipientGroup
- (BOOL)isEqual:(id)a3;
- (BOOL)showsChevronButton;
- (BOOL)wasCompleteMatch;
- (CNComposeRecipientGroup)initWithChildren:(id)a3 displayString:(id)a4;
- (id)address;
- (id)childrenWithCompleteMatches;
- (id)completelyMatchedAttributedStrings;
- (id)label;
- (id)placeholderName;
- (id)sortedChildren;
- (void)_populateSortedChildren;
- (void)addRecipientToPasteboard:(id)a3;
@end

@implementation CNComposeRecipientGroup

- (CNComposeRecipientGroup)initWithChildren:(id)a3 displayString:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CNComposeRecipientGroup;
  v8 = [(CNComposeRecipient *)&v12 initWithContact:0 address:0 displayString:a4 kind:5];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_children, a3);
    v10 = v9;
  }

  return v9;
}

- (id)label
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"GROUP_RECIPIENT" value:&stru_1F3002C60 table:@"Localized"];

  return v3;
}

- (id)placeholderName
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"GROUP_RECIPIENT_PLACEHOLDER" value:&stru_1F3002C60 table:@"Localized"];

  return v3;
}

- (void)_populateSortedChildren
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(CNComposeRecipient *)self cachedSortedMembers];

  if (!v3)
  {
    v4 = [(CNComposeRecipient *)self originContext];
    v5 = [v4 searchTerm];

    v6 = [(CNComposeRecipientGroup *)self children];
    v36 = 0;
    v37 = 0;
    v7 = _sortedArrayByRelevancy(v5, v6, &v37, &v36);
    v8 = v37;
    v9 = v36;

    [(CNComposeRecipient *)self setCachedSortedMembers:v7];
    [(CNComposeRecipient *)self setCachedMatchedStrings:v9];
    [(CNComposeRecipient *)self setCachedCompleteMatches:v8];
    v10 = [(CNComposeRecipient *)self compositeName];
    v11 = [v10 length];

    if (v11)
    {
      v25 = v9;
      v26 = v8;
      v27 = v7;
      v12 = [MEMORY[0x1E695DF70] array];
      v13 = MEMORY[0x1E6964DF0];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __50__CNComposeRecipientGroup__populateSortedChildren__block_invoke;
      v34[3] = &unk_1E7CD2578;
      v14 = v12;
      v35 = v14;
      [v13 enumerateTokensForString:v5 locale:0 options:0 withHandler:v34];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          v19 = 0;
          do
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v30 + 1) + 8 * v19);
            v29 = 0;
            v21 = [(CNComposeRecipient *)self cachedMatchedStrings];
            v22 = [(CNComposeRecipient *)self compositeName];
            v28 = 0;
            v23 = _getDisplayNameMatches(v22, v20, &v28, &v29);
            v24 = [v21 arrayByAddingObjectsFromArray:v23];
            [(CNComposeRecipient *)self setCachedMatchedStrings:v24];

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v17);
      }

      v8 = v26;
      v7 = v27;
      v9 = v25;
    }
  }
}

- (id)sortedChildren
{
  v3 = [(CNComposeRecipient *)self cachedSortedMembers];

  if (!v3)
  {
    [(CNComposeRecipientGroup *)self _populateSortedChildren];
  }

  return [(CNComposeRecipient *)self cachedSortedMembers];
}

- (BOOL)showsChevronButton
{
  v2 = [(CNComposeRecipientGroup *)self children];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)address
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CNComposeRecipientGroup *)self children];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CNComposeRecipientGroup *)self children];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) address];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = CNAUILocalizedAddressSeparator();
  v13 = [v5 componentsJoinedByString:v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CNComposeRecipientGroup *)self address];
    v7 = [v5 address];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 children];
      v9 = [(CNComposeRecipientGroup *)self children];
      v10 = [v8 isEqualToArray:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)wasCompleteMatch
{
  v3 = [(CNComposeRecipient *)self cachedCompleteMatches];

  if (v3)
  {
    v4 = [(CNComposeRecipient *)self cachedCompleteMatches];
    v5 = [v4 count];
  }

  else
  {
    v4 = [(CNComposeRecipient *)self originContext];
    v6 = [v4 searchTerm];
    v7 = [(CNComposeRecipientGroup *)self children];
    v9 = 0;
    v5 = _fastCountOfCompleteMatches(v6, v7, &v9);
  }

  return v5 != 0;
}

- (id)completelyMatchedAttributedStrings
{
  v3 = [(CNComposeRecipient *)self cachedMatchedStrings];

  if (!v3)
  {
    [(CNComposeRecipientGroup *)self _populateSortedChildren];
  }

  return [(CNComposeRecipient *)self cachedMatchedStrings];
}

- (id)childrenWithCompleteMatches
{
  v3 = [(CNComposeRecipient *)self cachedCompleteMatches];

  if (!v3)
  {
    [(CNComposeRecipientGroup *)self _populateSortedChildren];
  }

  return [(CNComposeRecipient *)self cachedCompleteMatches];
}

- (void)addRecipientToPasteboard:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CNComposeRecipientGroup *)self children];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) addRecipientToPasteboard:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end