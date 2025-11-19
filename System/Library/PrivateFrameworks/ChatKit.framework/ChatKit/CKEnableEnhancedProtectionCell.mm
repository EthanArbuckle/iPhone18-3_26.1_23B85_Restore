@interface CKEnableEnhancedProtectionCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKEnableEnhancedProtectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 conversation:(id)a5 shouldShowMacHeader:(BOOL)a6;
- (void)addConstraints;
- (void)layoutSubviews;
- (void)setupTitleLabel;
- (void)setupView;
@end

@implementation CKEnableEnhancedProtectionCell

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKEnableEnhancedProtectionCell;
  [(CKDetailsCell *)&v5 layoutSubviews];
  v3 = [(CKDetailsCell *)self topSeperator];
  [v3 setHidden:1];

  v4 = [(CKDetailsCell *)self bottomSeperator];
  [v4 setHidden:1];
}

- (CKEnableEnhancedProtectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 conversation:(id)a5 shouldShowMacHeader:(BOOL)a6
{
  v10.receiver = self;
  v10.super_class = CKEnableEnhancedProtectionCell;
  v7 = [(CKDetailsCell *)&v10 initWithStyle:a3 reuseIdentifier:a4, a5];
  v8 = v7;
  if (v7)
  {
    v7->_shouldShowMacHeader = a6;
    [(CKEnableEnhancedProtectionCell *)v7 setupView];
  }

  return v8;
}

- (void)setupView
{
  [(CKEnableEnhancedProtectionCell *)self setupTitleLabel];
  if (self->_shouldShowMacHeader)
  {
    [(CKEnableEnhancedProtectionCell *)self setupMacHeaderLabel];
    [(CKEnableEnhancedProtectionCell *)self setupSeparatorView];
  }

  v3 = [(CKEnableEnhancedProtectionCell *)self contentView];
  [v3 setBackgroundColor:0];

  [(CKEnableEnhancedProtectionCell *)self addConstraints];
}

- (void)setupTitleLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  ktTitleLabel = self->_ktTitleLabel;
  self->_ktTitleLabel = v4;

  v6 = self->_ktTitleLabel;
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"KT_ENABLE_KT_CELL_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  [(UILabel *)v6 setText:v8];

  v9 = self->_ktTitleLabel;
  v10 = [(CKEnableEnhancedProtectionCell *)self textLabel];
  v11 = [v10 font];
  [(UILabel *)v9 setFont:v11];

  v12 = self->_ktTitleLabel;
  v13 = +[CKUIBehavior sharedBehaviors];
  v14 = [v13 theme];
  v15 = [v14 detailsTextColor];
  [(UILabel *)v12 setTextColor:v15];

  [(UILabel *)self->_ktTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_ktTitleLabel setLineBreakMode:4];
  [(UILabel *)self->_ktTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [MEMORY[0x1E69A5B00] sharedInstance];
  LODWORD(v13) = [v16 isSatelliteConnectionActive];

  [(CKEnableEnhancedProtectionCell *)self setUserInteractionEnabled:v13 ^ 1];
  [(UILabel *)self->_ktTitleLabel setEnabled:v13 ^ 1];
  v17 = [(CKEnableEnhancedProtectionCell *)self contentView];
  [v17 addSubview:self->_ktTitleLabel];
}

- (void)addConstraints
{
  v74[4] = *MEMORY[0x1E69E9840];
  v71 = [MEMORY[0x1E695DF70] array];
  if (CKIsRunningInMacCatalyst() && self->_shouldShowMacHeader)
  {
    v62 = [(UILabel *)self->_macHeaderLabel topAnchor];
    v68 = [(CKEnableEnhancedProtectionCell *)self contentView];
    v65 = [v68 layoutMarginsGuide];
    v56 = [v65 topAnchor];
    v59 = +[CKUIBehavior sharedBehaviors];
    [v59 detailsSectionHeaderPaddingAbove];
    v53 = [v62 constraintEqualToAnchor:v56 constant:?];
    v74[0] = v53;
    v47 = [(UILabel *)self->_macHeaderLabel heightAnchor];
    v50 = [(UILabel *)self->_macHeaderLabel font];
    [v50 pointSize];
    v44 = [v47 constraintEqualToConstant:?];
    v74[1] = v44;
    v38 = [(UILabel *)self->_macHeaderLabel leadingAnchor];
    v42 = [(CKEnableEnhancedProtectionCell *)self contentView];
    v40 = [v42 layoutMarginsGuide];
    v3 = [v40 leadingAnchor];
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 detailsSectionHeaderPaddingLeading];
    v5 = [v38 constraintEqualToAnchor:v3 constant:?];
    v74[2] = v5;
    v6 = [(UILabel *)self->_macHeaderLabel trailingAnchor];
    v7 = [(CKEnableEnhancedProtectionCell *)self contentView];
    v8 = [v7 layoutMarginsGuide];
    v9 = [v8 trailingAnchor];
    v10 = [v6 constraintEqualToAnchor:v9];
    v74[3] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
    [v71 addObjectsFromArray:v11];

    v66 = [(UIView *)self->_separatorView leadingAnchor];
    v69 = [(CKEnableEnhancedProtectionCell *)self contentView];
    v63 = [v69 layoutMarginsGuide];
    v60 = [v63 leadingAnchor];
    v57 = [v66 constraintEqualToAnchor:v60];
    v73[0] = v57;
    v51 = [(UIView *)self->_separatorView trailingAnchor];
    v54 = [(CKEnableEnhancedProtectionCell *)self contentView];
    v48 = [v54 layoutMarginsGuide];
    v45 = [v48 trailingAnchor];
    v12 = [v51 constraintEqualToAnchor:v45];
    v73[1] = v12;
    v13 = [(UIView *)self->_separatorView bottomAnchor];
    v14 = [(CKEnableEnhancedProtectionCell *)self contentView];
    v15 = [v14 layoutMarginsGuide];
    v16 = [v15 bottomAnchor];
    v17 = [v13 constraintEqualToAnchor:v16];
    v73[2] = v17;
    v18 = [(UIView *)self->_separatorView heightAnchor];
    v19 = [v18 constraintEqualToConstant:1.0];
    v73[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
    [v71 addObjectsFromArray:v20];
  }

  v21 = [(UILabel *)self->_ktTitleLabel leadingAnchor];
  v67 = [(CKEnableEnhancedProtectionCell *)self contentView];
  v64 = [v67 layoutMarginsGuide];
  [v64 leadingAnchor];
  v61 = v70 = v21;
  v58 = [v21 constraintEqualToAnchor:?];
  v72[0] = v58;
  v22 = [(UILabel *)self->_ktTitleLabel trailingAnchor];
  v52 = [(CKEnableEnhancedProtectionCell *)self contentView];
  v49 = [v52 layoutMarginsGuide];
  [v49 trailingAnchor];
  v46 = v55 = v22;
  v43 = [v22 constraintLessThanOrEqualToAnchor:?];
  v72[1] = v43;
  v23 = [(UILabel *)self->_ktTitleLabel topAnchor];
  macHeaderLabel = self->_macHeaderLabel;
  if (macHeaderLabel)
  {
    v25 = [(UILabel *)self->_macHeaderLabel bottomAnchor];
    v39 = v25;
  }

  else
  {
    v39 = [(CKEnableEnhancedProtectionCell *)self contentView];
    v37 = [v39 layoutMarginsGuide];
    v25 = [v37 topAnchor];
  }

  v26 = +[CKUIBehavior sharedBehaviors];
  [v26 detailsCellLabelPadding];
  v41 = v23;
  v27 = [v23 constraintEqualToAnchor:v25 constant:?];
  v72[2] = v27;
  v28 = [(UILabel *)self->_ktTitleLabel bottomAnchor];
  v29 = self->_macHeaderLabel;
  if (v29)
  {
    [(UIView *)self->_separatorView topAnchor];
  }

  else
  {
    v36 = [(CKEnableEnhancedProtectionCell *)self contentView];
    v35 = [v36 layoutMarginsGuide];
    [v35 bottomAnchor];
  }
  v30 = ;
  v31 = +[CKUIBehavior sharedBehaviors];
  [v31 detailsCellLabelPadding];
  v33 = [v28 constraintEqualToAnchor:v30 constant:-v32];
  v72[3] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:4];
  [v71 addObjectsFromArray:v34];

  if (!v29)
  {

    v30 = v36;
  }

  if (!macHeaderLabel)
  {
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v71];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(CKEnableEnhancedProtectionCell *)self contentView:a3.width];
  [v5 layoutMargins];
  v7 = v6;
  v8 = [(CKEnableEnhancedProtectionCell *)self contentView];
  [v8 layoutMargins];
  v10 = v7 + v9;

  v11 = [(CKEnableEnhancedProtectionCell *)self contentView];
  [v11 frame];
  v13 = v12 - v10;

  v14 = 0.0;
  if (self->_shouldShowMacHeader)
  {
    macHeaderLabel = self->_macHeaderLabel;
    if (macHeaderLabel)
    {
      [(UILabel *)macHeaderLabel sizeThatFits:v13, 1.79769313e308];
      v17 = v16;
      v18 = +[CKUIBehavior sharedBehaviors];
      [v18 detailsSectionHeaderPaddingAbove];
      v20 = v17 + v19;

      [(UIView *)self->_separatorView frame];
      v14 = v20 + v21;
    }
  }

  [(UILabel *)self->_ktTitleLabel sizeThatFits:v13, 1.79769313e308];
  v23 = v14 + v22;
  v24 = +[CKUIBehavior sharedBehaviors];
  [v24 detailsCellLabelPadding];
  v26 = v23 + v25 * 2.0;

  v27 = [(CKEnableEnhancedProtectionCell *)self contentView];
  [v27 layoutMargins];
  v29 = v26 + v28;
  v30 = [(CKEnableEnhancedProtectionCell *)self contentView];
  [v30 layoutMargins];
  v32 = v29 + v31;

  v33 = width;
  v34 = v32;
  result.height = v34;
  result.width = v33;
  return result;
}

@end