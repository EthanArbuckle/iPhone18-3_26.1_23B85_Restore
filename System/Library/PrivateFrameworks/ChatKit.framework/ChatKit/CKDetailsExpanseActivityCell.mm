@interface CKDetailsExpanseActivityCell
- (CKDetailsExpanseActivityCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier conversation:(id)conversation;
- (double)buttonInteritemSpacing;
- (double)insetPadding;
- (double)interitemSpacing;
- (void)addConstraints;
- (void)formatTitle;
- (void)layoutSubviews;
- (void)setupView;
@end

@implementation CKDetailsExpanseActivityCell

- (CKDetailsExpanseActivityCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier conversation:(id)conversation
{
  conversationCopy = conversation;
  v12.receiver = self;
  v12.super_class = CKDetailsExpanseActivityCell;
  v9 = [(CKDetailsCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(CKDetailsExpanseActivityCell *)v9 setConversation:conversationCopy];
    [(CKDetailsExpanseActivityCell *)v10 setupView];
  }

  return v10;
}

- (void)setupView
{
  v72[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  v4 = MEMORY[0x1E69A5B78];
  conversation = [(CKDetailsExpanseActivityCell *)self conversation];
  v6 = [v4 activitySessionForTUConversation:conversation];

  v7 = MEMORY[0x1E69A5B78];
  conversation2 = [(CKDetailsExpanseActivityCell *)self conversation];
  -[CKDetailsExpanseActivityCell setIsScreenShare:](self, "setIsScreenShare:", [v7 isScreenShareActivityForTUConversation:conversation2]);

  conversation3 = [(CKDetailsExpanseActivityCell *)self conversation];
  v10 = [CKTUConversationViewUtilities activityTitleForTUConversation:conversation3];
  [v3 setTitle:v10];

  conversation4 = [(CKDetailsExpanseActivityCell *)self conversation];
  v12 = [CKTUConversationViewUtilities activityTextForTUConversation:conversation4];
  [v3 setSummary:v12];

  v13 = objc_alloc(MEMORY[0x1E696EC68]);
  conversation5 = [(CKDetailsExpanseActivityCell *)self conversation];
  v15 = [CKTUConversationViewUtilities activityImageForTUConversation:conversation5];
  v16 = [v13 initWithPlatformImage:v15];
  [v3 setImage:v16];

  image = [v3 image];

  if (!image)
  {
    v18 = objc_alloc(MEMORY[0x1E696EC68]);
    conversation6 = [(CKDetailsExpanseActivityCell *)self conversation];
    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 detailsExpanseImageFallbackDimension];
    v21 = [CKTUConversationViewUtilities activityIconForTUConversation:conversation6 iconSize:?];
    v22 = [v18 initWithPlatformImage:v21];
    [v3 setImage:v22];
  }

  if (![(CKDetailsExpanseActivityCell *)self isScreenShare])
  {
    v38 = objc_alloc_init(MEMORY[0x1E696ED08]);
    [v3 setSourceApplication:v38];

    conversation7 = [(CKDetailsExpanseActivityCell *)self conversation];
    v40 = [CKTUConversationViewUtilities activityAppNameForTUConversation:conversation7];
    sourceApplication = [v3 sourceApplication];
    [sourceApplication setName:v40];

    title = [v3 title];

    if (!title)
    {
      sourceApplication2 = [v3 sourceApplication];
      name = [sourceApplication2 name];
      [v3 setTitle:name];
    }

    conversation8 = [(CKDetailsExpanseActivityCell *)self conversation];
    v46 = [CKTUConversationViewUtilities activityBundleIdentifierForTUConversation:conversation8];
    sourceApplication3 = [v3 sourceApplication];
    [sourceApplication3 setBundleIdentifier:v46];

    v48 = objc_alloc(MEMORY[0x1E696EC68]);
    conversation9 = [(CKDetailsExpanseActivityCell *)self conversation];
    v29 = +[CKUIBehavior sharedBehaviors];
    [v29 tuConversationBalloonIconDimensions];
    v36 = [CKTUConversationViewUtilities activityIconForTUConversation:conversation9 iconSize:?];
    v37 = [v48 initWithPlatformImage:v36];
    sourceApplication4 = [v3 sourceApplication];
    [sourceApplication4 setIcon:v37];

    goto LABEL_13;
  }

  v23 = MEMORY[0x1E69A5B78];
  conversation10 = [(CKDetailsExpanseActivityCell *)self conversation];
  conversation9 = [v23 remoteParticipantHandleSharingScreenForTUConversation:conversation10];

  if (!conversation9)
  {
    conversation11 = [(CKDetailsExpanseActivityCell *)self conversation];
    localMember = [conversation11 localMember];
    handle = [localMember handle];
    conversation9 = [handle value];
  }

  v29 = [CKEntity entityForAddress:conversation9];
  defaultIMHandle = [v29 defaultIMHandle];
  v31 = [defaultIMHandle cnContactWithKeys:MEMORY[0x1E695E0F0]];
  [(CKDetailsExpanseActivityCell *)self setContactSharingScreen:v31];

  title2 = [v3 title];

  if (!title2)
  {
    v33 = CKFrameworkBundle();
    v34 = [v33 localizedStringForKey:@"EXPANSE_SCREENSHARE_DEFAULT" value:&stru_1F04268F8 table:@"ChatKit"];
    [v3 setTitle:v34];
  }

  summary = [v3 summary];

  if (!summary)
  {
    v36 = CKFrameworkBundle();
    v37 = [v36 localizedStringForKey:@"EXPANSE_SCREENSHARE_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
    [v3 setSummary:v37];
LABEL_13:
  }

  v50 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithMetadata:v3];
  [(CKDetailsExpanseActivityCell *)self setLpLinkView:v50];

  lpLinkView = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  [lpLinkView _setApplyCornerRadius:0];

  lpLinkView2 = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  [(CKDetailsExpanseActivityCell *)self _cornerRadius];
  [lpLinkView2 _setCornerRadius:?];

  lpLinkView3 = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [lpLinkView3 _setOverrideBackgroundColor:clearColor];

  lpLinkView4 = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  if ([(CKDetailsExpanseActivityCell *)self isScreenShare])
  {
    [lpLinkView4 _setPreferredSizeClass:11];
  }

  else
  {
    image2 = [v3 image];
    if (image2)
    {
      v57 = 10;
    }

    else
    {
      v57 = 11;
    }

    [lpLinkView4 _setPreferredSizeClass:v57];
  }

  lpLinkView5 = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  [lpLinkView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contactSharingScreen = [(CKDetailsExpanseActivityCell *)self contactSharingScreen];

  if (contactSharingScreen)
  {
    lpLinkView6 = [(CKDetailsExpanseActivityCell *)self lpLinkView];
    contactSharingScreen2 = [(CKDetailsExpanseActivityCell *)self contactSharingScreen];
    v72[0] = contactSharingScreen2;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
    [lpLinkView6 _setContactsForAttribution:v62];
  }

  lpLinkView7 = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __41__CKDetailsExpanseActivityCell_setupView__block_invoke;
  v70[3] = &unk_1E72EBA18;
  v71 = v6;
  v64 = v6;
  v65 = CKFrameworkBundle();
  v66 = [v65 localizedStringForKey:@"VIEW_BUTTON_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  [lpLinkView7 _setAction:v70 withText:v66 buttonType:1];

  contentView = [(CKDetailsExpanseActivityCell *)self contentView];
  lpLinkView8 = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  [contentView addSubview:lpLinkView8];

  contentView2 = [(CKDetailsExpanseActivityCell *)self contentView];
  [contentView2 setBackgroundColor:0];

  [(CKDetailsExpanseActivityCell *)self addConstraints];
}

void __41__CKDetailsExpanseActivityCell_setupView__block_invoke(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Expanse cell LP button tapped", v8, 2u);
  }

  v3 = [MEMORY[0x1E69D8A58] sharedInstance];
  v4 = [v3 conversationManager];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [MEMORY[0x1E69D8A58] sharedInstance];
    v7 = [v6 conversationManager];
    [v7 launchApplicationForActivitySession:*(a1 + 32) completionHandler:&__block_literal_global_149];
  }
}

- (void)formatTitle
{
  activityDescriptionLabel = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
  v4 = +[CKUIBehavior sharedBehaviors];
  headerFont = [v4 headerFont];
  [activityDescriptionLabel setFont:headerFont];

  activityDescriptionLabel2 = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
  v7 = +[CKUIBehavior sharedBehaviors];
  theme = [v7 theme];
  secondaryLabelColor = [theme secondaryLabelColor];
  [activityDescriptionLabel2 setTextColor:secondaryLabelColor];

  activityDescriptionLabel3 = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
  [activityDescriptionLabel3 setNumberOfLines:1];

  activityDescriptionLabel4 = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
  [activityDescriptionLabel4 setLineBreakMode:4];

  activityDescriptionLabel5 = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
  [activityDescriptionLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)addConstraints
{
  v57[4] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (CKIsRunningInMacCatalyst())
  {
    contactSharingScreen = [(CKDetailsExpanseActivityCell *)self contactSharingScreen];
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = v4;
    if (contactSharingScreen)
    {
      [v4 detailsExpanseScreenShareIconVerticalInsetPadding];
    }

    else
    {
      [v4 detailsExpanseActivityImageInsetPadding];
    }

    v7 = v6;

    activityDescriptionLabel = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
    leadingAnchor = [activityDescriptionLabel leadingAnchor];
    contentView = [(CKDetailsExpanseActivityCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v57[0] = v43;
    activityDescriptionLabel2 = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
    trailingAnchor = [activityDescriptionLabel2 trailingAnchor];
    contentView2 = [(CKDetailsExpanseActivityCell *)self contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v57[1] = v33;
    activityDescriptionLabel3 = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
    topAnchor = [activityDescriptionLabel3 topAnchor];
    contentView3 = [(CKDetailsExpanseActivityCell *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v7];
    v57[2] = v9;
    activityDescriptionLabel4 = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
    heightAnchor = [activityDescriptionLabel4 heightAnchor];
    activityDescriptionLabel5 = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
    font = [activityDescriptionLabel5 font];
    [font pointSize];
    v14 = [heightAnchor constraintEqualToConstant:?];
    v57[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:4];
    [array addObjectsFromArray:v15];
  }

  lpLinkView = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  leadingAnchor3 = [lpLinkView leadingAnchor];
  contentView4 = [(CKDetailsExpanseActivityCell *)self contentView];
  [contentView4 leadingAnchor];
  v48 = v52 = leadingAnchor3;
  v46 = [leadingAnchor3 constraintEqualToAnchor:?];
  v56[0] = v46;
  lpLinkView2 = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  trailingAnchor3 = [lpLinkView2 trailingAnchor];
  contentView5 = [(CKDetailsExpanseActivityCell *)self contentView];
  [contentView5 trailingAnchor];
  v38 = v42 = trailingAnchor3;
  v36 = [trailingAnchor3 constraintEqualToAnchor:?];
  v56[1] = v36;
  lpLinkView3 = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  topAnchor3 = [lpLinkView3 topAnchor];
  activityDescriptionLabel6 = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
  if (activityDescriptionLabel6)
  {
    activityDescriptionLabel7 = [(CKDetailsExpanseActivityCell *)self activityDescriptionLabel];
    [activityDescriptionLabel7 bottomAnchor];
  }

  else
  {
    activityDescriptionLabel7 = [(CKDetailsExpanseActivityCell *)self contentView];
    [activityDescriptionLabel7 topAnchor];
  }
  v20 = ;
  v21 = [topAnchor3 constraintEqualToAnchor:v20];
  v56[2] = v21;
  lpLinkView4 = [(CKDetailsExpanseActivityCell *)self lpLinkView];
  [lpLinkView4 bottomAnchor];
  v23 = v30 = topAnchor3;
  contentView6 = [(CKDetailsExpanseActivityCell *)self contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  v26 = [v23 constraintEqualToAnchor:bottomAnchor];
  v56[3] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];
  [array addObjectsFromArray:v27];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
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

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKDetailsExpanseActivityCell;
  [(CKDetailsCell *)&v5 layoutSubviews];
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:1];
}

@end