@interface GKLeaderboardMetadataView
- (void)awakeFromNib;
- (void)configureFootnote:(id)a3 altFootnote:(id)a4;
- (void)configureVibrancy:(BOOL)a3;
- (void)configureWithPlayers:(id)a3 title:(id)a4 footnote:(id)a5 altFootnote:(id)a6;
- (void)configureWithRank:(id)a3 title:(id)a4 footnote:(id)a5 altFootnote:(id)a6 vibrant:(BOOL)a7;
- (void)updateAvatarContainer:(id)a3 withPlayer:(id)a4;
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
  v6 = [(GKLeaderboardMetadataView *)self rank];
  [v6 setFont:v5];

  v7 = [MEMORY[0x277D75348] secondaryLabelColor];
  v8 = [(GKLeaderboardMetadataView *)self rank];
  [v8 setTintColor:v7];

  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  v10 = [(GKLeaderboardMetadataView *)self title];
  [v10 setFont:v9];

  v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] weight:*MEMORY[0x277D74418]];
  v12 = [(GKLeaderboardMetadataView *)self footnote];
  [v12 setFont:v11];

  v13 = [MEMORY[0x277D0C8C8] sharedTheme];
  v14 = [v13 secondaryLabelCompositingFilter];
  v15 = [(GKLeaderboardMetadataView *)self footnote];
  v16 = [v15 layer];
  [v16 setCompositingFilter:v14];

  v17 = [(GKLeaderboardMetadataView *)self avatarContainer1];
  [v17 setHidden:1];

  v18 = [(GKLeaderboardMetadataView *)self avatarContainer2];
  [v18 setHidden:1];

  v19 = [(GKLeaderboardMetadataView *)self avatarContainer3];
  [v19 setHidden:1];

  v20 = [(GKLeaderboardMetadataView *)self rank];
  [v20 setHidden:1];

  v21 = [(GKLeaderboardMetadataView *)self vibrancyView];
  [v21 setHidden:1];

  v22 = [(GKLeaderboardMetadataView *)self rank];
  [v22 setText:&stru_28612D290];

  v23 = objc_opt_new();
  v24 = [(GKLeaderboardMetadataView *)self vibrancyView];
  [v24 setEffect:v23];
}

- (void)configureVibrancy:(BOOL)a3
{
  if (a3 && *MEMORY[0x277D0C258] == 1)
  {
    v4 = [MEMORY[0x277D75D58] _gkGameLayerContentVibrancyEffect];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v6 = v4;
  v5 = [(GKLeaderboardMetadataView *)self vibrancyView];
  [v5 setEffect:v6];
}

- (void)configureWithRank:(id)a3 title:(id)a4 footnote:(id)a5 altFootnote:(id)a6 vibrant:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(GKLeaderboardMetadataView *)self avatarContainer1];
  [v16 setHidden:1];

  v17 = [(GKLeaderboardMetadataView *)self avatarContainer2];
  [v17 setHidden:1];

  v18 = [(GKLeaderboardMetadataView *)self avatarContainer3];
  [v18 setHidden:1];

  v19 = [(GKLeaderboardMetadataView *)self rank];
  [v19 setHidden:0];

  v20 = [(GKLeaderboardMetadataView *)self vibrancyView];
  [v20 setHidden:0];

  v21 = [(GKLeaderboardMetadataView *)self rank];
  [v21 setText:v15];

  v22 = [(GKLeaderboardMetadataView *)self title];
  [v22 setText:v14];

  [(GKLeaderboardMetadataView *)self configureFootnote:v13 altFootnote:v12];

  [(GKLeaderboardMetadataView *)self configureVibrancy:v7];
}

- (void)configureWithPlayers:(id)a3 title:(id)a4 footnote:(id)a5 altFootnote:(id)a6
{
  v26 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v26 count];
  v14 = [(GKLeaderboardMetadataView *)self rank];
  [v14 setHidden:1];

  v15 = [(GKLeaderboardMetadataView *)self vibrancyView];
  [v15 setHidden:1];

  v16 = [(GKLeaderboardMetadataView *)self avatarContainer1];
  [v16 setHidden:v13 < 1];

  v17 = [(GKLeaderboardMetadataView *)self avatarContainer2];
  [v17 setHidden:v13 < 2];

  v18 = [(GKLeaderboardMetadataView *)self avatarContainer3];
  [v18 setHidden:v13 < 3];

  v19 = [(GKLeaderboardMetadataView *)self title];
  [v19 setText:v12];

  [(GKLeaderboardMetadataView *)self configureFootnote:v11 altFootnote:v10];
  if (v13 >= 1)
  {
    v20 = [(GKLeaderboardMetadataView *)self avatarContainer1];
    v21 = [v26 objectAtIndexedSubscript:0];
    [(GKLeaderboardMetadataView *)self updateAvatarContainer:v20 withPlayer:v21];

    if (v13 != 1)
    {
      v22 = [(GKLeaderboardMetadataView *)self avatarContainer2];
      v23 = [v26 objectAtIndexedSubscript:1];
      [(GKLeaderboardMetadataView *)self updateAvatarContainer:v22 withPlayer:v23];

      if (v13 >= 3)
      {
        v24 = [(GKLeaderboardMetadataView *)self avatarContainer3];
        v25 = [v26 objectAtIndexedSubscript:2];
        [(GKLeaderboardMetadataView *)self updateAvatarContainer:v24 withPlayer:v25];
      }
    }
  }

  [(GKLeaderboardMetadataView *)self configureVibrancy:0];
}

- (void)configureFootnote:(id)a3 altFootnote:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(GKLeaderboardMetadataView *)self footnote];
  [v8 setText:v6];

  if ([v7 length])
  {
    v9 = [(GKLeaderboardMetadataView *)self footnote];
    [v9 setNeedsLayout];

    v10 = [(GKLeaderboardMetadataView *)self footnote];
    [v10 layoutIfNeeded];

    v11 = [(GKLeaderboardMetadataView *)self footnote];
    [v11 bounds];
    v13 = v12;
    v23 = *MEMORY[0x277D740A8];
    v14 = [(GKLeaderboardMetadataView *)self footnote];
    v15 = [v14 font];
    v24[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v6 boundingRectWithSize:1 options:v16 attributes:0 context:{v13, 1.79769313e308}];
    v18 = v17;

    v19 = [(GKLeaderboardMetadataView *)self footnote];
    [v19 bounds];
    v21 = v20;

    if (v18 > v21)
    {
      v22 = [(GKLeaderboardMetadataView *)self footnote];
      [v22 setText:v7];
    }
  }
}

- (void)updateAvatarContainer:(id)a3 withPlayer:(id)a4
{
  v17 = a3;
  v5 = a4;
  v6 = [v17 subviews];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v17 subviews];
    v9 = [v8 objectAtIndexedSubscript:0];

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
  [v17 addSubview:v9];
  [(GKDashboardPlayerPhotoView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [MEMORY[0x277CCAAD0] _gkInstallEdgeConstraintsForView:v9 containedWithinParentView:v17];
  v10 = [(GKDashboardPlayerPhotoView *)v9 layer];
  [v10 setShadowOffset:{0.0, 0.0}];

  v11 = [MEMORY[0x277D75348] blackColor];
  v12 = [v11 CGColor];
  v13 = [(GKDashboardPlayerPhotoView *)v9 layer];
  [v13 setShadowColor:v12];

  v14 = [(GKDashboardPlayerPhotoView *)v9 layer];
  [v14 setShadowRadius:2.0];

  v15 = [(GKDashboardPlayerPhotoView *)v9 layer];
  LODWORD(v16) = 1050253722;
  [v15 setShadowOpacity:v16];

LABEL_7:
  [(GKDashboardPlayerPhotoView *)v9 setPlayer:v5];
}

@end