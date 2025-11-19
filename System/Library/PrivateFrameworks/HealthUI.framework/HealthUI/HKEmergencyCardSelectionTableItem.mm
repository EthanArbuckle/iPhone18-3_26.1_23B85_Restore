@interface HKEmergencyCardSelectionTableItem
- (HKEmergencyCardSelectionTableItemDelegate)selectionDelegate;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (id)title;
- (void)tableView:(id)a3 didSelectRowAtIndex:(int64_t)a4;
@end

@implementation HKEmergencyCardSelectionTableItem

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"edit_medical_id_row" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  if (!self->_cell)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    cell = self->_cell;
    self->_cell = v5;
  }

  v7 = [(HKEmergencyCardSelectionTableItem *)self title:a3];
  v8 = [(UITableViewCell *)self->_cell textLabel];
  [v8 setText:v7];

  v9 = HKHealthKeyColor();
  v10 = [(UITableViewCell *)self->_cell textLabel];
  [v10 setTextColor:v9];

  v11 = objc_alloc_init(_HKCustomInsetCellLayoutManager);
  [(UITableViewCell *)self->_cell setLayoutManager:v11];
  v12 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v13 = [(UITableViewCell *)self->_cell textLabel];
  [v13 setFont:v12];

  v14 = self->_cell;
  v15 = v14;

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndex:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 indexPathForSelectedRow];
  [v5 deselectRowAtIndexPath:v6 animated:1];

  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);
  [WeakRetained selectionTableItemDidTap:self];
}

- (HKEmergencyCardSelectionTableItemDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end