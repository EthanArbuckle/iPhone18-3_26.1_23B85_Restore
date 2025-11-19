@interface GKTurnBasedMatchDetailHeaderView
- (GKTurnBasedMatchDetailHeaderView)initWithFrame:(CGRect)a3;
- (NSString)actionText;
- (NSString)playingWithString;
- (SEL)actionSelector;
- (id)actionTarget;
- (void)actionPressed:(id)a3;
- (void)didUpdateModel;
- (void)establishConstraints;
- (void)setActionSelector:(SEL)a3;
- (void)setActionText:(id)a3;
- (void)setInfoText:(id)a3;
- (void)setLabelAlpha:(double)a3;
- (void)setMatch:(id)a3;
@end

@implementation GKTurnBasedMatchDetailHeaderView

- (GKTurnBasedMatchDetailHeaderView)initWithFrame:(CGRect)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = GKTurnBasedMatchDetailHeaderView;
  v3 = [(GKTurnBasedMatchDetailHeaderView *)&v43 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v42 = [MEMORY[0x277D0C868] sharedPalette];
    v4 = [v42 viewBackgroundColor];
    v5 = [GKDashboardPlayerPhotoView alloc];
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [(GKDashboardPlayerPhotoView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
    avatarView = v3->_avatarView;
    v3->_avatarView = v10;

    [(GKDashboardPlayerPhotoView *)v3->_avatarView setClipsToBounds:1];
    [(GKDashboardPlayerPhotoView *)v3->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    playingWithLabel = v3->_playingWithLabel;
    v3->_playingWithLabel = v12;

    [(UILabel *)v3->_playingWithLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_playingWithLabel setBackgroundColor:v4];
    [(UILabel *)v3->_playingWithLabel setOpaque:0];
    [(UILabel *)v3->_playingWithLabel setNumberOfLines:2];
    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    [(UILabel *)v3->_playingWithLabel setFont:v14];

    [(UILabel *)v3->_playingWithLabel setTextAlignment:1];
    [(UILabel *)v3->_playingWithLabel setAdjustsFontForContentSizeCategory:1];
    v15 = [[GKLabel alloc] initWithFrame:v6, v7, v8, v9];
    startedLabel = v3->_startedLabel;
    v3->_startedLabel = v15;

    [(GKLabel *)v3->_startedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v3->_startedLabel setBackgroundColor:v4];
    [(GKLabel *)v3->_startedLabel setNumberOfLines:2];
    v17 = [MEMORY[0x277D75348] quaternaryLabelColor];
    [(GKLabel *)v3->_startedLabel setTextColor:v17];

    [(GKLabel *)v3->_startedLabel setAdjustsFontForContentSizeCategory:1];
    [(GKLabel *)v3->_startedLabel setOpaque:0];
    v18 = [[GKLabel alloc] initWithFrame:v6, v7, v8, v9];
    lastTurnLabel = v3->_lastTurnLabel;
    v3->_lastTurnLabel = v18;

    [(GKLabel *)v3->_lastTurnLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v3->_lastTurnLabel setBackgroundColor:v4];
    [(GKLabel *)v3->_lastTurnLabel setNumberOfLines:2];
    v20 = [MEMORY[0x277D75348] quaternaryLabelColor];
    [(GKLabel *)v3->_lastTurnLabel setTextColor:v20];

    [(GKLabel *)v3->_lastTurnLabel setAdjustsFontForContentSizeCategory:1];
    [(GKLabel *)v3->_lastTurnLabel setOpaque:0];
    v21 = [GKFocusableButton buttonWithType:0];
    actionButton = v3->_actionButton;
    v3->_actionButton = v21;

    [(UIButton *)v3->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v24 = [(UIButton *)v3->_actionButton titleLabel];
    [v24 setFont:v23];

    v25 = [(UIButton *)v3->_actionButton titleLabel];
    [v25 setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)v3->_actionButton addTarget:v3 action:sel_actionPressed_ forControlEvents:0x2000];
    v26 = [(UIButton *)v3->_actionButton layer];
    [v26 setCornerRadius:14.0];

    v27 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0799999982];
    [(UIButton *)v3->_actionButton setBackgroundColor:v27];

    [(UIButton *)v3->_actionButton setContentEdgeInsets:8.0, 16.0, 8.0, 16.0];
    v28 = *MEMORY[0x277CDA5E8];
    v29 = [(UIButton *)v3->_actionButton layer];
    [v29 setCompositingFilter:v28];

    v30 = objc_alloc_init(GKLabel);
    infoLabel = v3->_infoLabel;
    v3->_infoLabel = v30;

    [(GKLabel *)v3->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = v3->_infoLabel;
    v33 = [MEMORY[0x277D0C8B0] textStyle];
    v34 = [v33 lineHeight:15.0];
    v35 = [v34 centered];
    [(GKLabel *)v32 applyTextStyle:v35];

    [(GKLabel *)v3->_infoLabel setAdjustsFontForContentSizeCategory:1];
    [(GKLabel *)v3->_infoLabel setNumberOfLines:2];
    [(GKLabel *)v3->_infoLabel setHidden:1];
    [(GKLabel *)v3->_infoLabel setBackgroundColor:v4];
    [(GKLabel *)v3->_infoLabel setOpaque:0];
    [(GKTurnBasedMatchDetailHeaderView *)v3 addSubview:v3->_playingWithLabel];
    [(GKTurnBasedMatchDetailHeaderView *)v3 addSubview:v3->_startedLabel];
    [(GKTurnBasedMatchDetailHeaderView *)v3 addSubview:v3->_lastTurnLabel];
    [(GKTurnBasedMatchDetailHeaderView *)v3 addSubview:v3->_actionButton];
    [(GKTurnBasedMatchDetailHeaderView *)v3 addSubview:v3->_infoLabel];
    [(GKTurnBasedMatchDetailHeaderView *)v3 addSubview:v3->_avatarView];
    if (v3->_actionButton)
    {
      v36 = objc_alloc_init(MEMORY[0x277D75500]);
      actionFocusGuide = v3->_actionFocusGuide;
      v3->_actionFocusGuide = v36;

      v44[0] = v3->_actionButton;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
      [(UIFocusGuide *)v3->_actionFocusGuide setPreferredFocusEnvironments:v38];

      [(GKTurnBasedMatchDetailHeaderView *)v3 addLayoutGuide:v3->_actionFocusGuide];
    }

    v39 = [MEMORY[0x277CBEA60] array];
    constraints = v3->_constraints;
    v3->_constraints = v39;

    [(GKTurnBasedMatchDetailHeaderView *)v3 establishConstraints];
  }

  return v3;
}

- (void)establishConstraints
{
  v85[26] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAAD0];
  constraints = self->_constraints;
  v4 = self;
  [v2 deactivateConstraints:constraints];
  v5 = [MEMORY[0x277D75520] defaultMetrics];
  [v5 scaledValueForValue:80.0];
  v7 = v6;

  v84 = [(GKDashboardPlayerPhotoView *)v4->_avatarView widthAnchor];
  v83 = [v84 constraintEqualToConstant:v7];
  v85[0] = v83;
  v82 = [(GKDashboardPlayerPhotoView *)v4->_avatarView heightAnchor];
  v81 = [v82 constraintEqualToConstant:v7];
  v85[1] = v81;
  v80 = [(GKDashboardPlayerPhotoView *)v4->_avatarView centerXAnchor];
  v79 = [(GKTurnBasedMatchDetailHeaderView *)v4 centerXAnchor];
  v78 = [v80 constraintEqualToAnchor:v79];
  v85[2] = v78;
  v77 = [(GKDashboardPlayerPhotoView *)v4->_avatarView topAnchor];
  v76 = [(GKTurnBasedMatchDetailHeaderView *)v4 topAnchor];
  v75 = [v77 constraintEqualToAnchor:v76 constant:8.0];
  v85[3] = v75;
  v74 = [(UILabel *)v4->_playingWithLabel centerXAnchor];
  v73 = [(GKTurnBasedMatchDetailHeaderView *)v4 centerXAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v85[4] = v72;
  v71 = [(UILabel *)v4->_playingWithLabel topAnchor];
  v70 = [(GKDashboardPlayerPhotoView *)v4->_avatarView bottomAnchor];
  v69 = [v71 constraintEqualToSystemSpacingBelowAnchor:v70 multiplier:1.0];
  v85[5] = v69;
  v68 = [(UILabel *)v4->_playingWithLabel leadingAnchor];
  v67 = [(GKTurnBasedMatchDetailHeaderView *)v4 leadingAnchor];
  v66 = [v68 constraintEqualToAnchor:v67 constant:20.0];
  v85[6] = v66;
  v65 = [(UILabel *)v4->_playingWithLabel trailingAnchor];
  v64 = [(GKTurnBasedMatchDetailHeaderView *)v4 trailingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64 constant:-20.0];
  v85[7] = v63;
  v62 = [(GKLabel *)v4->_startedLabel centerXAnchor];
  v61 = [(GKTurnBasedMatchDetailHeaderView *)v4 centerXAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v85[8] = v60;
  v59 = [(GKLabel *)v4->_startedLabel leadingAnchor];
  v58 = [(UILabel *)v4->_playingWithLabel leadingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v85[9] = v57;
  v56 = [(GKLabel *)v4->_startedLabel trailingAnchor];
  v55 = [(UILabel *)v4->_playingWithLabel trailingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v85[10] = v54;
  v53 = [(GKLabel *)v4->_startedLabel topAnchor];
  v52 = [(UILabel *)v4->_playingWithLabel bottomAnchor];
  v51 = [v53 constraintEqualToSystemSpacingBelowAnchor:v52 multiplier:1.0];
  v85[11] = v51;
  v50 = [(GKLabel *)v4->_lastTurnLabel centerXAnchor];
  v49 = [(GKTurnBasedMatchDetailHeaderView *)v4 centerXAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v85[12] = v48;
  v47 = [(GKLabel *)v4->_lastTurnLabel topAnchor];
  v46 = [(GKLabel *)v4->_startedLabel bottomAnchor];
  v45 = [v47 constraintEqualToAnchor:v46 constant:4.0];
  v85[13] = v45;
  v44 = [(GKLabel *)v4->_lastTurnLabel leadingAnchor];
  v43 = [(UILabel *)v4->_playingWithLabel leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v85[14] = v42;
  v41 = [(GKLabel *)v4->_lastTurnLabel trailingAnchor];
  v40 = [(UILabel *)v4->_playingWithLabel trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v85[15] = v39;
  v38 = [(GKLabel *)v4->_infoLabel centerXAnchor];
  v37 = [(GKTurnBasedMatchDetailHeaderView *)v4 centerXAnchor];
  v35 = [v38 constraintEqualToAnchor:v37];
  v85[16] = v35;
  v34 = [(GKLabel *)v4->_infoLabel topAnchor];
  v33 = [(GKLabel *)v4->_lastTurnLabel bottomAnchor];
  v32 = [v34 constraintEqualToSystemSpacingBelowAnchor:v33 multiplier:1.0];
  v85[17] = v32;
  v31 = [(GKLabel *)v4->_infoLabel leadingAnchor];
  v30 = [(UILabel *)v4->_playingWithLabel leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v85[18] = v29;
  v28 = [(GKLabel *)v4->_infoLabel trailingAnchor];
  v27 = [(UILabel *)v4->_playingWithLabel trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v85[19] = v26;
  v25 = [(UIButton *)v4->_actionButton topAnchor];
  v24 = [(GKLabel *)v4->_infoLabel bottomAnchor];
  v23 = [v25 constraintEqualToSystemSpacingBelowAnchor:v24 multiplier:1.0];
  v85[20] = v23;
  v22 = [(UIButton *)v4->_actionButton centerXAnchor];
  v21 = [(GKTurnBasedMatchDetailHeaderView *)v4 centerXAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v85[21] = v20;
  v19 = [(UIFocusGuide *)v4->_actionFocusGuide leadingAnchor];
  v18 = [(GKTurnBasedMatchDetailHeaderView *)v4 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v85[22] = v17;
  v8 = [(UIFocusGuide *)v4->_actionFocusGuide trailingAnchor];
  v9 = [(GKTurnBasedMatchDetailHeaderView *)v4 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v85[23] = v10;
  v11 = [(UIFocusGuide *)v4->_actionFocusGuide topAnchor];
  v12 = [(UIButton *)v4->_actionButton topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v85[24] = v13;
  v14 = [(UIFocusGuide *)v4->_actionFocusGuide bottomAnchor];
  v15 = [(UIButton *)v4->_actionButton bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v85[25] = v16;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:26];

  [MEMORY[0x277CCAAD0] activateConstraints:v36];
  [(GKTurnBasedMatchDetailHeaderView *)v4 setConstraints:v36];
}

- (void)setLabelAlpha:(double)a3
{
  [(UILabel *)self->_playingWithLabel setAlpha:?];
  [(GKLabel *)self->_startedLabel setAlpha:a3];
  [(GKLabel *)self->_lastTurnLabel setAlpha:a3];
  infoLabel = self->_infoLabel;

  [(GKLabel *)infoLabel setAlpha:a3];
}

- (void)setMatch:(id)a3
{
  v5 = a3;
  if (self->_match != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_match, a3);
    [(GKTurnBasedMatchDetailHeaderView *)self didUpdateModel];
    v5 = v6;
  }
}

- (NSString)actionText
{
  v2 = [(UIButton *)self->_actionButton titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setActionText:(id)a3
{
  [(UIButton *)self->_actionButton setTitle:a3 forState:0];
  [(UIButton *)self->_actionButton sizeToFit];

  [(GKTurnBasedMatchDetailHeaderView *)self didUpdateModel];
}

- (void)setInfoText:(id)a3
{
  v5 = a3;
  if (self->_infoText != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_infoText, a3);
    [(GKLabel *)self->_infoLabel setText:v8];
    v6 = [(NSString *)v8 length];
    v7 = v6 == 0;
    [(UIButton *)self->_actionButton setHidden:v6 != 0];
    [(GKLabel *)self->_infoLabel setHidden:v7];
    [(GKTurnBasedMatchDetailHeaderView *)self didUpdateModel];
    v5 = v8;
  }
}

- (NSString)playingWithString
{
  v3 = [(GKTurnBasedMatch *)self->_match showcasePlayer];
  v4 = [v3 displayNameWithOptions:0];
  v5 = [(GKTurnBasedMatchDetailHeaderView *)self avatarView];
  [v5 setPlayer:v3 completionHandler:0];

  return v4;
}

- (void)didUpdateModel
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D0C8B0] textStyle];
  v4 = [(GKTurnBasedMatchDetailHeaderView *)self playingWithString];
  [(UILabel *)self->_playingWithLabel setText:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();
  v8 = [(GKTurnBasedMatch *)self->_match creationDate];
  v9 = [v8 _gkFormattedDateForStyle:2 relative:0];
  v10 = [v5 stringWithFormat:v7, v9];

  v11 = [v3 caption1];
  v12 = [v11 centered];
  v26 = v10;
  v13 = [v10 _gkAttributedStringByApplyingStyle:v12];
  [(GKLabel *)self->_startedLabel setAttributedText:v13];

  v14 = [(GKTurnBasedMatch *)self->_match lastTurnDate];
  if (v14)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = GKGameCenterUIFrameworkBundle();
    v17 = GKGetLocalizedStringFromTableInBundle();
    v18 = [v14 _gkFormattedWhenStringWithOptions:0];
    v19 = [v15 stringWithFormat:v17, v18];
  }

  else
  {
    v19 = &stru_28612D290;
  }

  v27 = @"when";
  v20 = [v3 caption1];
  v21 = [v20 centered];
  v28[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v23 = [v3 caption1];
  v24 = [v23 centered];
  v25 = [(__CFString *)v19 _gkAttributedStringByApplyingStylesForTags:v22 untaggedStyle:v24];
  [(GKLabel *)self->_lastTurnLabel setAttributedText:v25];

  [(GKTurnBasedMatchDetailHeaderView *)self establishConstraints];
}

- (void)actionPressed:(id)a3
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_actionTarget);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (self->_actionSelector)
    {

      v6 = objc_loadWeakRetained(&self->_actionTarget);
      v7 = v6;
      if (self->_actionSelector)
      {
        actionSelector = self->_actionSelector;
      }

      else
      {
        actionSelector = 0;
      }

      v9 = [v6 methodForSelector:actionSelector];

      v10 = objc_loadWeakRetained(&self->_actionTarget);
      v5 = v10;
      if (self->_actionSelector)
      {
        v11 = self->_actionSelector;
      }

      else
      {
        v11 = 0;
      }

      v9(v10, v11);
    }
  }
}

- (id)actionTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_actionTarget);

  return WeakRetained;
}

- (SEL)actionSelector
{
  if (self->_actionSelector)
  {
    return self->_actionSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setActionSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_actionSelector = v3;
}

@end