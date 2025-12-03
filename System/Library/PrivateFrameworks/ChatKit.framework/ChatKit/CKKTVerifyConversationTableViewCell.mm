@interface CKKTVerifyConversationTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKKTVerifyConversationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier numberOfRowsInSection:(int64_t)section shouldShowMacHeader:(BOOL)header ktStatus:(unint64_t)status;
- (id)verifyTitleString;
- (void)addConstraints;
- (void)setupSeparators;
- (void)setupTitleLabel;
- (void)setupView;
- (void)updateForNewKTState;
@end

@implementation CKKTVerifyConversationTableViewCell

- (CKKTVerifyConversationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier numberOfRowsInSection:(int64_t)section shouldShowMacHeader:(BOOL)header ktStatus:(unint64_t)status
{
  v13.receiver = self;
  v13.super_class = CKKTVerifyConversationTableViewCell;
  v10 = [(CKDetailsCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    v10->_numberOfRowsInSection = section;
    v10->_shouldShowMacHeader = header;
    v10->_ktStatus = status;
    [(CKKTVerifyConversationTableViewCell *)v10 setupView];
  }

  return v11;
}

- (void)setupView
{
  [(CKKTVerifyConversationTableViewCell *)self setupTitleLabel];
  [(CKKTVerifyConversationTableViewCell *)self setupSeparators];
  if (self->_shouldShowMacHeader)
  {
    [(CKKTVerifyConversationTableViewCell *)self setupMacHeaderLabel];
  }

  contentView = [(CKKTVerifyConversationTableViewCell *)self contentView];
  [contentView setBackgroundColor:0];

  [(CKKTVerifyConversationTableViewCell *)self addConstraints];
}

- (void)setupSeparators
{
  v3 = self->_numberOfRowsInSection < 2;
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:v3];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:1];

  [(CKDetailsCell *)self setIndentTopSeperator:1];

  [(CKDetailsCell *)self setIndentBottomSeperator:1];
}

- (void)setupTitleLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  verifyConversationLabel = self->_verifyConversationLabel;
  self->_verifyConversationLabel = v4;

  v6 = self->_verifyConversationLabel;
  verifyTitleString = [(CKKTVerifyConversationTableViewCell *)self verifyTitleString];
  [(UILabel *)v6 setText:verifyTitleString];

  v8 = self->_verifyConversationLabel;
  textLabel = [(CKKTVerifyConversationTableViewCell *)self textLabel];
  font = [textLabel font];
  [(UILabel *)v8 setFont:font];

  v11 = self->_verifyConversationLabel;
  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  detailsTextColor = [theme detailsTextColor];
  [(UILabel *)v11 setTextColor:detailsTextColor];

  [(UILabel *)self->_verifyConversationLabel setNumberOfLines:0];
  [(UILabel *)self->_verifyConversationLabel setLineBreakMode:4];
  [(UILabel *)self->_verifyConversationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CKKTVerifyConversationTableViewCell *)self contentView];
  [contentView addSubview:self->_verifyConversationLabel];
}

- (void)addConstraints
{
  v55[4] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v3 = 0x1E695D000;
  if (CKIsRunningInMacCatalyst() && self->_shouldShowMacHeader)
  {
    topAnchor = [(UILabel *)self->_macHeaderLabel topAnchor];
    contentView = [(CKKTVerifyConversationTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v45 = +[CKUIBehavior sharedBehaviors];
    [v45 detailsSectionHeaderPaddingAbove];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v55[0] = v41;
    heightAnchor = [(UILabel *)self->_macHeaderLabel heightAnchor];
    font = [(UILabel *)self->_macHeaderLabel font];
    [font pointSize];
    v35 = [heightAnchor constraintEqualToConstant:?];
    v55[1] = v35;
    leadingAnchor = [(UILabel *)self->_macHeaderLabel leadingAnchor];
    contentView2 = [(CKKTVerifyConversationTableViewCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 detailsSectionHeaderPaddingLeading];
    v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v55[2] = v6;
    trailingAnchor = [(UILabel *)self->_macHeaderLabel trailingAnchor];
    contentView3 = [(CKKTVerifyConversationTableViewCell *)self contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v55[3] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
    [array addObjectsFromArray:v12];

    v3 = 0x1E695D000uLL;
  }

  leadingAnchor3 = [(UILabel *)self->_verifyConversationLabel leadingAnchor];
  contentView4 = [(CKKTVerifyConversationTableViewCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  [layoutMarginsGuide4 leadingAnchor];
  v46 = v52 = leadingAnchor3;
  v44 = [leadingAnchor3 constraintEqualToAnchor:?];
  v54[0] = v44;
  trailingAnchor3 = [(UILabel *)self->_verifyConversationLabel trailingAnchor];
  contentView5 = [(CKKTVerifyConversationTableViewCell *)self contentView];
  layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
  [layoutMarginsGuide5 trailingAnchor];
  v36 = v42 = trailingAnchor3;
  v34 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:?];
  v54[1] = v34;
  topAnchor3 = [(UILabel *)self->_verifyConversationLabel topAnchor];
  macHeaderLabel = self->_macHeaderLabel;
  v32 = macHeaderLabel;
  if (macHeaderLabel)
  {
    [(UILabel *)macHeaderLabel bottomAnchor];
  }

  else
  {
    contentView6 = [(CKKTVerifyConversationTableViewCell *)self contentView];
    layoutMarginsGuide6 = [contentView6 layoutMarginsGuide];
    [layoutMarginsGuide6 topAnchor];
  }
  v17 = ;
  v30 = +[CKUIBehavior sharedBehaviors];
  [v30 detailsCellLabelPadding];
  v18 = [topAnchor3 constraintEqualToAnchor:v17 constant:?];
  v54[2] = v18;
  bottomAnchor = [(UILabel *)self->_verifyConversationLabel bottomAnchor];
  contentView7 = [(CKKTVerifyConversationTableViewCell *)self contentView];
  layoutMarginsGuide7 = [contentView7 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide7 bottomAnchor];
  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 detailsCellLabelPadding];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v24];
  v54[3] = v25;
  v26 = [*(v3 + 3784) arrayWithObjects:v54 count:4];
  [array addObjectsFromArray:v26];

  if (!v32)
  {

    v17 = contentView6;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(CKKTVerifyConversationTableViewCell *)self contentView:fits.width];
  [v5 layoutMargins];
  v7 = v6;
  contentView = [(CKKTVerifyConversationTableViewCell *)self contentView];
  [contentView layoutMargins];
  v10 = v7 + v9;

  contentView2 = [(CKKTVerifyConversationTableViewCell *)self contentView];
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
      v14 = v17 + v19;
    }
  }

  [(UILabel *)self->_verifyConversationLabel sizeThatFits:v13, 1.79769313e308];
  v21 = v14 + v20;
  v22 = +[CKUIBehavior sharedBehaviors];
  [v22 detailsCellLabelPadding];
  v24 = v21 + v23 * 2.0;

  contentView3 = [(CKKTVerifyConversationTableViewCell *)self contentView];
  [contentView3 layoutMargins];
  v27 = v24 + v26;
  contentView4 = [(CKKTVerifyConversationTableViewCell *)self contentView];
  [contentView4 layoutMargins];
  v30 = v27 + v29;

  v31 = width;
  v32 = v30;
  result.height = v32;
  result.width = v31;
  return result;
}

- (void)updateForNewKTState
{
  [(CKKTVerifyConversationTableViewCell *)self setupSeparators];
  if (self->_shouldShowMacHeader)
  {
    [(CKKTVerifyConversationTableViewCell *)self setupMacHeaderLabel];
  }

  verifyConversationLabel = [(CKKTVerifyConversationTableViewCell *)self verifyConversationLabel];
  verifyTitleString = [(CKKTVerifyConversationTableViewCell *)self verifyTitleString];
  [verifyConversationLabel setText:verifyTitleString];
}

- (id)verifyTitleString
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"KT_VERIFY_CONVERSATION_CELL_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];

  if ([(CKKTVerifyConversationTableViewCell *)self ktStatus]== 4 || [(CKKTVerifyConversationTableViewCell *)self ktStatus]== 18)
  {
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"KT_SHOW_VERIFICATION_CODE_CELL_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];

    v4 = v6;
  }

  return v4;
}

@end