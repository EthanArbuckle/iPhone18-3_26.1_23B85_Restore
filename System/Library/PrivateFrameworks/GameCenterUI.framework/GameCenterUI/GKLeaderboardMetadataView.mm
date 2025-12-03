@interface GKLeaderboardMetadataView
- (void)awakeFromNib;
- (void)configureFootnote:(id)footnote altFootnote:(id)altFootnote;
- (void)configureVibrancy:(BOOL)vibrancy;
- (void)configureWithPlayers:(id)players title:(id)title footnote:(id)footnote altFootnote:(id)altFootnote;
- (void)configureWithRank:(id)rank title:(id)title footnote:(id)footnote altFootnote:(id)altFootnote vibrant:(BOOL)vibrant;
- (void)updateAvatarContainer:(id)container withPlayer:(id)player;
@end

@implementation GKLeaderboardMetadataView

- (void)awakeFromNib
{
  v25.receiver = self;
  v25.super_class = GKLeaderboardMetadataView;
  [(GKLeaderboardMetadataView *)&v25 awakeFromNib];
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v4 = *MEMORY[0x277D769A8];
  if (ShouldUsePadUI)
  {
    [MEMORY[0x277D74300] _preferredFontForTextStyle:v4 design:*MEMORY[0x277D74368] weight:*MEMORY[0x277D74420]];
  }

  else
  {
    [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:v4 design:*MEMORY[0x277D743D0]];
  }
  v5 = ;
  rank = [(GKLeaderboardMetadataView *)self rank];
  [rank setFont:v5];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  rank2 = [(GKLeaderboardMetadataView *)self rank];
  [rank2 setTintColor:secondaryLabelColor];

  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  title = [(GKLeaderboardMetadataView *)self title];
  [title setFont:v9];

  v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] weight:*MEMORY[0x277D74418]];
  footnote = [(GKLeaderboardMetadataView *)self footnote];
  [footnote setFont:v11];

  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  secondaryLabelCompositingFilter = [mEMORY[0x277D0C8C8] secondaryLabelCompositingFilter];
  footnote2 = [(GKLeaderboardMetadataView *)self footnote];
  layer = [footnote2 layer];
  [layer setCompositingFilter:secondaryLabelCompositingFilter];

  avatarContainer1 = [(GKLeaderboardMetadataView *)self avatarContainer1];
  [avatarContainer1 setHidden:1];

  avatarContainer2 = [(GKLeaderboardMetadataView *)self avatarContainer2];
  [avatarContainer2 setHidden:1];

  avatarContainer3 = [(GKLeaderboardMetadataView *)self avatarContainer3];
  [avatarContainer3 setHidden:1];

  rank3 = [(GKLeaderboardMetadataView *)self rank];
  [rank3 setHidden:1];

  vibrancyView = [(GKLeaderboardMetadataView *)self vibrancyView];
  [vibrancyView setHidden:1];

  rank4 = [(GKLeaderboardMetadataView *)self rank];
  [rank4 setText:&stru_28612D290];

  v23 = objc_opt_new();
  vibrancyView2 = [(GKLeaderboardMetadataView *)self vibrancyView];
  [vibrancyView2 setEffect:v23];
}

- (void)configureVibrancy:(BOOL)vibrancy
{
  if (vibrancy && *MEMORY[0x277D0C258] == 1)
  {
    _gkGameLayerContentVibrancyEffect = [MEMORY[0x277D75D58] _gkGameLayerContentVibrancyEffect];
  }

  else
  {
    _gkGameLayerContentVibrancyEffect = objc_opt_new();
  }

  v6 = _gkGameLayerContentVibrancyEffect;
  vibrancyView = [(GKLeaderboardMetadataView *)self vibrancyView];
  [vibrancyView setEffect:v6];
}

- (void)configureWithRank:(id)rank title:(id)title footnote:(id)footnote altFootnote:(id)altFootnote vibrant:(BOOL)vibrant
{
  vibrantCopy = vibrant;
  altFootnoteCopy = altFootnote;
  footnoteCopy = footnote;
  titleCopy = title;
  rankCopy = rank;
  avatarContainer1 = [(GKLeaderboardMetadataView *)self avatarContainer1];
  [avatarContainer1 setHidden:1];

  avatarContainer2 = [(GKLeaderboardMetadataView *)self avatarContainer2];
  [avatarContainer2 setHidden:1];

  avatarContainer3 = [(GKLeaderboardMetadataView *)self avatarContainer3];
  [avatarContainer3 setHidden:1];

  rank = [(GKLeaderboardMetadataView *)self rank];
  [rank setHidden:0];

  vibrancyView = [(GKLeaderboardMetadataView *)self vibrancyView];
  [vibrancyView setHidden:0];

  rank2 = [(GKLeaderboardMetadataView *)self rank];
  [rank2 setText:rankCopy];

  title = [(GKLeaderboardMetadataView *)self title];
  [title setText:titleCopy];

  [(GKLeaderboardMetadataView *)self configureFootnote:footnoteCopy altFootnote:altFootnoteCopy];

  [(GKLeaderboardMetadataView *)self configureVibrancy:vibrantCopy];
}

- (void)configureWithPlayers:(id)players title:(id)title footnote:(id)footnote altFootnote:(id)altFootnote
{
  playersCopy = players;
  altFootnoteCopy = altFootnote;
  footnoteCopy = footnote;
  titleCopy = title;
  v13 = [playersCopy count];
  rank = [(GKLeaderboardMetadataView *)self rank];
  [rank setHidden:1];

  vibrancyView = [(GKLeaderboardMetadataView *)self vibrancyView];
  [vibrancyView setHidden:1];

  avatarContainer1 = [(GKLeaderboardMetadataView *)self avatarContainer1];
  [avatarContainer1 setHidden:v13 < 1];

  avatarContainer2 = [(GKLeaderboardMetadataView *)self avatarContainer2];
  [avatarContainer2 setHidden:v13 < 2];

  avatarContainer3 = [(GKLeaderboardMetadataView *)self avatarContainer3];
  [avatarContainer3 setHidden:v13 < 3];

  title = [(GKLeaderboardMetadataView *)self title];
  [title setText:titleCopy];

  [(GKLeaderboardMetadataView *)self configureFootnote:footnoteCopy altFootnote:altFootnoteCopy];
  if (v13 >= 1)
  {
    avatarContainer12 = [(GKLeaderboardMetadataView *)self avatarContainer1];
    v21 = [playersCopy objectAtIndexedSubscript:0];
    [(GKLeaderboardMetadataView *)self updateAvatarContainer:avatarContainer12 withPlayer:v21];

    if (v13 != 1)
    {
      avatarContainer22 = [(GKLeaderboardMetadataView *)self avatarContainer2];
      v23 = [playersCopy objectAtIndexedSubscript:1];
      [(GKLeaderboardMetadataView *)self updateAvatarContainer:avatarContainer22 withPlayer:v23];

      if (v13 >= 3)
      {
        avatarContainer32 = [(GKLeaderboardMetadataView *)self avatarContainer3];
        v25 = [playersCopy objectAtIndexedSubscript:2];
        [(GKLeaderboardMetadataView *)self updateAvatarContainer:avatarContainer32 withPlayer:v25];
      }
    }
  }

  [(GKLeaderboardMetadataView *)self configureVibrancy:0];
}

- (void)configureFootnote:(id)footnote altFootnote:(id)altFootnote
{
  v24[1] = *MEMORY[0x277D85DE8];
  footnoteCopy = footnote;
  altFootnoteCopy = altFootnote;
  footnote = [(GKLeaderboardMetadataView *)self footnote];
  [footnote setText:footnoteCopy];

  if ([altFootnoteCopy length])
  {
    footnote2 = [(GKLeaderboardMetadataView *)self footnote];
    [footnote2 setNeedsLayout];

    footnote3 = [(GKLeaderboardMetadataView *)self footnote];
    [footnote3 layoutIfNeeded];

    footnote4 = [(GKLeaderboardMetadataView *)self footnote];
    [footnote4 bounds];
    v13 = v12;
    v23 = *MEMORY[0x277D740A8];
    footnote5 = [(GKLeaderboardMetadataView *)self footnote];
    font = [footnote5 font];
    v24[0] = font;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [footnoteCopy boundingRectWithSize:1 options:v16 attributes:0 context:{v13, 1.79769313e308}];
    v18 = v17;

    footnote6 = [(GKLeaderboardMetadataView *)self footnote];
    [footnote6 bounds];
    v21 = v20;

    if (v18 > v21)
    {
      footnote7 = [(GKLeaderboardMetadataView *)self footnote];
      [footnote7 setText:altFootnoteCopy];
    }
  }
}

- (void)updateAvatarContainer:(id)container withPlayer:(id)player
{
  containerCopy = container;
  playerCopy = player;
  subviews = [containerCopy subviews];
  v7 = [subviews count];

  if (v7)
  {
    subviews2 = [containerCopy subviews];
    v9 = [subviews2 objectAtIndexedSubscript:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v9 = objc_alloc_init(GKDashboardPlayerPhotoView);
  [containerCopy addSubview:v9];
  [(GKDashboardPlayerPhotoView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [MEMORY[0x277CCAAD0] _gkInstallEdgeConstraintsForView:v9 containedWithinParentView:containerCopy];
  layer = [(GKDashboardPlayerPhotoView *)v9 layer];
  [layer setShadowOffset:{0.0, 0.0}];

  blackColor = [MEMORY[0x277D75348] blackColor];
  cGColor = [blackColor CGColor];
  layer2 = [(GKDashboardPlayerPhotoView *)v9 layer];
  [layer2 setShadowColor:cGColor];

  layer3 = [(GKDashboardPlayerPhotoView *)v9 layer];
  [layer3 setShadowRadius:2.0];

  layer4 = [(GKDashboardPlayerPhotoView *)v9 layer];
  LODWORD(v16) = 1050253722;
  [layer4 setShadowOpacity:v16];

LABEL_7:
  [(GKDashboardPlayerPhotoView *)v9 setPlayer:playerCopy];
}

@end