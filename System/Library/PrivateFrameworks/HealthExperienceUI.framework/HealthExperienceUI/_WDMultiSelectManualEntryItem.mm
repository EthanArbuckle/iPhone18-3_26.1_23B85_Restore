@interface _WDMultiSelectManualEntryItem
- (id)generateValue;
- (id)tableViewCells;
- (void)cellForItemTapped:(id)tapped;
@end

@implementation _WDMultiSelectManualEntryItem

- (id)tableViewCells
{
  v30 = *MEMORY[0x1E69E9840];
  tableViewCells = self->_tableViewCells;
  if (!tableViewCells)
  {
    v22 = 40;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = self->_titles;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      v8 = *MEMORY[0x1E69DDCF8];
      do
      {
        v9 = 0;
        do
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * v9);
          _createUITableViewCell = [(WDAddDataManualEntryItem *)self _createUITableViewCell];
          textLabel = [_createUITableViewCell textLabel];
          [textLabel setText:v10];

          textLabel2 = [_createUITableViewCell textLabel];
          v14 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v8];
          [textLabel2 setFont:v14];

          v15 = [v10 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
          v28[0] = @"AddData.ValueCell";
          v28[1] = v15;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
          v17 = HKUIJoinStringsForAutomationIdentifier();
          [_createUITableViewCell setAccessibilityIdentifier:v17];

          [v4 addObject:_createUITableViewCell];
          ++v9;
        }

        while (v6 != v9);
        v6 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v6);
    }

    v18 = *(&self->super.super.isa + v22);
    *(&self->super.super.isa + v22) = v4;
    v19 = v4;

    v20 = [*(&self->super.super.isa + v22) objectAtIndexedSubscript:self->_selectedIndex];

    [v20 setAccessoryType:3];
    tableViewCells = *(&self->super.super.isa + v22);
  }

  return tableViewCells;
}

- (void)cellForItemTapped:(id)tapped
{
  v17 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_tableViewCells;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 == tappedCopy)
        {
          v11 = 3;
        }

        else
        {
          v11 = 0;
        }

        [v10 setAccessoryType:{v11, v12}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(WDAddDataManualEntryItem *)self _didUpdateValue];
}

- (id)generateValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  tableViewCells = self->_tableViewCells;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46___WDMultiSelectManualEntryItem_generateValue__block_invoke;
  v5[3] = &unk_1E7EEB228;
  v5[4] = &v6;
  [(NSArray *)tableViewCells enumerateObjectsUsingBlock:v5];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:v7[3]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end