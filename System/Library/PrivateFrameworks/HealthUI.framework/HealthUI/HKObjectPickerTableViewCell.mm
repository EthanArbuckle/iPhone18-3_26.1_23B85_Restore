@interface HKObjectPickerTableViewCell
- (HKObjectPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier presentationOptions:(int64_t)options;
- (NSArray)patientDetails;
- (NSString)patientName;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAccessibilityIdentifiers;
- (void)_updateRecordDetailAccessibilityIdentifiers;
- (void)prepareForReuse;
- (void)setBaseAccessibilityIdentifier:(id)identifier;
- (void)setChecked:(BOOL)checked;
- (void)setDetailItems:(id)items;
- (void)setPatientDetails:(id)details;
- (void)setPatientName:(id)name;
@end

@implementation HKObjectPickerTableViewCell

- (HKObjectPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier presentationOptions:(int64_t)options
{
  self->_presentationOptions = options;
  v8.receiver = self;
  v8.super_class = HKObjectPickerTableViewCell;
  v5 = [(HKObjectPickerTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    [(HKObjectPickerTableViewCell *)v5 _setupSubviews];
    [(HKObjectPickerTableViewCell *)v6 _setupConstraints];
  }

  return v6;
}

- (void)_setupSubviews
{
  v51[1] = *MEMORY[0x1E69E9840];
  [(HKObjectPickerTableViewCell *)self _setContinuousCornerRadius:10.0];
  [(HKObjectPickerTableViewCell *)self setSelectionStyle:3];
  traitCollection = [(HKObjectPickerTableViewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(HKObjectPickerTableViewCell *)self setBackgroundColor:secondarySystemBackgroundColor];
  }

  v6 = objc_alloc(MEMORY[0x1E69DCC10]);
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v11;

  [(UILabel *)self->_primaryLabel setAdjustsFontForContentSizeCategory:1];
  v13 = *MEMORY[0x1E69DDCF8];
  v14 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:2];
  [(UILabel *)self->_primaryLabel setFont:v14];

  [(UILabel *)self->_primaryLabel setNumberOfLines:0];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:labelColor];

  [(UILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [[HKAttributedTextLabel alloc] initWithFrame:v7, v8, v9, v10];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = &v16->super;

  [(UILabel *)self->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v13];
  [(UILabel *)self->_secondaryLabel setFont:v18];

  [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_secondaryLabel setTextColor:labelColor2];

  [(UILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v8, v9, v10}];
  separatorView = self->_separatorView;
  self->_separatorView = v20;

  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [(UIView *)self->_separatorView setBackgroundColor:separatorColor];

  [(UIView *)self->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = objc_alloc(MEMORY[0x1E69DCF90]);
  v51[0] = self->_secondaryLabel;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v25 = [v23 initWithArrangedSubviews:v24];
  recordDetailStackView = self->_recordDetailStackView;
  self->_recordDetailStackView = v25;

  [(UIStackView *)self->_recordDetailStackView setAlignment:1];
  [(UIStackView *)self->_recordDetailStackView setAxis:1];
  [(UIStackView *)self->_recordDetailStackView setDistribution:0];
  [(UIStackView *)self->_recordDetailStackView setSpacing:4.0];
  [(UIStackView *)self->_recordDetailStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v8, v9, v10}];
  secondSeparatorView = self->_secondSeparatorView;
  self->_secondSeparatorView = v27;

  separatorColor2 = [MEMORY[0x1E69DC888] separatorColor];
  [(UIView *)self->_secondSeparatorView setBackgroundColor:separatorColor2];

  [(UIView *)self->_secondSeparatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [[HKObjectPickerDetailView alloc] initWithFrame:v7, v8, v9, v10];
  patientDetailView = self->_patientDetailView;
  self->_patientDetailView = v30;

  [(HKObjectPickerDetailView *)self->_patientDetailView setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = objc_alloc(MEMORY[0x1E69DCF90]);
  v33 = self->_separatorView;
  v50[0] = self->_primaryLabel;
  v50[1] = v33;
  v34 = self->_secondSeparatorView;
  v50[2] = self->_recordDetailStackView;
  v50[3] = v34;
  v50[4] = self->_patientDetailView;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:5];
  v36 = [v32 initWithArrangedSubviews:v35];
  labelStackView = self->_labelStackView;
  self->_labelStackView = v36;

  [(UIStackView *)self->_labelStackView setAlignment:1];
  [(UIStackView *)self->_labelStackView setAxis:1];
  [(UIStackView *)self->_labelStackView setDistribution:0];
  [(UIStackView *)self->_labelStackView setSpacing:12.0];
  [(UIStackView *)self->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_presentationOptions)
  {
    v38 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
    checkboxView = self->_checkboxView;
    self->_checkboxView = v38;

    [(UIImageView *)self->_checkboxView setContentMode:1];
    [(UIImageView *)self->_checkboxView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v40) = 1148846080;
    [(UIImageView *)self->_checkboxView setContentCompressionResistancePriority:0 forAxis:v40];
    v41 = objc_alloc(MEMORY[0x1E69DCF90]);
    v42 = self->_labelStackView;
    v49[0] = self->_checkboxView;
    v49[1] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v44 = [v41 initWithArrangedSubviews:v43];
    contentStackView = self->_contentStackView;
    self->_contentStackView = v44;

    [(UIStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_contentStackView setAlignment:1];
    [(UIStackView *)self->_contentStackView setAxis:0];
    [(UIStackView *)self->_contentStackView setDistribution:0];
    [(UIStackView *)self->_contentStackView setSpacing:5.0];
  }

  else
  {
    objc_storeStrong(&self->_contentStackView, self->_labelStackView);
  }

  [(UIStackView *)self->_contentStackView setLayoutMarginsRelativeArrangement:1];
  if ((self->_presentationOptions & 2) != 0)
  {
    [(HKObjectPickerTableViewCell *)self setSeparatorInset:0.0, 47.0, 0.0, 0.0];
    v46 = 16.0;
    v47 = 12.0;
  }

  else
  {
    v46 = 16.0;
    v47 = 16.0;
  }

  [(UIStackView *)self->_contentStackView setDirectionalLayoutMargins:v46, v46, v47, v46];
  [(HKObjectPickerTableViewCell *)self _updateAccessibilityIdentifiers];
  contentView = [(HKObjectPickerTableViewCell *)self contentView];
  [contentView addSubview:self->_contentStackView];
}

- (void)_setupConstraints
{
  v43[10] = *MEMORY[0x1E69E9840];
  v27 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIStackView *)self->_contentStackView topAnchor];
  contentView = [(HKObjectPickerTableViewCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[0] = v39;
  leadingAnchor = [(UIStackView *)self->_contentStackView leadingAnchor];
  contentView2 = [(HKObjectPickerTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v43[1] = v35;
  contentView3 = [(HKObjectPickerTableViewCell *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  trailingAnchor2 = [(UIStackView *)self->_contentStackView trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v43[2] = v31;
  contentView4 = [(HKObjectPickerTableViewCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  bottomAnchor2 = [(UIStackView *)self->_contentStackView bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v43[3] = v26;
  heightAnchor = [(UIView *)self->_separatorView heightAnchor];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v23 = [heightAnchor constraintEqualToConstant:1.0 / v3];
  v43[4] = v23;
  leadingAnchor3 = [(UIView *)self->_separatorView leadingAnchor];
  leadingAnchor4 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v43[5] = v20;
  trailingAnchor3 = [(UIView *)self->_separatorView trailingAnchor];
  contentView5 = [(HKObjectPickerTableViewCell *)self contentView];
  trailingAnchor4 = [contentView5 trailingAnchor];
  v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v43[6] = v16;
  heightAnchor2 = [(UIView *)self->_secondSeparatorView heightAnchor];
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  v6 = [heightAnchor2 constraintEqualToConstant:1.0 / v5];
  v43[7] = v6;
  leadingAnchor5 = [(UIView *)self->_secondSeparatorView leadingAnchor];
  leadingAnchor6 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v9 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v43[8] = v9;
  trailingAnchor5 = [(UIView *)self->_secondSeparatorView trailingAnchor];
  contentView6 = [(HKObjectPickerTableViewCell *)self contentView];
  trailingAnchor6 = [contentView6 trailingAnchor];
  v13 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v43[9] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:10];
  [v27 activateConstraints:v14];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HKObjectPickerTableViewCell;
  [(HKObjectPickerTableViewCell *)&v5 prepareForReuse];
  self->_checked = 0;
  [(UILabel *)self->_primaryLabel setText:0];
  [(UILabel *)self->_secondaryLabel setText:0];
  [(UIImageView *)self->_checkboxView setImage:0];
  primaryLabel = [(HKObjectPickerDetailView *)self->_patientDetailView primaryLabel];
  [primaryLabel setText:0];

  secondaryLabel = [(HKObjectPickerDetailView *)self->_patientDetailView secondaryLabel];
  [secondaryLabel setText:0];
}

- (void)setChecked:(BOOL)checked
{
  self->_checked = checked;
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [MEMORY[0x1E69DCAD8] configurationWithFont:? scale:?];
  checked = self->_checked;
  [(UIImageView *)self->_checkboxView setPreferredSymbolConfiguration:v4];
  if (checked)
  {
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    [(UIImageView *)self->_checkboxView setImage:v6];

    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
    [(UIImageView *)self->_checkboxView setImage:v7];

    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v8 = ;
  [(UIImageView *)self->_checkboxView setTintColor:v8];
}

- (void)setDetailItems:(id)items
{
  v29 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  objc_storeStrong(&self->_detailItems, items);
  subviews = [(UIStackView *)self->_recordDetailStackView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        primaryText = [v16 primaryText];
        if ([(HKObjectPickerDetailView *)primaryText length])
        {
          secondaryText = [v16 secondaryText];
          v19 = [secondaryText length];

          if (!v19)
          {
            continue;
          }

          primaryText = [[HKObjectPickerDetailView alloc] initWithFrame:v11, v12, v13, v14];
          primaryText2 = [v16 primaryText];
          primaryLabel = [(HKObjectPickerDetailView *)primaryText primaryLabel];
          [primaryLabel setText:primaryText2];

          secondaryText2 = [v16 secondaryText];
          secondaryLabel = [(HKObjectPickerDetailView *)primaryText secondaryLabel];
          [secondaryLabel setText:secondaryText2];

          [(HKObjectPickerDetailView *)primaryText setTranslatesAutoresizingMaskIntoConstraints:0];
          [(UIStackView *)self->_recordDetailStackView addArrangedSubview:primaryText];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  [(UIStackView *)self->_recordDetailStackView addArrangedSubview:self->_secondaryLabel];
  [(HKObjectPickerTableViewCell *)self _updateRecordDetailAccessibilityIdentifiers];
}

- (NSString)patientName
{
  primaryLabel = [(HKObjectPickerDetailView *)self->_patientDetailView primaryLabel];
  text = [primaryLabel text];

  return text;
}

- (void)setPatientName:(id)name
{
  patientDetailView = self->_patientDetailView;
  nameCopy = name;
  primaryLabel = [(HKObjectPickerDetailView *)patientDetailView primaryLabel];
  [primaryLabel setText:nameCopy];
}

- (NSArray)patientDetails
{
  secondaryLabel = [(HKObjectPickerDetailView *)self->_patientDetailView secondaryLabel];
  text = [secondaryLabel text];

  return text;
}

- (void)setPatientDetails:(id)details
{
  v5 = [details componentsJoinedByString:@"\n"];
  secondaryLabel = [(HKObjectPickerDetailView *)self->_patientDetailView secondaryLabel];
  [secondaryLabel setText:v5];
}

- (void)setBaseAccessibilityIdentifier:(id)identifier
{
  if (self->_baseAccessibilityIdentifier != identifier)
  {
    v4 = [identifier copy];
    baseAccessibilityIdentifier = self->_baseAccessibilityIdentifier;
    self->_baseAccessibilityIdentifier = v4;

    [(HKObjectPickerTableViewCell *)self _updateAccessibilityIdentifiers];
  }
}

- (void)_updateAccessibilityIdentifiers
{
  v17[2] = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_baseAccessibilityIdentifier length])
  {
    v17[0] = self->_baseAccessibilityIdentifier;
    v17[1] = @"Primary";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v4 = HKUIJoinStringsForAutomationIdentifier(v3);
    [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:v4];

    v16[0] = self->_baseAccessibilityIdentifier;
    v16[1] = @"Secondary";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v6 = HKUIJoinStringsForAutomationIdentifier(v5);
    [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:v6];

    v15[0] = self->_baseAccessibilityIdentifier;
    v15[1] = @"PatientDetails";
    v15[2] = @"Primary";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v8 = HKUIJoinStringsForAutomationIdentifier(v7);
    primaryLabel = [(HKObjectPickerDetailView *)self->_patientDetailView primaryLabel];
    [primaryLabel setAccessibilityIdentifier:v8];

    v14[0] = self->_baseAccessibilityIdentifier;
    v14[1] = @"PatientDetails";
    v14[2] = @"Secondary";
    secondaryLabel2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    v11 = HKUIJoinStringsForAutomationIdentifier(secondaryLabel2);
    secondaryLabel = [(HKObjectPickerDetailView *)self->_patientDetailView secondaryLabel];
    [secondaryLabel setAccessibilityIdentifier:v11];
  }

  else
  {
    [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:0];
    [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:0];
    primaryLabel2 = [(HKObjectPickerDetailView *)self->_patientDetailView primaryLabel];
    [primaryLabel2 setAccessibilityIdentifier:0];

    secondaryLabel2 = [(HKObjectPickerDetailView *)self->_patientDetailView secondaryLabel];
    [secondaryLabel2 setAccessibilityIdentifier:0];
  }

  [(HKObjectPickerTableViewCell *)self _updateRecordDetailAccessibilityIdentifiers];
}

- (void)_updateRecordDetailAccessibilityIdentifiers
{
  selfCopy = self;
  v35 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(UIStackView *)self->_recordDetailStackView subviews];
  v3 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    p_info = &OBJC_METACLASS___HKPrescriptionPickerCell.info;
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          baseAccessibilityIdentifier = selfCopy->_baseAccessibilityIdentifier;
          v11 = v9;
          if ([(NSString *)baseAccessibilityIdentifier length])
          {
            v33[0] = selfCopy->_baseAccessibilityIdentifier;
            v33[1] = @"DetailItems";
            [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
            v28 = v5;
            v12 = v4;
            v13 = v7;
            v14 = selfCopy;
            v16 = v15 = p_info;
            v17 = [v16 description];
            v33[2] = v17;
            secondaryLabel2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];

            v19 = HKUIJoinStringsForAutomationIdentifier(secondaryLabel2);
            [v11 setAccessibilityIdentifier:v19];

            v20 = [secondaryLabel2 arrayByAddingObject:@"Primary"];
            v21 = HKUIJoinStringsForAutomationIdentifier(v20);
            primaryLabel = [v11 primaryLabel];
            [primaryLabel setAccessibilityIdentifier:v21];

            v23 = [secondaryLabel2 arrayByAddingObject:@"Secondary"];
            v24 = HKUIJoinStringsForAutomationIdentifier(v23);
            secondaryLabel = [v11 secondaryLabel];

            [secondaryLabel setAccessibilityIdentifier:v24];
            p_info = v15;
            selfCopy = v14;
            v7 = v13;
            v4 = v12;
            v5 = v28;
          }

          else
          {
            [v11 setAccessibilityIdentifier:0];
            primaryLabel2 = [v11 primaryLabel];
            [primaryLabel2 setAccessibilityIdentifier:0];

            secondaryLabel2 = [v11 secondaryLabel];

            [secondaryLabel2 setAccessibilityIdentifier:0];
          }

          ++v5;
        }

        ++v8;
      }

      while (v4 != v8);
      v4 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v4);
  }
}

@end