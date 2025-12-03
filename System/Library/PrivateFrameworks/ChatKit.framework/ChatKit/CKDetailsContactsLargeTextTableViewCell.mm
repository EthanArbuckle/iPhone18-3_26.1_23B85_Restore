@interface CKDetailsContactsLargeTextTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsContactsLargeTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_hideAllButtons;
- (void)_initConstraints;
- (void)_updateVisibleButtons;
- (void)configureWithViewModel:(id)model;
- (void)setShowsLocation:(BOOL)location;
- (void)setShowsTUConversationStatus:(BOOL)status;
@end

@implementation CKDetailsContactsLargeTextTableViewCell

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  contentView = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v8 = v7;

  nameLabel = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [nameLabel sizeThatFits:{v8, height}];
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 detailsContactCellButtonHeight];
  v14 = v11 + v13 + 20.0;

  if ([(CKDetailsContactsTableViewCell *)self showsTUConversationStatus])
  {
    expanseStatusLabel = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
LABEL_5:
    v16 = expanseStatusLabel;
    [expanseStatusLabel sizeThatFits:{v8, v14}];
    v14 = v14 + v17;

    goto LABEL_6;
  }

  if ([(CKDetailsContactsTableViewCell *)self showsLocation])
  {
    expanseStatusLabel = [(CKDetailsContactsTableViewCell *)self locationLabel];
    goto LABEL_5;
  }

LABEL_6:
  v18 = v8;
  v19 = v14;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CKDetailsContactsLargeTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = CKDetailsContactsLargeTextTableViewCell;
  v4 = [(CKDetailsContactsTableViewCell *)&v17 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contactAvatarView = [(CKDetailsContactsTableViewCell *)v4 contactAvatarView];
    [contactAvatarView setTranslatesAutoresizingMaskIntoConstraints:0];

    nameLabel = [(CKDetailsContactsTableViewCell *)v5 nameLabel];
    [nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    nameLabel2 = [(CKDetailsContactsTableViewCell *)v5 nameLabel];
    [nameLabel2 setNumberOfLines:0];

    nameLabel3 = [(CKDetailsContactsTableViewCell *)v5 nameLabel];
    [nameLabel3 setLineBreakMode:0];

    nameLabel4 = [(CKDetailsContactsTableViewCell *)v5 nameLabel];
    LODWORD(v11) = 1148846080;
    [nameLabel4 setContentHuggingPriority:1 forAxis:v11];

    contentView = [(CKDetailsContactsLargeTextTableViewCell *)v5 contentView];
    contactAvatarView2 = [(CKDetailsContactsTableViewCell *)v5 contactAvatarView];
    [contentView addSubview:contactAvatarView2];

    contentView2 = [(CKDetailsContactsLargeTextTableViewCell *)v5 contentView];
    nameLabel5 = [(CKDetailsContactsTableViewCell *)v5 nameLabel];
    [contentView2 addSubview:nameLabel5];

    [(CKDetailsContactsLargeTextTableViewCell *)v5 _hideAllButtons];
    [(CKDetailsContactsLargeTextTableViewCell *)v5 _initConstraints];
  }

  return v5;
}

- (void)_initConstraints
{
  v85[8] = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 detailsViewContactImageDiameter];
  v5 = v4;

  v48 = MEMORY[0x1E696ACD8];
  contentView = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
  heightAnchor = [contentView heightAnchor];
  v77 = +[CKUIBehavior sharedBehaviors];
  [v77 detailsContactCellMinimumHeight];
  v71 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
  v85[0] = v71;
  contactAvatarView = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  widthAnchor = [contactAvatarView widthAnchor];
  v62 = [widthAnchor constraintEqualToConstant:v5];
  v85[1] = v62;
  contactAvatarView2 = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  heightAnchor2 = [contactAvatarView2 heightAnchor];
  v54 = [heightAnchor2 constraintEqualToConstant:v5];
  v85[2] = v54;
  contactAvatarView3 = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  leadingAnchor = [contactAvatarView3 leadingAnchor];
  contentView2 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v85[3] = v47;
  contactAvatarView4 = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  topAnchor = [contactAvatarView4 topAnchor];
  topAnchor2 = [(CKDetailsContactsLargeTextTableViewCell *)self topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v85[4] = v43;
  nameLabel = [(CKDetailsContactsTableViewCell *)self nameLabel];
  leadingAnchor3 = [nameLabel leadingAnchor];
  contentView3 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
  v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v85[5] = v37;
  nameLabel2 = [(CKDetailsContactsTableViewCell *)self nameLabel];
  trailingAnchor = [nameLabel2 trailingAnchor];
  contentView4 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v85[6] = v8;
  nameLabel3 = [(CKDetailsContactsTableViewCell *)self nameLabel];
  topAnchor3 = [nameLabel3 topAnchor];
  contactAvatarView5 = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  bottomAnchor = [contactAvatarView5 bottomAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v85[7] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:8];
  [v48 activateConstraints:v14];

  if ([(CKDetailsContactsTableViewCell *)self showsLocation])
  {
    v60 = MEMORY[0x1E696ACD8];
    locationLabel = [(CKDetailsContactsTableViewCell *)self locationLabel];
    leadingAnchor5 = [locationLabel leadingAnchor];
    contentView5 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide4 leadingAnchor];
    v66 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v84[0] = v66;
    locationLabel2 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    topAnchor4 = [locationLabel2 topAnchor];
    nameLabel4 = [(CKDetailsContactsTableViewCell *)self nameLabel];
    bottomAnchor2 = [nameLabel4 bottomAnchor];
    v16 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
    v84[1] = v16;
    locationLabel3 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    trailingAnchor3 = [locationLabel3 trailingAnchor];
    contentView6 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
    layoutMarginsGuide5 = [contentView6 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
    v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v84[2] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:3];
    [v60 activateConstraints:v23];
  }

  if ([(CKDetailsContactsTableViewCell *)self showsTUConversationStatus])
  {
    v61 = MEMORY[0x1E696ACD8];
    expanseStatusLabel = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    leadingAnchor7 = [expanseStatusLabel leadingAnchor];
    contentView7 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
    layoutMarginsGuide6 = [contentView7 layoutMarginsGuide];
    leadingAnchor8 = [layoutMarginsGuide6 leadingAnchor];
    v67 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v83[0] = v67;
    expanseStatusLabel2 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    topAnchor5 = [expanseStatusLabel2 topAnchor];
    nameLabel5 = [(CKDetailsContactsTableViewCell *)self nameLabel];
    bottomAnchor3 = [nameLabel5 bottomAnchor];
    v26 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
    v83[1] = v26;
    expanseStatusLabel3 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    trailingAnchor5 = [expanseStatusLabel3 trailingAnchor];
    contentView8 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
    layoutMarginsGuide7 = [contentView8 layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide7 trailingAnchor];
    v32 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v83[2] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
    [v61 activateConstraints:v33];
  }
}

- (void)setShowsLocation:(BOOL)location
{
  locationCopy = location;
  v32[3] = *MEMORY[0x1E69E9840];
  showsLocation = [(CKDetailsContactsTableViewCell *)self showsLocation];
  v31.receiver = self;
  v31.super_class = CKDetailsContactsLargeTextTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v31 setShowsLocation:locationCopy];
  if (showsLocation != [(CKDetailsContactsTableViewCell *)self showsLocation])
  {
    if ([(CKDetailsContactsTableViewCell *)self showsLocation])
    {
      locationLabel = [(CKDetailsContactsTableViewCell *)self locationLabel];
      [locationLabel setTranslatesAutoresizingMaskIntoConstraints:0];

      locationLabel2 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      [locationLabel2 setNumberOfLines:0];

      contentView = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
      locationLabel3 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      [contentView addSubview:locationLabel3];

      buttonsTopConstraint = [(CKDetailsContactsLargeTextTableViewCell *)self buttonsTopConstraint];
      [buttonsTopConstraint setActive:0];

      v24 = MEMORY[0x1E696ACD8];
      locationLabel4 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      leadingAnchor = [locationLabel4 leadingAnchor];
      contentView2 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
      layoutMarginsGuide = [contentView2 layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v32[0] = v26;
      locationLabel5 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      trailingAnchor = [locationLabel5 trailingAnchor];
      contentView3 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
      layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v32[1] = v13;
      locationLabel6 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      topAnchor = [locationLabel6 topAnchor];
      nameLabel = [(CKDetailsContactsTableViewCell *)self nameLabel];
      bottomAnchor = [nameLabel bottomAnchor];
      v18 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
      v32[2] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
      [v24 activateConstraints:v19];
    }

    else
    {
      locationLabel4 = [(CKDetailsContactsLargeTextTableViewCell *)self buttonsTopConstraint];
      [locationLabel4 setActive:1];
    }

    contentView4 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
    [contentView4 setNeedsLayout];
  }
}

- (void)setShowsTUConversationStatus:(BOOL)status
{
  statusCopy = status;
  v32[3] = *MEMORY[0x1E69E9840];
  showsTUConversationStatus = [(CKDetailsContactsTableViewCell *)self showsTUConversationStatus];
  v31.receiver = self;
  v31.super_class = CKDetailsContactsLargeTextTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v31 setShowsTUConversationStatus:statusCopy];
  if (showsTUConversationStatus != [(CKDetailsContactsTableViewCell *)self showsTUConversationStatus])
  {
    if ([(CKDetailsContactsTableViewCell *)self showsTUConversationStatus])
    {
      expanseStatusLabel = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      [expanseStatusLabel setTranslatesAutoresizingMaskIntoConstraints:0];

      expanseStatusLabel2 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      [expanseStatusLabel2 setNumberOfLines:0];

      contentView = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
      expanseStatusLabel3 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      [contentView addSubview:expanseStatusLabel3];

      buttonsTopConstraint = [(CKDetailsContactsLargeTextTableViewCell *)self buttonsTopConstraint];
      [buttonsTopConstraint setActive:0];

      v24 = MEMORY[0x1E696ACD8];
      expanseStatusLabel4 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      leadingAnchor = [expanseStatusLabel4 leadingAnchor];
      contentView2 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
      layoutMarginsGuide = [contentView2 layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v32[0] = v26;
      expanseStatusLabel5 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      trailingAnchor = [expanseStatusLabel5 trailingAnchor];
      contentView3 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
      layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v32[1] = v13;
      expanseStatusLabel6 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      topAnchor = [expanseStatusLabel6 topAnchor];
      nameLabel = [(CKDetailsContactsTableViewCell *)self nameLabel];
      bottomAnchor = [nameLabel bottomAnchor];
      v18 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
      v32[2] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
      [v24 activateConstraints:v19];
    }

    else
    {
      expanseStatusLabel4 = [(CKDetailsContactsLargeTextTableViewCell *)self buttonsTopConstraint];
      [expanseStatusLabel4 setActive:1];
    }

    contentView4 = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
    [contentView4 setNeedsLayout];
  }
}

- (void)configureWithViewModel:(id)model
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CKDetailsContactsLargeTextTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v13 configureWithViewModel:model];
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  entityName = [(CKDetailsContactsTableViewCell *)self entityName];
  v14 = *MEMORY[0x1E69DB688];
  v15[0] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v8 = [v5 initWithString:entityName attributes:v7];

  nameLabel = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [nameLabel setAttributedText:v8];

  nameLabel2 = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [nameLabel2 _setOverallWritingDirectionFollowsLayoutDirection:1];

  nameLabel3 = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [nameLabel3 setNumberOfLines:0];

  contentView = [(CKDetailsContactsLargeTextTableViewCell *)self contentView];
  [contentView setNeedsLayout];
}

- (void)_updateVisibleButtons
{
  showFaceTimeVideoButton = [(CKDetailsContactsTableViewCell *)self showFaceTimeVideoButton];
  facetimeVideoButton = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
  [facetimeVideoButton setHidden:!showFaceTimeVideoButton];

  showMessageButton = [(CKDetailsContactsTableViewCell *)self showMessageButton];
  messageButton = [(CKDetailsContactsTableViewCell *)self messageButton];
  [messageButton setHidden:!showMessageButton];

  showPhoneButton = [(CKDetailsContactsTableViewCell *)self showPhoneButton];
  phoneButton = [(CKDetailsContactsTableViewCell *)self phoneButton];
  [phoneButton setHidden:!showPhoneButton];

  showScreenSharingButton = [(CKDetailsContactsTableViewCell *)self showScreenSharingButton];
  screenSharingButton = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
  [screenSharingButton setHidden:!showScreenSharingButton];
}

- (void)_hideAllButtons
{
  facetimeVideoButton = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
  [facetimeVideoButton setHidden:1];

  messageButton = [(CKDetailsContactsTableViewCell *)self messageButton];
  [messageButton setHidden:1];

  phoneButton = [(CKDetailsContactsTableViewCell *)self phoneButton];
  [phoneButton setHidden:1];

  screenSharingButton = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
  [screenSharingButton setHidden:1];
}

@end