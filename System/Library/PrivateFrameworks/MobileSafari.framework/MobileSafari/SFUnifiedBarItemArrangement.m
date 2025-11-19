@interface SFUnifiedBarItemArrangement
- (BOOL)allowsCenteringInlineContentView;
- (BOOL)isEqual:(id)a3;
- (SFUnifiedBarItemArrangement)initWithLeadingItems:(id)a3 trailingItems:(id)a4;
- (void)enumerateAllItemsUsingBlock:(id)a3;
@end

@implementation SFUnifiedBarItemArrangement

- (SFUnifiedBarItemArrangement)initWithLeadingItems:(id)a3 trailingItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SFUnifiedBarItemArrangement;
  v8 = [(SFUnifiedBarItemArrangement *)&v19 init];
  if (v8)
  {
    v9 = [v6 copy];
    leadingItems = v8->_leadingItems;
    v8->_leadingItems = v9;

    v11 = [v7 copy];
    trailingItems = v8->_trailingItems;
    v8->_trailingItems = v11;

    v13 = groupIdentifiersForItems(v6);
    v14 = groupIdentifiersForItems(v7);
    v15 = [v13 setByAddingObjectsFromSet:v14];
    groupIdentifiers = v8->_groupIdentifiers;
    v8->_groupIdentifiers = v15;

    v17 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSArray *)self->_leadingItems isEqualToArray:v5->_leadingItems])
      {
        v6 = [(NSArray *)self->_trailingItems isEqualToArray:v5->_trailingItems];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)enumerateAllItemsUsingBlock:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_leadingItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v19 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_trailingItems;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v4[2](v4, *(*(&v15 + 1) + 8 * v14++));
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (BOOL)allowsCenteringInlineContentView
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SFUnifiedBarItemArrangement_allowsCenteringInlineContentView__block_invoke;
  v4[3] = &unk_1E721EF48;
  v4[4] = &v5;
  [(SFUnifiedBarItemArrangement *)self enumerateAllItemsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __63__SFUnifiedBarItemArrangement_allowsCenteringInlineContentView__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 spacingOptions];
  if ((result & 8) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

@end