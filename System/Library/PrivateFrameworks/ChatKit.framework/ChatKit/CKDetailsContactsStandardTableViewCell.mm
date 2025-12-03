@interface CKDetailsContactsStandardTableViewCell
+ (double)preferredHeight;
- (CKDetailsContactsStandardTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_hideAllButtons;
- (void)_updateVisibleButtons;
- (void)layoutSubviews;
- (void)setShowsLocation:(BOOL)location;
- (void)setShowsTUConversationStatus:(BOOL)status;
@end

@implementation CKDetailsContactsStandardTableViewCell

+ (double)preferredHeight
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 detailsContactCellMinimumHeight];
  v4 = v3;

  return v4;
}

- (CKDetailsContactsStandardTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = CKDetailsContactsStandardTableViewCell;
  v4 = [(CKDetailsContactsTableViewCell *)&v19 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    nameLabel = [(CKDetailsContactsTableViewCell *)v4 nameLabel];
    [nameLabel setLineBreakMode:4];

    contentView = [(CKDetailsContactsStandardTableViewCell *)v5 contentView];
    nameLabel2 = [(CKDetailsContactsTableViewCell *)v5 nameLabel];
    [contentView addSubview:nameLabel2];

    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 detailsViewContactImageDiameter];
    v11 = v10;
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 detailsViewContactImageDiameter];
    v14 = v13;
    contactAvatarView = [(CKDetailsContactsTableViewCell *)v5 contactAvatarView];
    [contactAvatarView setFrame:{0.0, 0.0, v11, v14}];

    contentView2 = [(CKDetailsContactsStandardTableViewCell *)v5 contentView];
    contactAvatarView2 = [(CKDetailsContactsTableViewCell *)v5 contactAvatarView];
    [contentView2 addSubview:contactAvatarView2];
  }

  return v5;
}

- (void)layoutSubviews
{
  v136.receiver = self;
  v136.super_class = CKDetailsContactsStandardTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v136 layoutSubviews];
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 detailsContactCellButtonWidth];
  v6 = v5;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 detailsContactCellButtonHeight];
  v9 = v8;

  v10 = 3.0;
  if (CKIsRunningInMacCatalyst())
  {
    if (userInterfaceLayoutDirection)
    {
LABEL_3:
      v11 = ceil(v10);
      goto LABEL_9;
    }
  }

  else
  {
    contentView = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    [contentView bounds];
    if (CGRectGetWidth(v137) > 320.0)
    {
      v10 = 8.0;
    }

    else
    {
      v10 = 6.0;
    }

    if (userInterfaceLayoutDirection)
    {
      goto LABEL_3;
    }
  }

  contentView2 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
  [contentView2 bounds];
  v11 = ceil(v14 - v10);

LABEL_9:
  if (CKIsRunningInMacCatalyst())
  {
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 detailsInterGroupButtonPadding];
    v17 = v16 + v16;
  }

  else
  {
    v17 = 0.0;
  }

  visibleButtons = [(CKDetailsContactsStandardTableViewCell *)self visibleButtons];
  v19 = [visibleButtons count];

  v135 = v10;
  if (v19)
  {
    v20 = 0;
    v21 = ceil(v6 + v10 * 2.0);
    if (userInterfaceLayoutDirection)
    {
      v22 = v21;
    }

    else
    {
      v22 = -v21;
    }

    v23 = ceil(v6);
    if (userInterfaceLayoutDirection)
    {
      v24 = v23;
    }

    else
    {
      v24 = -v23;
    }

    v25 = floor(v6 * 0.5);
    do
    {
      if (v20)
      {
        v26 = v22;
      }

      else
      {
        v26 = v24;
      }

      v11 = v11 + v26;
      visibleButtons2 = [(CKDetailsContactsStandardTableViewCell *)self visibleButtons];
      v28 = [visibleButtons2 objectAtIndex:v20];

      [v28 setBounds:{0.0, 0.0, v6, v9}];
      [(CKDetailsContactsStandardTableViewCell *)self bounds];
      v30 = floor(v29 * 0.5);
      v31 = v25 + v11 - v17;
      if (userInterfaceLayoutDirection)
      {
        v31 = v17 + v11 - v25;
      }

      [v28 setCenter:{v31, v30}];
      updatingParticipantSpinner = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];

      [v28 setHidden:updatingParticipantSpinner != 0];
      ++v20;
      visibleButtons3 = [(CKDetailsContactsStandardTableViewCell *)self visibleButtons];
      v34 = [visibleButtons3 count];
    }

    while (v20 < v34);
  }

  contactAvatarView = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  [contactAvatarView frame];
  v37 = v36;
  v39 = v38;

  contentView3 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
  v41 = contentView3;
  if (userInterfaceLayoutDirection)
  {
    [contentView3 bounds];
    v43 = v42;
    contentView4 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    [contentView4 layoutMargins];
    v46 = v43 - v45 - v37;
    contentView5 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    [contentView5 bounds];
    v49 = (v48 - v39) * 0.5;
    if (CKMainScreenScale_once_95 != -1)
    {
      [CKDetailsContactsStandardTableViewCell layoutSubviews];
    }

    v50 = *&CKMainScreenScale_sMainScreenScale_95;
    if (*&CKMainScreenScale_sMainScreenScale_95 == 0.0)
    {
      v50 = 1.0;
    }

    v51 = floor(v46 * v50) / v50;
    v52 = floor(v49 * v50) / v50;
  }

  else
  {
    [contentView3 layoutMargins];
    v54 = v53;
    contentView4 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    [contentView4 bounds];
    v56 = (v55 - v39) * 0.5;
    if (CKMainScreenScale_once_95 != -1)
    {
      [CKDetailsContactsStandardTableViewCell layoutSubviews];
    }

    v57 = *&CKMainScreenScale_sMainScreenScale_95;
    if (*&CKMainScreenScale_sMainScreenScale_95 == 0.0)
    {
      v57 = 1.0;
    }

    v51 = floor(v54 * v57) / v57;
    v52 = floor(v56 * v57) / v57;
  }

  contactAvatarView2 = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  [contactAvatarView2 setFrame:{v51, v52, v37, v39}];

  entityName = [(CKDetailsContactsTableViewCell *)self entityName];
  nameLabel = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [nameLabel setText:entityName];

  nameLabel2 = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [nameLabel2 setNumberOfLines:1];

  if (userInterfaceLayoutDirection)
  {
    v62 = +[CKUIBehavior sharedBehaviors];
    [v62 detailsContactAvatarLabelSpacing];
    v64 = v51 - v63;

    v65 = ceil(v64 - (v17 + v11 + v135 * 2.0));
    nameLabel3 = [(CKDetailsContactsTableViewCell *)self nameLabel];
    [(CKDetailsContactsStandardTableViewCell *)self frame];
    [nameLabel3 sizeThatFits:{v65, v67}];
    v69 = v68;
    v71 = v70;

    if (v69 >= v65)
    {
      v72 = v65;
    }

    else
    {
      v72 = v69;
    }

    v73 = +[CKUIBehavior sharedBehaviors];
    [v73 detailsContactAvatarLabelSpacing];
    v75 = ceil(v51 - v74 - v72);
  }

  else
  {
    v76 = +[CKUIBehavior sharedBehaviors];
    [v76 detailsContactAvatarLabelSpacing];
    v75 = ceil(v37 + v51 + v77);

    v65 = ceil(v11 - v75 + v135 * -2.0 - v17);
    nameLabel4 = [(CKDetailsContactsTableViewCell *)self nameLabel];
    [(CKDetailsContactsStandardTableViewCell *)self frame];
    [nameLabel4 sizeThatFits:{v65, v79}];
    v72 = v80;
    v71 = v81;

    if (v72 >= v65)
    {
      v72 = v65;
    }
  }

  if ([(CKDetailsContactsTableViewCell *)self showsTUConversationStatus])
  {
    expanseStatusLabel = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    [expanseStatusLabel setNumberOfLines:1];

    expanseStatusLabel2 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    [(CKDetailsContactsStandardTableViewCell *)self frame];
    [expanseStatusLabel2 sizeThatFits:{v65, v84}];
    v86 = v85;
    v88 = v87;

    [(CKDetailsContactsStandardTableViewCell *)self frame];
    v90 = (v89 - v71 - v88) * 0.5;
    if (CKMainScreenScale_once_95 != -1)
    {
      [CKDetailsContactsStandardTableViewCell layoutSubviews];
    }

    v91 = *&CKMainScreenScale_sMainScreenScale_95;
    if (*&CKMainScreenScale_sMainScreenScale_95 == 0.0)
    {
      v91 = 1.0;
    }

    v92 = floor(v90 * v91) / v91;
    if (v86 < v65)
    {
      v65 = v86;
    }

    v138.origin.x = v75;
    v138.origin.y = v92;
    v138.size.width = v72;
    v138.size.height = v71;
    MaxY = CGRectGetMaxY(v138);
    if (userInterfaceLayoutDirection)
    {
      v94 = v75 - (v65 - v72);
    }

    else
    {
      v94 = v75;
    }

    expanseStatusLabel3 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
LABEL_66:
    v107 = expanseStatusLabel3;
    [expanseStatusLabel3 setFrame:{v94, MaxY, v65, v88}];

    goto LABEL_68;
  }

  if ([(CKDetailsContactsTableViewCell *)self showsLocation])
  {
    locationString = [(CKDetailsContactsTableViewCell *)self locationString];
    locationLabel = [(CKDetailsContactsTableViewCell *)self locationLabel];
    [locationLabel setText:locationString];

    locationLabel2 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    [locationLabel2 setNumberOfLines:1];

    locationLabel3 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    [(CKDetailsContactsStandardTableViewCell *)self frame];
    [locationLabel3 sizeThatFits:{v65, v100}];
    v102 = v101;
    v88 = v103;

    [(CKDetailsContactsStandardTableViewCell *)self frame];
    v105 = (v104 - v71 - v88) * 0.5;
    if (CKMainScreenScale_once_95 != -1)
    {
      [CKDetailsContactsStandardTableViewCell layoutSubviews];
    }

    v106 = *&CKMainScreenScale_sMainScreenScale_95;
    if (*&CKMainScreenScale_sMainScreenScale_95 == 0.0)
    {
      v106 = 1.0;
    }

    v92 = floor(v105 * v106) / v106;
    if (v102 < v65)
    {
      v65 = v102;
    }

    v139.origin.x = v75;
    v139.origin.y = v92;
    v139.size.width = v72;
    v139.size.height = v71;
    MaxY = CGRectGetMaxY(v139);
    if (userInterfaceLayoutDirection)
    {
      v94 = v75 - (v65 - v72);
    }

    else
    {
      v94 = v75;
    }

    expanseStatusLabel3 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    goto LABEL_66;
  }

  [(CKDetailsContactsStandardTableViewCell *)self frame];
  v71 = v108;
  v92 = 0.0;
LABEL_68:
  nameLabel5 = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [nameLabel5 setFrame:{v75, v92, v72, v71}];

  updatingParticipantSpinner2 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];

  if (updatingParticipantSpinner2)
  {
    visibleButtons4 = [(CKDetailsContactsStandardTableViewCell *)self visibleButtons];
    lastObject = [visibleButtons4 lastObject];

    updatingParticipantSpinner3 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];
    [lastObject center];
    [updatingParticipantSpinner3 setCenter:?];

    updatingParticipantSpinner4 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];
    [updatingParticipantSpinner4 startAnimating];
  }

  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator frame];
  v117 = v116;
  v119 = v118;
  v121 = v120;

  contentView6 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
  [contentView6 layoutMargins];
  v124 = v123;
  v125 = +[CKUIBehavior sharedBehaviors];
  [v125 detailsContactAvatarLabelSpacing];
  v127 = v124 + v126;
  v128 = +[CKUIBehavior sharedBehaviors];
  [v128 detailsViewContactImageDiameter];
  v130 = v127 + v129;

  v131 = v130;
  if (userInterfaceLayoutDirection)
  {
    contentView7 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    [contentView7 layoutMargins];
    v131 = v133;
  }

  topSeperator2 = [(CKDetailsCell *)self topSeperator];
  [topSeperator2 setFrame:{v131, v117, v119 - v130, v121}];
}

- (void)setShowsLocation:(BOOL)location
{
  v10.receiver = self;
  v10.super_class = CKDetailsContactsStandardTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v10 setShowsLocation:location];
  locationLabel = [(CKDetailsContactsTableViewCell *)self locationLabel];
  if (locationLabel)
  {
    v5 = locationLabel;
    locationLabel2 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    superview = [locationLabel2 superview];

    if (!superview)
    {
      contentView = [(CKDetailsContactsStandardTableViewCell *)self contentView];
      locationLabel3 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      [contentView addSubview:locationLabel3];
    }
  }
}

- (void)setShowsTUConversationStatus:(BOOL)status
{
  v8.receiver = self;
  v8.super_class = CKDetailsContactsStandardTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v8 setShowsTUConversationStatus:status];
  expanseStatusLabel = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
  superview = [expanseStatusLabel superview];

  if (!superview)
  {
    contentView = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    expanseStatusLabel2 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    [contentView addSubview:expanseStatusLabel2];
  }
}

- (void)_updateVisibleButtons
{
  visibleButtons = self->_visibleButtons;
  if (!visibleButtons)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_visibleButtons;
    self->_visibleButtons = v4;

    visibleButtons = self->_visibleButtons;
  }

  [(NSMutableArray *)visibleButtons removeAllObjects];
  if ([(CKDetailsContactsTableViewCell *)self showPhoneButton])
  {
    v6 = self->_visibleButtons;
    phoneButton = [(CKDetailsContactsTableViewCell *)self phoneButton];
    [(NSMutableArray *)v6 addObject:phoneButton];

    contentView = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    phoneButton2 = [(CKDetailsContactsTableViewCell *)self phoneButton];
    [contentView addSubview:phoneButton2];
  }

  else
  {
    contentView = [(CKDetailsContactsTableViewCell *)self phoneButton];
    [contentView removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showMessageButton])
  {
    v10 = self->_visibleButtons;
    messageButton = [(CKDetailsContactsTableViewCell *)self messageButton];
    [(NSMutableArray *)v10 addObject:messageButton];

    contentView2 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    messageButton2 = [(CKDetailsContactsTableViewCell *)self messageButton];
    [contentView2 addSubview:messageButton2];
  }

  else
  {
    contentView2 = [(CKDetailsContactsTableViewCell *)self messageButton];
    [contentView2 removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showFaceTimeVideoButton])
  {
    v14 = self->_visibleButtons;
    facetimeVideoButton = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
    [(NSMutableArray *)v14 addObject:facetimeVideoButton];

    contentView3 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    facetimeVideoButton2 = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
    [contentView3 addSubview:facetimeVideoButton2];
  }

  else
  {
    contentView3 = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
    [contentView3 removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showScreenSharingButton])
  {
    v18 = self->_visibleButtons;
    screenSharingButton = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
    [(NSMutableArray *)v18 addObject:screenSharingButton];

    contentView4 = [(CKDetailsContactsStandardTableViewCell *)self contentView];
    screenSharingButton2 = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
    [contentView4 addSubview:screenSharingButton2];
  }

  else
  {
    contentView4 = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
    [contentView4 removeFromSuperview];
  }

  [(CKDetailsContactsStandardTableViewCell *)self layoutSubviews];
}

- (void)_hideAllButtons
{
  visibleButtons = self->_visibleButtons;
  if (!visibleButtons)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_visibleButtons;
    self->_visibleButtons = v4;

    visibleButtons = self->_visibleButtons;
  }

  [(NSMutableArray *)visibleButtons removeAllObjects];
  if ([(CKDetailsContactsTableViewCell *)self showPhoneButton])
  {
    phoneButton = [(CKDetailsContactsTableViewCell *)self phoneButton];
    [phoneButton removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showMessageButton])
  {
    messageButton = [(CKDetailsContactsTableViewCell *)self messageButton];
    [messageButton removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showFaceTimeVideoButton])
  {
    facetimeVideoButton = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
    [facetimeVideoButton removeFromSuperview];
  }

  if ([(CKDetailsContactsTableViewCell *)self showScreenSharingButton])
  {
    screenSharingButton = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
    [screenSharingButton removeFromSuperview];
  }

  [(CKDetailsContactsStandardTableViewCell *)self layoutSubviews];
}

@end