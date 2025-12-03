@interface GKAvatarContainerView
- (GKAvatarContainerViewDelegate)delegate;
- (void)awakeFromNib;
- (void)didMoveToSuperview;
- (void)didSelectPlayerAvatarView:(id)view;
- (void)didSetPlayerAvatarImage:(id)image;
- (void)layoutSubviews;
- (void)prepareForDefaultNicknameViewController;
- (void)refreshHeaderViewProfileImage;
- (void)refreshViewForLocalPlayer;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setupEditImageBackground;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAvatarEditingAvailability;
@end

@implementation GKAvatarContainerView

- (void)awakeFromNib
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = GKAvatarContainerView;
  [(GKAvatarContainerView *)&v25 awakeFromNib];
  playerAvatarView = [(GKAvatarContainerView *)self playerAvatarView];
  [playerAvatarView setDelegate:self];

  playerAvatarView2 = [(GKAvatarContainerView *)self playerAvatarView];
  [playerAvatarView2 setAccessibilityIdentifier:@"UIA.GameCenter.GKAvatarContainerView.playerAvatarView"];

  objc_initWeak(&location, self);
  playerAvatarView3 = [(GKAvatarContainerView *)self playerAvatarView];
  local = [MEMORY[0x277D0C138] local];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __37__GKAvatarContainerView_awakeFromNib__block_invoke;
  v22[3] = &unk_279669FE0;
  objc_copyWeak(&v23, &location);
  [playerAvatarView3 setPlayer:local completionHandler:v22];

  [(GKAvatarContainerView *)self updateAvatarEditingAvailability];
  editLabel = [(GKAvatarContainerView *)self editLabel];
  layer = [editLabel layer];

  blackColor = [MEMORY[0x277D75348] blackColor];
  v10 = [blackColor colorWithAlphaComponent:0.4];
  v11 = v10;
  v26[0] = [v10 CGColor];
  blackColor2 = [MEMORY[0x277D75348] blackColor];
  v13 = [blackColor2 colorWithAlphaComponent:0.7];
  v14 = v13;
  v26[1] = [v13 CGColor];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [layer setColors:v15];

  imageContainer = [(GKAvatarContainerView *)self imageContainer];
  [imageContainer setHidden:1];

  editImage = [(GKAvatarContainerView *)self editImage];
  [editImage setHidden:1];

  editLabel2 = [(GKAvatarContainerView *)self editLabel];
  [editLabel2 setAccessibilityIdentifier:@"UIA.GameCenter.GKAvatarContainerView.editLabel"];

  editLabel3 = [(GKAvatarContainerView *)self editLabel];
  [editLabel3 setIsAccessibilityElement:0];

  [(GKAvatarContainerView *)self setupEditImageBackground];
  imageContainer2 = [(GKAvatarContainerView *)self imageContainer];
  automaticStyle = [MEMORY[0x277D755A8] automaticStyle];
  [imageContainer2 setHoverStyle:automaticStyle];

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
  imageContainer = [(GKAvatarContainerView *)self imageContainer];
  [imageContainer frame];
  v5 = v4 * 0.5;
  imageContainer2 = [(GKAvatarContainerView *)self imageContainer];
  layer = [imageContainer2 layer];
  [layer setCornerRadius:v5];

  labelColor = [MEMORY[0x277D75348] labelColor];
  v9 = [labelColor colorWithAlphaComponent:0.08];
  cGColor = [v9 CGColor];
  imageContainer3 = [(GKAvatarContainerView *)self imageContainer];
  layer2 = [imageContainer3 layer];
  [layer2 setBorderColor:cGColor];

  imageContainer4 = [(GKAvatarContainerView *)self imageContainer];
  [imageContainer4 frame];
  v15 = v14 / 280.0;
  imageContainer5 = [(GKAvatarContainerView *)self imageContainer];
  layer3 = [imageContainer5 layer];
  [layer3 setBorderWidth:v15];

  imageContainer6 = [(GKAvatarContainerView *)self imageContainer];
  layer4 = [imageContainer6 layer];
  [layer4 setMasksToBounds:1];
}

- (void)setupEditImageBackground
{
  editImageBackground = [(GKAvatarContainerView *)self editImageBackground];
  layer = [editImageBackground layer];
  [layer setShadowOffset:{0.0, 0.0}];

  editImageBackground2 = [(GKAvatarContainerView *)self editImageBackground];
  layer2 = [editImageBackground2 layer];
  [layer2 setShadowRadius:2.0];

  blackColor = [MEMORY[0x277D75348] blackColor];
  cGColor = [blackColor CGColor];
  editImageBackground3 = [(GKAvatarContainerView *)self editImageBackground];
  layer3 = [editImageBackground3 layer];
  [layer3 setShadowColor:cGColor];

  editImageBackground4 = [(GKAvatarContainerView *)self editImageBackground];
  layer4 = [editImageBackground4 layer];
  LODWORD(v13) = 1050253722;
  [layer4 setShadowOpacity:v13];

  traitCollection = [(GKAvatarContainerView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v17 = ;
  editImageBackground5 = [(GKAvatarContainerView *)self editImageBackground];
  [editImageBackground5 setTintColor:v17];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = GKAvatarContainerView;
  [(GKAvatarContainerView *)&v4 traitCollectionDidChange:change];
  [(GKAvatarContainerView *)self setupEditImageBackground];
}

- (void)didMoveToSuperview
{
  widthAnchor = [(GKAvatarContainerView *)self widthAnchor];
  superview = [(GKAvatarContainerView *)self superview];
  widthAnchor2 = [superview widthAnchor];
  v5 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v5 setActive:1];
}

- (void)didSetPlayerAvatarImage:(id)image
{
  imageContainer = [(GKAvatarContainerView *)self imageContainer];
  [imageContainer setHidden:0];
}

- (void)didSelectPlayerAvatarView:(id)view
{
  delegate = [(GKAvatarContainerView *)self delegate];
  [delegate avatarView:self didSelectImageWithEditingEnabled:GKIsAvatarEditingSupported()];
}

- (void)refreshViewForLocalPlayer
{
  local = [MEMORY[0x277D0C138] local];
  alias = [local alias];
  nicknameLabel = [(GKAvatarContainerView *)self nicknameLabel];
  [nicknameLabel setText:alias];

  local2 = [MEMORY[0x277D0C138] local];
  accountName = [local2 accountName];
  emailLabel = [(GKAvatarContainerView *)self emailLabel];
  [emailLabel setText:accountName];

  [(GKAvatarContainerView *)self refreshHeaderViewProfileImage];
}

- (void)refreshHeaderViewProfileImage
{
  playerAvatarView = [(GKAvatarContainerView *)self playerAvatarView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__GKAvatarContainerView_refreshHeaderViewProfileImage__block_invoke;
  v4[3] = &unk_2796699A8;
  v4[4] = self;
  [playerAvatarView refreshImageWithCompletionHandler:v4];
}

- (void)updateAvatarEditingAvailability
{
  local = [MEMORY[0x277D0C138] local];
  isAvatarEditingRestricted = [local isAvatarEditingRestricted];

  if (isAvatarEditingRestricted)
  {
    playerAvatarView = [(GKAvatarContainerView *)self playerAvatarView];
    v6 = playerAvatarView;
LABEL_3:
    [playerAvatarView setUserInteractionEnabled:0];

    v7 = *MEMORY[0x277D76560];
    playerAvatarView2 = [(GKAvatarContainerView *)self playerAvatarView];
    [playerAvatarView2 setAccessibilityTraits:v7];

    editLabel = [(GKAvatarContainerView *)self editLabel];
    [editLabel setHidden:1];
    goto LABEL_10;
  }

  if (GKIsAvatarEditingSupported())
  {
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    editLabel2 = [(GKAvatarContainerView *)self editLabel];
    [editLabel2 setText:v10];

    editLabel3 = [(GKAvatarContainerView *)self editLabel];
    text = [editLabel3 text];
    v14 = [text length];

    if (v14 >= 6)
    {
      editLabel4 = [(GKAvatarContainerView *)self editLabel];
      [editLabel4 setHidden:1];

      editImage = [(GKAvatarContainerView *)self editImage];
      [editImage setHidden:0];
    }

    v17 = *MEMORY[0x277D76560];
    v18 = *MEMORY[0x277D76548];
    playerAvatarView3 = [(GKAvatarContainerView *)self playerAvatarView];
    [playerAvatarView3 setAccessibilityTraits:v18 | v17];

    v20 = GKGameCenterUIFrameworkBundle();
    v21 = GKGetLocalizedStringFromTableInBundle();
    playerAvatarView4 = [(GKAvatarContainerView *)self playerAvatarView];
    [playerAvatarView4 setAccessibilityHint:v21];

    editLabel = [(GKAvatarContainerView *)self playerAvatarView];
    [editLabel setUserInteractionEnabled:1];
  }

  else
  {
    playerAvatarView5 = [(GKAvatarContainerView *)self playerAvatarView];
    hasImage = [playerAvatarView5 hasImage];

    playerAvatarView = [(GKAvatarContainerView *)self playerAvatarView];
    v6 = playerAvatarView;
    if (!hasImage)
    {
      goto LABEL_3;
    }

    [playerAvatarView setUserInteractionEnabled:1];

    v25 = *MEMORY[0x277D76560];
    v26 = *MEMORY[0x277D76548];
    playerAvatarView6 = [(GKAvatarContainerView *)self playerAvatarView];
    [playerAvatarView6 setAccessibilityTraits:v26 | v25];

    v28 = GKGameCenterUIFrameworkBundle();
    v29 = GKGetLocalizedStringFromTableInBundle();
    playerAvatarView7 = [(GKAvatarContainerView *)self playerAvatarView];
    [playerAvatarView7 setAccessibilityHint:v29];

    editLabel5 = [(GKAvatarContainerView *)self editLabel];
    [editLabel5 setHidden:0];

    editLabel = GKGameCenterUIFrameworkBundle();
    v32 = GKGetLocalizedStringFromTableInBundle();
    editLabel6 = [(GKAvatarContainerView *)self editLabel];
    [editLabel6 setText:v32];
  }

LABEL_10:
}

- (void)prepareForDefaultNicknameViewController
{
  emailLabel = [(GKAvatarContainerView *)self emailLabel];
  [emailLabel removeFromSuperview];

  nicknameLabel = [(GKAvatarContainerView *)self nicknameLabel];
  [nicknameLabel removeFromSuperview];

  imageContainerTopConstraint = [(GKAvatarContainerView *)self imageContainerTopConstraint];
  [imageContainerTopConstraint setConstant:0.0];

  v6 = MEMORY[0x277D74300];
  editLabel = [(GKAvatarContainerView *)self editLabel];
  font = [editLabel font];
  fontDescriptor = [font fontDescriptor];
  v10 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
  editLabel2 = [(GKAvatarContainerView *)self editLabel];
  font2 = [editLabel2 font];
  [font2 pointSize];
  v14 = [v6 fontWithDescriptor:v10 size:v13 + 2.0];
  editLabel3 = [(GKAvatarContainerView *)self editLabel];
  [editLabel3 setFont:v14];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (*MEMORY[0x277D0C258])
  {
    v18 = *MEMORY[0x277D0C8F0] ^ 1;
  }

  else
  {
    v18 = 0;
  }

  if (userInterfaceIdiom == 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  playerAvatarView = [(GKAvatarContainerView *)self playerAvatarView];
  [playerAvatarView setAvatarSize:v19];

  [(GKAvatarContainerView *)self refreshHeaderViewProfileImage];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9.receiver = self;
  v9.super_class = GKAvatarContainerView;
  [(GKAvatarContainerView *)&v9 setUserInteractionEnabled:?];
  if (enabledCopy)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  editLabel = [(GKAvatarContainerView *)self editLabel];
  layer = [editLabel layer];
  *&v8 = v5;
  [layer setOpacity:v8];
}

- (GKAvatarContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end