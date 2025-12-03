@interface GKTurnBasedMatchDetailHeaderView
- (GKTurnBasedMatchDetailHeaderView)initWithFrame:(CGRect)frame;
- (NSString)actionText;
- (NSString)playingWithString;
- (SEL)actionSelector;
- (id)actionTarget;
- (void)actionPressed:(id)pressed;
- (void)didUpdateModel;
- (void)establishConstraints;
- (void)setActionSelector:(SEL)selector;
- (void)setActionText:(id)text;
- (void)setInfoText:(id)text;
- (void)setLabelAlpha:(double)alpha;
- (void)setMatch:(id)match;
@end

@implementation GKTurnBasedMatchDetailHeaderView

- (GKTurnBasedMatchDetailHeaderView)initWithFrame:(CGRect)frame
{
  v44[1] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = GKTurnBasedMatchDetailHeaderView;
  v3 = [(GKTurnBasedMatchDetailHeaderView *)&v43 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
    viewBackgroundColor = [mEMORY[0x277D0C868] viewBackgroundColor];
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
    [(UILabel *)v3->_playingWithLabel setBackgroundColor:viewBackgroundColor];
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
    [(GKLabel *)v3->_startedLabel setBackgroundColor:viewBackgroundColor];
    [(GKLabel *)v3->_startedLabel setNumberOfLines:2];
    quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
    [(GKLabel *)v3->_startedLabel setTextColor:quaternaryLabelColor];

    [(GKLabel *)v3->_startedLabel setAdjustsFontForContentSizeCategory:1];
    [(GKLabel *)v3->_startedLabel setOpaque:0];
    v18 = [[GKLabel alloc] initWithFrame:v6, v7, v8, v9];
    lastTurnLabel = v3->_lastTurnLabel;
    v3->_lastTurnLabel = v18;

    [(GKLabel *)v3->_lastTurnLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v3->_lastTurnLabel setBackgroundColor:viewBackgroundColor];
    [(GKLabel *)v3->_lastTurnLabel setNumberOfLines:2];
    quaternaryLabelColor2 = [MEMORY[0x277D75348] quaternaryLabelColor];
    [(GKLabel *)v3->_lastTurnLabel setTextColor:quaternaryLabelColor2];

    [(GKLabel *)v3->_lastTurnLabel setAdjustsFontForContentSizeCategory:1];
    [(GKLabel *)v3->_lastTurnLabel setOpaque:0];
    v21 = [GKFocusableButton buttonWithType:0];
    actionButton = v3->_actionButton;
    v3->_actionButton = v21;

    [(UIButton *)v3->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    titleLabel = [(UIButton *)v3->_actionButton titleLabel];
    [titleLabel setFont:v23];

    titleLabel2 = [(UIButton *)v3->_actionButton titleLabel];
    [titleLabel2 setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)v3->_actionButton addTarget:v3 action:sel_actionPressed_ forControlEvents:0x2000];
    layer = [(UIButton *)v3->_actionButton layer];
    [layer setCornerRadius:14.0];

    v27 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0799999982];
    [(UIButton *)v3->_actionButton setBackgroundColor:v27];

    [(UIButton *)v3->_actionButton setContentEdgeInsets:8.0, 16.0, 8.0, 16.0];
    v28 = *MEMORY[0x277CDA5E8];
    layer2 = [(UIButton *)v3->_actionButton layer];
    [layer2 setCompositingFilter:v28];

    v30 = objc_alloc_init(GKLabel);
    infoLabel = v3->_infoLabel;
    v3->_infoLabel = v30;

    [(GKLabel *)v3->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = v3->_infoLabel;
    textStyle = [MEMORY[0x277D0C8B0] textStyle];
    v34 = [textStyle lineHeight:15.0];
    centered = [v34 centered];
    [(GKLabel *)v32 applyTextStyle:centered];

    [(GKLabel *)v3->_infoLabel setAdjustsFontForContentSizeCategory:1];
    [(GKLabel *)v3->_infoLabel setNumberOfLines:2];
    [(GKLabel *)v3->_infoLabel setHidden:1];
    [(GKLabel *)v3->_infoLabel setBackgroundColor:viewBackgroundColor];
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

    array = [MEMORY[0x277CBEA60] array];
    constraints = v3->_constraints;
    v3->_constraints = array;

    [(GKTurnBasedMatchDetailHeaderView *)v3 establishConstraints];
  }

  return v3;
}

- (void)establishConstraints
{
  v85[26] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAAD0];
  constraints = self->_constraints;
  selfCopy = self;
  [v2 deactivateConstraints:constraints];
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:80.0];
  v7 = v6;

  widthAnchor = [(GKDashboardPlayerPhotoView *)selfCopy->_avatarView widthAnchor];
  v83 = [widthAnchor constraintEqualToConstant:v7];
  v85[0] = v83;
  heightAnchor = [(GKDashboardPlayerPhotoView *)selfCopy->_avatarView heightAnchor];
  v81 = [heightAnchor constraintEqualToConstant:v7];
  v85[1] = v81;
  centerXAnchor = [(GKDashboardPlayerPhotoView *)selfCopy->_avatarView centerXAnchor];
  centerXAnchor2 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy centerXAnchor];
  v78 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v85[2] = v78;
  topAnchor = [(GKDashboardPlayerPhotoView *)selfCopy->_avatarView topAnchor];
  topAnchor2 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy topAnchor];
  v75 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v85[3] = v75;
  centerXAnchor3 = [(UILabel *)selfCopy->_playingWithLabel centerXAnchor];
  centerXAnchor4 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy centerXAnchor];
  v72 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v85[4] = v72;
  topAnchor3 = [(UILabel *)selfCopy->_playingWithLabel topAnchor];
  bottomAnchor = [(GKDashboardPlayerPhotoView *)selfCopy->_avatarView bottomAnchor];
  v69 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  v85[5] = v69;
  leadingAnchor = [(UILabel *)selfCopy->_playingWithLabel leadingAnchor];
  leadingAnchor2 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy leadingAnchor];
  v66 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v85[6] = v66;
  trailingAnchor = [(UILabel *)selfCopy->_playingWithLabel trailingAnchor];
  trailingAnchor2 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy trailingAnchor];
  v63 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v85[7] = v63;
  centerXAnchor5 = [(GKLabel *)selfCopy->_startedLabel centerXAnchor];
  centerXAnchor6 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy centerXAnchor];
  v60 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v85[8] = v60;
  leadingAnchor3 = [(GKLabel *)selfCopy->_startedLabel leadingAnchor];
  leadingAnchor4 = [(UILabel *)selfCopy->_playingWithLabel leadingAnchor];
  v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v85[9] = v57;
  trailingAnchor3 = [(GKLabel *)selfCopy->_startedLabel trailingAnchor];
  trailingAnchor4 = [(UILabel *)selfCopy->_playingWithLabel trailingAnchor];
  v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v85[10] = v54;
  topAnchor4 = [(GKLabel *)selfCopy->_startedLabel topAnchor];
  bottomAnchor2 = [(UILabel *)selfCopy->_playingWithLabel bottomAnchor];
  v51 = [topAnchor4 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  v85[11] = v51;
  centerXAnchor7 = [(GKLabel *)selfCopy->_lastTurnLabel centerXAnchor];
  centerXAnchor8 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy centerXAnchor];
  v48 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v85[12] = v48;
  topAnchor5 = [(GKLabel *)selfCopy->_lastTurnLabel topAnchor];
  bottomAnchor3 = [(GKLabel *)selfCopy->_startedLabel bottomAnchor];
  v45 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:4.0];
  v85[13] = v45;
  leadingAnchor5 = [(GKLabel *)selfCopy->_lastTurnLabel leadingAnchor];
  leadingAnchor6 = [(UILabel *)selfCopy->_playingWithLabel leadingAnchor];
  v42 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v85[14] = v42;
  trailingAnchor5 = [(GKLabel *)selfCopy->_lastTurnLabel trailingAnchor];
  trailingAnchor6 = [(UILabel *)selfCopy->_playingWithLabel trailingAnchor];
  v39 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v85[15] = v39;
  centerXAnchor9 = [(GKLabel *)selfCopy->_infoLabel centerXAnchor];
  centerXAnchor10 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy centerXAnchor];
  v35 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  v85[16] = v35;
  topAnchor6 = [(GKLabel *)selfCopy->_infoLabel topAnchor];
  bottomAnchor4 = [(GKLabel *)selfCopy->_lastTurnLabel bottomAnchor];
  v32 = [topAnchor6 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:1.0];
  v85[17] = v32;
  leadingAnchor7 = [(GKLabel *)selfCopy->_infoLabel leadingAnchor];
  leadingAnchor8 = [(UILabel *)selfCopy->_playingWithLabel leadingAnchor];
  v29 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v85[18] = v29;
  trailingAnchor7 = [(GKLabel *)selfCopy->_infoLabel trailingAnchor];
  trailingAnchor8 = [(UILabel *)selfCopy->_playingWithLabel trailingAnchor];
  v26 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v85[19] = v26;
  topAnchor7 = [(UIButton *)selfCopy->_actionButton topAnchor];
  bottomAnchor5 = [(GKLabel *)selfCopy->_infoLabel bottomAnchor];
  v23 = [topAnchor7 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor5 multiplier:1.0];
  v85[20] = v23;
  centerXAnchor11 = [(UIButton *)selfCopy->_actionButton centerXAnchor];
  centerXAnchor12 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy centerXAnchor];
  v20 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
  v85[21] = v20;
  leadingAnchor9 = [(UIFocusGuide *)selfCopy->_actionFocusGuide leadingAnchor];
  leadingAnchor10 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy leadingAnchor];
  v17 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v85[22] = v17;
  trailingAnchor9 = [(UIFocusGuide *)selfCopy->_actionFocusGuide trailingAnchor];
  trailingAnchor10 = [(GKTurnBasedMatchDetailHeaderView *)selfCopy trailingAnchor];
  v10 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v85[23] = v10;
  topAnchor8 = [(UIFocusGuide *)selfCopy->_actionFocusGuide topAnchor];
  topAnchor9 = [(UIButton *)selfCopy->_actionButton topAnchor];
  v13 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v85[24] = v13;
  bottomAnchor6 = [(UIFocusGuide *)selfCopy->_actionFocusGuide bottomAnchor];
  bottomAnchor7 = [(UIButton *)selfCopy->_actionButton bottomAnchor];
  v16 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v85[25] = v16;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:26];

  [MEMORY[0x277CCAAD0] activateConstraints:v36];
  [(GKTurnBasedMatchDetailHeaderView *)selfCopy setConstraints:v36];
}

- (void)setLabelAlpha:(double)alpha
{
  [(UILabel *)self->_playingWithLabel setAlpha:?];
  [(GKLabel *)self->_startedLabel setAlpha:alpha];
  [(GKLabel *)self->_lastTurnLabel setAlpha:alpha];
  infoLabel = self->_infoLabel;

  [(GKLabel *)infoLabel setAlpha:alpha];
}

- (void)setMatch:(id)match
{
  matchCopy = match;
  if (self->_match != matchCopy)
  {
    v6 = matchCopy;
    objc_storeStrong(&self->_match, match);
    [(GKTurnBasedMatchDetailHeaderView *)self didUpdateModel];
    matchCopy = v6;
  }
}

- (NSString)actionText
{
  titleLabel = [(UIButton *)self->_actionButton titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setActionText:(id)text
{
  [(UIButton *)self->_actionButton setTitle:text forState:0];
  [(UIButton *)self->_actionButton sizeToFit];

  [(GKTurnBasedMatchDetailHeaderView *)self didUpdateModel];
}

- (void)setInfoText:(id)text
{
  textCopy = text;
  if (self->_infoText != textCopy)
  {
    v8 = textCopy;
    objc_storeStrong(&self->_infoText, text);
    [(GKLabel *)self->_infoLabel setText:v8];
    v6 = [(NSString *)v8 length];
    v7 = v6 == 0;
    [(UIButton *)self->_actionButton setHidden:v6 != 0];
    [(GKLabel *)self->_infoLabel setHidden:v7];
    [(GKTurnBasedMatchDetailHeaderView *)self didUpdateModel];
    textCopy = v8;
  }
}

- (NSString)playingWithString
{
  showcasePlayer = [(GKTurnBasedMatch *)self->_match showcasePlayer];
  v4 = [showcasePlayer displayNameWithOptions:0];
  avatarView = [(GKTurnBasedMatchDetailHeaderView *)self avatarView];
  [avatarView setPlayer:showcasePlayer completionHandler:0];

  return v4;
}

- (void)didUpdateModel
{
  v28[1] = *MEMORY[0x277D85DE8];
  textStyle = [MEMORY[0x277D0C8B0] textStyle];
  playingWithString = [(GKTurnBasedMatchDetailHeaderView *)self playingWithString];
  [(UILabel *)self->_playingWithLabel setText:playingWithString];

  v5 = MEMORY[0x277CCACA8];
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();
  creationDate = [(GKTurnBasedMatch *)self->_match creationDate];
  v9 = [creationDate _gkFormattedDateForStyle:2 relative:0];
  v10 = [v5 stringWithFormat:v7, v9];

  caption1 = [textStyle caption1];
  centered = [caption1 centered];
  v26 = v10;
  v13 = [v10 _gkAttributedStringByApplyingStyle:centered];
  [(GKLabel *)self->_startedLabel setAttributedText:v13];

  lastTurnDate = [(GKTurnBasedMatch *)self->_match lastTurnDate];
  if (lastTurnDate)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = GKGameCenterUIFrameworkBundle();
    v17 = GKGetLocalizedStringFromTableInBundle();
    v18 = [lastTurnDate _gkFormattedWhenStringWithOptions:0];
    v19 = [v15 stringWithFormat:v17, v18];
  }

  else
  {
    v19 = &stru_28612D290;
  }

  v27 = @"when";
  caption12 = [textStyle caption1];
  centered2 = [caption12 centered];
  v28[0] = centered2;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  caption13 = [textStyle caption1];
  centered3 = [caption13 centered];
  v25 = [(__CFString *)v19 _gkAttributedStringByApplyingStylesForTags:v22 untaggedStyle:centered3];
  [(GKLabel *)self->_lastTurnLabel setAttributedText:v25];

  [(GKTurnBasedMatchDetailHeaderView *)self establishConstraints];
}

- (void)actionPressed:(id)pressed
{
  pressedCopy = pressed;
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

- (void)setActionSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_actionSelector = selectorCopy;
}

@end