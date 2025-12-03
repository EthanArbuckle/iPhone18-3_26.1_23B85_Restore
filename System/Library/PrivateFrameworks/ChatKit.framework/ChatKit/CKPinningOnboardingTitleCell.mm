@interface CKPinningOnboardingTitleCell
- (CKPinningOnboardingTitleCell)initWithFrame:(CGRect)frame;
- (double)pinningOnboardingMarginForPinnedConversationViewLayoutStyle:(int64_t)style;
- (double)pinningOnboardingSubtitleSpacingForPinnedConversationViewLayoutStyle:(int64_t)style;
- (id)pinningOnboardingTitleLabelFontForPinnedConversationViewLayoutStyle:(int64_t)style inCollapsedState:(BOOL)state;
- (void)setPinnedConversationViewLayoutStyle:(int64_t)style collapsedState:(BOOL)state;
- (void)updateConstraints;
@end

@implementation CKPinningOnboardingTitleCell

- (CKPinningOnboardingTitleCell)initWithFrame:(CGRect)frame
{
  v95[9] = *MEMORY[0x1E69E9840];
  v94.receiver = self;
  v94.super_class = CKPinningOnboardingTitleCell;
  v3 = [(CKPinningOnboardingTitleCell *)&v94 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKPinningOnboardingTitleCell *)v3 setIsInCollapsedState:1];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(CKPinningOnboardingTitleCell *)v4 setTitleLabel:v5];

    titleLabel = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    [titleLabel2 setTextAlignment:1];

    titleLabel3 = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    [titleLabel3 setNumberOfLines:0];

    v9 = [(CKPinningOnboardingTitleCell *)v4 pinningOnboardingTitleLabelFontForPinnedConversationViewLayoutStyle:[(CKPinningOnboardingTitleCell *)v4 pinnedConversationViewLayoutStyle] inCollapsedState:[(CKPinningOnboardingTitleCell *)v4 isInCollapsedState]];
    titleLabel4 = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    [titleLabel4 setFont:v9];

    v11 = +[CKUIBehavior sharedBehaviors];
    theme = [v11 theme];
    conversationListPinningOnboardingTitleColor = [theme conversationListPinningOnboardingTitleColor];
    titleLabel5 = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    [titleLabel5 setTextColor:conversationListPinningOnboardingTitleColor];

    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"PINNING_ONBOARDING_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    titleLabel6 = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    [titleLabel6 setText:v16];

    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(CKPinningOnboardingTitleCell *)v4 setSubtitleLabel:v18];

    subtitleLabel = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    [subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    subtitleLabel2 = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    [subtitleLabel2 setTextAlignment:1];

    subtitleLabel3 = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    [subtitleLabel3 setNumberOfLines:0];

    v22 = +[CKUIBehavior sharedBehaviors];
    pinningOnboardingSubtitleLabelFont = [v22 pinningOnboardingSubtitleLabelFont];
    subtitleLabel4 = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    [subtitleLabel4 setFont:pinningOnboardingSubtitleLabelFont];

    v25 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v25 theme];
    conversationListPinningOnboardingSubtitleColor = [theme2 conversationListPinningOnboardingSubtitleColor];
    subtitleLabel5 = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    [subtitleLabel5 setTextColor:conversationListPinningOnboardingSubtitleColor];

    v29 = CKFrameworkBundle();
    v30 = [v29 localizedStringForKey:@"PINNING_ONBOARDING_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    subtitleLabel6 = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    [subtitleLabel6 setText:v30];

    contentView = [(CKPinningOnboardingTitleCell *)v4 contentView];
    titleLabel7 = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    [contentView addSubview:titleLabel7];

    contentView2 = [(CKPinningOnboardingTitleCell *)v4 contentView];
    subtitleLabel7 = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    [contentView2 addSubview:subtitleLabel7];

    v36 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(CKPinningOnboardingTitleCell *)v4 setLabelMarginGuide:v36];

    contentView3 = [(CKPinningOnboardingTitleCell *)v4 contentView];
    labelMarginGuide = [(CKPinningOnboardingTitleCell *)v4 labelMarginGuide];
    [contentView3 addLayoutGuide:labelMarginGuide];

    [(CKPinningOnboardingTitleCell *)v4 pinningOnboardingMarginForPinnedConversationViewLayoutStyle:[(CKPinningOnboardingTitleCell *)v4 pinnedConversationViewLayoutStyle]];
    v40 = v39;
    labelMarginGuide2 = [(CKPinningOnboardingTitleCell *)v4 labelMarginGuide];
    leadingAnchor = [labelMarginGuide2 leadingAnchor];
    contentView4 = [(CKPinningOnboardingTitleCell *)v4 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v40];
    [(CKPinningOnboardingTitleCell *)v4 setLeadingMarginLayoutConstraint:v45];

    labelMarginGuide3 = [(CKPinningOnboardingTitleCell *)v4 labelMarginGuide];
    trailingAnchor = [labelMarginGuide3 trailingAnchor];
    contentView5 = [(CKPinningOnboardingTitleCell *)v4 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v40];
    [(CKPinningOnboardingTitleCell *)v4 setTrailingMarginLayoutConstraint:v50];

    [(CKPinningOnboardingTitleCell *)v4 pinningOnboardingSubtitleSpacingForPinnedConversationViewLayoutStyle:[(CKPinningOnboardingTitleCell *)v4 pinnedConversationViewLayoutStyle]];
    v52 = v51;
    titleLabel8 = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    bottomAnchor = [titleLabel8 bottomAnchor];
    subtitleLabel8 = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    topAnchor = [subtitleLabel8 topAnchor];
    v57 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-v52];
    [(CKPinningOnboardingTitleCell *)v4 setSubtitleSpacingConstraint:v57];

    v79 = MEMORY[0x1E696ACD8];
    leadingMarginLayoutConstraint = [(CKPinningOnboardingTitleCell *)v4 leadingMarginLayoutConstraint];
    v95[0] = leadingMarginLayoutConstraint;
    trailingMarginLayoutConstraint = [(CKPinningOnboardingTitleCell *)v4 trailingMarginLayoutConstraint];
    v95[1] = trailingMarginLayoutConstraint;
    subtitleSpacingConstraint = [(CKPinningOnboardingTitleCell *)v4 subtitleSpacingConstraint];
    v95[2] = subtitleSpacingConstraint;
    titleLabel9 = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    topAnchor2 = [titleLabel9 topAnchor];
    contentView6 = [(CKPinningOnboardingTitleCell *)v4 contentView];
    topAnchor3 = [contentView6 topAnchor];
    v86 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:16.0];
    v95[3] = v86;
    subtitleLabel9 = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    bottomAnchor2 = [subtitleLabel9 bottomAnchor];
    contentView7 = [(CKPinningOnboardingTitleCell *)v4 contentView];
    bottomAnchor3 = [contentView7 bottomAnchor];
    v81 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-16.0];
    v95[4] = v81;
    titleLabel10 = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    leadingAnchor3 = [titleLabel10 leadingAnchor];
    labelMarginGuide4 = [(CKPinningOnboardingTitleCell *)v4 labelMarginGuide];
    leadingAnchor4 = [labelMarginGuide4 leadingAnchor];
    v75 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v95[5] = v75;
    titleLabel11 = [(CKPinningOnboardingTitleCell *)v4 titleLabel];
    trailingAnchor3 = [titleLabel11 trailingAnchor];
    labelMarginGuide5 = [(CKPinningOnboardingTitleCell *)v4 labelMarginGuide];
    trailingAnchor4 = [labelMarginGuide5 trailingAnchor];
    v70 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v95[6] = v70;
    subtitleLabel10 = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    leadingAnchor5 = [subtitleLabel10 leadingAnchor];
    labelMarginGuide6 = [(CKPinningOnboardingTitleCell *)v4 labelMarginGuide];
    leadingAnchor6 = [labelMarginGuide6 leadingAnchor];
    v60 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v95[7] = v60;
    subtitleLabel11 = [(CKPinningOnboardingTitleCell *)v4 subtitleLabel];
    trailingAnchor5 = [subtitleLabel11 trailingAnchor];
    labelMarginGuide7 = [(CKPinningOnboardingTitleCell *)v4 labelMarginGuide];
    trailingAnchor6 = [labelMarginGuide7 trailingAnchor];
    v65 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v95[8] = v65;
    v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:9];
    [v79 activateConstraints:v66];
  }

  return v4;
}

- (void)updateConstraints
{
  [(CKPinningOnboardingTitleCell *)self pinningOnboardingMarginForPinnedConversationViewLayoutStyle:[(CKPinningOnboardingTitleCell *)self pinnedConversationViewLayoutStyle]];
  v4 = v3;
  v5 = [(CKPinningOnboardingTitleCell *)self pinningOnboardingTitleLabelFontForPinnedConversationViewLayoutStyle:[(CKPinningOnboardingTitleCell *)self pinnedConversationViewLayoutStyle] inCollapsedState:[(CKPinningOnboardingTitleCell *)self isInCollapsedState]];
  titleLabel = [(CKPinningOnboardingTitleCell *)self titleLabel];
  [titleLabel setFont:v5];

  leadingMarginLayoutConstraint = [(CKPinningOnboardingTitleCell *)self leadingMarginLayoutConstraint];
  [leadingMarginLayoutConstraint setConstant:v4];

  trailingMarginLayoutConstraint = [(CKPinningOnboardingTitleCell *)self trailingMarginLayoutConstraint];
  [trailingMarginLayoutConstraint setConstant:-v4];

  [(CKPinningOnboardingTitleCell *)self pinningOnboardingSubtitleSpacingForPinnedConversationViewLayoutStyle:[(CKPinningOnboardingTitleCell *)self pinnedConversationViewLayoutStyle]];
  v10 = -v9;
  subtitleSpacingConstraint = [(CKPinningOnboardingTitleCell *)self subtitleSpacingConstraint];
  [subtitleSpacingConstraint setConstant:v10];

  v12.receiver = self;
  v12.super_class = CKPinningOnboardingTitleCell;
  [(CKPinningOnboardingTitleCell *)&v12 updateConstraints];
}

- (void)setPinnedConversationViewLayoutStyle:(int64_t)style collapsedState:(BOOL)state
{
  [(CKPinningOnboardingTitleCell *)self setIsInCollapsedState:state];
  [(CKPinningOnboardingTitleCell *)self setPinnedConversationViewLayoutStyle:style];

  [(CKPinningOnboardingTitleCell *)self updateConstraintsIfNeeded];
}

- (id)pinningOnboardingTitleLabelFontForPinnedConversationViewLayoutStyle:(int64_t)style inCollapsedState:(BOOL)state
{
  if ((style & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (state)
    {
      v4 = 2;
    }

    else
    {
      v4 = 32770;
    }

    v5 = MEMORY[0x1E69DDDC8];
    if (!state)
    {
      v5 = MEMORY[0x1E69DDDB8];
    }

    v6 = *v5;
  }

  else
  {
    v6 = *MEMORY[0x1E69DDD58];
    v4 = 2;
  }

  v7 = v6;
  v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7 addingSymbolicTraits:v4 options:0];
  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];

  return v9;
}

- (double)pinningOnboardingSubtitleSpacingForPinnedConversationViewLayoutStyle:(int64_t)style
{
  result = 15.0;
  if ((style & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 11.0;
  }

  return result;
}

- (double)pinningOnboardingMarginForPinnedConversationViewLayoutStyle:(int64_t)style
{
  result = 16.0;
  if (style <= 4)
  {
    return dbl_190DD0F20[style];
  }

  return result;
}

@end