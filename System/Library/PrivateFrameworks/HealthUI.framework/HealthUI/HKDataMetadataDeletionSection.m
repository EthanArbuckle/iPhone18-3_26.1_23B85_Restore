@interface HKDataMetadataDeletionSection
- (HKDataMetadataDeletionSection)init;
- (HKDataMetadataDeletionSection)initWithTitle:(id)a3;
- (HKDataMetadataDeletionSectionDelegate)delegate;
- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4;
- (void)_updateCellForEnabledState;
- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5;
@end

@implementation HKDataMetadataDeletionSection

- (HKDataMetadataDeletionSection)init
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"DELETE_SAMPLE" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B918]];
  v5 = [(HKDataMetadataDeletionSection *)self initWithTitle:v4];

  return v5;
}

- (HKDataMetadataDeletionSection)initWithTitle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKDataMetadataDeletionSection;
  v6 = [(HKDataMetadataDeletionSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, a3);
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
  v3 = [(HKDataMetadataDeletionSection *)self cell];
  v4 = [v3 textLabel];
  [v4 setTextColor:v5];
}

- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4
{
  v5 = [a4 dequeueReusableCellWithIdentifier:@"HKDataMetadataDeletionSectionCell"];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"HKDataMetadataDeletionSectionCell"];
  }

  v6 = [v5 textLabel];
  [v6 setTextAlignment:1];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v8 = [v5 textLabel];
  [v8 setFont:v7];

  v9 = [v5 textLabel];
  [v9 setAdjustsFontForContentSizeCategory:1];

  v10 = [(HKDataMetadataDeletionSection *)self title];
  v11 = [v5 textLabel];
  [v11 setText:v10];

  [(HKDataMetadataDeletionSection *)self setCell:v5];
  v12 = [(HKDataMetadataDeletionSection *)self delegate];
  v13 = [v12 accessibilityIdentifier];
  v14 = [(HKDataMetadataDeletionSection *)self cell];
  [v14 setAccessibilityIdentifier:v13];

  [(HKDataMetadataDeletionSection *)self _updateCellForEnabledState];

  return v5;
}

- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5
{
  if ([(HKDataMetadataDeletionSection *)self isEnabled:a3])
  {
    v6 = [(HKDataMetadataDeletionSection *)self delegate];
    [v6 deletionSectionDidSelectRow:self sourceItem:self->_cell];
  }
}

- (HKDataMetadataDeletionSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end