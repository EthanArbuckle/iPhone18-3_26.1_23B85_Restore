@interface CKDetailsTUConversationCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsTUConversationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CKDetailsTUConversationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier conversation:(id)conversation;
- (double)buttonInteritemSpacing;
- (double)buttonTitleHorizontalSpacing;
- (double)buttonTitleVerticalSpacing;
- (double)insetPadding;
- (double)interitemSpacing;
- (void)_handleMultiWayStateChange:(id)change;
- (void)actionButtonTapped:(id)tapped;
- (void)addConstraints;
- (void)configureActionButton;
- (void)configureIconView;
- (void)configureSubtitle;
- (void)formatIconViewForExpanse;
- (void)formatIconViewForFaceTime;
- (void)formatSubtitleForText;
- (void)formatTitle;
- (void)layoutSubviews;
- (void)setConversation:(id)conversation;
- (void)setState:(unint64_t)state;
- (void)setupView;
- (void)updateView;
@end

@implementation CKDetailsTUConversationCell

- (CKDetailsTUConversationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = CKDetailsTUConversationCell;
  return [(CKDetailsCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

- (CKDetailsTUConversationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier conversation:(id)conversation
{
  conversationCopy = conversation;
  v13.receiver = self;
  v13.super_class = CKDetailsTUConversationCell;
  v9 = [(CKDetailsCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(CKDetailsTUConversationCell *)v9 setConversation:conversationCopy];
    [(CKDetailsTUConversationCell *)v10 setupView];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleMultiWayStateChange_ name:*MEMORY[0x1E69A5840] object:0];
  }

  return v10;
}

- (void)setupView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(CKDetailsTUConversationCell *)self setIconView:v3];

  iconView = [(CKDetailsTUConversationCell *)self iconView];
  [iconView setContentMode:1];

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(CKDetailsTUConversationCell *)self setTitleLabel:v5];

  titleLabel = [(CKDetailsTUConversationCell *)self titleLabel];
  LODWORD(v7) = 1132068864;
  [titleLabel setContentCompressionResistancePriority:0 forAxis:v7];

  [(CKDetailsTUConversationCell *)self formatTitle];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(CKDetailsTUConversationCell *)self setSubtitleLabel:v8];

  subtitleLabel = [(CKDetailsTUConversationCell *)self subtitleLabel];
  LODWORD(v10) = 1132068864;
  [subtitleLabel setContentCompressionResistancePriority:0 forAxis:v10];

  [(CKDetailsTUConversationCell *)self formatSubtitleForText];
  v11 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(CKDetailsTUConversationCell *)self setActionButton:v11];

  actionButton = [(CKDetailsTUConversationCell *)self actionButton];
  titleLabel2 = [actionButton titleLabel];
  [titleLabel2 setNumberOfLines:1];

  actionButton2 = [(CKDetailsTUConversationCell *)self actionButton];
  titleLabel3 = [actionButton2 titleLabel];
  v16 = +[CKUIBehavior sharedBehaviors];
  tuConversationViewActionButtonFont = [v16 tuConversationViewActionButtonFont];
  [titleLabel3 setFont:tuConversationViewActionButtonFont];

  actionButton3 = [(CKDetailsTUConversationCell *)self actionButton];
  v19 = CKFrameworkBundle();
  v20 = [v19 localizedStringForKey:@"JOIN" value:&stru_1F04268F8 table:@"ChatKit"];
  [actionButton3 setTitle:v20 forState:0];

  actionButton4 = [(CKDetailsTUConversationCell *)self actionButton];
  [actionButton4 addTarget:self action:sel_actionButtonTapped_ forControlEvents:1];

  actionButton5 = [(CKDetailsTUConversationCell *)self actionButton];
  [actionButton5 setTranslatesAutoresizingMaskIntoConstraints:0];

  actionButton6 = [(CKDetailsTUConversationCell *)self actionButton];
  [actionButton6 setContentEdgeInsets:{6.0, 17.0, 6.0, 17.0}];

  actionButton7 = [(CKDetailsTUConversationCell *)self actionButton];
  [actionButton7 sizeToFit];

  actionButton8 = [(CKDetailsTUConversationCell *)self actionButton];
  layer = [actionButton8 layer];
  v27 = +[CKUIBehavior sharedBehaviors];
  if ([v27 isAccessibilityPreferredContentSizeCategory])
  {
    actionButton9 = [(CKDetailsTUConversationCell *)self actionButton];
    [actionButton9 frame];
    v30 = v29 * 0.5;
  }

  else
  {
    actionButton9 = +[CKUIBehavior sharedBehaviors];
    [actionButton9 tuConversationJoinButtonCornerRadius];
  }

  [layer setCornerRadius:v30];

  actionButton10 = [(CKDetailsTUConversationCell *)self actionButton];
  LODWORD(v32) = 1148846080;
  [actionButton10 setContentCompressionResistancePriority:0 forAxis:v32];

  actionButton11 = [(CKDetailsTUConversationCell *)self actionButton];
  LODWORD(v34) = 1148846080;
  [actionButton11 setContentHuggingPriority:0 forAxis:v34];

  contentView = [(CKDetailsTUConversationCell *)self contentView];
  titleLabel4 = [(CKDetailsTUConversationCell *)self titleLabel];
  [contentView addSubview:titleLabel4];

  contentView2 = [(CKDetailsTUConversationCell *)self contentView];
  subtitleLabel2 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  [contentView2 addSubview:subtitleLabel2];

  contentView3 = [(CKDetailsTUConversationCell *)self contentView];
  iconView2 = [(CKDetailsTUConversationCell *)self iconView];
  [contentView3 addSubview:iconView2];

  contentView4 = [(CKDetailsTUConversationCell *)self contentView];
  actionButton12 = [(CKDetailsTUConversationCell *)self actionButton];
  [contentView4 addSubview:actionButton12];

  [(CKDetailsTUConversationCell *)self setClipsToBounds:0];
  [(CKDetailsTUConversationCell *)self updateView];

  [(CKDetailsTUConversationCell *)self addConstraints];
}

- (void)addConstraints
{
  v103[14] = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 detailsTUConversationDetailsSummaryImageDiameter];
  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 contactImageSize];
  v8 = (v7 - v5) * 0.5;
  if (CKMainScreenScale_once_85 != -1)
  {
    [CKDetailsTUConversationCell addConstraints];
  }

  v9 = *&CKMainScreenScale_sMainScreenScale_85;
  if (*&CKMainScreenScale_sMainScreenScale_85 == 0.0)
  {
    v9 = 1.0;
  }

  v10 = round(v8 * v9) / v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v11 isAccessibilityPreferredContentSizeCategory];

  iconView = [(CKDetailsTUConversationCell *)self iconView];
  widthAnchor = [iconView widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:v5];
  v99 = v13;
  if (isAccessibilityPreferredContentSizeCategory)
  {
    v103[0] = v13;
    iconView2 = [(CKDetailsTUConversationCell *)self iconView];
    heightAnchor = [iconView2 heightAnchor];
    v96 = [heightAnchor constraintEqualToConstant:v5];
    v103[1] = v96;
    iconView3 = [(CKDetailsTUConversationCell *)self iconView];
    leadingAnchor = [iconView3 leadingAnchor];
    layoutMarginsGuide = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [layoutMarginsGuide leadingAnchor];
    v92 = v94 = leadingAnchor;
    v91 = [leadingAnchor constraintEqualToAnchor:v10 constant:?];
    v103[2] = v91;
    iconView4 = [(CKDetailsTUConversationCell *)self iconView];
    topAnchor = [iconView4 topAnchor];
    layoutMarginsGuide2 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [layoutMarginsGuide2 topAnchor];
    v87 = v89 = topAnchor;
    v86 = [topAnchor constraintEqualToAnchor:?];
    v103[3] = v86;
    titleLabel = [(CKDetailsTUConversationCell *)self titleLabel];
    leadingAnchor2 = [titleLabel leadingAnchor];
    layoutMarginsGuide3 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [layoutMarginsGuide3 leadingAnchor];
    v82 = v84 = leadingAnchor2;
    v81 = [leadingAnchor2 constraintEqualToAnchor:v10 constant:?];
    v103[4] = v81;
    titleLabel2 = [(CKDetailsTUConversationCell *)self titleLabel];
    topAnchor2 = [titleLabel2 topAnchor];
    iconView5 = [(CKDetailsTUConversationCell *)self iconView];
    [iconView5 bottomAnchor];
    v77 = v79 = topAnchor2;
    v76 = [topAnchor2 constraintEqualToAnchor:?];
    v103[5] = v76;
    titleLabel3 = [(CKDetailsTUConversationCell *)self titleLabel];
    widthAnchor2 = [titleLabel3 widthAnchor];
    layoutMarginsGuide4 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [layoutMarginsGuide4 widthAnchor];
    v72 = v74 = widthAnchor2;
    v71 = [widthAnchor2 constraintEqualToAnchor:?];
    v103[6] = v71;
    subtitleLabel = [(CKDetailsTUConversationCell *)self subtitleLabel];
    leadingAnchor3 = [subtitleLabel leadingAnchor];
    layoutMarginsGuide5 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [layoutMarginsGuide5 leadingAnchor];
    v67 = v69 = leadingAnchor3;
    v66 = [leadingAnchor3 constraintEqualToAnchor:v10 constant:?];
    v103[7] = v66;
    subtitleLabel2 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    topAnchor3 = [subtitleLabel2 topAnchor];
    titleLabel4 = [(CKDetailsTUConversationCell *)self titleLabel];
    [titleLabel4 bottomAnchor];
    v62 = v64 = topAnchor3;
    v61 = [topAnchor3 constraintEqualToAnchor:?];
    v103[8] = v61;
    subtitleLabel3 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    widthAnchor3 = [subtitleLabel3 widthAnchor];
    layoutMarginsGuide6 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [layoutMarginsGuide6 widthAnchor];
    v57 = v59 = widthAnchor3;
    v56 = [widthAnchor3 constraintEqualToAnchor:?];
    v103[9] = v56;
    actionButton = [(CKDetailsTUConversationCell *)self actionButton];
    leadingAnchor4 = [actionButton leadingAnchor];
    layoutMarginsGuide7 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [layoutMarginsGuide7 leadingAnchor];
    v52 = v54 = leadingAnchor4;
    v51 = [leadingAnchor4 constraintEqualToAnchor:v10 constant:?];
    v103[10] = v51;
    actionButton2 = [(CKDetailsTUConversationCell *)self actionButton];
    topAnchor4 = [actionButton2 topAnchor];
    subtitleLabel4 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    [subtitleLabel4 bottomAnchor];
    v47 = v49 = topAnchor4;
    v46 = [topAnchor4 constraintEqualToAnchor:?];
    v103[11] = v46;
    actionButton3 = [(CKDetailsTUConversationCell *)self actionButton];
    heightAnchor2 = [actionButton3 heightAnchor];
    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 tuConversationJoinButtonHeight];
    v27 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:?];
    v103[12] = v27;
    v28 = v103;
  }

  else
  {
    v102[0] = v13;
    iconView2 = [(CKDetailsTUConversationCell *)self iconView];
    heightAnchor = [iconView2 heightAnchor];
    v96 = [heightAnchor constraintEqualToConstant:v5];
    v102[1] = v96;
    iconView3 = [(CKDetailsTUConversationCell *)self iconView];
    leadingAnchor5 = [iconView3 leadingAnchor];
    layoutMarginsGuide = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [layoutMarginsGuide leadingAnchor];
    v92 = v94 = leadingAnchor5;
    v91 = [leadingAnchor5 constraintEqualToAnchor:v10 constant:?];
    v102[2] = v91;
    iconView4 = [(CKDetailsTUConversationCell *)self iconView];
    centerYAnchor = [iconView4 centerYAnchor];
    layoutMarginsGuide2 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [layoutMarginsGuide2 centerYAnchor];
    v87 = v89 = centerYAnchor;
    v86 = [centerYAnchor constraintEqualToAnchor:?];
    v102[3] = v86;
    titleLabel = [(CKDetailsTUConversationCell *)self titleLabel];
    leadingAnchor6 = [titleLabel leadingAnchor];
    layoutMarginsGuide3 = [(CKDetailsTUConversationCell *)self iconView];
    trailingAnchor = [layoutMarginsGuide3 trailingAnchor];
    [(CKDetailsTUConversationCell *)self interitemSpacing];
    v84 = leadingAnchor6;
    v82 = trailingAnchor;
    v81 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor constant:?];
    v102[4] = v81;
    titleLabel2 = [(CKDetailsTUConversationCell *)self titleLabel];
    bottomAnchor = [titleLabel2 bottomAnchor];
    iconView5 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [iconView5 centerYAnchor];
    v77 = v79 = bottomAnchor;
    v76 = [bottomAnchor constraintEqualToAnchor:?];
    v102[5] = v76;
    titleLabel3 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    leadingAnchor7 = [titleLabel3 leadingAnchor];
    layoutMarginsGuide4 = [(CKDetailsTUConversationCell *)self titleLabel];
    [layoutMarginsGuide4 leadingAnchor];
    v72 = v74 = leadingAnchor7;
    v71 = [leadingAnchor7 constraintEqualToAnchor:?];
    v102[6] = v71;
    subtitleLabel = [(CKDetailsTUConversationCell *)self subtitleLabel];
    trailingAnchor2 = [subtitleLabel trailingAnchor];
    layoutMarginsGuide5 = [(CKDetailsTUConversationCell *)self titleLabel];
    [layoutMarginsGuide5 trailingAnchor];
    v67 = v69 = trailingAnchor2;
    v66 = [trailingAnchor2 constraintEqualToAnchor:?];
    v102[7] = v66;
    subtitleLabel2 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    topAnchor5 = [subtitleLabel2 topAnchor];
    titleLabel4 = [(CKDetailsTUConversationCell *)self titleLabel];
    [titleLabel4 bottomAnchor];
    v62 = v64 = topAnchor5;
    v61 = [topAnchor5 constraintEqualToAnchor:?];
    v102[8] = v61;
    subtitleLabel3 = [(CKDetailsTUConversationCell *)self actionButton];
    centerYAnchor2 = [subtitleLabel3 centerYAnchor];
    layoutMarginsGuide6 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [layoutMarginsGuide6 centerYAnchor];
    v57 = v59 = centerYAnchor2;
    v56 = [centerYAnchor2 constraintEqualToAnchor:?];
    v102[9] = v56;
    actionButton = [(CKDetailsTUConversationCell *)self actionButton];
    leadingAnchor8 = [actionButton leadingAnchor];
    layoutMarginsGuide7 = [(CKDetailsTUConversationCell *)self titleLabel];
    trailingAnchor3 = [layoutMarginsGuide7 trailingAnchor];
    [(CKDetailsTUConversationCell *)self interitemSpacing];
    v54 = leadingAnchor8;
    v52 = trailingAnchor3;
    v51 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor3 constant:?];
    v102[10] = v51;
    actionButton2 = [(CKDetailsTUConversationCell *)self actionButton];
    trailingAnchor4 = [actionButton2 trailingAnchor];
    subtitleLabel4 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [subtitleLabel4 trailingAnchor];
    v47 = v49 = trailingAnchor4;
    v46 = [trailingAnchor4 constraintEqualToAnchor:?];
    v102[11] = v46;
    actionButton3 = [(CKDetailsTUConversationCell *)self actionButton];
    heightAnchor2 = [actionButton3 heightAnchor];
    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 tuConversationJoinButtonHeight];
    v27 = [heightAnchor2 constraintEqualToConstant:?];
    v102[12] = v27;
    v28 = v102;
  }

  actionButton4 = [(CKDetailsTUConversationCell *)self actionButton];
  widthAnchor4 = [actionButton4 widthAnchor];
  v43 = +[CKUIBehavior sharedBehaviors];
  [v43 tuConversationJoinButtonMinWidth];
  v44 = [widthAnchor4 constraintGreaterThanOrEqualToConstant:?];
  v28[13] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:14];

  [MEMORY[0x1E696ACD8] activateConstraints:v45];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  contentView = [(CKDetailsTUConversationCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v9 = v8;

  titleLabel = [(CKDetailsTUConversationCell *)self titleLabel];
  [titleLabel sizeThatFits:{width, height}];
  v12 = v11;

  [(CKDetailsTUConversationCell *)self layoutMargins];
  v14 = v12 + v13;
  [(CKDetailsTUConversationCell *)self layoutMargins];
  v16 = v14 + v15;
  subtitleLabel = [(CKDetailsTUConversationCell *)self subtitleLabel];

  if (subtitleLabel)
  {
    subtitleLabel2 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    [subtitleLabel2 sizeThatFits:{width, height}];
    v16 = v16 + v19;
  }

  v20 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v20 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
  {
    iconView = [(CKDetailsTUConversationCell *)self iconView];
    [iconView bounds];
    v24 = v23;
    actionButton = [(CKDetailsTUConversationCell *)self actionButton];
    [actionButton bounds];
    v27 = v24 + v26;
    [(CKDetailsTUConversationCell *)self layoutMargins];
    v29 = v28 + v27;
    [(CKDetailsTUConversationCell *)self layoutMargins];
    v16 = v16 + v30 + v29;
  }

  v31 = v9;
  v32 = v16;
  result.height = v32;
  result.width = v31;
  return result;
}

- (void)setConversation:(id)conversation
{
  objc_storeStrong(&self->_conversation, conversation);

  [(CKDetailsTUConversationCell *)self updateView];
}

- (void)setState:(unint64_t)state
{
  self->_state = state;
  [(CKDetailsTUConversationCell *)self configureIconView];
  [(CKDetailsTUConversationCell *)self formatTitle];
  [(CKDetailsTUConversationCell *)self configureSubtitle];
  [(CKDetailsTUConversationCell *)self configureActionButton];

  [(CKDetailsTUConversationCell *)self setNeedsLayout];
}

- (void)configureIconView
{
  state = self->_state;
  if (state - 3 < 2 || !state && [MEMORY[0x1E69A5B78] activeTUConversationHasActivitySession:self->_conversation])
  {

    [(CKDetailsTUConversationCell *)self formatIconViewForExpanse];
  }

  else
  {

    [(CKDetailsTUConversationCell *)self formatIconViewForFaceTime];
  }
}

- (void)configureSubtitle
{
  [(CKDetailsTUConversationCell *)self formatSubtitleForText];
  state = self->_state;
  if (state - 1 >= 4)
  {
    if (state)
    {
      return;
    }

    subtitleLabel = [(CKDetailsTUConversationCell *)self subtitleLabel];
    conversation = CKFrameworkBundle();
    v5 = [conversation localizedStringForKey:@"CALL_ENDED" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    subtitleLabel = [(CKDetailsTUConversationCell *)self subtitleLabel];
    conversation = [(CKDetailsTUConversationCell *)self conversation];
    v5 = [CKTUConversationViewUtilities joinStateStatusStringForTUConversation:conversation];
  }

  v6 = v5;
  [subtitleLabel setText:v5];
}

- (void)configureActionButton
{
  state = self->_state;
  if (state <= 1)
  {
    if (!state)
    {
      actionButton = [(CKDetailsTUConversationCell *)self actionButton];
      [actionButton setHidden:1];
      goto LABEL_10;
    }

    if (state != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (state != 2)
  {
    if (state != 3)
    {
      if (state != 4)
      {
        return;
      }

      goto LABEL_5;
    }

LABEL_8:
    actionButton2 = [(CKDetailsTUConversationCell *)self actionButton];
    [actionButton2 setHidden:0];

    actionButton3 = [(CKDetailsTUConversationCell *)self actionButton];
    v12 = +[CKUIBehavior sharedBehaviors];
    theme = [v12 theme];
    multiwayButtonColor = [theme multiwayButtonColor];
    [actionButton3 setBackgroundColor:multiwayButtonColor];

    actionButton = [(CKDetailsTUConversationCell *)self actionButton];
    v7 = CKFrameworkBundle();
    v8 = v7;
    v9 = @"JOIN";
    goto LABEL_9;
  }

LABEL_5:
  actionButton4 = [(CKDetailsTUConversationCell *)self actionButton];
  [actionButton4 setHidden:0];

  actionButton5 = [(CKDetailsTUConversationCell *)self actionButton];
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  [actionButton5 setBackgroundColor:systemRedColor];

  actionButton = [(CKDetailsTUConversationCell *)self actionButton];
  v7 = CKFrameworkBundle();
  v8 = v7;
  v9 = @"LEAVE";
LABEL_9:
  v15 = [v7 localizedStringForKey:v9 value:&stru_1F04268F8 table:@"ChatKit"];
  [actionButton setTitle:v15 forState:0];

LABEL_10:
}

- (void)actionButtonTapped:(id)tapped
{
  if ([(CKDetailsTUConversationCell *)self state]== 1 || [(CKDetailsTUConversationCell *)self state]== 3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "actionButtonTapped joining existing conversation", buf, 2u);
    }

    v5 = MEMORY[0x1E69A5B78];
    conversation = [(CKDetailsTUConversationCell *)self conversation];
    v7 = [v5 conversationIsVideoCall:conversation];

    if (v7)
    {
      platformSupportsStagingArea = [MEMORY[0x1E69A5B78] platformSupportsStagingArea];
    }

    else
    {
      platformSupportsStagingArea = 0;
    }

    v9 = MEMORY[0x1E69A5B78];
    conversation2 = [(CKDetailsTUConversationCell *)self conversation];
    [v9 joinExistingConversationForTUCoversation:conversation2 videoEnabled:v7 wantsStagingArea:platformSupportsStagingArea];
  }

  else if ([(CKDetailsTUConversationCell *)self state]== 2 || [(CKDetailsTUConversationCell *)self state]== 4)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "actionButtonTapped leaving active TUConversation", v12, 2u);
    }

    [MEMORY[0x1E69A5B78] leaveTUConversation];
    [(CKDetailsTUConversationCell *)self updateView];
  }
}

- (void)_handleMultiWayStateChange:(id)change
{
  userInfo = [change userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A5838]];

  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v6 = [mEMORY[0x1E69A5AF8] existingConversationForTelephonyConversationUUID:v7];

  [(CKDetailsTUConversationCell *)self setConversation:v6];
}

- (void)updateView
{
  conversation = [(CKDetailsTUConversationCell *)self conversation];
  [(CKDetailsTUConversationCell *)self setState:[CKTUConversationViewUtilities ckTUConversationStateForTUConversation:conversation]];

  [(CKDetailsTUConversationCell *)self setNeedsLayout];

  [(CKDetailsTUConversationCell *)self layoutIfNeeded];
}

- (void)formatIconViewForFaceTime
{
  iconView = [(CKDetailsTUConversationCell *)self iconView];
  conversation = [(CKDetailsTUConversationCell *)self conversation];
  v5 = [CKTUConversationViewUtilities faceTimeIconForTUConversation:conversation];
  [iconView setImage:v5];

  iconView2 = [(CKDetailsTUConversationCell *)self iconView];
  [iconView2 setBackgroundColor:0];

  iconView3 = [(CKDetailsTUConversationCell *)self iconView];
  v8 = +[CKUIBehavior sharedBehaviors];
  theme = [v8 theme];
  expanseActivityViewIconTintColor = [theme expanseActivityViewIconTintColor];
  [iconView3 setTintColor:expanseActivityViewIconTintColor];

  iconView4 = [(CKDetailsTUConversationCell *)self iconView];
  [iconView4 _setCornerRadius:0.0];

  iconView5 = [(CKDetailsTUConversationCell *)self iconView];
  [iconView5 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)formatIconViewForExpanse
{
  iconView = [(CKDetailsTUConversationCell *)self iconView];
  v4 = +[CKTUConversationViewUtilities sharePlayIcon];
  [iconView setImage:v4];

  iconView2 = [(CKDetailsTUConversationCell *)self iconView];
  [iconView2 setBackgroundColor:0];

  iconView3 = [(CKDetailsTUConversationCell *)self iconView];
  v7 = +[CKUIBehavior sharedBehaviors];
  theme = [v7 theme];
  expanseActivityViewIconTintColor = [theme expanseActivityViewIconTintColor];
  [iconView3 setTintColor:expanseActivityViewIconTintColor];

  iconView4 = [(CKDetailsTUConversationCell *)self iconView];
  [iconView4 _setCornerRadius:0.0];

  iconView5 = [(CKDetailsTUConversationCell *)self iconView];
  [iconView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  iconView6 = [(CKDetailsTUConversationCell *)self iconView];
  [iconView6 setBackgroundColor:0];
}

- (void)formatTitle
{
  titleLabel = [(CKDetailsTUConversationCell *)self titleLabel];
  v4 = +[CKUIBehavior sharedBehaviors];
  recipientNameFont = [v4 recipientNameFont];
  [titleLabel setFont:recipientNameFont];

  titleLabel2 = [(CKDetailsTUConversationCell *)self titleLabel];
  v7 = +[CKUIBehavior sharedBehaviors];
  theme = [v7 theme];
  primaryLabelColor = [theme primaryLabelColor];
  [titleLabel2 setTextColor:primaryLabelColor];

  titleLabel3 = [(CKDetailsTUConversationCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:1];

  titleLabel4 = [(CKDetailsTUConversationCell *)self titleLabel];
  [titleLabel4 setLineBreakMode:4];

  conversation = [(CKDetailsTUConversationCell *)self conversation];
  v19 = +[CKTUConversationViewUtilities titleForAVMode:](CKTUConversationViewUtilities, "titleForAVMode:", [conversation avMode]);

  v13 = MEMORY[0x1E69A5B78];
  conversation2 = [(CKDetailsTUConversationCell *)self conversation];
  LODWORD(v13) = [v13 activeTUConversationHasActivitySession:conversation2];

  if (v13)
  {
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"EXPANSE_DEFAULT" value:&stru_1F04268F8 table:@"ChatKit"];

    v19 = v16;
  }

  titleLabel5 = [(CKDetailsTUConversationCell *)self titleLabel];
  [titleLabel5 setText:v19];

  titleLabel6 = [(CKDetailsTUConversationCell *)self titleLabel];
  [titleLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)formatSubtitleForText
{
  subtitleLabel = [(CKDetailsTUConversationCell *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:1];

  subtitleLabel2 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  [subtitleLabel2 setLineBreakMode:4];

  subtitleLabel3 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  v6 = +[CKUIBehavior sharedBehaviors];
  locationSubtitleFont = [v6 locationSubtitleFont];
  [subtitleLabel3 setFont:locationSubtitleFont];

  subtitleLabel4 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  v9 = +[CKUIBehavior sharedBehaviors];
  theme = [v9 theme];
  secondaryLabelColor = [theme secondaryLabelColor];
  [subtitleLabel4 setTextColor:secondaryLabelColor];

  subtitleLabel5 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  [subtitleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CKDetailsTUConversationCell;
  [(CKDetailsCell *)&v6 layoutSubviews];
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setUserInteractionEnabled:1];

  bottomSeperator2 = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator2 setHidden:0];
}

- (double)insetPadding
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationInsetPadding];
  v4 = v3;

  return v4;
}

- (double)buttonInteritemSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationButtonInteritemSpacing];
  v4 = v3;

  return v4;
}

- (double)interitemSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationInteritemSpacing];
  v4 = v3;

  return v4;
}

- (double)buttonTitleHorizontalSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationButtonTitleHorizontalSpacing];
  v4 = v3;

  return v4;
}

- (double)buttonTitleVerticalSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationButtonTitleVerticalSpacing];
  v4 = v3;

  return v4;
}

@end