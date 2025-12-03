@interface HKEmergencyCardSelectionTableItem
- (HKEmergencyCardSelectionTableItemDelegate)selectionDelegate;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
- (id)title;
- (void)tableView:(id)view didSelectRowAtIndex:(int64_t)index;
@end

@implementation HKEmergencyCardSelectionTableItem

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"edit_medical_id_row" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  if (!self->_cell)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    cell = self->_cell;
    self->_cell = v5;
  }

  v7 = [(HKEmergencyCardSelectionTableItem *)self title:view];
  textLabel = [(UITableViewCell *)self->_cell textLabel];
  [textLabel setText:v7];

  v9 = HKHealthKeyColor();
  textLabel2 = [(UITableViewCell *)self->_cell textLabel];
  [textLabel2 setTextColor:v9];

  v11 = objc_alloc_init(_HKCustomInsetCellLayoutManager);
  [(UITableViewCell *)self->_cell setLayoutManager:v11];
  v12 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  textLabel3 = [(UITableViewCell *)self->_cell textLabel];
  [textLabel3 setFont:v12];

  v14 = self->_cell;
  v15 = v14;

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndex:(int64_t)index
{
  viewCopy = view;
  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
  [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);
  [WeakRetained selectionTableItemDidTap:self];
}

- (HKEmergencyCardSelectionTableItemDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end