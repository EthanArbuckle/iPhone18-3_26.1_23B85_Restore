@interface HKDataMetadataDeletionSection
- (HKDataMetadataDeletionSection)init;
- (HKDataMetadataDeletionSection)initWithTitle:(id)title;
- (HKDataMetadataDeletionSectionDelegate)delegate;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
- (void)_updateCellForEnabledState;
- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated;
@end

@implementation HKDataMetadataDeletionSection

- (HKDataMetadataDeletionSection)init
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"DELETE_SAMPLE" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B918]];
  v5 = [(HKDataMetadataDeletionSection *)self initWithTitle:v4];

  return v5;
}

- (HKDataMetadataDeletionSection)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = HKDataMetadataDeletionSection;
  v6 = [(HKDataMetadataDeletionSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, title);
    v7->_enabled = 1;
  }

  return v7;
}

- (void)_updateCellForEnabledState
{
  if ([(HKDataMetadataDeletionSection *)self isEnabled])
  {
    [MEMORY[0x1E69DC888] hk_appErrorColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] hk_appInteractionDisabledColor];
  }
  v5 = ;
  cell = [(HKDataMetadataDeletionSection *)self cell];
  textLabel = [cell textLabel];
  [textLabel setTextColor:v5];
}

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v5 = [view dequeueReusableCellWithIdentifier:@"HKDataMetadataDeletionSectionCell"];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"HKDataMetadataDeletionSectionCell"];
  }

  textLabel = [v5 textLabel];
  [textLabel setTextAlignment:1];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  textLabel2 = [v5 textLabel];
  [textLabel2 setFont:v7];

  textLabel3 = [v5 textLabel];
  [textLabel3 setAdjustsFontForContentSizeCategory:1];

  title = [(HKDataMetadataDeletionSection *)self title];
  textLabel4 = [v5 textLabel];
  [textLabel4 setText:title];

  [(HKDataMetadataDeletionSection *)self setCell:v5];
  delegate = [(HKDataMetadataDeletionSection *)self delegate];
  accessibilityIdentifier = [delegate accessibilityIdentifier];
  cell = [(HKDataMetadataDeletionSection *)self cell];
  [cell setAccessibilityIdentifier:accessibilityIdentifier];

  [(HKDataMetadataDeletionSection *)self _updateCellForEnabledState];

  return v5;
}

- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated
{
  if ([(HKDataMetadataDeletionSection *)self isEnabled:index])
  {
    delegate = [(HKDataMetadataDeletionSection *)self delegate];
    [delegate deletionSectionDidSelectRow:self sourceItem:self->_cell];
  }
}

- (HKDataMetadataDeletionSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end