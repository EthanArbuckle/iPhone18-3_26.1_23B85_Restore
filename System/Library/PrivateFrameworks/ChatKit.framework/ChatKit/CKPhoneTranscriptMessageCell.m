@interface CKPhoneTranscriptMessageCell
- (CKPhoneTranscriptMessageCell)initWithFrame:(CGRect)a3;
- (CKPhoneTranscriptMessageCellAvatarDelegate)messageCellAvatarDelegate;
- (id)avatarView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5;
- (id)contactImageView;
- (id)presentingViewControllerForAvatarView:(id)a3;
- (void)dealloc;
- (void)layoutSubviewsForContents;
- (void)setShowAvatarView:(BOOL)a3 withContact:(id)a4 preferredHandle:(id)a5 messageCellAvatarDelegate:(id)a6;
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

- (CKPhoneTranscriptMessageCell)initWithFrame:(CGRect)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CKPhoneTranscriptMessageCell;
  v3 = [(CKTranscriptCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v4 = [v3 isPrinting];

  if (v4)
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
  v3 = [(CKTranscriptMessageCell *)self failed];

  [(CKTranscriptMessageCell *)self configureMessageDeliveryFailureButtonForFailed:v3];
}

- (void)layoutSubviewsForContents
{
  v9.receiver = self;
  v9.super_class = CKPhoneTranscriptMessageCell;
  [(CKTranscriptMessageCell *)&v9 layoutSubviewsForContents];
  v3 = [(CKPhoneTranscriptMessageCell *)self contactImageView];
  if (v3)
  {
    v4 = v3;
    v5 = [(CKPhoneTranscriptMessageCell *)self contactImageView];
    v6 = [v5 superview];

    if (!v6)
    {
      v7 = [(CKEditableCollectionViewCell *)self contentView];
      v8 = [(CKPhoneTranscriptMessageCell *)self contactImageView];
      [v7 addSubview:v8];
    }
  }
}

- (void)setShowAvatarView:(BOOL)a3 withContact:(id)a4 preferredHandle:(id)a5 messageCellAvatarDelegate:(id)a6
{
  v8 = a3;
  v29 = a4;
  v10 = a5;
  objc_storeWeak(&self->_messageCellAvatarDelegate, a6);
  v11 = +[CKPrintController sharedInstance];
  v12 = [v11 isPrinting];

  if (v12)
  {
    v13 = [(CKPhoneTranscriptMessageCell *)self printableAvatarView];
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 transcriptContactImageDiameter];
    v16 = v15;

    if (v8)
    {
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
        [(CKAvatarView *)v13 setFrame:0.0, 0.0, v16, v16];
        [(CKPhoneTranscriptMessageCell *)self setPrintableAvatarView:v13];
      }

      v17 = v13;
      v18 = 0;
    }

    else
    {
      v17 = v13;
      v18 = 1;
    }

    [(CKAvatarView *)v17 setHidden:v18];
    v24 = +[CKPrintController sharedInstance];
    v25 = [v24 avatarImageForContact:v29 diameter:v16];

    [(CKAvatarView *)v13 setImage:v25];
  }

  else
  {
    v19 = [(CKPhoneTranscriptMessageCell *)self avatarView];
    v13 = v19;
    if (v8)
    {
      if (!v19)
      {
        v20 = +[CKUIBehavior sharedBehaviors];
        [v20 transcriptContactImageDiameter];
        v22 = v21;

        v13 = [[CKAvatarView alloc] initWithFrame:0.0, 0.0, v22, v22];
        [(CNAvatarView *)v13 setShowsContactOnTap:0];
        [(CKAvatarView *)v13 setPreferredHandle:v10];
        [(CNAvatarView *)v13 setForcePressView:v13];
        [(CKPhoneTranscriptMessageCell *)self setAvatarView:v13];
        [(CKPhoneTranscriptMessageCell *)self setNeedsLayout];
      }

      v19 = v13;
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    [(CKAvatarView *)v19 setHidden:v23];
    v25 = [(CNAvatarView *)v13 contact];
    if (v29)
    {
      if (!v25 || ([v29 identifier], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "identifier"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqualToString:", v27), v27, v26, (v28 & 1) == 0))
      {
        [(CNAvatarView *)v13 setContact:v29];
      }
    }

    [(CNAvatarView *)v13 setDelegate:self];
  }

  [(CKTranscriptMessageCell *)self configureContactImageStrokeView];
}

- (id)presentingViewControllerForAvatarView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_messageCellAvatarDelegate);
  v6 = [WeakRetained presentingViewControllerForAvatarView:v4];

  return v6;
}

- (id)avatarView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_messageCellAvatarDelegate);
  v12 = [WeakRetained avatarView:v10 orderedPropertiesForProperties:v9 category:v8];

  return v12;
}

- (CKPhoneTranscriptMessageCellAvatarDelegate)messageCellAvatarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCellAvatarDelegate);

  return WeakRetained;
}

@end