@interface HKElectrocardiogramMoreHealthDataProvider
- (HKElectrocardiogramMoreHealthDataProvider)init;
- (UIEdgeInsets)_offscreenInsets;
- (id)_defaultCellWithBackgroundColor:(id)a3;
- (id)_itemViewForRow:(int64_t)a3;
- (id)_sentinelCell;
- (id)cellForRow:(int64_t)a3 tableView:(id)a4;
- (id)unitTesting_itemsForIdentifiers:(id)a3;
- (int64_t)count;
- (void)_configureLayoutForView:(id)a3 inCell:(id)a4;
- (void)addItem:(id)a3;
- (void)removeItemWithIdentifier:(id)a3;
@end

@implementation HKElectrocardiogramMoreHealthDataProvider

- (HKElectrocardiogramMoreHealthDataProvider)init
{
  v6.receiver = self;
  v6.super_class = HKElectrocardiogramMoreHealthDataProvider;
  v2 = [(HKElectrocardiogramMoreHealthDataProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    dataSource = v2->_dataSource;
    v2->_dataSource = v3;
  }

  return v2;
}

- (int64_t)count
{
  v2 = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v3 = [v2 count];

  return v3;
}

- (void)addItem:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 identifier];
    [(HKElectrocardiogramMoreHealthDataProvider *)self removeItemWithIdentifier:v5];

    v6 = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
    [v6 addObject:v4];
  }
}

- (void)removeItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v7 = [v5 hk_itemForIdentifier:v4];

  if (v7)
  {
    v6 = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
    [v6 removeObject:v7];
  }
}

- (id)cellForRow:(int64_t)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v9 = [(HKElectrocardiogramMoreHealthDataProvider *)self _sentinelCell];
  }

  else
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"MoreHealthReuseIdentifier"];
    if (!v9)
    {
      v10 = [v6 backgroundColor];
      v9 = [(HKElectrocardiogramMoreHealthDataProvider *)self _defaultCellWithBackgroundColor:v10];

      v11 = [(HKElectrocardiogramMoreHealthDataProvider *)self _itemViewForRow:a3];
      v12 = [v9 contentView];
      [v12 addSubview:v11];

      [(HKElectrocardiogramMoreHealthDataProvider *)self _configureLayoutForView:v11 inCell:v9];
    }
  }

  return v9;
}

- (id)_itemViewForRow:(int64_t)a3
{
  v4 = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 view];

  v7 = [v6 layer];
  [v7 setCornerRadius:10.0];

  v8 = [v6 layer];
  [v8 setMasksToBounds:1];

  return v6;
}

- (id)_defaultCellWithBackgroundColor:(id)a3
{
  v4 = MEMORY[0x1E69DD028];
  v5 = a3;
  v6 = [[v4 alloc] initWithStyle:0 reuseIdentifier:@"MoreHealthReuseIdentifier"];
  [v6 setBackgroundColor:v5];
  v7 = [v6 contentView];
  [v7 setBackgroundColor:v5];

  [(HKElectrocardiogramMoreHealthDataProvider *)self _offscreenInsets];
  [v6 setSeparatorInset:?];

  return v6;
}

- (void)_configureLayoutForView:(id)a3 inCell:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 contentView];
  v9 = 0.0;
  [v7 hk_alignHorizontalConstraintsWithView:v8 margin:0.0];

  v10 = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v11 = [v10 firstObject];
  v12 = [v11 view];
  if (v12 != v7)
  {
    v9 = 10.0;
  }

  v13 = [v6 contentView];

  [v7 hk_alignVerticalConstraintsWithView:v13 insets:{v9, 0.0, 0.0, 0.0}];
}

- (UIEdgeInsets)_offscreenInsets
{
  v2 = 1.79769313e308;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

- (id)_sentinelCell
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD028]);

  return v2;
}

- (id)unitTesting_itemsForIdentifiers:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v4 = MEMORY[0x1E695DF70];
  v5 = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = v21;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              v17 = [v10 identifier];
              LODWORD(v16) = [v17 isEqualToString:v16];

              if (v16)
              {
                [v6 addObject:v10];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v13);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  return v6;
}

@end