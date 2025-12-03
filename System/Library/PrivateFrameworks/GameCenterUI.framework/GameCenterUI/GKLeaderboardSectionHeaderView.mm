@interface GKLeaderboardSectionHeaderView
- (id)attributedStringWithSymbol:(id)symbol;
- (void)awakeFromNib;
- (void)traitCollectionDidChange:(id)change;
- (void)updateHighlightsWithGameRecord:(id)record leaderboardCount:(int64_t)count setCount:(int64_t)setCount;
- (void)updateLayout;
@end

@implementation GKLeaderboardSectionHeaderView

- (void)awakeFromNib
{
  v26.receiver = self;
  v26.super_class = GKLeaderboardSectionHeaderView;
  [(GKLeaderboardSectionHeaderView *)&v26 awakeFromNib];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  traitCollection = [(GKLeaderboardSectionHeaderView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v6 = @"GKLeaderboardMetadataViewAX_iOS";
  }

  else if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v6 = @"GKLeaderboardMetadataView_xrOS";
  }

  else
  {
    v6 = @"GKLeaderboardMetadataView_iOS";
  }

  v7 = [v3 loadNibNamed:v6 owner:self options:0];
  firstObject = [v7 firstObject];
  [(GKLeaderboardSectionHeaderView *)self setPersonalView:firstObject];

  v9 = [v3 loadNibNamed:v6 owner:self options:0];
  firstObject2 = [v9 firstObject];
  [(GKLeaderboardSectionHeaderView *)self setSocialView:firstObject2];

  container = [(GKLeaderboardSectionHeaderView *)self container];
  personalView = [(GKLeaderboardSectionHeaderView *)self personalView];
  [container addArrangedSubview:personalView];

  container2 = [(GKLeaderboardSectionHeaderView *)self container];
  socialView = [(GKLeaderboardSectionHeaderView *)self socialView];
  [container2 addArrangedSubview:socialView];

  personalView2 = [(GKLeaderboardSectionHeaderView *)self personalView];
  v16 = GKGameCenterUIFrameworkBundle();
  v17 = GKGetLocalizedStringFromTableInBundle();
  v18 = GKGameCenterUIFrameworkBundle();
  v19 = GKGetLocalizedStringFromTableInBundle();
  [personalView2 configureWithRank:@"👏" title:v17 footnote:v19 vibrant:0];

  socialView2 = [(GKLeaderboardSectionHeaderView *)self socialView];
  v21 = [(GKLeaderboardSectionHeaderView *)self formattedNumber:&unk_286188CB8];
  v22 = GKGameCenterUIFrameworkBundle();
  v23 = GKGetLocalizedStringFromTableInBundle();
  v24 = GKGameCenterUIFrameworkBundle();
  v25 = GKGetLocalizedStringFromTableInBundle();
  [socialView2 configureWithRank:v21 title:v23 footnote:v25 vibrant:1];

  [(GKLeaderboardSectionHeaderView *)self updateLayout];
}

- (void)updateLayout
{
  traitCollection = [(GKLeaderboardSectionHeaderView *)self traitCollection];
  category = [traitCollection preferredContentSizeCategory];

  if (!UIContentSizeCategoryIsAccessibilityCategory(category))
  {
    traitCollection2 = [(GKLeaderboardSectionHeaderView *)self traitCollection];
    v8 = [traitCollection2 verticalSizeClass] == 1;

    goto LABEL_11;
  }

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([currentTraitCollection horizontalSizeClass] == 1)
  {
    currentTraitCollection2 = [MEMORY[0x277D75C80] currentTraitCollection];
    v6 = [currentTraitCollection2 verticalSizeClass] == 2;
  }

  else
  {
    v6 = 0;
  }

  if ([(NSString *)category isEqualToString:*MEMORY[0x277D76800]])
  {
    if (!v6)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_11;
    }
  }

  else if (!(v6 | ![(NSString *)category isEqualToString:*MEMORY[0x277D76808]]))
  {
    goto LABEL_8;
  }

  v8 = 1;
LABEL_11:
  container = [(GKLeaderboardSectionHeaderView *)self container];
  [container setAxis:v8];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = GKLeaderboardSectionHeaderView;
  [(GKLeaderboardSectionHeaderView *)&v4 traitCollectionDidChange:change];
  [(GKLeaderboardSectionHeaderView *)self updateLayout];
}

- (id)attributedStringWithSymbol:(id)symbol
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB48];
  symbolCopy = symbol;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x277D74270];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:symbolCopy];

  v8 = [v6 textAttachmentWithImage:v7];

  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v10 = MEMORY[0x277D76A08];
  if (!ShouldUsePadUI)
  {
    v10 = MEMORY[0x277D769A8];
  }

  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*v10];
  v12 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v8];
  [v5 appendAttributedString:v12];

  v13 = *MEMORY[0x277D740C0];
  v17[0] = *MEMORY[0x277D740A8];
  v17[1] = v13;
  v18[0] = v11;
  labelColor = [MEMORY[0x277D75348] labelColor];
  v18[1] = labelColor;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v5 addAttributes:v15 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

- (void)updateHighlightsWithGameRecord:(id)record leaderboardCount:(int64_t)count setCount:(int64_t)setCount
{
  recordCopy = record;
  v8 = GKGameCenterUIFrameworkBundle();
  v9 = GKGetLocalizedStringFromTableInBundle();

  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();

  personalView = [(GKLeaderboardSectionHeaderView *)self personalView];
  if (setCount > 0)
  {
    count = setCount;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v14 = [(GKLeaderboardSectionHeaderView *)self formattedNumber:v13];
  v15 = MEMORY[0x277CCACA8];
  v16 = GKGameCenterUIFrameworkBundle();
  v17 = GKGetLocalizedStringFromTableInBundle();
  v18 = [v15 localizedStringWithFormat:v17, count];
  [personalView configureWithRank:v14 title:v18 footnote:v9 altFootnote:v11 vibrant:1];

  if (![(GKLeaderboardSectionHeaderView *)self dataUpdated])
  {
    v19 = MEMORY[0x277D0C020];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboardSectionHeaderView.m", 166, "-[GKLeaderboardSectionHeaderView updateHighlightsWithGameRecord:leaderboardCount:setCount:]"];
    v21 = [v19 dispatchGroupWithName:v20];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __91__GKLeaderboardSectionHeaderView_updateHighlightsWithGameRecord_leaderboardCount_setCount___block_invoke;
    v27[3] = &unk_279669A20;
    v28 = recordCopy;
    v22 = v21;
    v29 = v22;
    [v22 perform:v27];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __91__GKLeaderboardSectionHeaderView_updateHighlightsWithGameRecord_leaderboardCount_setCount___block_invoke_3;
    v25[3] = &unk_279669E48;
    v25[4] = self;
    v26 = v22;
    v23 = v22;
    [v23 notifyOnMainQueueWithBlock:v25];
  }
}

void __91__GKLeaderboardSectionHeaderView_updateHighlightsWithGameRecord_leaderboardCount_setCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v5 = [v4 gameStatServicePrivate];
  v6 = MEMORY[0x277CBEB98];
  v7 = [*(a1 + 32) bundleIdentifier];
  v8 = [v6 setWithObject:v7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__GKLeaderboardSectionHeaderView_updateHighlightsWithGameRecord_leaderboardCount_setCount___block_invoke_2;
  v10[3] = &unk_279669DF8;
  v11 = *(a1 + 40);
  v12 = v3;
  v9 = v3;
  [v5 getGamesFriendsPlayed:0 type:@"all" withinSecs:864000000 matchingBundleIDs:v8 handler:v10];
}

uint64_t __91__GKLeaderboardSectionHeaderView_updateHighlightsWithGameRecord_leaderboardCount_setCount___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __91__GKLeaderboardSectionHeaderView_updateHighlightsWithGameRecord_leaderboardCount_setCount___block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setDataUpdated:1];
  v2 = [*(a1 + 40) result];

  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = [*(a1 + 40) result];
  if (![v3 count])
  {

LABEL_13:
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__GKLeaderboardSectionHeaderView_updateHighlightsWithGameRecord_leaderboardCount_setCount___block_invoke_4;
    v21[3] = &unk_279669E20;
    v21[4] = *(a1 + 32);
    [MEMORY[0x277D0C0A0] loadHighlightsWithPlayerScope:0 timeScope:2 handler:v21];
    return;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [objc_alloc(MEMORY[0x277D0C170]) initWithInternalRepresentation:*(*(&v22 + 1) + 8 * v9)];
      [v4 addObject:v10];
      v11 = [v4 count];

      if (v11 > 2)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v12 = [*(a1 + 32) socialView];
  v13 = MEMORY[0x277CCACA8];
  v14 = GKGameCenterUIFrameworkBundle();
  v15 = GKGetLocalizedStringFromTableInBundle();
  v16 = [v13 localizedStringWithFormat:v15, objc_msgSend(v5, "count")];
  v17 = MEMORY[0x277CCACA8];
  v18 = GKGameCenterUIFrameworkBundle();
  v19 = GKGetLocalizedStringFromTableInBundle();
  v20 = [v17 localizedStringWithFormat:v19, objc_msgSend(v5, "count")];
  [v12 configureWithPlayers:v4 title:v16 footnote:v20];
}

void __91__GKLeaderboardSectionHeaderView_updateHighlightsWithGameRecord_leaderboardCount_setCount___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v28 = [v9 socialView];
  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
  v13 = [v11 formattedNumber:v12];
  v14 = MEMORY[0x277CCACA8];
  v15 = GKGameCenterUIFrameworkBundle();
  GKGetLocalizedStringFromTableInBundle();
  if (a7 > 99)
    v23 = {;
    v24 = [v10 localizedTitle];

    v25 = [v14 localizedStringWithFormat:v23, a7, v24];
    [v28 configureWithRank:&stru_28612D290 title:v13 footnote:v25 vibrant:1];

    v28 = [*(a1 + 32) attributedStringWithSymbol:@"globe"];
    v26 = [*(a1 + 32) socialView];
    v27 = [v26 rank];
    [v27 setAttributedText:v28];

    v12 = [*(a1 + 32) socialView];
    [v12 configureVibrancy:1];
  }

  else
    v16 = {;
    v17 = [v14 localizedStringWithFormat:v16, a7];
    v18 = MEMORY[0x277CCACA8];
    v19 = GKGameCenterUIFrameworkBundle();
    v20 = GKGetLocalizedStringFromTableInBundle();
    v21 = [v10 localizedTitle];

    v22 = [v18 stringWithFormat:v20, v21];
    [v28 configureWithRank:v13 title:v17 footnote:v22 vibrant:1];
  }
}

@end