@interface SUUITabularLockupLayout
+ (id)fontForLabelViewElement:(id)a3 context:(id)a4;
- (SUUITabularLockupLayout)initWithLockup:(id)a3 context:(id)a4;
- (void)sizeColumnsToFitWidth:(double)a3 context:(id)a4;
@end

@implementation SUUITabularLockupLayout

- (SUUITabularLockupLayout)initWithLockup:(id)a3 context:(id)a4
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SUUITabularLockupLayout;
  v6 = [(SUUITabularLockupLayout *)&v15 init];
  if (v6)
  {
    v7 = [[SUUITabularLockupColumn alloc] initWithColumnIdentifier:0];
    v8 = [[SUUITabularLockupColumn alloc] initWithColumnIdentifier:1];
    v9 = [[SUUITabularLockupColumn alloc] initWithColumnIdentifier:2];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:{v7, v8, v9, 0}];
    columns = v6->_columns;
    v6->_columns = v10;

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__SUUITabularLockupLayout_initWithLockup_context___block_invoke;
    v13[3] = &unk_2798F5B20;
    v14 = v6;
    [v5 enumerateChildrenUsingBlock:v13];
  }

  return v6;
}

void __50__SUUITabularLockupLayout_initWithLockup_context___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 style];
  v4 = SUUIViewElementAlignmentForStyle(v3);
  if ([v7 elementType] == 138)
  {
    if (v4 == 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 2;
    }

    v6 = [*(*(a1 + 32) + 8) objectAtIndex:v5];
    [v6 _addChildViewElement:v7];
  }
}

+ (id)fontForLabelViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SUUIViewElementFontWithStyle(v7);

  if (!v8)
  {
    v9 = [v5 labelViewStyle];
    if (v9 > 5)
    {
      v8 = 0;
    }

    else
    {
      if (((1 << v9) & 0x1B) != 0)
      {
        if ([v6 containerViewElementType] == 118)
        {
          v10 = 8;
        }

        else
        {
          v10 = 7;
        }
      }

      else if ([v6 containerViewElementType] == 118)
      {
        v10 = 6;
      }

      else
      {
        v10 = 19;
      }

      v8 = SUUIFontLimitedPreferredFontForTextStyle(v10, 5);
    }
  }

  return v8;
}

- (void)sizeColumnsToFitWidth:(double)a3 context:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_columns;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 childViewElements];
        v14 = [v13 firstObject];

        [v6 sizeForViewElement:v14 width:a3];
        [v12 setSize:?];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

@end