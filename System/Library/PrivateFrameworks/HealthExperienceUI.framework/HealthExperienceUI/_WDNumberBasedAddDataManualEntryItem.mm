@interface _WDNumberBasedAddDataManualEntryItem
- (id)generateValue;
- (id)tableViewCells;
- (void)setTitle:(id)title;
- (void)setValue:(id)value;
@end

@implementation _WDNumberBasedAddDataManualEntryItem

- (id)tableViewCells
{
  v12[1] = *MEMORY[0x1E69E9840];
  tableViewCell = self->_tableViewCell;
  if (!tableViewCell)
  {
    title = [(WDAddDataManualEntryItem *)self title];
    secondaryLabel = [(WDAddDataManualEntryItem *)self secondaryLabel];
    v6 = [(WDAddDataManualEntryItem *)self _createWDManualDataEntryTableViewCellWithDisplayName:title unitName:secondaryLabel entryType:self->_manualEntryType highlightWhenEditing:0];
    v7 = self->_tableViewCell;
    self->_tableViewCell = v6;

    v8 = self->_tableViewCell;
    v9 = HKUIJoinStringsForAutomationIdentifier();
    [(WDManualDataEntryTableViewCell *)v8 setAccessibilityIdentifier:v9];

    [(WDManualDataEntryTableViewCell *)self->_tableViewCell setDelegate:self];
    tableViewCell = self->_tableViewCell;
  }

  v12[0] = tableViewCell;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v10;
}

- (id)generateValue
{
  numberFormatter = self->_numberFormatter;
  value = [(WDManualDataEntryTableViewCell *)self->_tableViewCell value];
  v4 = [(NSNumberFormatter *)numberFormatter numberFromString:value];

  return v4;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSNumberFormatter *)self->_numberFormatter stringFromNumber:valueCopy];
    [(WDManualDataEntryTableViewCell *)self->_tableViewCell setValue:v4];
  }

  [(WDAddDataManualEntryItem *)self _didUpdateValue];
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = _WDNumberBasedAddDataManualEntryItem;
  titleCopy = title;
  [(WDAddDataManualEntryItem *)&v5 setTitle:titleCopy];
  [(WDManualDataEntryTableViewCell *)self->_tableViewCell setDisplayName:titleCopy, v5.receiver, v5.super_class];
}

@end