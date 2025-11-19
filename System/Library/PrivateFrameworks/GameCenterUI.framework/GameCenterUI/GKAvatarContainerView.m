@interface GKAvatarContainerView
- (GKAvatarContainerViewDelegate)delegate;
- (void)awakeFromNib;
- (void)didMoveToSuperview;
- (void)didSelectPlayerAvatarView:(id)a3;
- (void)didSetPlayerAvatarImage:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDefaultNicknameViewController;
- (void)refreshHeaderViewProfileImage;
- (void)refreshViewForLocalPlayer;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setupEditImageBackground;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAvatarEditingAvailability;
@end

@implementation GKAvatarContainerView

- (void)awakeFromNib
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = GKAvatarContainerView;
  [(GKAvatarContainerView *)&v25 awakeFromNib];
  v3 = [(GKAvatarContainerView *)self playerAvatarView];
  [v3 setDelegate:self];

  v4 = [(GKAvatarContainerView *)self playerAvatarView];
  [v4 setAccessibilityIdentifier:@"UIA.GameCenter.GKAvatarContainerView.playerAvatarView"];

  objc_initWeak(&location, self);
  v5 = [(GKAvatarContainerView *)self playerAvatarView];
  v6 = [MEMORY[0x277D0C138] local];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __37__GKAvatarContainerView_awakeFromNib__block_invoke;
  v22[3] = &unk_279669FE0;
  objc_copyWeak(&v23, &location);
  [v5 setPlayer:v6 completionHandler:v22];

  [(GKAvatarContainerView *)self updateAvatarEditingAvailability];
  v7 = [(GKAvatarContainerView *)self editLabel];
  v8 = [v7 layer];

  v9 = [MEMORY[0x277D75348] blackColor];
  v10 = [v9 colorWithAlphaComponent:0.4];
  v11 = v10;
  v26[0] = [v10 CGColor];
  v12 = [MEMORY[0x277D75348] blackColor];
  v13 = [v12 colorWithAlphaComponent:0.7];
  v14 = v13;
  v26[1] = [v13 CGColor];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [v8 setColors:v15];

  v16 = [(GKAvatarContainerView *)self imageContainer];
  [v16 setHidden:1];

  v17 = [(GKAvatarContainerView *)self editImage];
  [v17 setHidden:1];

  v18 = [(GKAvatarContainerView *)self editLabel];
  [v18 setAccessibilityIdentifier:@"UIA.GameCenter.GKAvatarContainerView.editLabel"];

  v19 = [(GKAvatarContainerView *)self editLabel];
  [v19 setIsAccessibilityElement:0];

  [(GKAvatarContainerView *)self setupEditImageBackground];
  v20 = [(GKAvatarContainerView *)self imageContainer];
  v21 = [MEMORY[0x277D755A8] automaticStyle];
  [v20 setHoverStyle:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __37__GKAvatarContainerView_awakeFromNib__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAvatarEditingAvailability];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = GKAvatarContainerView;
  [(GKAvatarContainerView *)&v20 layoutSubviews];
  v3 = [(GKAvatarContainerView *)self imageContainer];
  [v3 frame];
  v5 = v4 * 0.5;
  v6 = [(GKAvatarContainerView *)self imageContainer];
  v7 = [v6 layer];
  [v7 setCornerRadius:v5];

  v8 = [MEMORY[0x277D75348] labelColor];
  v9 = [v8 colorWithAlphaComponent:0.08];
  v10 = [v9 CGColor];
  v11 = [(GKAvatarContainerView *)self imageContainer];
  v12 = [v11 layer];
  [v12 setBorderColor:v10];

  v13 = [(GKAvatarContainerView *)self imageContainer];
  [v13 frame];
  v15 = v14 / 280.0;
  v16 = [(GKAvatarContainerView *)self imageContainer];
  v17 = [v16 layer];
  [v17 setBorderWidth:v15];

  v18 = [(GKAvatarContainerView *)self imageContainer];
  v19 = [v18 layer];
  [v19 setMasksToBounds:1];
}

- (void)setupEditImageBackground
{
  v3 = [(GKAvatarContainerView *)self editImageBackground];
  v4 = [v3 layer];
  [v4 setShadowOffset:{0.0, 0.0}];

  v5 = [(GKAvatarContainerView *)self editImageBackground];
  v6 = [v5 layer];
  [v6 setShadowRadius:2.0];

  v7 = [MEMORY[0x277D75348] blackColor];
  v8 = [v7 CGColor];
  v9 = [(GKAvatarContainerView *)self editImageBackground];
  v10 = [v9 layer];
  [v10 setShadowColor:v8];

  v11 = [(GKAvatarContainerView *)self editImageBackground];
  v12 = [v11 layer];
  LODWORD(v13) = 1050253722;
  [v12 setShadowOpacity:v13];

  v14 = [(GKAvatarContainerView *)self traitCollection];
  v15 = [v14 userInterfaceStyle];

  if (v15 == 2)
  {
    [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v17 = ;
  v16 = [(GKAvatarContainerView *)self editImageBackground];
  [v16 setTintColor:v17];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKAvatarContainerView;
  [(GKAvatarContainerView *)&v4 traitCollectionDidChange:a3];
  [(GKAvatarContainerView *)self setupEditImageBackground];
}

- (void)didMoveToSuperview
{
  v6 = [(GKAvatarContainerView *)self widthAnchor];
  v3 = [(GKAvatarContainerView *)self superview];
  v4 = [v3 widthAnchor];
  v5 = [v6 constraintEqualToAnchor:v4];
  [v5 setActive:1];
}

- (void)didSetPlayerAvatarImage:(id)a3
{
  v3 = [(GKAvatarContainerView *)self imageContainer];
  [v3 setHidden:0];
}

- (void)didSelectPlayerAvatarView:(id)a3
{
  v4 = [(GKAvatarContainerView *)self delegate];
  [v4 avatarView:self didSelectImageWithEditingEnabled:GKIsAvatarEditingSupported()];
}

- (void)refreshViewForLocalPlayer
{
  v3 = [MEMORY[0x277D0C138] local];
  v4 = [v3 alias];
  v5 = [(GKAvatarContainerView *)self nicknameLabel];
  [v5 setText:v4];

  v6 = [MEMORY[0x277D0C138] local];
  v7 = [v6 accountName];
  v8 = [(GKAvatarContainerView *)self emailLabel];
  [v8 setText:v7];

  [(GKAvatarContainerView *)self refreshHeaderViewProfileImage];
}

- (void)refreshHeaderViewProfileImage
{
  v3 = [(GKAvatarContainerView *)self playerAvatarView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__GKAvatarContainerView_refreshHeaderViewProfileImage__block_invoke;
  v4[3] = &unk_2796699A8;
  v4[4] = self;
  [v3 refreshImageWithCompletionHandler:v4];
}

- (void)updateAvatarEditingAvailability
{
  v3 = [MEMORY[0x277D0C138] local];
  v4 = [v3 isAvatarEditingRestricted];

  if (v4)
  {
    v5 = [(GKAvatarContainerView *)self playerAvatarView];
    v6 = v5;
LABEL_3:
    [v5 setUserInteractionEnabled:0];

    v7 = *MEMORY[0x277D76560];
    v8 = [(GKAvatarContainerView *)self playerAvatarView];
    [v8 setAccessibilityTraits:v7];

    v34 = [(GKAvatarContainerView *)self editLabel];
    [v34 setHidden:1];
    goto LABEL_10;
  }

  if (GKIsAvatarEditingSupported())
  {
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v11 = [(GKAvatarContainerView *)self editLabel];
    [v11 setText:v10];

    v12 = [(GKAvatarContainerView *)self editLabel];
    v13 = [v12 text];
    v14 = [v13 length];

    if (v14 >= 6)
    {
      v15 = [(GKAvatarContainerView *)self editLabel];
      [v15 setHidden:1];

      v16 = [(GKAvatarContainerView *)self editImage];
      [v16 setHidden:0];
    }

    v17 = *MEMORY[0x277D76560];
    v18 = *MEMORY[0x277D76548];
    v19 = [(GKAvatarContainerView *)self playerAvatarView];
    [v19 setAccessibilityTraits:v18 | v17];

    v20 = GKGameCenterUIFrameworkBundle();
    v21 = GKGetLocalizedStringFromTableInBundle();
    v22 = [(GKAvatarContainerView *)self playerAvatarView];
    [v22 setAccessibilityHint:v21];

    v34 = [(GKAvatarContainerView *)self playerAvatarView];
    [v34 setUserInteractionEnabled:1];
  }

  else
  {
    v23 = [(GKAvatarContainerView *)self playerAvatarView];
    v24 = [v23 hasImage];

    v5 = [(GKAvatarContainerView *)self playerAvatarView];
    v6 = v5;
    if (!v24)
    {
      goto LABEL_3;
    }

    [v5 setUserInteractionEnabled:1];

    v25 = *MEMORY[0x277D76560];
    v26 = *MEMORY[0x277D76548];
    v27 = [(GKAvatarContainerView *)self playerAvatarView];
    [v27 setAccessibilityTraits:v26 | v25];

    v28 = GKGameCenterUIFrameworkBundle();
    v29 = GKGetLocalizedStringFromTableInBundle();
    v30 = [(GKAvatarContainerView *)self playerAvatarView];
    [v30 setAccessibilityHint:v29];

    v31 = [(GKAvatarContainerView *)self editLabel];
    [v31 setHidden:0];

    v34 = GKGameCenterUIFrameworkBundle();
    v32 = GKGetLocalizedStringFromTableInBundle();
    v33 = [(GKAvatarContainerView *)self editLabel];
    [v33 setText:v32];
  }

LABEL_10:
}

- (void)prepareForDefaultNicknameViewController
{
  v3 = [(GKAvatarContainerView *)self emailLabel];
  [v3 removeFromSuperview];

  v4 = [(GKAvatarContainerView *)self nicknameLabel];
  [v4 removeFromSuperview];

  v5 = [(GKAvatarContainerView *)self imageContainerTopConstraint];
  [v5 setConstant:0.0];

  v6 = MEMORY[0x277D74300];
  v7 = [(GKAvatarContainerView *)self editLabel];
  v8 = [v7 font];
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithSymbolicTraits:2];
  v11 = [(GKAvatarContainerView *)self editLabel];
  v12 = [v11 font];
  [v12 pointSize];
  v14 = [v6 fontWithDescriptor:v10 size:v13 + 2.0];
  v15 = [(GKAvatarContainerView *)self editLabel];
  [v15 setFont:v14];

  v16 = [MEMORY[0x277D75418] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (*MEMORY[0x277D0C258])
  {
    v18 = *MEMORY[0x277D0C8F0] ^ 1;
  }

  else
  {
    v18 = 0;
  }

  if (v17 == 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  v20 = [(GKAvatarContainerView *)self playerAvatarView];
  [v20 setAvatarSize:v19];

  [(GKAvatarContainerView *)self refreshHeaderViewProfileImage];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = GKAvatarContainerView;
  [(GKAvatarContainerView *)&v9 setUserInteractionEnabled:?];
  if (v3)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(GKAvatarContainerView *)self editLabel];
  v7 = [v6 layer];
  *&v8 = v5;
  [v7 setOpacity:v8];
}

- (GKAvatarContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end