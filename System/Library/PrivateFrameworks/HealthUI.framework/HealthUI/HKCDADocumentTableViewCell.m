@interface HKCDADocumentTableViewCell
- (HKCDADocumentTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HKCDADocumentTableViewCellDelegate)delegate;
- (id)_createDocumentCellLabelWithTag:(int64_t)a3 fontSizePts:(double)a4 flexibleHeight:(BOOL)a5;
- (void)_selectedCheckbox:(id)a3;
- (void)_setDocumentLabelWithTag:(int64_t)a3 text:(id)a4 view:(id)a5;
- (void)_setupCellStructure;
- (void)_updateForCurrentSizeCategory;
- (void)setCellValuesForDocumentSample:(id)a3;
- (void)setShowsCheckbox:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKCDADocumentTableViewCell

- (HKCDADocumentTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKCDADocumentTableViewCell;
  v4 = [(HKCDADocumentTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->_showsCheckbox = 0;
    objc_storeWeak(&v4->_delegate, 0);
    [(HKCDADocumentTableViewCell *)v5 _setupCellStructure];
  }

  return v5;
}

- (void)setShowsCheckbox:(BOOL)a3
{
  self->_showsCheckbox = a3;
  [(HKAdjustableTapTargetButton *)self->_checkboxButton setHidden:!a3];

  [(HKCDADocumentTableViewCell *)self setNeedsLayout];
}

- (void)setCellValuesForDocumentSample:(id)a3
{
  v4 = a3;
  v5 = [v4 document];
  v19 = [v5 title];

  v6 = [(HKCDADocumentTableViewCell *)self contentView];
  [(HKCDADocumentTableViewCell *)self _setDocumentLabelWithTag:101 text:v19 view:v6];

  v7 = [v4 document];
  v8 = [v7 patientName];

  v9 = [(HKCDADocumentTableViewCell *)self contentView];
  [(HKCDADocumentTableViewCell *)self _setDocumentLabelWithTag:105 text:v8 view:v9];

  v10 = [v4 endDate];
  v11 = HKLocalizedStringForDateAndTemplate(v10, 35);
  v12 = [(HKCDADocumentTableViewCell *)self contentView];
  [(HKCDADocumentTableViewCell *)self _setDocumentLabelWithTag:102 text:v11 view:v12];

  v13 = [v4 document];
  v14 = [v13 custodianName];

  v15 = [(HKCDADocumentTableViewCell *)self contentView];
  [(HKCDADocumentTableViewCell *)self _setDocumentLabelWithTag:103 text:v14 view:v15];

  v16 = [v4 document];

  v17 = [v16 authorName];

  v18 = [(HKCDADocumentTableViewCell *)self contentView];
  [(HKCDADocumentTableViewCell *)self _setDocumentLabelWithTag:104 text:v17 view:v18];
}

- (void)_setupCellStructure
{
  v73[4] = *MEMORY[0x1E69E9840];
  v67 = [(HKCDADocumentTableViewCell *)self contentView];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  [v4 setAxis:0];
  [v4 setDistribution:0];
  v5 = [HKAdjustableTapTargetButton buttonWithType:0];
  checkboxButton = self->_checkboxButton;
  self->_checkboxButton = v5;

  v7 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UITintedCircularButtonCheckmark"];
  v8 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UIRemoveControlMultiNotCheckedImage"];
  v9 = self->_checkboxButton;
  v10 = HKHealthKeyColor();
  v66 = v7;
  v11 = [v7 _flatImageWithColor:v10];
  [(HKAdjustableTapTargetButton *)v9 setImage:v11 forState:4];

  v12 = self->_checkboxButton;
  v13 = HKHealthKeyColor();
  v65 = v8;
  v14 = [v8 _flatImageWithColor:v13];
  [(HKAdjustableTapTargetButton *)v12 setImage:v14 forState:0];

  [(HKAdjustableTapTargetButton *)self->_checkboxButton setHitTargetInsets:0.0, -16.0, 0.0, -50.0];
  [(HKAdjustableTapTargetButton *)self->_checkboxButton addTarget:self action:sel__selectedCheckbox_ forControlEvents:64];
  [(HKAdjustableTapTargetButton *)self->_checkboxButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKAdjustableTapTargetButton *)self->_checkboxButton setHidden:1];
  LODWORD(v15) = 1148846080;
  [(HKAdjustableTapTargetButton *)self->_checkboxButton setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(HKAdjustableTapTargetButton *)self->_checkboxButton setContentHuggingPriority:0 forAxis:v16];
  [(HKAdjustableTapTargetButton *)self->_checkboxButton setContentEdgeInsets:0.0, 0.0, 0.0, 16.0];
  [v4 addArrangedSubview:self->_checkboxButton];
  v17 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [(UIStackView *)v17 setAxis:0];
  [(UIStackView *)v17 setDistribution:0];
  [(UIStackView *)v17 setSpacing:8.0];
  v18 = MEMORY[0x1E69DCAB8];
  v19 = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
  v20 = [v18 systemImageNamed:@"text.document" withConfiguration:v19];
  v21 = MEMORY[0x1E69DCAD8];
  v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v23 = [v21 configurationWithFont:v22 scale:-1];
  v24 = [v20 imageByApplyingSymbolConfiguration:v23];

  v63 = v24;
  v25 = [[_HKDocumentImageView alloc] initWithImage:v24];
  v64 = v17;
  [(UIStackView *)v17 addArrangedSubview:v25];
  LODWORD(v26) = 1148846080;
  [(_HKDocumentImageView *)v25 setContentCompressionResistancePriority:0 forAxis:v26];
  v62 = v25;
  LODWORD(v27) = 1148846080;
  [(_HKDocumentImageView *)v25 setContentHuggingPriority:0 forAxis:v27];
  v28 = objc_alloc(MEMORY[0x1E69DCF90]);
  v29 = [v28 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  [v29 setAxis:1];
  [v29 setDistribution:0];
  v30 = [(HKCDADocumentTableViewCell *)self _createDocumentCellLabelWithTag:101 fontSizePts:1 flexibleHeight:18.0];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v30;

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"UIA.Health.CDA.ReportTitle"];
  v32 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v32];

  v33 = [(HKCDADocumentTableViewCell *)self _createDocumentCellLabelWithTag:105 fontSizePts:0 flexibleHeight:14.0];
  v73[0] = v33;
  v34 = [(HKCDADocumentTableViewCell *)self _createDocumentCellLabelWithTag:102 fontSizePts:0 flexibleHeight:14.0];
  v73[1] = v34;
  v35 = [(HKCDADocumentTableViewCell *)self _createDocumentCellLabelWithTag:103 fontSizePts:0 flexibleHeight:14.0];
  v73[2] = v35;
  v36 = [(HKCDADocumentTableViewCell *)self _createDocumentCellLabelWithTag:104 fontSizePts:0 flexibleHeight:14.0];
  v73[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
  cellLabels = self->_cellLabels;
  self->_cellLabels = v37;

  [v29 addArrangedSubview:self->_titleLabel];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v39 = self->_cellLabels;
  v40 = [(NSArray *)v39 countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v69;
    do
    {
      v43 = 0;
      do
      {
        if (*v69 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v68 + 1) + 8 * v43);
        v45 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v44 setTextColor:v45];

        [v29 addArrangedSubview:v44];
        ++v43;
      }

      while (v41 != v43);
      v41 = [(NSArray *)v39 countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v41);
  }

  [(UIStackView *)v64 addArrangedSubview:v29];
  LODWORD(v46) = 1132068864;
  [v29 setContentHuggingPriority:0 forAxis:v46];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addArrangedSubview:v64];
  [v67 addSubview:v4];
  v47 = [v4 leadingAnchor];
  v48 = [v67 leadingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:16.0];
  [v49 setActive:1];

  v50 = [v4 trailingAnchor];
  v51 = [v67 trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:-12.0];
  [v52 setActive:1];

  v53 = [v4 topAnchor];
  v54 = [v67 topAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:11.0];
  [v55 setActive:1];

  v56 = [v4 bottomAnchor];
  v57 = [v67 bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:-11.0];
  [v58 setActive:1];

  [(HKCDADocumentTableViewCell *)self setAccessoryType:1];
  documentImageView = self->_documentImageView;
  self->_documentImageView = v62;
  v60 = v62;

  imageLabelStack = self->_imageLabelStack;
  self->_imageLabelStack = v64;

  [(HKCDADocumentTableViewCell *)self _updateForCurrentSizeCategory];
}

- (void)_updateForCurrentSizeCategory
{
  v25 = *MEMORY[0x1E69E9840];
  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v4 = IsUsingAccessibilityContentSizeCategory;
  v5 = !IsUsingAccessibilityContentSizeCategory;
  [(UIStackView *)self->_imageLabelStack setAxis:IsUsingAccessibilityContentSizeCategory];
  [(UIStackView *)self->_imageLabelStack setAlignment:v4];
  titleLabel = self->_titleLabel;
  v7 = MEMORY[0x1E69DB878];
  v8 = *MEMORY[0x1E69DDCF8];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v9 _scaledValueForValue:18.0];
  v10 = [v7 systemFontOfSize:?];
  [(UILabel *)titleLabel setFont:v10];

  [(UILabel *)self->_titleLabel setNumberOfLines:v5];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_cellLabels;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v17 = MEMORY[0x1E69DB878];
        v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{v8, v20}];
        [v18 _scaledValueForValue:14.0];
        v19 = [v17 systemFontOfSize:?];
        [v16 setFont:v19];

        [v16 setNumberOfLines:v5];
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }
}

- (id)_createDocumentCellLabelWithTag:(int64_t)a3 fontSizePts:(double)a4 flexibleHeight:(BOOL)a5
{
  v5 = a5;
  v8 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [v8 setTag:a3];
  [v8 setNumberOfLines:1];
  LODWORD(v9) = 1055286886;
  [v8 _setHyphenationFactor:v9];
  v10 = [MEMORY[0x1E69DB878] systemFontOfSize:a4];
  [v8 setFont:v10];

  LODWORD(v11) = 1144750080;
  if (v5)
  {
    *&v11 = 250.0;
  }

  [v8 setContentHuggingPriority:1 forAxis:v11];

  return v8;
}

- (void)_setDocumentLabelWithTag:(int64_t)a3 text:(id)a4 view:(id)a5
{
  v7 = a4;
  v8 = [a5 viewWithTag:a3];
  [v8 setText:v7];
}

- (void)_selectedCheckbox:(id)a3
{
  checkboxButton = self->_checkboxButton;
  if (checkboxButton == a3)
  {
    [(HKAdjustableTapTargetButton *)self->_checkboxButton setSelected:[(HKAdjustableTapTargetButton *)checkboxButton isSelected]^ 1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 cdaDocumentTableViewCellDidChangeValue:self];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKCDADocumentTableViewCell;
  [(HKCDADocumentTableViewCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKCDADocumentTableViewCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKCDADocumentTableViewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

- (HKCDADocumentTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end