@interface HKEmergencyCardDeletionTableItem
- (HKEmergencyCardDeletionDelegate)deletionDelegate;
- (UIEdgeInsets)separatorInset;
- (id)initInEditMode:(BOOL)mode;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
- (id)title;
- (void)tableView:(id)view didSelectRowAtIndex:(int64_t)index;
@end

@implementation HKEmergencyCardDeletionTableItem

- (id)initInEditMode:(BOOL)mode
{
  modeCopy = mode;
  if (!mode)
  {
    [(HKEmergencyCardDeletionTableItem *)a2 initInEditMode:?];
  }

  v6.receiver = self;
  v6.super_class = HKEmergencyCardDeletionTableItem;
  return [(HKEmergencyCardTableItem *)&v6 initInEditMode:modeCopy];
}

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"delete_medical_id" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (UIEdgeInsets)separatorInset
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  if (!self->_cell)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    cell = self->_cell;
    self->_cell = v5;
  }

  v7 = [(HKEmergencyCardDeletionTableItem *)self title:view];
  textLabel = [(UITableViewCell *)self->_cell textLabel];
  [textLabel setText:v7];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  textLabel2 = [(UITableViewCell *)self->_cell textLabel];
  [textLabel2 setTextColor:systemRedColor];

  textLabel3 = [(UITableViewCell *)self->_cell textLabel];
  [textLabel3 setTextAlignment:1];

  v12 = objc_alloc_init(_HKCustomInsetCellLayoutManager);
  [(UITableViewCell *)self->_cell setLayoutManager:v12];
  v13 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  textLabel4 = [(UITableViewCell *)self->_cell textLabel];
  [textLabel4 setFont:v13];

  v15 = self->_cell;
  v16 = v15;

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndex:(int64_t)index
{
  viewCopy = view;
  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
  [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  view = [v7 view];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [view setTintColor:systemBlueColor];

  v10 = MEMORY[0x1E69DC648];
  title = [(HKEmergencyCardDeletionTableItem *)self title];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__HKEmergencyCardDeletionTableItem_tableView_didSelectRowAtIndex___block_invoke;
  v18[3] = &unk_1E81B6048;
  v18[4] = self;
  v12 = [v10 actionWithTitle:title style:2 handler:v18];

  [v7 addAction:v12];
  v13 = MEMORY[0x1E69DC648];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"cancel_delete_medical_id" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16 = [v13 actionWithTitle:v15 style:1 handler:0];

  [v7 addAction:v16];
  owningViewController = [(HKEmergencyCardTableItem *)self owningViewController];
  [owningViewController presentViewController:v7 animated:1 completion:0];
}

void __66__HKEmergencyCardDeletionTableItem_tableView_didSelectRowAtIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained deletionTableItemDidTapDelete:*(a1 + 32)];
}

- (HKEmergencyCardDeletionDelegate)deletionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deletionDelegate);

  return WeakRetained;
}

- (void)initInEditMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKEmergencyCardDeletionTableItem.m" lineNumber:26 description:@"HKEmergencyCardDeletionTableItem only supports edit mode"];
}

@end