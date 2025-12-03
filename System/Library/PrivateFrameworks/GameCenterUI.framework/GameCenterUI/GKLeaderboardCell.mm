@interface GKLeaderboardCell
- (void)addVisualEffect;
- (void)awakeFromNib;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLeaderboard:(id)leaderboard;
- (void)setLeaderboardSet:(id)set;
- (void)setSelected:(BOOL)selected;
- (void)setupFallbackIcon;
- (void)updateImage;
- (void)updateLayout;
- (void)updateRank;
- (void)updateSummary;
@end

@implementation GKLeaderboardCell

- (void)awakeFromNib
{
  v16.receiver = self;
  v16.super_class = GKLeaderboardCell;
  [(GKLeaderboardCell *)&v16 awakeFromNib];
  textColor = [(UILabel *)self->_titleLabel textColor];
  [(GKLeaderboardCell *)self setTitleLabelColor:textColor];

  [(GKLeaderboardCell *)self setClipsToBounds:0];
  iconView = [(GKLeaderboardCell *)self iconView];
  [iconView setContentMode:2];

  v5 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D76918] symbolicTraits:2];
  titleLabel = [(GKLeaderboardCell *)self titleLabel];
  [titleLabel setFont:v5];

  v7 = *MEMORY[0x277CDA5E8];
  countLabel = [(GKLeaderboardCell *)self countLabel];
  layer = [countLabel layer];
  [layer setCompositingFilter:v7];

  contentView = [(GKLeaderboardCell *)self contentView];
  layer2 = [contentView layer];
  [layer2 setCornerRadius:14.0];

  v12 = *MEMORY[0x277CDA138];
  contentView2 = [(GKLeaderboardCell *)self contentView];
  layer3 = [contentView2 layer];
  [layer3 setCornerCurve:v12];

  [(GKLeaderboardCell *)self addVisualEffect];
  countLabel2 = [(GKLeaderboardCell *)self countLabel];
  [countLabel2 setText:&stru_28612D290];

  [(GKLeaderboardCell *)self _gkDisableDefaultFocusEffect];
  [(GKLeaderboardCell *)self setupFallbackIcon];
}

- (void)addVisualEffect
{
  v8 = objc_alloc_init(MEMORY[0x277D75D68]);
  _gkGameLayerModuleVisualEffect = [MEMORY[0x277D75D58] _gkGameLayerModuleVisualEffect];
  [v8 setBackgroundEffects:_gkGameLayerModuleVisualEffect];

  backgroundEffects = [v8 backgroundEffects];
  [(GKLeaderboardCell *)self setCustomBackgroundBlur:backgroundEffects];

  [v8 _setGroupName:@"gameLayerGroup"];
  contentView = [(GKLeaderboardCell *)self contentView];
  [contentView insertSubview:v8 atIndex:0];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = MEMORY[0x277CCAAD0];
  contentView2 = [(GKLeaderboardCell *)self contentView];
  [v6 _gkInstallEdgeConstraintsForView:v8 containedWithinParentView:contentView2];

  [(GKLeaderboardCell *)self setEffectView:v8];
}

- (void)setupFallbackIcon
{
  iconView = [(GKLeaderboardCell *)self iconView];
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:@"list.bullet.below.star.filled"];
  v3 = [v2 imageWithRenderingMode:2];

  [iconView setImage:v3];
  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  [iconView setTintColor:tertiaryLabelColor];

  [iconView setContentMode:2];
  v5 = *MEMORY[0x277CDA5E8];
  layer = [iconView layer];
  [layer setCompositingFilter:v5];
}

- (void)setLeaderboardSet:(id)set
{
  setCopy = set;
  if (self->_leaderboardSet != setCopy)
  {
    v13 = setCopy;
    objc_storeStrong(&self->_leaderboardSet, set);
    title = [(GKLeaderboardSet *)v13 title];
    [(UILabel *)self->_titleLabel setText:title];

    leaderboardIdentifiers = [(GKLeaderboardSet *)v13 leaderboardIdentifiers];
    [leaderboardIdentifiers count];
    v8 = MEMORY[0x277CCACA8];
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();

    v11 = GKFormattedStringWithGroupingFromInteger();
    v12 = [v8 stringWithFormat:v10, v11];

    [(UILabel *)self->_countLabel setText:v12];
    [(GKLeaderboardCell *)self updateLayout];
    [(GKLeaderboardCell *)self updateImage];
    setCopy = v13;
  }
}

- (void)setLeaderboard:(id)leaderboard
{
  leaderboardCopy = leaderboard;
  if (self->_leaderboard != leaderboardCopy)
  {
    objc_storeStrong(&self->_leaderboard, leaderboard);
    if (_os_feature_enabled_impl() && [(GKLeaderboard *)leaderboardCopy releaseState]== 2)
    {
      title = [(GKLeaderboard *)leaderboardCopy title];
      v6 = [(GKLeaderboard *)leaderboardCopy description];
      v7 = [_TtC12GameCenterUI20ItemWithReleaseState titleTextWithTitle:title accessibilityDescription:v6 systemSymbolName:@"clock.fill" tooltipText:0 paragraphStyle:0];
      [(UILabel *)self->_titleLabel setAttributedText:v7];
    }

    else
    {
      title = [(GKLeaderboard *)leaderboardCopy title];
      [(UILabel *)self->_titleLabel setText:title];
    }

    [(GKLeaderboardCell *)self updateLayout];
    [(GKLeaderboardCell *)self updateSummary];
    [(GKLeaderboardCell *)self updateImage];
  }
}

- (void)updateLayout
{
  traitCollection = [(GKLeaderboardCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    iconContainerHeight = [(GKLeaderboardCell *)self iconContainerHeight];
    [iconContainerHeight setConstant:335.0];

    v7 = 2;
  }

  else
  {
    v8 = dbl_24E3679E0[self->_leaderboardSet == 0];
    iconContainerHeight2 = [(GKLeaderboardCell *)self iconContainerHeight];
    [iconContainerHeight2 setConstant:v8];

    if (self->_leaderboardSet)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  titleLabel = [(GKLeaderboardCell *)self titleLabel];
  [titleLabel setNumberOfLines:v7];
}

- (void)updateSummary
{
  v14 = self->_leaderboard;
  if ([(GKLeaderboard *)v14 type]== GKLeaderboardTypeRecurring)
  {
    startDate = [(GKLeaderboard *)v14 startDate];
    [(GKLeaderboard *)v14 duration];
    v4 = [startDate dateByAddingTimeInterval:?];

    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [v5 setLocale:currentLocale];

    [v5 setLocalizedDateFormatFromTemplate:{@"MMM d, jj:mm"}];
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    [v5 setTimeZone:localTimeZone];

    v8 = [v5 stringFromDate:v4];
    v9 = MEMORY[0x277CCACA8];
    v10 = GKGameCenterUIFrameworkBundle();
    v11 = GKGetLocalizedStringFromTableInBundle();
    v12 = [v9 stringWithFormat:v11, v8];
    countLabel = [(GKLeaderboardCell *)self countLabel];
    [countLabel setText:v12];
  }

  else
  {
    [(GKLeaderboardCell *)self updateRank];
  }
}

- (void)updateRank
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(GKLeaderboardCell *)self setDataToken:uUIDString];

  dataToken = [(GKLeaderboardCell *)self dataToken];
  v6 = self->_leaderboard;
  currentGame = [MEMORY[0x277D0C048] currentGame];
  gameDescriptor = [currentGame gameDescriptor];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__GKLeaderboardCell_updateRank__block_invoke;
  v11[3] = &unk_27966CB48;
  v12 = dataToken;
  selfCopy = self;
  v14 = v6;
  v9 = v6;
  v10 = dataToken;
  [(GKLeaderboard *)v9 loadEntriesWithGameDescriptor:gameDescriptor playerScope:1 timeScope:2 range:1 completionHandler:600, v11];
}

void __31__GKLeaderboardCell_updateRank__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) dataToken];
  LODWORD(v11) = [v11 isEqualToString:v12];

  if (!v11)
  {
    v14 = v9;
    goto LABEL_13;
  }

  if (!v9 || v10)
  {
    v14 = v9;
LABEL_10:
    v24 = *(a1 + 48);
    v25 = [MEMORY[0x277D0C048] currentGame];
    v26 = [v25 gameDescriptor];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __31__GKLeaderboardCell_updateRank__block_invoke_69;
    v30[3] = &unk_27966CB20;
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v31 = v27;
    v32 = v28;
    [v24 loadEntriesWithGameDescriptor:v26 playerScope:0 timeScope:2 range:1 completionHandler:{2, v30}];

    goto LABEL_13;
  }

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 1;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __31__GKLeaderboardCell_updateRank__block_invoke_2;
  v33[3] = &unk_27966C0A8;
  v35 = v36;
  v13 = v8;
  v34 = v13;
  v14 = [v9 _gkFilterWithBlock:v33];

  v15 = [v14 count];
  if (v15 < 2)
  {

    _Block_object_dispose(v36, 8);
    goto LABEL_10;
  }

  v16 = [v13 internal];
  v17 = [v16 rank];

  if (v17 < 1)
  {
    v18 = [MEMORY[0x277D0C850] LEADERBOARD_LIST_ITEM_SUBTITLE_FRIENDS_PLAYINGWithCOUNT:v15];
    [*(*(a1 + 40) + 696) setText:v18];
  }

  else
  {
    v29 = MEMORY[0x277CCACA8];
    v18 = GKGameCenterUIFrameworkBundle();
    v19 = GKGetLocalizedStringFromTableInBundle();
    v20 = [v13 internal];
    [v20 rank];
    v21 = GKFormattedStringWithGroupingFromInteger();
    v22 = GKFormattedStringWithGroupingFromInteger();
    v23 = [v29 stringWithFormat:v19, v21, v22, v15];
    [*(*(a1 + 40) + 696) setText:v23];
  }

  _Block_object_dispose(v36, 8);
LABEL_13:
}

id __31__GKLeaderboardCell_updateRank__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 player];
  v5 = [v4 isLocalPlayer];

  v6 = [v3 player];
  v7 = [v6 friendBiDirectional];
  v8 = [v7 isEqualToNumber:&unk_286189228];

  if ((v8 & 1) != 0 || v5)
  {
    v10 = *(*(*(a1 + 40) + 8) + 24);
    v11 = [v3 internal];
    [v11 setRank:v10];

    if (v5)
    {
      v12 = *(*(*(a1 + 40) + 8) + 24);
      v13 = [*(a1 + 32) internal];
      [v13 setRank:v12];
    }

    ++*(*(*(a1 + 40) + 8) + 24);
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __31__GKLeaderboardCell_updateRank__block_invoke_69(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) dataToken];
  LODWORD(v3) = [v3 isEqualToString:v4];

  if (v3)
  {
    if ([v10 rank] < 1)
    {
      v6 = GKGameCenterUIFrameworkBundle();
      v7 = GKGetLocalizedStringFromTableInBundle();
      [*(*(a1 + 40) + 696) setText:v7];
    }

    else
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = GKGameCenterUIFrameworkBundle();
      v7 = GKGetLocalizedStringFromTableInBundle();
      [v10 rank];
      v8 = GKFormattedStringWithGroupingFromInteger();
      v9 = [v5 stringWithFormat:v7, v8];
      [*(*(a1 + 40) + 696) setText:v9];
    }
  }
}

- (void)updateImage
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = 0;
  iconView = [(GKLeaderboardCell *)self iconView];
  layer = [iconView layer];
  [layer setCompositingFilter:0];

  if (self->_leaderboardSet)
  {
    mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
    [mEMORY[0x277D0C8C8] iconLeaderboardSetListSource];
  }

  else
  {
    mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
    [mEMORY[0x277D0C8C8] iconLeaderboardListSource];
  }
  v6 = ;

  v7 = v20[5];
  if (v7)
  {
    goto LABEL_9;
  }

  leaderboardSet = self->_leaderboardSet;
  if (leaderboardSet)
  {
    [(GKLeaderboardSet *)leaderboardSet identifier];
  }

  else
  {
    [(GKLeaderboard *)self->_leaderboard identifier];
  }
  v9 = ;
  v10 = [v6 cachedImageForIdentifier:v9];
  v11 = v20[5];
  v20[5] = v10;

  v7 = v20[5];
  if (v7)
  {
LABEL_9:
    iconView2 = [(GKLeaderboardCell *)self iconView];
    [iconView2 setImage:v7];

    [(GKLeaderboardCell *)self updateOverlay];
    [(GKLeaderboardCell *)self setNeedsDisplay];
  }

  else
  {
    v13 = self->_leaderboardSet;
    if (v13)
    {
      [(GKLeaderboardSet *)v13 imageURL];
    }

    else
    {
      [(GKLeaderboard *)self->_leaderboard imageURL];
    }
    v14 = ;
    leaderboard = self->_leaderboardSet;
    if (!leaderboard)
    {
      leaderboard = self->_leaderboard;
    }

    v16 = MEMORY[0x277D85CD0];
    v17 = MEMORY[0x277D85CD0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __32__GKLeaderboardCell_updateImage__block_invoke;
    v18[3] = &unk_27966CB70;
    v18[4] = self;
    v18[5] = &v19;
    [v6 loadImageForURLString:v14 reference:leaderboard queue:v16 handler:v18];
  }

  _Block_object_dispose(&v19, 8);
}

void __32__GKLeaderboardCell_updateImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) leaderboardSet];
  if ([v7 isEqual:v6])
  {

LABEL_4:
    if (v12)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v10 = *(*(*(a1 + 40) + 8) + 40);
      v11 = [*(a1 + 32) iconView];
      [v11 setImage:v10];
    }

    else
    {
      [*(a1 + 32) setupFallbackIcon];
    }

    [*(a1 + 32) updateOverlay];
    [*(a1 + 32) setNeedsDisplay];
    goto LABEL_8;
  }

  v8 = [*(a1 + 32) leaderboard];
  v9 = [v8 isEqual:v6];

  if (v9)
  {
    goto LABEL_4;
  }

LABEL_8:
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = GKLeaderboardCell;
  coordinatorCopy = coordinator;
  [(GKLeaderboardCell *)&v8 didUpdateFocusInContext:context withAnimationCoordinator:coordinatorCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__GKLeaderboardCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v7[3] = &unk_2796699A8;
  v7[4] = self;
  [coordinatorCopy addCoordinatedAnimations:v7 completion:0];
}

uint64_t __70__GKLeaderboardCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isFocused];
  v3 = [*(a1 + 32) customBackgroundBlur];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 mutableCopy];

    v6 = MEMORY[0x277D75D58];
    v7 = [MEMORY[0x277D75348] whiteColor];
    v8 = [v7 colorWithAlphaComponent:0.22];
    v9 = [v6 effectCompositingColor:v8];
    [v5 addObject:v9];

    v4 = v5;
  }

  v10 = [*(a1 + 32) effectView];
  [v10 setBackgroundEffects:v4];

  v11 = *(a1 + 32);

  return [v11 layoutIfNeeded];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = GKLeaderboardCell;
  [(GKLeaderboardCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__GKLeaderboardCell_setHighlighted___block_invoke;
  v5[3] = &unk_27966A890;
  v5[4] = self;
  highlightedCopy = highlighted;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0 completion:0.05];
}

void __36__GKLeaderboardCell_setHighlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.5;
  }

  else
  {
    v1 = 1.0;
  }

  v3 = [*(a1 + 32) layer];
  *&v2 = v1;
  [v3 setOpacity:v2];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = GKLeaderboardCell;
  [(GKLeaderboardCell *)&v8 setSelected:?];
  layer = [(GKLeaderboardCell *)self layer];
  [layer setBackgroundColor:0];

  if (selectedCopy)
  {
    _gkSelectedCellBackgroundColor = [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    _gkSelectedCellBackgroundColor = 0;
  }

  contentView = [(GKLeaderboardCell *)self contentView];
  [contentView setBackgroundColor:_gkSelectedCellBackgroundColor];

  if (selectedCopy)
  {
  }
}

@end