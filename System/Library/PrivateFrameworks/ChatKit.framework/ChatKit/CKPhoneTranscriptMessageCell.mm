@interface CKPhoneTranscriptMessageCell
- (CKPhoneTranscriptMessageCell)initWithFrame:(CGRect)frame;
- (CKPhoneTranscriptMessageCellAvatarDelegate)messageCellAvatarDelegate;
- (id)avatarView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category;
- (id)contactImageView;
- (id)presentingViewControllerForAvatarView:(id)view;
- (void)dealloc;
- (void)layoutSubviewsForContents;
- (void)setShowAvatarView:(BOOL)view withContact:(id)contact preferredHandle:(id)handle messageCellAvatarDelegate:(id)delegate;
- (void)transcriptBackgroundActiveTraitDidChange;
@end

@implementation CKPhoneTranscriptMessageCell

- (void)dealloc
{
  [(CNAvatarView *)self->_avatarView setDelegate:0];
  v3.receiver = self;
  v3.super_class = CKPhoneTranscriptMessageCell;
  [(CKPhoneTranscriptMessageCell *)&v3 dealloc];
}

- (CKPhoneTranscriptMessageCell)initWithFrame:(CGRect)frame
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CKPhoneTranscriptMessageCell;
  v3 = [(CKTranscriptCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v11[0] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__CKPhoneTranscriptMessageCell_initWithFrame___block_invoke;
    v7[3] = &unk_1E72F08A0;
    objc_copyWeak(&v8, &location);
    v5 = [(CKPhoneTranscriptMessageCell *)v3 registerForTraitChanges:v4 withHandler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __46__CKPhoneTranscriptMessageCell_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained transcriptBackgroundActiveTraitDidChange];
}

- (id)contactImageView
{
  v3 = +[CKPrintController sharedInstance];
  isPrinting = [v3 isPrinting];

  if (isPrinting)
  {
    [(CKPhoneTranscriptMessageCell *)self printableAvatarView];
  }

  else
  {
    [(CKPhoneTranscriptMessageCell *)self avatarView];
  }
  v5 = ;

  return v5;
}

- (void)transcriptBackgroundActiveTraitDidChange
{
  [(CKTranscriptMessageCell *)self configureContactImageStrokeView];
  failed = [(CKTranscriptMessageCell *)self failed];

  [(CKTranscriptMessageCell *)self configureMessageDeliveryFailureButtonForFailed:failed];
}

- (void)layoutSubviewsForContents
{
  v9.receiver = self;
  v9.super_class = CKPhoneTranscriptMessageCell;
  [(CKTranscriptMessageCell *)&v9 layoutSubviewsForContents];
  contactImageView = [(CKPhoneTranscriptMessageCell *)self contactImageView];
  if (contactImageView)
  {
    v4 = contactImageView;
    contactImageView2 = [(CKPhoneTranscriptMessageCell *)self contactImageView];
    superview = [contactImageView2 superview];

    if (!superview)
    {
      contentView = [(CKEditableCollectionViewCell *)self contentView];
      contactImageView3 = [(CKPhoneTranscriptMessageCell *)self contactImageView];
      [contentView addSubview:contactImageView3];
    }
  }
}

- (void)setShowAvatarView:(BOOL)view withContact:(id)contact preferredHandle:(id)handle messageCellAvatarDelegate:(id)delegate
{
  viewCopy = view;
  contactCopy = contact;
  handleCopy = handle;
  objc_storeWeak(&self->_messageCellAvatarDelegate, delegate);
  v11 = +[CKPrintController sharedInstance];
  isPrinting = [v11 isPrinting];

  if (isPrinting)
  {
    printableAvatarView = [(CKPhoneTranscriptMessageCell *)self printableAvatarView];
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 transcriptContactImageDiameter];
    v16 = v15;

    if (viewCopy)
    {
      if (!printableAvatarView)
      {
        printableAvatarView = objc_alloc_init(MEMORY[0x1E69DCAE0]);
        [(CKAvatarView *)printableAvatarView setFrame:0.0, 0.0, v16, v16];
        [(CKPhoneTranscriptMessageCell *)self setPrintableAvatarView:printableAvatarView];
      }

      v17 = printableAvatarView;
      v18 = 0;
    }

    else
    {
      v17 = printableAvatarView;
      v18 = 1;
    }

    [(CKAvatarView *)v17 setHidden:v18];
    v24 = +[CKPrintController sharedInstance];
    contact = [v24 avatarImageForContact:contactCopy diameter:v16];

    [(CKAvatarView *)printableAvatarView setImage:contact];
  }

  else
  {
    avatarView = [(CKPhoneTranscriptMessageCell *)self avatarView];
    printableAvatarView = avatarView;
    if (viewCopy)
    {
      if (!avatarView)
      {
        v20 = +[CKUIBehavior sharedBehaviors];
        [v20 transcriptContactImageDiameter];
        v22 = v21;

        printableAvatarView = [[CKAvatarView alloc] initWithFrame:0.0, 0.0, v22, v22];
        [(CNAvatarView *)printableAvatarView setShowsContactOnTap:0];
        [(CKAvatarView *)printableAvatarView setPreferredHandle:handleCopy];
        [(CNAvatarView *)printableAvatarView setForcePressView:printableAvatarView];
        [(CKPhoneTranscriptMessageCell *)self setAvatarView:printableAvatarView];
        [(CKPhoneTranscriptMessageCell *)self setNeedsLayout];
      }

      avatarView = printableAvatarView;
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    [(CKAvatarView *)avatarView setHidden:v23];
    contact = [(CNAvatarView *)printableAvatarView contact];
    if (contactCopy)
    {
      if (!contact || ([contactCopy identifier], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(contact, "identifier"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqualToString:", v27), v27, v26, (v28 & 1) == 0))
      {
        [(CNAvatarView *)printableAvatarView setContact:contactCopy];
      }
    }

    [(CNAvatarView *)printableAvatarView setDelegate:self];
  }

  [(CKTranscriptMessageCell *)self configureContactImageStrokeView];
}

- (id)presentingViewControllerForAvatarView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_messageCellAvatarDelegate);
  v6 = [WeakRetained presentingViewControllerForAvatarView:viewCopy];

  return v6;
}

- (id)avatarView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category
{
  categoryCopy = category;
  propertiesCopy = properties;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_messageCellAvatarDelegate);
  v12 = [WeakRetained avatarView:viewCopy orderedPropertiesForProperties:propertiesCopy category:categoryCopy];

  return v12;
}

- (CKPhoneTranscriptMessageCellAvatarDelegate)messageCellAvatarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCellAvatarDelegate);

  return WeakRetained;
}

@end