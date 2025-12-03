@interface HKElectrocardiogramMoreHealthDataProvider
- (HKElectrocardiogramMoreHealthDataProvider)init;
- (UIEdgeInsets)_offscreenInsets;
- (id)_defaultCellWithBackgroundColor:(id)color;
- (id)_itemViewForRow:(int64_t)row;
- (id)_sentinelCell;
- (id)cellForRow:(int64_t)row tableView:(id)view;
- (id)unitTesting_itemsForIdentifiers:(id)identifiers;
- (int64_t)count;
- (void)_configureLayoutForView:(id)view inCell:(id)cell;
- (void)addItem:(id)item;
- (void)removeItemWithIdentifier:(id)identifier;
@end

@implementation HKElectrocardiogramMoreHealthDataProvider

- (HKElectrocardiogramMoreHealthDataProvider)init
{
  v6.receiver = self;
  v6.super_class = HKElectrocardiogramMoreHealthDataProvider;
  v2 = [(HKElectrocardiogramMoreHealthDataProvider *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    dataSource = v2->_dataSource;
    v2->_dataSource = array;
  }

  return v2;
}

- (int64_t)count
{
  dataSource = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v3 = [dataSource count];

  return v3;
}

- (void)addItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    identifier = [itemCopy identifier];
    [(HKElectrocardiogramMoreHealthDataProvider *)self removeItemWithIdentifier:identifier];

    dataSource = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
    [dataSource addObject:itemCopy];
  }
}

- (void)removeItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v7 = [dataSource hk_itemForIdentifier:identifierCopy];

  if (v7)
  {
    dataSource2 = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
    [dataSource2 removeObject:v7];
  }
}

- (id)cellForRow:(int64_t)row tableView:(id)view
{
  viewCopy = view;
  dataSource = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v8 = [dataSource count];

  if (v8 <= row)
  {
    _sentinelCell = [(HKElectrocardiogramMoreHealthDataProvider *)self _sentinelCell];
  }

  else
  {
    _sentinelCell = [viewCopy dequeueReusableCellWithIdentifier:@"MoreHealthReuseIdentifier"];
    if (!_sentinelCell)
    {
      backgroundColor = [viewCopy backgroundColor];
      _sentinelCell = [(HKElectrocardiogramMoreHealthDataProvider *)self _defaultCellWithBackgroundColor:backgroundColor];

      v11 = [(HKElectrocardiogramMoreHealthDataProvider *)self _itemViewForRow:row];
      contentView = [_sentinelCell contentView];
      [contentView addSubview:v11];

      [(HKElectrocardiogramMoreHealthDataProvider *)self _configureLayoutForView:v11 inCell:_sentinelCell];
    }
  }

  return _sentinelCell;
}

- (id)_itemViewForRow:(int64_t)row
{
  dataSource = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v5 = [dataSource objectAtIndexedSubscript:row];
  view = [v5 view];

  layer = [view layer];
  [layer setCornerRadius:10.0];

  layer2 = [view layer];
  [layer2 setMasksToBounds:1];

  return view;
}

- (id)_defaultCellWithBackgroundColor:(id)color
{
  v4 = MEMORY[0x1E69DD028];
  colorCopy = color;
  v6 = [[v4 alloc] initWithStyle:0 reuseIdentifier:@"MoreHealthReuseIdentifier"];
  [v6 setBackgroundColor:colorCopy];
  contentView = [v6 contentView];
  [contentView setBackgroundColor:colorCopy];

  [(HKElectrocardiogramMoreHealthDataProvider *)self _offscreenInsets];
  [v6 setSeparatorInset:?];

  return v6;
}

- (void)_configureLayoutForView:(id)view inCell:(id)cell
{
  cellCopy = cell;
  viewCopy = view;
  contentView = [cellCopy contentView];
  v9 = 0.0;
  [viewCopy hk_alignHorizontalConstraintsWithView:contentView margin:0.0];

  dataSource = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  firstObject = [dataSource firstObject];
  view = [firstObject view];
  if (view != viewCopy)
  {
    v9 = 10.0;
  }

  contentView2 = [cellCopy contentView];

  [viewCopy hk_alignVerticalConstraintsWithView:contentView2 insets:{v9, 0.0, 0.0, 0.0}];
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

- (id)unitTesting_itemsForIdentifiers:(id)identifiers
{
  v32 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = MEMORY[0x1E695DF70];
  dataSource = [(HKElectrocardiogramMoreHealthDataProvider *)self dataSource];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(dataSource, "count")}];

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
        v11 = identifiersCopy;
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
              identifier = [v10 identifier];
              LODWORD(v16) = [identifier isEqualToString:v16];

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