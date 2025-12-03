@interface CKDetailsContactsTableViewCell
+ (Class)cellClass;
+ (double)marginWidth;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsContactsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CKDetailsContactsTableViewCellDelegate)delegate;
- (id)_ckSymbolImageNamed:(id)named preferredContentSizeCategory:(id)category preferredFontTextStyle:(id)style;
- (id)_imageNamed:(id)named;
- (void)_configureButtonLayer:(id)layer;
- (void)_dismissUpdatingParticipantSpinner;
- (void)_formatExpanseStatusLabel;
- (void)_handleCommunicationAction:(id)action;
- (void)_showUpdatingParticipantSpinner;
- (void)configureWithViewModel:(id)model;
- (void)didHoverOverCell:(id)cell;
- (void)layoutSubviews;
- (void)setLocationString:(id)string;
- (void)setShowFaceTimeVideoButton:(BOOL)button;
- (void)setShowInfoButton:(BOOL)button;
- (void)setShowMessageButton:(BOOL)button;
- (void)setShowPhoneButton:(BOOL)button;
- (void)setShowScreenSharingButton:(BOOL)button;
- (void)setShowsLocation:(BOOL)location;
- (void)setShowsTUConversationStatus:(BOOL)status;
@end

@implementation CKDetailsContactsTableViewCell

+ (Class)cellClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 isAccessibilityPreferredContentSizeCategory];
  v3 = objc_opt_class();

  return v3;
}

+ (double)marginWidth
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 transcriptDrawerContactImageDiameter];
  v4 = v3;
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 detailsContactAvatarLabelSpacing];
  v7 = v4 + v6 * 2.0;

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v12.receiver = self;
  v12.super_class = CKDetailsContactsTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v12 sizeThatFits:fits.width, fits.height];
  v4 = v3;
  v6 = v5;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 detailsContactCellMinimumHeight];
  v9 = v8;

  if (v9 >= v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  v11 = v4;
  result.height = v10;
  result.width = v11;
  return result;
}

- (CKDetailsContactsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v92.receiver = self;
  v92.super_class = CKDetailsContactsTableViewCell;
  v4 = [(CKDetailsCell *)&v92 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(CKDetailsContactsTableViewCell *)v4 setMessageButton:v5];

    v6 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(CKDetailsContactsTableViewCell *)v4 setPhoneButton:v6];

    v7 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(CKDetailsContactsTableViewCell *)v4 setFacetimeVideoButton:v7];

    v8 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(CKDetailsContactsTableViewCell *)v4 setScreenSharingButton:v8];

    messageButton = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    imageView = [messageButton imageView];
    [imageView setContentMode:1];

    phoneButton = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    imageView2 = [phoneButton imageView];
    [imageView2 setContentMode:1];

    facetimeVideoButton = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    imageView3 = [facetimeVideoButton imageView];
    [imageView3 setContentMode:1];

    screenSharingButton = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    imageView4 = [screenSharingButton imageView];
    [imageView4 setContentMode:1];

    messageButton2 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [messageButton2 setContentMode:4];

    phoneButton2 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [phoneButton2 setContentMode:4];

    facetimeVideoButton2 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [facetimeVideoButton2 setContentMode:4];

    screenSharingButton2 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [screenSharingButton2 setContentMode:4];

    messageButton3 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [messageButton3 setImageEdgeInsets:{-2.0, -1.0, -2.5, -2.0}];

    phoneButton3 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [phoneButton3 setImageEdgeInsets:{-2.0, -1.0, -2.5, -2.0}];

    facetimeVideoButton3 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [facetimeVideoButton3 setImageEdgeInsets:{-2.0, -2.0, -2.0, -2.0}];

    screenSharingButton3 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [screenSharingButton3 setImageEdgeInsets:{-2.0, -2.0, -2.0, -2.0}];

    v25 = [(CKDetailsContactsTableViewCell *)v4 _imageNamed:@"video.fill"];
    v26 = [(CKDetailsContactsTableViewCell *)v4 _imageNamed:@"phone.fill"];
    v27 = [(CKDetailsContactsTableViewCell *)v4 _imageNamed:@"message.fill"];
    v28 = [(CKDetailsContactsTableViewCell *)v4 _imageNamed:@"rectangle.fill.on.rectangle.fill"];
    facetimeVideoButton4 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [facetimeVideoButton4 setImage:v25 forState:0];

    phoneButton4 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [phoneButton4 setImage:v26 forState:0];

    messageButton4 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [messageButton4 setImage:v27 forState:0];

    screenSharingButton4 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [screenSharingButton4 setImage:v28 forState:0];

    v33 = +[CKUIBehavior sharedBehaviors];
    theme = [v33 theme];
    contactsActionButtonColor = [theme contactsActionButtonColor];
    facetimeVideoButton5 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [facetimeVideoButton5 setTintColor:contactsActionButtonColor];

    v37 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v37 theme];
    contactsActionButtonColor2 = [theme2 contactsActionButtonColor];
    phoneButton5 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [phoneButton5 setTintColor:contactsActionButtonColor2];

    v41 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v41 theme];
    contactsActionButtonColor3 = [theme3 contactsActionButtonColor];
    messageButton5 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [messageButton5 setTintColor:contactsActionButtonColor3];

    v45 = +[CKUIBehavior sharedBehaviors];
    theme4 = [v45 theme];
    contactsActionButtonColor4 = [theme4 contactsActionButtonColor];
    screenSharingButton5 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [screenSharingButton5 setTintColor:contactsActionButtonColor4];

    v49 = +[CKUIBehavior sharedBehaviors];
    theme5 = [v49 theme];
    contactsActionButtonBackgroundColor = [theme5 contactsActionButtonBackgroundColor];
    facetimeVideoButton6 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [facetimeVideoButton6 setBackgroundColor:contactsActionButtonBackgroundColor];

    v53 = +[CKUIBehavior sharedBehaviors];
    theme6 = [v53 theme];
    contactsActionButtonBackgroundColor2 = [theme6 contactsActionButtonBackgroundColor];
    phoneButton6 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [phoneButton6 setBackgroundColor:contactsActionButtonBackgroundColor2];

    v57 = +[CKUIBehavior sharedBehaviors];
    theme7 = [v57 theme];
    contactsActionButtonBackgroundColor3 = [theme7 contactsActionButtonBackgroundColor];
    messageButton6 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [messageButton6 setBackgroundColor:contactsActionButtonBackgroundColor3];

    v61 = +[CKUIBehavior sharedBehaviors];
    theme8 = [v61 theme];
    contactsActionButtonBackgroundColor4 = [theme8 contactsActionButtonBackgroundColor];
    screenSharingButton6 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [screenSharingButton6 setBackgroundColor:contactsActionButtonBackgroundColor4];

    facetimeVideoButton7 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [facetimeVideoButton7 setTitle:0 forState:0];

    phoneButton7 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [phoneButton7 setTitle:0 forState:0];

    messageButton7 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [messageButton7 setTitle:0 forState:0];

    screenSharingButton7 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [screenSharingButton7 setTitle:0 forState:0];

    v69 = [CKLabel alloc];
    v70 = *MEMORY[0x1E695F058];
    v71 = *(MEMORY[0x1E695F058] + 8);
    v72 = *(MEMORY[0x1E695F058] + 16);
    v73 = *(MEMORY[0x1E695F058] + 24);
    v74 = [(CKLabel *)v69 initWithFrame:*MEMORY[0x1E695F058], v71, v72, v73];
    [(CKDetailsContactsTableViewCell *)v4 setNameLabel:v74];

    nameLabel = [(CKDetailsContactsTableViewCell *)v4 nameLabel];
    v76 = +[CKUIBehavior sharedBehaviors];
    recipientNameFont = [v76 recipientNameFont];
    [nameLabel setFont:recipientNameFont];

    nameLabel2 = [(CKDetailsContactsTableViewCell *)v4 nameLabel];
    v79 = +[CKUIBehavior sharedBehaviors];
    theme9 = [v79 theme];
    contactCellTextColor = [theme9 contactCellTextColor];
    [nameLabel2 setTextColor:contactCellTextColor];

    nameLabel3 = [(CKDetailsContactsTableViewCell *)v4 nameLabel];
    [nameLabel3 setNumberOfLines:0];

    nameLabel4 = [(CKDetailsContactsTableViewCell *)v4 nameLabel];
    [nameLabel4 setContentMode:7];

    v84 = [[CKAvatarView alloc] initWithFrame:v70, v71, v72, v73];
    [(CKDetailsContactsTableViewCell *)v4 setContactAvatarView:v84];

    contactAvatarView = [(CKDetailsContactsTableViewCell *)v4 contactAvatarView];
    [contactAvatarView setShowsContactOnTap:0];

    contentView = [(CKDetailsContactsTableViewCell *)v4 contentView];
    [contentView setBackgroundColor:0];

    if (CKIsRunningInMacCatalyst())
    {
      _tableView = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel_didHoverOverCell_];
      [(CKDetailsContactsTableViewCell *)v4 addGestureRecognizer:_tableView];
    }

    else
    {
      [(CKDetailsContactsTableViewCell *)v4 setAccessoryType:1];
      _tableView = [(CKDetailsContactsTableViewCell *)v4 _tableView];
      v88 = +[CKUIBehavior sharedBehaviors];
      theme10 = [v88 theme];
      detailsContactCellChevronColor = [theme10 detailsContactCellChevronColor];
      [_tableView _setAccessoryBaseColor:detailsContactCellChevronColor];
    }
  }

  return v4;
}

- (id)_ckSymbolImageNamed:(id)named preferredContentSizeCategory:(id)category preferredFontTextStyle:(id)style
{
  v7 = MEMORY[0x1E69DD1B8];
  styleCopy = style;
  namedCopy = named;
  v10 = [v7 traitCollectionWithPreferredContentSizeCategory:category];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:styleCopy compatibleWithTraitCollection:v10];

  [v11 pointSize];
  v12 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:?];
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:namedCopy withConfiguration:v12];

  return v13;
}

- (id)_imageNamed:(id)named
{
  namedCopy = named;
  if ([namedCopy length])
  {
    v5 = CKIsRunningInMacCatalyst();
    v6 = MEMORY[0x1E69DDC70];
    if (v5)
    {
      v6 = MEMORY[0x1E69DDC78];
    }

    v7 = *v6;
    v8 = MEMORY[0x1E69DDD28];
    if (v5)
    {
      v8 = MEMORY[0x1E69DDD80];
    }

    v9 = [(CKDetailsContactsTableViewCell *)self _ckSymbolImageNamed:namedCopy preferredContentSizeCategory:v7 preferredFontTextStyle:*v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)layoutSubviews
{
  v32 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = CKDetailsContactsTableViewCell;
  [(CKDetailsCell *)&v29 layoutSubviews];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 detailsContactCellButtonEdgeInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  facetimeVideoButton = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
  v30[0] = facetimeVideoButton;
  phoneButton = [(CKDetailsContactsTableViewCell *)self phoneButton];
  v30[1] = phoneButton;
  messageButton = [(CKDetailsContactsTableViewCell *)self messageButton];
  v30[2] = messageButton;
  screenSharingButton = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
  v30[3] = screenSharingButton;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

  v17 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        [v21 setContentEdgeInsets:{v5, v7, v9, v11}];
        layer = [v21 layer];
        [(CKDetailsContactsTableViewCell *)self _configureButtonLayer:layer];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v18);
  }

  contact = [(CKDetailsContactsTableViewCell *)self contact];
  if (contact)
  {
    contactAvatarView = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
    [contactAvatarView setContact:contact];
  }
}

- (void)setShowsLocation:(BOOL)location
{
  if (self->_showsLocation != location)
  {
    self->_showsLocation = location;
    if (location)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCC10]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(CKDetailsContactsTableViewCell *)self setLocationLabel:v6];

      locationLabel = [(CKDetailsContactsTableViewCell *)self locationLabel];
      v8 = +[CKUIBehavior sharedBehaviors];
      locationSubtitleFont = [v8 locationSubtitleFont];
      [locationLabel setFont:locationSubtitleFont];

      locationLabel2 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      v11 = +[CKUIBehavior sharedBehaviors];
      theme = [v11 theme];
      detailsContactCellSubTitleColor = [theme detailsContactCellSubTitleColor];
      [locationLabel2 setTextColor:detailsContactCellSubTitleColor];

      locationLabel3 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      [locationLabel3 setLineBreakMode:5];
    }

    else
    {
      locationLabel4 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      [locationLabel4 removeFromSuperview];

      [(CKDetailsContactsTableViewCell *)self setLocationLabel:0];
    }

    contentView = [(CKDetailsContactsTableViewCell *)self contentView];
    [contentView setNeedsLayout];
  }
}

- (void)setShowsTUConversationStatus:(BOOL)status
{
  if (self->_showsTUConversationStatus != status)
  {
    self->_showsTUConversationStatus = status;
    if (status)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCC10]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(CKDetailsContactsTableViewCell *)self setExpanseStatusLabel:v6];

      expanseStatusLabel = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      v8 = +[CKUIBehavior sharedBehaviors];
      locationSubtitleFont = [v8 locationSubtitleFont];
      [expanseStatusLabel setFont:locationSubtitleFont];

      expanseStatusLabel2 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      v11 = +[CKUIBehavior sharedBehaviors];
      theme = [v11 theme];
      detailsContactCellSubTitleColor = [theme detailsContactCellSubTitleColor];
      [expanseStatusLabel2 setTextColor:detailsContactCellSubTitleColor];

      [(CKDetailsContactsTableViewCell *)self _formatExpanseStatusLabel];
    }

    else
    {
      expanseStatusLabel3 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      [expanseStatusLabel3 removeFromSuperview];

      [(CKDetailsContactsTableViewCell *)self setExpanseStatusLabel:0];
    }

    contentView = [(CKDetailsContactsTableViewCell *)self contentView];
    [contentView setNeedsLayout];
  }
}

- (void)setShowInfoButton:(BOOL)button
{
  if (self->_showInfoButton != button)
  {
    self->_showInfoButton = button;
    [(CKDetailsContactsTableViewCell *)self _updateVisibleButtons];
  }
}

- (void)setShowMessageButton:(BOOL)button
{
  if (self->_showMessageButton != button)
  {
    self->_showMessageButton = button;
    [(CKDetailsContactsTableViewCell *)self _updateVisibleButtons];
  }
}

- (void)setShowPhoneButton:(BOOL)button
{
  if (self->_showPhoneButton != button)
  {
    self->_showPhoneButton = button;
    [(CKDetailsContactsTableViewCell *)self _updateVisibleButtons];
  }
}

- (void)setShowFaceTimeVideoButton:(BOOL)button
{
  if (self->_showFaceTimeVideoButton != button)
  {
    self->_showFaceTimeVideoButton = button;
    [(CKDetailsContactsTableViewCell *)self _updateVisibleButtons];
  }
}

- (void)setShowScreenSharingButton:(BOOL)button
{
  if (self->_showScreenSharingButton != button)
  {
    self->_showScreenSharingButton = button;
    [(CKDetailsContactsTableViewCell *)self _updateVisibleButtons];
  }
}

- (void)setLocationString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_locationString isEqualToString:?])
  {
    objc_storeStrong(&self->_locationString, string);
    locationString = [(CKDetailsContactsTableViewCell *)self locationString];
    locationLabel = [(CKDetailsContactsTableViewCell *)self locationLabel];
    [locationLabel setText:locationString];

    [(CKDetailsContactsTableViewCell *)self setNeedsLayout];
  }
}

- (void)configureWithViewModel:(id)model
{
  modelCopy = model;
  entityName = [modelCopy entityName];
  [(CKDetailsContactsTableViewCell *)self setEntityName:entityName];

  LODWORD(entityName) = [modelCopy verified];
  nameLabel = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [nameLabel setTitleIconImageType:entityName];

  locationString = [modelCopy locationString];
  [(CKDetailsContactsTableViewCell *)self setLocationString:locationString];

  -[CKDetailsContactsTableViewCell setShowsLocation:](self, "setShowsLocation:", [modelCopy showsLocation]);
  -[CKDetailsContactsTableViewCell setTuConversationStatusIsActive:](self, "setTuConversationStatusIsActive:", [modelCopy tuConversationStatusIsActive]);
  -[CKDetailsContactsTableViewCell setCallType:](self, "setCallType:", [modelCopy callType]);
  -[CKDetailsContactsTableViewCell setShowsTUConversationStatus:](self, "setShowsTUConversationStatus:", [modelCopy showsTUConversationStatus]);
  contact = [modelCopy contact];
  [(CKDetailsContactsTableViewCell *)self setContact:contact];

  preferredHandle = [modelCopy preferredHandle];
  contactAvatarView = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  [contactAvatarView setPreferredHandle:preferredHandle];

  if (CKIsRunningInMacCatalyst())
  {
    -[CKDetailsContactsTableViewCell setShowFaceTimeVideoButton:](self, "setShowFaceTimeVideoButton:", [modelCopy showsFaceTimeVideoButton]);
    -[CKDetailsContactsTableViewCell setShowMessageButton:](self, "setShowMessageButton:", [modelCopy showsMessageButton]);
    -[CKDetailsContactsTableViewCell setShowPhoneButton:](self, "setShowPhoneButton:", [modelCopy showsPhoneButton]);
    showsScreenSharingButton = [modelCopy showsScreenSharingButton];
  }

  else
  {
    [(CKDetailsContactsTableViewCell *)self setShowFaceTimeVideoButton:0];
    [(CKDetailsContactsTableViewCell *)self setShowMessageButton:0];
    [(CKDetailsContactsTableViewCell *)self setShowPhoneButton:0];
    showsScreenSharingButton = 0;
  }

  [(CKDetailsContactsTableViewCell *)self setShowScreenSharingButton:showsScreenSharingButton];
  messageButton = [(CKDetailsContactsTableViewCell *)self messageButton];
  [messageButton addTarget:self action:sel__handleCommunicationAction_ forControlEvents:64];

  facetimeVideoButton = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
  [facetimeVideoButton addTarget:self action:sel__handleCommunicationAction_ forControlEvents:64];

  phoneButton = [(CKDetailsContactsTableViewCell *)self phoneButton];
  [phoneButton addTarget:self action:sel__handleCommunicationAction_ forControlEvents:64];

  if ([modelCopy isPendingRecipient])
  {
    [(CKDetailsContactsTableViewCell *)self _showUpdatingParticipantSpinner];
  }

  else
  {
    [(CKDetailsContactsTableViewCell *)self _dismissUpdatingParticipantSpinner];
  }

  -[CKDetailsContactsTableViewCell setShowsLocation:](self, "setShowsLocation:", [modelCopy showsLocation]);
  locationString2 = [(CKDetailsContactsTableViewCell *)self locationString];
  locationLabel = [(CKDetailsContactsTableViewCell *)self locationLabel];
  [locationLabel setText:locationString2];

  -[CKDetailsContactsTableViewCell setShowsTUConversationStatus:](self, "setShowsTUConversationStatus:", [modelCopy showsTUConversationStatus]);
  -[CKDetailsContactsTableViewCell setTuConversationStatusIsActive:](self, "setTuConversationStatusIsActive:", [modelCopy tuConversationStatusIsActive]);
  -[CKDetailsContactsTableViewCell setCallType:](self, "setCallType:", [modelCopy callType]);
  [(CKDetailsContactsTableViewCell *)self _formatExpanseStatusLabel];
  if (CKIsRunningInMacCatalyst())
  {
    [(CKDetailsContactsTableViewCell *)self _hideAllButtons];
  }
}

- (void)_formatExpanseStatusLabel
{
  if ([(CKDetailsContactsTableViewCell *)self tuConversationStatusIsActive])
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v4 = MEMORY[0x1E69DCAD8];
    v5 = +[CKUIBehavior sharedBehaviors];
    locationSubtitleFont = [v5 locationSubtitleFont];
    v7 = [v4 configurationWithFont:locationSubtitleFont scale:1];

    callType = [(CKDetailsContactsTableViewCell *)self callType];
    if ((callType - 1) > 2)
    {
      v9 = &stru_1F04268F8;
    }

    else
    {
      v9 = off_1E72F57B8[callType - 1];
    }

    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9 withConfiguration:v7];
    v12 = [v11 imageWithRenderingMode:2];
    [v3 setImage:v12];

    expanseStatusLabel2 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F04268F8];
    v13 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v3];
    [expanseStatusLabel2 appendAttributedString:v13];

    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"ACTIVE_FACETIME" value:&stru_1F04268F8 table:@"ChatKit"];
    v17 = [v14 initWithString:v16];
    [expanseStatusLabel2 appendAttributedString:v17];

    expanseStatusLabel = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    [expanseStatusLabel setAttributedText:expanseStatusLabel2];
  }

  else
  {
    v3 = CKFrameworkBundle();
    v7 = [v3 localizedStringForKey:@"INVITED_FACETIME" value:&stru_1F04268F8 table:@"ChatKit"];
    expanseStatusLabel2 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    [expanseStatusLabel2 setText:v7];
  }

  expanseStatusLabel3 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
  [expanseStatusLabel3 setLineBreakMode:4];
}

- (void)_showUpdatingParticipantSpinner
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "showUpdatingParticipantSpinner", v6, 2u);
    }
  }

  updatingParticipantSpinner = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];
  if (!updatingParticipantSpinner)
  {
    updatingParticipantSpinner = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [(CKDetailsContactsTableViewCell *)self setUpdatingParticipantSpinner:updatingParticipantSpinner];
    contentView = [(CKDetailsContactsTableViewCell *)self contentView];
    [contentView addSubview:updatingParticipantSpinner];
  }
}

- (void)_dismissUpdatingParticipantSpinner
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "dismissUpdatingParticipantSpinner", v7, 2u);
    }
  }

  updatingParticipantSpinner = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];

  if (updatingParticipantSpinner)
  {
    updatingParticipantSpinner2 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];
    [updatingParticipantSpinner2 stopAnimating];

    updatingParticipantSpinner3 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];
    [updatingParticipantSpinner3 removeFromSuperview];

    [(CKDetailsContactsTableViewCell *)self setUpdatingParticipantSpinner:0];
  }
}

- (void)_handleCommunicationAction:(id)action
{
  actionCopy = action;
  messageButton = [(CKDetailsContactsTableViewCell *)self messageButton];

  if (messageButton == actionCopy)
  {
    delegate = [(CKDetailsContactsTableViewCell *)self delegate];
    [delegate contactsCellDidTapMessagesButton:self];
  }

  else
  {
    facetimeVideoButton = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];

    if (facetimeVideoButton == actionCopy)
    {
      delegate = [(CKDetailsContactsTableViewCell *)self delegate];
      [delegate contactsCellDidTapFaceTimeVideoButton:self];
    }

    else
    {
      phoneButton = [(CKDetailsContactsTableViewCell *)self phoneButton];

      v7 = actionCopy;
      if (phoneButton != actionCopy)
      {
        goto LABEL_8;
      }

      delegate = [(CKDetailsContactsTableViewCell *)self delegate];
      [delegate contactsCellDidTapPhoneButton:self];
    }
  }

  v7 = actionCopy;
LABEL_8:
}

- (void)_configureButtonLayer:(id)layer
{
  layerCopy = layer;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 detailsContactCellButtonWidth];
  v5 = v4;
  if (CKMainScreenScale_once_74 != -1)
  {
    [CKDetailsContactsTableViewCell _configureButtonLayer:];
  }

  v6 = *&CKMainScreenScale_sMainScreenScale_74;
  if (*&CKMainScreenScale_sMainScreenScale_74 == 0.0)
  {
    v6 = 1.0;
  }

  [layerCopy setCornerRadius:round(v5 * 0.5 * v6) / v6];
}

- (void)didHoverOverCell:(id)cell
{
  cellCopy = cell;
  delegate = [(CKDetailsContactsTableViewCell *)self delegate];
  state = [cellCopy state];

  [delegate contactsCell:self didHoverWithState:state];
}

- (CKDetailsContactsTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end