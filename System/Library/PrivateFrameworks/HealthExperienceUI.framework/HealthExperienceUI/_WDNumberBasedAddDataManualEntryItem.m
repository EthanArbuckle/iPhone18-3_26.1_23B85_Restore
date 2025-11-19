@interface _WDNumberBasedAddDataManualEntryItem
- (id)generateValue;
- (id)tableViewCells;
- (void)setTitle:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation _WDNumberBasedAddDataManualEntryItem

- (id)tableViewCells
{
  v12[1] = *MEMORY[0x1E69E9840];
  tableViewCell = self->_tableViewCell;
  if (!tableViewCell)
  {
    v4 = [(WDAddDataManualEntryItem *)self title];
    v5 = [(WDAddDataManualEntryItem *)self secondaryLabel];
    v6 = [(WDAddDataManualEntryItem *)self _createWDManualDataEntryTableViewCellWithDisplayName:v4 unitName:v5 entryType:self->_manualEntryType highlightWhenEditing:0];
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
  v3 = [(WDManualDataEntryTableViewCell *)self->_tableViewCell value];
  v4 = [(NSNumberFormatter *)numberFormatter numberFromString:v3];

  return v4;
}

- (void)setValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSNumberFormatter *)self->_numberFormatter stringFromNumber:v5];
    [(WDManualDataEntryTableViewCell *)self->_tableViewCell setValue:v4];
  }

  [(WDAddDataManualEntryItem *)self _didUpdateValue];
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = _WDNumberBasedAddDataManualEntryItem;
  v4 = a3;
  [(WDAddDataManualEntryItem *)&v5 setTitle:v4];
  [(WDManualDataEntryTableViewCell *)self->_tableViewCell setDisplayName:v4, v5.receiver, v5.super_class];
}

@end