@interface CKDetailsContactsTableViewCell
+ (Class)cellClass;
+ (double)marginWidth;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKDetailsContactsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CKDetailsContactsTableViewCellDelegate)delegate;
- (id)_ckSymbolImageNamed:(id)a3 preferredContentSizeCategory:(id)a4 preferredFontTextStyle:(id)a5;
- (id)_imageNamed:(id)a3;
- (void)_configureButtonLayer:(id)a3;
- (void)_dismissUpdatingParticipantSpinner;
- (void)_formatExpanseStatusLabel;
- (void)_handleCommunicationAction:(id)a3;
- (void)_showUpdatingParticipantSpinner;
- (void)configureWithViewModel:(id)a3;
- (void)didHoverOverCell:(id)a3;
- (void)layoutSubviews;
- (void)setLocationString:(id)a3;
- (void)setShowFaceTimeVideoButton:(BOOL)a3;
- (void)setShowInfoButton:(BOOL)a3;
- (void)setShowMessageButton:(BOOL)a3;
- (void)setShowPhoneButton:(BOOL)a3;
- (void)setShowScreenSharingButton:(BOOL)a3;
- (void)setShowsLocation:(BOOL)a3;
- (void)setShowsTUConversationStatus:(BOOL)a3;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  v12.receiver = self;
  v12.super_class = CKDetailsContactsTableViewCell;
  [(CKDetailsContactsTableViewCell *)&v12 sizeThatFits:a3.width, a3.height];
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

- (CKDetailsContactsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v92.receiver = self;
  v92.super_class = CKDetailsContactsTableViewCell;
  v4 = [(CKDetailsCell *)&v92 initWithStyle:a3 reuseIdentifier:a4];
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

    v9 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    v10 = [v9 imageView];
    [v10 setContentMode:1];

    v11 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    v12 = [v11 imageView];
    [v12 setContentMode:1];

    v13 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    v14 = [v13 imageView];
    [v14 setContentMode:1];

    v15 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    v16 = [v15 imageView];
    [v16 setContentMode:1];

    v17 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [v17 setContentMode:4];

    v18 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [v18 setContentMode:4];

    v19 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [v19 setContentMode:4];

    v20 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [v20 setContentMode:4];

    v21 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [v21 setImageEdgeInsets:{-2.0, -1.0, -2.5, -2.0}];

    v22 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [v22 setImageEdgeInsets:{-2.0, -1.0, -2.5, -2.0}];

    v23 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [v23 setImageEdgeInsets:{-2.0, -2.0, -2.0, -2.0}];

    v24 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [v24 setImageEdgeInsets:{-2.0, -2.0, -2.0, -2.0}];

    v25 = [(CKDetailsContactsTableViewCell *)v4 _imageNamed:@"video.fill"];
    v26 = [(CKDetailsContactsTableViewCell *)v4 _imageNamed:@"phone.fill"];
    v27 = [(CKDetailsContactsTableViewCell *)v4 _imageNamed:@"message.fill"];
    v28 = [(CKDetailsContactsTableViewCell *)v4 _imageNamed:@"rectangle.fill.on.rectangle.fill"];
    v29 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [v29 setImage:v25 forState:0];

    v30 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [v30 setImage:v26 forState:0];

    v31 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [v31 setImage:v27 forState:0];

    v32 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [v32 setImage:v28 forState:0];

    v33 = +[CKUIBehavior sharedBehaviors];
    v34 = [v33 theme];
    v35 = [v34 contactsActionButtonColor];
    v36 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [v36 setTintColor:v35];

    v37 = +[CKUIBehavior sharedBehaviors];
    v38 = [v37 theme];
    v39 = [v38 contactsActionButtonColor];
    v40 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [v40 setTintColor:v39];

    v41 = +[CKUIBehavior sharedBehaviors];
    v42 = [v41 theme];
    v43 = [v42 contactsActionButtonColor];
    v44 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [v44 setTintColor:v43];

    v45 = +[CKUIBehavior sharedBehaviors];
    v46 = [v45 theme];
    v47 = [v46 contactsActionButtonColor];
    v48 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [v48 setTintColor:v47];

    v49 = +[CKUIBehavior sharedBehaviors];
    v50 = [v49 theme];
    v51 = [v50 contactsActionButtonBackgroundColor];
    v52 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [v52 setBackgroundColor:v51];

    v53 = +[CKUIBehavior sharedBehaviors];
    v54 = [v53 theme];
    v55 = [v54 contactsActionButtonBackgroundColor];
    v56 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [v56 setBackgroundColor:v55];

    v57 = +[CKUIBehavior sharedBehaviors];
    v58 = [v57 theme];
    v59 = [v58 contactsActionButtonBackgroundColor];
    v60 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [v60 setBackgroundColor:v59];

    v61 = +[CKUIBehavior sharedBehaviors];
    v62 = [v61 theme];
    v63 = [v62 contactsActionButtonBackgroundColor];
    v64 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [v64 setBackgroundColor:v63];

    v65 = [(CKDetailsContactsTableViewCell *)v4 facetimeVideoButton];
    [v65 setTitle:0 forState:0];

    v66 = [(CKDetailsContactsTableViewCell *)v4 phoneButton];
    [v66 setTitle:0 forState:0];

    v67 = [(CKDetailsContactsTableViewCell *)v4 messageButton];
    [v67 setTitle:0 forState:0];

    v68 = [(CKDetailsContactsTableViewCell *)v4 screenSharingButton];
    [v68 setTitle:0 forState:0];

    v69 = [CKLabel alloc];
    v70 = *MEMORY[0x1E695F058];
    v71 = *(MEMORY[0x1E695F058] + 8);
    v72 = *(MEMORY[0x1E695F058] + 16);
    v73 = *(MEMORY[0x1E695F058] + 24);
    v74 = [(CKLabel *)v69 initWithFrame:*MEMORY[0x1E695F058], v71, v72, v73];
    [(CKDetailsContactsTableViewCell *)v4 setNameLabel:v74];

    v75 = [(CKDetailsContactsTableViewCell *)v4 nameLabel];
    v76 = +[CKUIBehavior sharedBehaviors];
    v77 = [v76 recipientNameFont];
    [v75 setFont:v77];

    v78 = [(CKDetailsContactsTableViewCell *)v4 nameLabel];
    v79 = +[CKUIBehavior sharedBehaviors];
    v80 = [v79 theme];
    v81 = [v80 contactCellTextColor];
    [v78 setTextColor:v81];

    v82 = [(CKDetailsContactsTableViewCell *)v4 nameLabel];
    [v82 setNumberOfLines:0];

    v83 = [(CKDetailsContactsTableViewCell *)v4 nameLabel];
    [v83 setContentMode:7];

    v84 = [[CKAvatarView alloc] initWithFrame:v70, v71, v72, v73];
    [(CKDetailsContactsTableViewCell *)v4 setContactAvatarView:v84];

    v85 = [(CKDetailsContactsTableViewCell *)v4 contactAvatarView];
    [v85 setShowsContactOnTap:0];

    v86 = [(CKDetailsContactsTableViewCell *)v4 contentView];
    [v86 setBackgroundColor:0];

    if (CKIsRunningInMacCatalyst())
    {
      v87 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel_didHoverOverCell_];
      [(CKDetailsContactsTableViewCell *)v4 addGestureRecognizer:v87];
    }

    else
    {
      [(CKDetailsContactsTableViewCell *)v4 setAccessoryType:1];
      v87 = [(CKDetailsContactsTableViewCell *)v4 _tableView];
      v88 = +[CKUIBehavior sharedBehaviors];
      v89 = [v88 theme];
      v90 = [v89 detailsContactCellChevronColor];
      [v87 _setAccessoryBaseColor:v90];
    }
  }

  return v4;
}

- (id)_ckSymbolImageNamed:(id)a3 preferredContentSizeCategory:(id)a4 preferredFontTextStyle:(id)a5
{
  v7 = MEMORY[0x1E69DD1B8];
  v8 = a5;
  v9 = a3;
  v10 = [v7 traitCollectionWithPreferredContentSizeCategory:a4];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8 compatibleWithTraitCollection:v10];

  [v11 pointSize];
  v12 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:?];
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9 withConfiguration:v12];

  return v13;
}

- (id)_imageNamed:(id)a3
{
  v4 = a3;
  if ([v4 length])
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

    v9 = [(CKDetailsContactsTableViewCell *)self _ckSymbolImageNamed:v4 preferredContentSizeCategory:v7 preferredFontTextStyle:*v8];
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
  v12 = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
  v30[0] = v12;
  v13 = [(CKDetailsContactsTableViewCell *)self phoneButton];
  v30[1] = v13;
  v14 = [(CKDetailsContactsTableViewCell *)self messageButton];
  v30[2] = v14;
  v15 = [(CKDetailsContactsTableViewCell *)self screenSharingButton];
  v30[3] = v15;
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
        v22 = [v21 layer];
        [(CKDetailsContactsTableViewCell *)self _configureButtonLayer:v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v18);
  }

  v23 = [(CKDetailsContactsTableViewCell *)self contact];
  if (v23)
  {
    v24 = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
    [v24 setContact:v23];
  }
}

- (void)setShowsLocation:(BOOL)a3
{
  if (self->_showsLocation != a3)
  {
    self->_showsLocation = a3;
    if (a3)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCC10]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(CKDetailsContactsTableViewCell *)self setLocationLabel:v6];

      v7 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      v8 = +[CKUIBehavior sharedBehaviors];
      v9 = [v8 locationSubtitleFont];
      [v7 setFont:v9];

      v10 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      v11 = +[CKUIBehavior sharedBehaviors];
      v12 = [v11 theme];
      v13 = [v12 detailsContactCellSubTitleColor];
      [v10 setTextColor:v13];

      v14 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      [v14 setLineBreakMode:5];
    }

    else
    {
      v15 = [(CKDetailsContactsTableViewCell *)self locationLabel];
      [v15 removeFromSuperview];

      [(CKDetailsContactsTableViewCell *)self setLocationLabel:0];
    }

    v16 = [(CKDetailsContactsTableViewCell *)self contentView];
    [v16 setNeedsLayout];
  }
}

- (void)setShowsTUConversationStatus:(BOOL)a3
{
  if (self->_showsTUConversationStatus != a3)
  {
    self->_showsTUConversationStatus = a3;
    if (a3)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCC10]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(CKDetailsContactsTableViewCell *)self setExpanseStatusLabel:v6];

      v7 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      v8 = +[CKUIBehavior sharedBehaviors];
      v9 = [v8 locationSubtitleFont];
      [v7 setFont:v9];

      v10 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      v11 = +[CKUIBehavior sharedBehaviors];
      v12 = [v11 theme];
      v13 = [v12 detailsContactCellSubTitleColor];
      [v10 setTextColor:v13];

      [(CKDetailsContactsTableViewCell *)self _formatExpanseStatusLabel];
    }

    else
    {
      v14 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
      [v14 removeFromSuperview];

      [(CKDetailsContactsTableViewCell *)self setExpanseStatusLabel:0];
    }

    v15 = [(CKDetailsContactsTableViewCell *)self contentView];
    [v15 setNeedsLayout];
  }
}

- (void)setShowInfoButton:(BOOL)a3
{
  if (self->_showInfoButton != a3)
  {
    self->_showInfoButton = a3;
    [(CKDetailsContactsTableViewCell *)self _updateVisibleButtons];
  }
}

- (void)setShowMessageButton:(BOOL)a3
{
  if (self->_showMessageButton != a3)
  {
    self->_showMessageButton = a3;
    [(CKDetailsContactsTableViewCell *)self _updateVisibleButtons];
  }
}

- (void)setShowPhoneButton:(BOOL)a3
{
  if (self->_showPhoneButton != a3)
  {
    self->_showPhoneButton = a3;
    [(CKDetailsContactsTableViewCell *)self _updateVisibleButtons];
  }
}

- (void)setShowFaceTimeVideoButton:(BOOL)a3
{
  if (self->_showFaceTimeVideoButton != a3)
  {
    self->_showFaceTimeVideoButton = a3;
    [(CKDetailsContactsTableViewCell *)self _updateVisibleButtons];
  }
}

- (void)setShowScreenSharingButton:(BOOL)a3
{
  if (self->_showScreenSharingButton != a3)
  {
    self->_showScreenSharingButton = a3;
    [(CKDetailsContactsTableViewCell *)self _updateVisibleButtons];
  }
}

- (void)setLocationString:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_locationString isEqualToString:?])
  {
    objc_storeStrong(&self->_locationString, a3);
    v5 = [(CKDetailsContactsTableViewCell *)self locationString];
    v6 = [(CKDetailsContactsTableViewCell *)self locationLabel];
    [v6 setText:v5];

    [(CKDetailsContactsTableViewCell *)self setNeedsLayout];
  }
}

- (void)configureWithViewModel:(id)a3
{
  v16 = a3;
  v4 = [v16 entityName];
  [(CKDetailsContactsTableViewCell *)self setEntityName:v4];

  LODWORD(v4) = [v16 verified];
  v5 = [(CKDetailsContactsTableViewCell *)self nameLabel];
  [v5 setTitleIconImageType:v4];

  v6 = [v16 locationString];
  [(CKDetailsContactsTableViewCell *)self setLocationString:v6];

  -[CKDetailsContactsTableViewCell setShowsLocation:](self, "setShowsLocation:", [v16 showsLocation]);
  -[CKDetailsContactsTableViewCell setTuConversationStatusIsActive:](self, "setTuConversationStatusIsActive:", [v16 tuConversationStatusIsActive]);
  -[CKDetailsContactsTableViewCell setCallType:](self, "setCallType:", [v16 callType]);
  -[CKDetailsContactsTableViewCell setShowsTUConversationStatus:](self, "setShowsTUConversationStatus:", [v16 showsTUConversationStatus]);
  v7 = [v16 contact];
  [(CKDetailsContactsTableViewCell *)self setContact:v7];

  v8 = [v16 preferredHandle];
  v9 = [(CKDetailsContactsTableViewCell *)self contactAvatarView];
  [v9 setPreferredHandle:v8];

  if (CKIsRunningInMacCatalyst())
  {
    -[CKDetailsContactsTableViewCell setShowFaceTimeVideoButton:](self, "setShowFaceTimeVideoButton:", [v16 showsFaceTimeVideoButton]);
    -[CKDetailsContactsTableViewCell setShowMessageButton:](self, "setShowMessageButton:", [v16 showsMessageButton]);
    -[CKDetailsContactsTableViewCell setShowPhoneButton:](self, "setShowPhoneButton:", [v16 showsPhoneButton]);
    v10 = [v16 showsScreenSharingButton];
  }

  else
  {
    [(CKDetailsContactsTableViewCell *)self setShowFaceTimeVideoButton:0];
    [(CKDetailsContactsTableViewCell *)self setShowMessageButton:0];
    [(CKDetailsContactsTableViewCell *)self setShowPhoneButton:0];
    v10 = 0;
  }

  [(CKDetailsContactsTableViewCell *)self setShowScreenSharingButton:v10];
  v11 = [(CKDetailsContactsTableViewCell *)self messageButton];
  [v11 addTarget:self action:sel__handleCommunicationAction_ forControlEvents:64];

  v12 = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];
  [v12 addTarget:self action:sel__handleCommunicationAction_ forControlEvents:64];

  v13 = [(CKDetailsContactsTableViewCell *)self phoneButton];
  [v13 addTarget:self action:sel__handleCommunicationAction_ forControlEvents:64];

  if ([v16 isPendingRecipient])
  {
    [(CKDetailsContactsTableViewCell *)self _showUpdatingParticipantSpinner];
  }

  else
  {
    [(CKDetailsContactsTableViewCell *)self _dismissUpdatingParticipantSpinner];
  }

  -[CKDetailsContactsTableViewCell setShowsLocation:](self, "setShowsLocation:", [v16 showsLocation]);
  v14 = [(CKDetailsContactsTableViewCell *)self locationString];
  v15 = [(CKDetailsContactsTableViewCell *)self locationLabel];
  [v15 setText:v14];

  -[CKDetailsContactsTableViewCell setShowsTUConversationStatus:](self, "setShowsTUConversationStatus:", [v16 showsTUConversationStatus]);
  -[CKDetailsContactsTableViewCell setTuConversationStatusIsActive:](self, "setTuConversationStatusIsActive:", [v16 tuConversationStatusIsActive]);
  -[CKDetailsContactsTableViewCell setCallType:](self, "setCallType:", [v16 callType]);
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
    v6 = [v5 locationSubtitleFont];
    v7 = [v4 configurationWithFont:v6 scale:1];

    v8 = [(CKDetailsContactsTableViewCell *)self callType];
    if ((v8 - 1) > 2)
    {
      v9 = &stru_1F04268F8;
    }

    else
    {
      v9 = off_1E72F57B8[v8 - 1];
    }

    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9 withConfiguration:v7];
    v12 = [v11 imageWithRenderingMode:2];
    [v3 setImage:v12];

    v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F04268F8];
    v13 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v3];
    [v10 appendAttributedString:v13];

    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"ACTIVE_FACETIME" value:&stru_1F04268F8 table:@"ChatKit"];
    v17 = [v14 initWithString:v16];
    [v10 appendAttributedString:v17];

    v18 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    [v18 setAttributedText:v10];
  }

  else
  {
    v3 = CKFrameworkBundle();
    v7 = [v3 localizedStringForKey:@"INVITED_FACETIME" value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
    [v10 setText:v7];
  }

  v19 = [(CKDetailsContactsTableViewCell *)self expanseStatusLabel];
  [v19 setLineBreakMode:4];
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

  v4 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [(CKDetailsContactsTableViewCell *)self setUpdatingParticipantSpinner:v4];
    v5 = [(CKDetailsContactsTableViewCell *)self contentView];
    [v5 addSubview:v4];
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

  v4 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];

  if (v4)
  {
    v5 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];
    [v5 stopAnimating];

    v6 = [(CKDetailsContactsTableViewCell *)self updatingParticipantSpinner];
    [v6 removeFromSuperview];

    [(CKDetailsContactsTableViewCell *)self setUpdatingParticipantSpinner:0];
  }
}

- (void)_handleCommunicationAction:(id)a3
{
  v9 = a3;
  v4 = [(CKDetailsContactsTableViewCell *)self messageButton];

  if (v4 == v9)
  {
    v8 = [(CKDetailsContactsTableViewCell *)self delegate];
    [v8 contactsCellDidTapMessagesButton:self];
  }

  else
  {
    v5 = [(CKDetailsContactsTableViewCell *)self facetimeVideoButton];

    if (v5 == v9)
    {
      v8 = [(CKDetailsContactsTableViewCell *)self delegate];
      [v8 contactsCellDidTapFaceTimeVideoButton:self];
    }

    else
    {
      v6 = [(CKDetailsContactsTableViewCell *)self phoneButton];

      v7 = v9;
      if (v6 != v9)
      {
        goto LABEL_8;
      }

      v8 = [(CKDetailsContactsTableViewCell *)self delegate];
      [v8 contactsCellDidTapPhoneButton:self];
    }
  }

  v7 = v9;
LABEL_8:
}

- (void)_configureButtonLayer:(id)a3
{
  v3 = a3;
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

  [v3 setCornerRadius:round(v5 * 0.5 * v6) / v6];
}

- (void)didHoverOverCell:(id)a3
{
  v4 = a3;
  v6 = [(CKDetailsContactsTableViewCell *)self delegate];
  v5 = [v4 state];

  [v6 contactsCell:self didHoverWithState:v5];
}

- (CKDetailsContactsTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end