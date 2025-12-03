@interface CKEnableEnhancedProtectionCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKEnableEnhancedProtectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier conversation:(id)conversation shouldShowMacHeader:(BOOL)header;
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
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:1];
}

- (CKEnableEnhancedProtectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier conversation:(id)conversation shouldShowMacHeader:(BOOL)header
{
  v10.receiver = self;
  v10.super_class = CKEnableEnhancedProtectionCell;
  conversation = [(CKDetailsCell *)&v10 initWithStyle:style reuseIdentifier:identifier, conversation];
  v8 = conversation;
  if (conversation)
  {
    conversation->_shouldShowMacHeader = header;
    [(CKEnableEnhancedProtectionCell *)conversation setupView];
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

  contentView = [(CKEnableEnhancedProtectionCell *)self contentView];
  [contentView setBackgroundColor:0];

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
  textLabel = [(CKEnableEnhancedProtectionCell *)self textLabel];
  font = [textLabel font];
  [(UILabel *)v9 setFont:font];

  v12 = self->_ktTitleLabel;
  v13 = +[CKUIBehavior sharedBehaviors];
  theme = [v13 theme];
  detailsTextColor = [theme detailsTextColor];
  [(UILabel *)v12 setTextColor:detailsTextColor];

  [(UILabel *)self->_ktTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_ktTitleLabel setLineBreakMode:4];
  [(UILabel *)self->_ktTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  LODWORD(v13) = [mEMORY[0x1E69A5B00] isSatelliteConnectionActive];

  [(CKEnableEnhancedProtectionCell *)self setUserInteractionEnabled:v13 ^ 1];
  [(UILabel *)self->_ktTitleLabel setEnabled:v13 ^ 1];
  contentView = [(CKEnableEnhancedProtectionCell *)self contentView];
  [contentView addSubview:self->_ktTitleLabel];
}

- (void)addConstraints
{
  v74[4] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (CKIsRunningInMacCatalyst() && self->_shouldShowMacHeader)
  {
    topAnchor = [(UILabel *)self->_macHeaderLabel topAnchor];
    contentView = [(CKEnableEnhancedProtectionCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v59 = +[CKUIBehavior sharedBehaviors];
    [v59 detailsSectionHeaderPaddingAbove];
    v53 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v74[0] = v53;
    heightAnchor = [(UILabel *)self->_macHeaderLabel heightAnchor];
    font = [(UILabel *)self->_macHeaderLabel font];
    [font pointSize];
    v44 = [heightAnchor constraintEqualToConstant:?];
    v74[1] = v44;
    leadingAnchor = [(UILabel *)self->_macHeaderLabel leadingAnchor];
    contentView2 = [(CKEnableEnhancedProtectionCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 detailsSectionHeaderPaddingLeading];
    v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v74[2] = v5;
    trailingAnchor = [(UILabel *)self->_macHeaderLabel trailingAnchor];
    contentView3 = [(CKEnableEnhancedProtectionCell *)self contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v74[3] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
    [array addObjectsFromArray:v11];

    leadingAnchor3 = [(UIView *)self->_separatorView leadingAnchor];
    contentView4 = [(CKEnableEnhancedProtectionCell *)self contentView];
    layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
    v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v73[0] = v57;
    trailingAnchor3 = [(UIView *)self->_separatorView trailingAnchor];
    contentView5 = [(CKEnableEnhancedProtectionCell *)self contentView];
    layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
    v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v73[1] = v12;
    bottomAnchor = [(UIView *)self->_separatorView bottomAnchor];
    contentView6 = [(CKEnableEnhancedProtectionCell *)self contentView];
    layoutMarginsGuide6 = [contentView6 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide6 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v73[2] = v17;
    heightAnchor2 = [(UIView *)self->_separatorView heightAnchor];
    v19 = [heightAnchor2 constraintEqualToConstant:1.0];
    v73[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
    [array addObjectsFromArray:v20];
  }

  leadingAnchor5 = [(UILabel *)self->_ktTitleLabel leadingAnchor];
  contentView7 = [(CKEnableEnhancedProtectionCell *)self contentView];
  layoutMarginsGuide7 = [contentView7 layoutMarginsGuide];
  [layoutMarginsGuide7 leadingAnchor];
  v61 = v70 = leadingAnchor5;
  v58 = [leadingAnchor5 constraintEqualToAnchor:?];
  v72[0] = v58;
  trailingAnchor5 = [(UILabel *)self->_ktTitleLabel trailingAnchor];
  contentView8 = [(CKEnableEnhancedProtectionCell *)self contentView];
  layoutMarginsGuide8 = [contentView8 layoutMarginsGuide];
  [layoutMarginsGuide8 trailingAnchor];
  v46 = v55 = trailingAnchor5;
  v43 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:?];
  v72[1] = v43;
  topAnchor3 = [(UILabel *)self->_ktTitleLabel topAnchor];
  macHeaderLabel = self->_macHeaderLabel;
  if (macHeaderLabel)
  {
    bottomAnchor3 = [(UILabel *)self->_macHeaderLabel bottomAnchor];
    contentView9 = bottomAnchor3;
  }

  else
  {
    contentView9 = [(CKEnableEnhancedProtectionCell *)self contentView];
    layoutMarginsGuide9 = [contentView9 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide9 topAnchor];
  }

  v26 = +[CKUIBehavior sharedBehaviors];
  [v26 detailsCellLabelPadding];
  v41 = topAnchor3;
  v27 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:?];
  v72[2] = v27;
  bottomAnchor4 = [(UILabel *)self->_ktTitleLabel bottomAnchor];
  v29 = self->_macHeaderLabel;
  if (v29)
  {
    [(UIView *)self->_separatorView topAnchor];
  }

  else
  {
    contentView10 = [(CKEnableEnhancedProtectionCell *)self contentView];
    layoutMarginsGuide10 = [contentView10 layoutMarginsGuide];
    [layoutMarginsGuide10 bottomAnchor];
  }
  v30 = ;
  v31 = +[CKUIBehavior sharedBehaviors];
  [v31 detailsCellLabelPadding];
  v33 = [bottomAnchor4 constraintEqualToAnchor:v30 constant:-v32];
  v72[3] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:4];
  [array addObjectsFromArray:v34];

  if (!v29)
  {

    v30 = contentView10;
  }

  if (!macHeaderLabel)
  {
  }

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(CKEnableEnhancedProtectionCell *)self contentView:fits.width];
  [v5 layoutMargins];
  v7 = v6;
  contentView = [(CKEnableEnhancedProtectionCell *)self contentView];
  [contentView layoutMargins];
  v10 = v7 + v9;

  contentView2 = [(CKEnableEnhancedProtectionCell *)self contentView];
  [contentView2 frame];
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

  contentView3 = [(CKEnableEnhancedProtectionCell *)self contentView];
  [contentView3 layoutMargins];
  v29 = v26 + v28;
  contentView4 = [(CKEnableEnhancedProtectionCell *)self contentView];
  [contentView4 layoutMargins];
  v32 = v29 + v31;

  v33 = width;
  v34 = v32;
  result.height = v34;
  result.width = v33;
  return result;
}

@end