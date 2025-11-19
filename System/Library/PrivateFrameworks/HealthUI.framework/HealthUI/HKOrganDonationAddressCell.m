@interface HKOrganDonationAddressCell
- (HKOrganDonationAddressCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HKSimpleDataEntryCellDelegate)delegate;
- (void)_setupFonts;
- (void)_setupLayoutConstraints;
- (void)textFieldDidChangeValue:(id)a3;
@end

@implementation HKOrganDonationAddressCell

- (HKOrganDonationAddressCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v82[5] = *MEMORY[0x1E69E9840];
  v77.receiver = self;
  v77.super_class = HKOrganDonationAddressCell;
  v4 = [(HKOrganDonationAddressCell *)&v77 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    v7 = v4->_titleLabel;
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"OD_ADDRESS" value:? table:?];
    [(UILabel *)v7 setText:v9];

    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    addressContainerView = v4->_addressContainerView;
    v4->_addressContainerView = v10;

    v12 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    streetOneTextField = v4->_streetOneTextField;
    v4->_streetOneTextField = v12;

    v14 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    streetTwoTextField = v4->_streetTwoTextField;
    v4->_streetTwoTextField = v14;

    v16 = objc_alloc_init(HKCaretOptionalTextField);
    stateTextField = v4->_stateTextField;
    v4->_stateTextField = &v16->super;

    v18 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    cityTextField = v4->_cityTextField;
    v4->_cityTextField = v18;

    v20 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    zipCodeTextField = v4->_zipCodeTextField;
    v4->_zipCodeTextField = v20;

    v67 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v66 = [v67 localizedStringForKey:@"OD_PLACEHOLDER_ADDRESS_1" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v82[0] = v66;
    v65 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v64 = [v65 localizedStringForKey:@"OD_PLACEHOLDER_ADDRESS_2" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v82[1] = v64;
    v63 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v22 = [v63 localizedStringForKey:@"OD_PLACEHOLDER_STATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v82[2] = v22;
    v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v24 = [v23 localizedStringForKey:@"OD_PLACEHOLDER_CITY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v82[3] = v24;
    v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v26 = [v25 localizedStringForKey:@"OD_PLACEHOLDER_ZIP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v82[4] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:5];
    v28 = [v27 objectEnumerator];

    v29 = v28;
    v81[0] = v4->_streetOneTextField;
    v81[1] = v4->_streetTwoTextField;
    v81[2] = v4->_stateTextField;
    v81[3] = v4->_cityTextField;
    v81[4] = v4->_zipCodeTextField;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:5];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v76 = 0u;
    v30 = [obj countByEnumeratingWithState:&v73 objects:v80 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v74;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v74 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v73 + 1) + 8 * i);
          [v34 addTarget:v4 action:sel_textFieldDidChangeValue_ forControlEvents:0x20000];
          v35 = [v29 nextObject];
          [v34 setPlaceholder:v35];

          [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v34 setDelegate:v4];
          [v34 setAutocorrectionType:1];
          [v34 setAutocapitalizationType:1];
          [(UIView *)v4->_addressContainerView addSubview:v34];
        }

        v31 = [obj countByEnumeratingWithState:&v73 objects:v80 count:16];
      }

      while (v31);
    }

    v36 = [MEMORY[0x1E69DC738] buttonWithType:0];
    stateShadowButton = v4->_stateShadowButton;
    v4->_stateShadowButton = v36;

    [(UIButton *)v4->_stateShadowButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_addressContainerView addSubview:v4->_stateShadowButton];
    [(UIButton *)v4->_stateShadowButton addTarget:v4 action:sel__stateShadowButtonTapped_ forControlEvents:64];
    v38 = objc_alloc_init(MEMORY[0x1E69DD250]);
    verticalSeparator = v4->_verticalSeparator;
    v4->_verticalSeparator = v38;

    v40 = objc_alloc_init(MEMORY[0x1E69DD250]);
    horizontalSeparator = v4->_horizontalSeparator;
    v4->_horizontalSeparator = v40;

    v42 = objc_alloc_init(MEMORY[0x1E69DD250]);
    stateZipSeparator = v4->_stateZipSeparator;
    v4->_stateZipSeparator = v42;

    v44 = objc_alloc_init(MEMORY[0x1E69DD250]);
    addressSeparator = v4->_addressSeparator;
    v4->_addressSeparator = v44;

    v46 = objc_alloc_init(MEMORY[0x1E69DD250]);
    citySeparator = v4->_citySeparator;
    v4->_citySeparator = v46;

    v48 = objc_alloc_init(MEMORY[0x1E69DD250]);
    stateSeparator = v4->_stateSeparator;
    v4->_stateSeparator = v48;

    v79[0] = v4->_horizontalSeparator;
    v79[1] = v4->_verticalSeparator;
    v79[2] = v4->_stateZipSeparator;
    v79[3] = v4->_addressSeparator;
    v79[4] = v4->_citySeparator;
    v79[5] = v4->_stateSeparator;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:6];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v50 = v72 = 0u;
    v51 = [v50 countByEnumeratingWithState:&v69 objects:v78 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v70;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v70 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v69 + 1) + 8 * j);
          v56 = [MEMORY[0x1E69DC888] systemMidGrayColor];
          [(UIView *)v55 setBackgroundColor:v56];

          [(UIView *)v55 setTranslatesAutoresizingMaskIntoConstraints:0];
          if (v55 == v4->_horizontalSeparator || v55 == v4->_verticalSeparator)
          {
            v57 = [(HKOrganDonationAddressCell *)v4 contentView];
            [v57 addSubview:v55];
          }

          else
          {
            [(UIView *)v4->_addressContainerView addSubview:v55];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v69 objects:v78 count:16];
      }

      while (v52);
    }

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_addressContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = [(HKOrganDonationAddressCell *)v4 contentView];
    [v58 addSubview:v4->_titleLabel];

    v59 = [(HKOrganDonationAddressCell *)v4 contentView];
    [v59 addSubview:v4->_addressContainerView];

    v60 = [(HKOrganDonationAddressCell *)v4 contentView];
    [v60 addSubview:v4->_verticalSeparator];

    v61 = [(HKOrganDonationAddressCell *)v4 contentView];
    [v61 addSubview:v4->_horizontalSeparator];

    [(HKOrganDonationAddressCell *)v4 _setupFonts];
    [(HKOrganDonationAddressCell *)v4 _setupLayoutConstraints];
    [(HKOrganDonationAddressCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)_setupFonts
{
  v3 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UITextField *)self->_streetOneTextField setFont:v5];

  v6 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v4];
  [(UITextField *)self->_streetTwoTextField setFont:v6];

  v7 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v4];
  [(UITextField *)self->_stateTextField setFont:v7];

  v8 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v4];
  [(UITextField *)self->_cityTextField setFont:v8];

  v9 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v4];
  [(UITextField *)self->_zipCodeTextField setFont:v9];
}

- (void)_setupLayoutConstraints
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelAddr.isa, self->_titleLabel, self->_addressContainerView, self->_streetOneTextField, self->_streetTwoTextField, self->_stateTextField, self->_cityTextField, self->_zipCodeTextField, self->_verticalSeparator, self->_horizontalSeparator, self->_stateZipSeparator, self->_addressSeparator, self->_citySeparator, self->_stateSeparator, self->_stateShadowButton, 0);
  v37 = @"onePixel";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:HKUIOnePixel()];
  v38[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];

  v6 = [(HKOrganDonationAddressCell *)self contentView];
  v7 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(20)-[_titleLabel(>=20)]-[_verticalSeparator(onePixel)]-(0)-[_addressContainerView]-(0)-|" options:0 metrics:v5 views:v3];
  [v6 addConstraints:v7];

  v8 = [(HKOrganDonationAddressCell *)self contentView];
  v9 = [v8 hk_addConstraintsWithFormat:@"H:|-(20)-[_horizontalSeparator]-(0)-|" options:0 views:v3];

  v10 = [(HKOrganDonationAddressCell *)self contentView];
  v11 = [v10 hk_addConstraintsWithFormat:@"V:|-(10)-[_verticalSeparator]-(0)-|" options:0 views:v3];

  v12 = [(HKOrganDonationAddressCell *)self contentView];
  v13 = [v12 hk_addConstraintsWithFormat:@"V:|-(10)-[_addressContainerView]-(0)-|" options:0 views:v3];

  v14 = [(HKOrganDonationAddressCell *)self contentView];
  v15 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(>=10)-[_horizontalSeparator(onePixel)]-(0)-|" options:0 metrics:v5 views:v3];
  [v14 addConstraints:v15];

  v16 = [(HKOrganDonationAddressCell *)self contentView];
  titleLabel = self->_titleLabel;
  v18 = [(HKOrganDonationAddressCell *)self contentView];
  v19 = [v16 hk_addEqualsConstraintWithItem:titleLabel attribute:10 relatedTo:v18 attribute:10 constant:0.0];

  addressContainerView = self->_addressContainerView;
  v21 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(10)-[_streetOneTextField]-(10)-[_addressSeparator(onePixel)]-(10)-[_streetTwoTextField(==_streetOneTextField)]-(10)-[_citySeparator(onePixel)]-(10)-[_cityTextField(==_streetOneTextField)]-(10)-[_stateSeparator(onePixel)]-(10)-[_stateTextField(==_streetOneTextField)]-(10)-|" options:0 metrics:v5 views:v3];
  [(UIView *)addressContainerView addConstraints:v21];

  v22 = -[UIView hk_addConstraintsWithFormat:options:views:](self->_addressContainerView, "hk_addConstraintsWithFormat:options:views:", @"H:|-[_streetOneTextField]-|", 0, v3);
  v23 = -[UIView hk_addConstraintsWithFormat:options:views:](self->_addressContainerView, "hk_addConstraintsWithFormat:options:views:", @"H:|-[_streetTwoTextField]-|", 0, v3);
  v24 = -[UIView hk_addConstraintsWithFormat:options:views:](self->_addressContainerView, "hk_addConstraintsWithFormat:options:views:", @"H:|-[_cityTextField]-|", 0, v3);
  v25 = -[UIView hk_addConstraintsWithFormat:options:views:](self->_addressContainerView, "hk_addConstraintsWithFormat:options:views:", @"H:|-(0)-[_addressSeparator]-(0)-|", 0, v3);
  v26 = -[UIView hk_addConstraintsWithFormat:options:views:](self->_addressContainerView, "hk_addConstraintsWithFormat:options:views:", @"H:|-(0)-[_citySeparator]-(0)-|", 0, v3);
  v27 = -[UIView hk_addConstraintsWithFormat:options:views:](self->_addressContainerView, "hk_addConstraintsWithFormat:options:views:", @"H:|-(0)-[_stateSeparator]-(0)-|", 0, v3);
  v28 = -[UIView hk_addConstraintsWithFormat:options:views:](self->_addressContainerView, "hk_addConstraintsWithFormat:options:views:", @"V:[_stateSeparator]-(0)-[_stateZipSeparator]-(0)-|", 0, v3);
  v29 = [(UIView *)self->_addressContainerView hk_addEqualsConstraintWithItem:self->_stateTextField attribute:11 relatedTo:self->_zipCodeTextField attribute:11 constant:0.0];
  v30 = self->_addressContainerView;
  v31 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[_stateTextField]-(10)-[_stateZipSeparator(onePixel)]-(10)-[_zipCodeTextField(==_stateTextField)]-|" options:0 metrics:v5 views:v3];
  [(UIView *)v30 addConstraints:v31];

  v32 = [(UIView *)self->_addressContainerView hk_addEqualsConstraintWithItem:self->_stateShadowButton attribute:8 relatedTo:self->_stateTextField attribute:8 constant:0.0];
  v33 = [(UIView *)self->_addressContainerView hk_addEqualsConstraintWithItem:self->_stateShadowButton attribute:7 relatedTo:self->_stateTextField attribute:7 constant:0.0];
  v34 = [(UIView *)self->_addressContainerView hk_addEqualsConstraintWithItem:self->_stateShadowButton attribute:9 relatedTo:self->_stateTextField attribute:9 constant:0.0];
  v35 = [(UIView *)self->_addressContainerView hk_addEqualsConstraintWithItem:self->_stateShadowButton attribute:10 relatedTo:self->_stateTextField attribute:10 constant:0.0];
  LODWORD(v36) = 1148846080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:0 forAxis:v36];
}

- (void)textFieldDidChangeValue:(id)a3
{
  v4 = a3;
  v5 = [(HKOrganDonationAddressCell *)self delegate];
  [v5 textFieldDidChangeValue:v4 forCell:self];
}

- (HKSimpleDataEntryCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end