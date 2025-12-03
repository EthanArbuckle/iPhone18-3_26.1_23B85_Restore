@interface GKLeaderboardScoreViewController
- (BOOL)hasData;
- (BOOL)isLoading;
- (BOOL)updateHighlightsPersonalView;
- (GKLeaderboardScoreViewController)initWithGameRecord:(id)record leaderboard:(id)leaderboard;
- (UICollectionViewCell)preferredFocusCell;
- (id)attributedStringWithSymbol:(id)symbol;
- (id)preferredFocusEnvironments;
- (id)timeRemainingFromDate:(id)date toDate:(id)toDate;
- (void)addLeaderboardHighlights;
- (void)addPlayerScopeControl;
- (void)autoRefreshHighlightsPersonalView;
- (void)backButtonPressed:(id)pressed;
- (void)challengeWithScore:(id)score;
- (void)clearSelection;
- (void)collectionViewDidScroll;
- (void)configureCloseButton;
- (void)configureFocusGuidesForPortraitNavigationBar;
- (void)configurePlayerScopeFocusGuide;
- (void)configureTimeScopeMenu;
- (void)dataUpdated:(BOOL)updated withError:(id)error;
- (void)dealloc;
- (void)didEnterLoadingState;
- (void)didLoadAdditionalScoresWithUpdatedTotalEntries:(unint64_t)entries;
- (void)didLoadScoresWithLocalPlayerEntry:(id)entry topPlayer:(id)player playerAbove:(id)above playerBelow:(id)below totalEntries:(int64_t)entries;
- (void)donePressed:(id)pressed;
- (void)enableDisableCollectionViewScrolling;
- (void)hideNoContentPlaceholder;
- (void)loadData;
- (void)loadLeaderboardForOccurrence:(int64_t)occurrence handler:(id)handler;
- (void)playerScopeChanged:(id)changed;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
- (void)scrollToTopPressed:(id)pressed;
- (void)scrollViewDidScroll:(id)scroll;
- (void)sendFriendInvitationViaMessagesTo:(id)to withPresentingViewController:(id)controller;
- (void)setLeaderboardOccurrence:(int64_t)occurrence;
- (void)setNeedsRefresh;
- (void)setPlayerScope:(int64_t)scope restrictToFriendsOnly:(BOOL)only;
- (void)setTimeScope:(int64_t)scope;
- (void)setupFadeGradient;
- (void)setupNoContentView:(id)view withError:(id)error;
- (void)setupReleaseStateInfo;
- (void)setupVisualEffect;
- (void)shareScore:(id)score fromLeaderboard:(id)leaderboard sendingView:(id)view relativeRect:(CGRect)rect;
- (void)shareWithScore:(id)score fromView:(id)view;
- (void)showNoContentPlaceholderForError:(id)error;
- (void)traitCollectionDidChange:(id)change;
- (void)updateContentSize;
- (void)updateHighlights;
- (void)updatePlayerScopeLayoutForSize:(CGSize)size;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation GKLeaderboardScoreViewController

- (GKLeaderboardScoreViewController)initWithGameRecord:(id)record leaderboard:(id)leaderboard
{
  recordCopy = record;
  leaderboardCopy = leaderboard;
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v8 = @"GKLeaderboardScoreViewController_xrOS";
  }

  else
  {
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v12 = @"GKLeaderboardScoreViewController_iOS";
    if (IsAccessibilityCategory)
    {
      v12 = @"GKLeaderboardScoreViewControllerAX_iOS";
    }

    v8 = v12;
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23.receiver = self;
  v23.super_class = GKLeaderboardScoreViewController;
  v14 = [(GKLoadingViewController *)&v23 initWithNibName:v8 bundle:v13];

  if (v14)
  {
    [(GKLeaderboardScoreViewController *)v14 setInitialPlayerScope:1];
    [(GKLeaderboardScoreViewController *)v14 setLeaderboard:leaderboardCopy];
    if ([leaderboardCopy type] == 1)
    {
      [(GKLeaderboardScoreViewController *)v14 setCurrentOccurrence:leaderboardCopy];
    }

    title = [leaderboardCopy title];
    [(GKLeaderboardScoreViewController *)v14 setTitle:title];

    [(GKLoadingViewController *)v14 setLoadingIndicatorDelay:0.0];
    v16 = [[GKLeaderboardScoreDataSource alloc] initWithGameRecord:recordCopy leaderboard:leaderboardCopy];
    objc_initWeak(&location, v14);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __67__GKLeaderboardScoreViewController_initWithGameRecord_leaderboard___block_invoke;
    v19[3] = &unk_27966D018;
    objc_copyWeak(&v21, &location);
    v17 = v14;
    v20 = v17;
    [(GKLeaderboardScoreDataSource *)v16 setInviteFriendHandler:v19];
    [(GKLeaderboardScoreViewController *)v17 setDataSource:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __67__GKLeaderboardScoreViewController_initWithGameRecord_leaderboard___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C1D8] shared];
  v5 = [v4 isAddingFriendsRestricted];

  if (v5)
  {
    v6 = MEMORY[0x277D75110];
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v12 = MEMORY[0x277D750F8];
    v13 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    v15 = [v12 actionWithTitle:v14 style:0 handler:0];
    [v11 addAction:v15];

LABEL_7:
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained presentViewController:v11 animated:1 completion:0];

    goto LABEL_16;
  }

  v16 = _os_feature_enabled_impl();
  if (v3 || !v16)
  {
    if (v3)
    {
      if ([v3 supportsFriendingViaPush])
      {
        v22 = [v3 contactAssociationID];

        if (v22)
        {
          v23 = [*(a1 + 32) leaderboard];
          v24 = [v23 identifier];
          [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:0 pageType:@"leaderboard" pageId:v24];

          v25 = [v3 contact];
          v26 = [v25 identifier];
          v27 = [v3 contactAssociationID];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __67__GKLeaderboardScoreViewController_initWithGameRecord_leaderboard___block_invoke_2;
          v33[3] = &unk_27966CFF0;
          v34 = *(a1 + 32);
          v35 = v3;
          objc_copyWeak(&v36, (a1 + 40));
          [_TtC12GameCenterUI20GameCenterObjcHelper sendFriendInvitationViaPushWithContactID:v26 contactAssociationID:v27 completionHandler:v33];

          objc_destroyWeak(&v36);
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v17 = objc_loadWeakRetained((a1 + 40));

    if (v17)
    {
      v18 = [*(a1 + 32) leaderboard];
      v19 = [v18 identifier];
      [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:2 pageType:@"leaderboard" pageId:v19];

      v20 = objc_loadWeakRetained((a1 + 40));
      v11 = [GKFriendingViewControllers inviteFriendsWithContainerViewController:v20];

      goto LABEL_7;
    }
  }

  if (v3)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2;
  }

  v29 = [*(a1 + 32) leaderboard];
  v30 = [v29 identifier];
  [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:v28 pageType:@"leaderboard" pageId:v30];

  v31 = *(a1 + 32);
  v32 = objc_loadWeakRetained((a1 + 40));
  [v31 sendFriendInvitationViaMessagesTo:v3 withPresentingViewController:v32];

LABEL_16:
}

void __67__GKLeaderboardScoreViewController_initWithGameRecord_leaderboard___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v4 = GKOSLoggers();
    }

    v5 = *MEMORY[0x277D0C298];
    if (os_log_type_enabled(*MEMORY[0x277D0C298], OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "Unable to send friend invitation via push, falling back to Messages flow. %@", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v6 sendFriendInvitationViaMessagesTo:v7 withPresentingViewController:WeakRetained];
  }
}

- (void)addLeaderboardHighlights
{
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v5 = @"GKLeaderboardMetadataViewAX_iOS";
  }

  else if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v5 = @"GKLeaderboardMetadataView_xrOS";
  }

  else
  {
    v5 = +[GKLeaderboardMetadataView];
  }

  v6 = [v14 loadNibNamed:v5 owner:self options:0];
  firstObject = [v6 firstObject];
  [(GKLeaderboardScoreViewController *)self setPersonalView:firstObject];

  v8 = [v14 loadNibNamed:v5 owner:self options:0];
  firstObject2 = [v8 firstObject];
  [(GKLeaderboardScoreViewController *)self setSocialView:firstObject2];

  highlightView = [(GKLeaderboardScoreViewController *)self highlightView];
  personalView = [(GKLeaderboardScoreViewController *)self personalView];
  [highlightView addArrangedSubview:personalView];

  highlightView2 = [(GKLeaderboardScoreViewController *)self highlightView];
  socialView = [(GKLeaderboardScoreViewController *)self socialView];
  [highlightView2 addArrangedSubview:socialView];

  [(GKLeaderboardScoreViewController *)self updateHighlights];
}

- (void)autoRefreshHighlightsPersonalView
{
  if ([(GKLeaderboardScoreViewController *)self shouldAutoRefreshHighlights])
  {
    if (![(GKLeaderboardScoreViewController *)self leaderboardOccurrence])
    {
      [(GKLeaderboardScoreViewController *)self updateHighlightsPersonalView];
    }

    v3 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__GKLeaderboardScoreViewController_autoRefreshHighlightsPersonalView__block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }
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

- (BOOL)updateHighlightsPersonalView
{
  v76[1] = *MEMORY[0x277D85DE8];
  leaderboard = [(GKLeaderboardScoreViewController *)self leaderboard];
  type = [leaderboard type];

  if (type != 1)
  {
LABEL_4:
    if (-[GKLeaderboardScoreViewController hasData](self, "hasData") && (-[GKLeaderboardScoreViewController localPlayerEntry](self, "localPlayerEntry"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 rank], v10, v11 >= 1))
    {
      leaderboard2 = [(GKLeaderboardScoreViewController *)self leaderboard];
      if ([leaderboard2 playerScope])
      {

LABEL_8:
        playerScopeControl = [(GKLeaderboardScoreViewController *)self playerScopeControl];
        selectedSegmentIndex = [playerScopeControl selectedSegmentIndex];
        v15 = MEMORY[0x277CCACA8];
        v16 = GKGameCenterUIFrameworkBundle();
        GKGetLocalizedStringFromTableInBundle();
        if (selectedSegmentIndex < 1)
          v17 = {;
          localPlayerEntry = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
          v21 = [v15 localizedStringWithFormat:v17, objc_msgSend(localPlayerEntry, "rank"), -[GKLeaderboardScoreViewController totalEntries](self, "totalEntries")];
        }

        else
          v17 = {;
          v18 = MEMORY[0x277CCABB0];
          localPlayerEntry = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
          v20 = [v18 numberWithInteger:{objc_msgSend(localPlayerEntry, "rank")}];
          v21 = [v15 localizedStringWithFormat:v17, v20];
        }

        personalView = [(GKLeaderboardScoreViewController *)self personalView];
        local = [MEMORY[0x277D0C138] local];
        v75 = local;
        v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
        localPlayerEntry2 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
        formattedScore = [localPlayerEntry2 formattedScore];
        [personalView configureWithPlayers:v57 title:formattedScore footnote:v21];

        return 0;
      }

      totalEntries = [(GKLeaderboardScoreViewController *)self totalEntries];

      if (totalEntries < 1)
      {
        goto LABEL_8;
      }

      localPlayerEntry3 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      v38 = 100 * [localPlayerEntry3 rank];
      v39 = v38 / [(GKLeaderboardScoreViewController *)self totalEntries];

      if (v39 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v39;
      }

      localPlayerEntry4 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      rank = [localPlayerEntry4 rank];

      if (rank > 10)
      {
        if (v39 > 10)
        {
          goto LABEL_8;
        }

        personalView2 = [(GKLeaderboardScoreViewController *)self personalView];
        local2 = [MEMORY[0x277D0C138] local];
        v76[0] = local2;
        v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:1];
        v63 = MEMORY[0x277CCACA8];
        v64 = GKGameCenterUIFrameworkBundle();
        v65 = GKGetLocalizedStringFromTableInBundle();
        v66 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
        v67 = [v63 localizedStringWithFormat:v65, v66];
        v68 = MEMORY[0x277CCACA8];
        v69 = GKGameCenterUIFrameworkBundle();
        v70 = GKGetLocalizedStringFromTableInBundle();
        v71 = [v68 localizedStringWithFormat:v70, -[GKLeaderboardScoreViewController totalEntries](self, "totalEntries")];
        [personalView2 configureWithPlayers:v62 title:v67 footnote:v71];
      }

      else
      {
        personalView3 = [(GKLeaderboardScoreViewController *)self personalView];
        v43 = MEMORY[0x277CCACA8];
        v73 = GKGameCenterUIFrameworkBundle();
        v44 = GKGetLocalizedStringFromTableInBundle();
        v45 = MEMORY[0x277CCABB0];
        localPlayerEntry5 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
        v47 = [v45 numberWithInteger:{objc_msgSend(localPlayerEntry5, "rank")}];
        v48 = [v43 localizedStringWithFormat:v44, v47];
        v49 = GKGameCenterUIFrameworkBundle();
        v50 = GKGetLocalizedStringFromTableInBundle();
        v51 = MEMORY[0x277CCACA8];
        v52 = GKGameCenterUIFrameworkBundle();
        v53 = GKGetLocalizedStringFromTableInBundle();
        v54 = [v51 localizedStringWithFormat:v53, -[GKLeaderboardScoreViewController totalEntries](self, "totalEntries")];
        [personalView3 configureWithRank:v48 title:v50 footnote:v54 vibrant:1];
      }
    }

    else
    {
      personalView4 = [(GKLeaderboardScoreViewController *)self personalView];
      v23 = GKGameCenterUIFrameworkBundle();
      v24 = GKGetLocalizedStringFromTableInBundle();
      v25 = GKGameCenterUIFrameworkBundle();
      v26 = GKGetLocalizedStringFromTableInBundle();
      [personalView4 configureWithRank:@"👏" title:v24 footnote:v26 vibrant:0];
    }

    return 0;
  }

  date = [MEMORY[0x277CBEAA8] date];
  leaderboard3 = [(GKLeaderboardScoreViewController *)self leaderboard];
  startDate = [leaderboard3 startDate];
  leaderboard4 = [(GKLeaderboardScoreViewController *)self leaderboard];
  [leaderboard4 duration];
  v9 = [startDate dateByAddingTimeInterval:?];

  if ([date compare:v9] != -1)
  {

    goto LABEL_4;
  }

  v27 = [(GKLeaderboardScoreViewController *)self timeRemainingFromDate:date toDate:v9];
  v28 = [(GKLeaderboardScoreViewController *)self attributedStringWithSymbol:@"timer"];
  personalView5 = [(GKLeaderboardScoreViewController *)self personalView];
  v30 = GKGameCenterUIFrameworkBundle();
  v31 = GKGetLocalizedStringFromTableInBundle();
  v32 = 1;
  [personalView5 configureWithRank:&stru_28612D290 title:v27 footnote:v31 vibrant:1];

  personalView6 = [(GKLeaderboardScoreViewController *)self personalView];
  rank2 = [personalView6 rank];
  [rank2 setAttributedText:v28];

  personalView7 = [(GKLeaderboardScoreViewController *)self personalView];
  [personalView7 configureVibrancy:1];

  return v32;
}

- (void)updateHighlights
{
  v68[1] = *MEMORY[0x277D85DE8];
  [(GKLeaderboardScoreViewController *)self updateHighlightsPersonalView];
  if (![(GKLeaderboardScoreViewController *)self hasData])
  {
    v7 = MEMORY[0x277CCACA8];
    playerScopeControl = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [playerScopeControl selectedSegmentIndex];
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v64 = [v7 localizedStringWithFormat:v10, 0];

    playerScopeControl2 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    if ([playerScopeControl2 selectedSegmentIndex] == 1)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = GKGameCenterUIFrameworkBundle();
      v14 = GKGetLocalizedStringFromTableInBundle();
      v15 = [v12 localizedStringWithFormat:v14, 0];
    }

    else
    {
      v13 = GKGameCenterUIFrameworkBundle();
      v15 = GKGetLocalizedStringFromTableInBundle();
    }

    socialView = [(GKLeaderboardScoreViewController *)self socialView];
    v17 = [(GKLeaderboardScoreViewController *)self formattedNumber:&unk_2861892D0];
    [socialView configureWithRank:v17 title:v64 footnote:v15 vibrant:1];

    goto LABEL_20;
  }

  playerScopeControl3 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  selectedSegmentIndex = [playerScopeControl3 selectedSegmentIndex];

  if (selectedSegmentIndex <= 0)
  {
    playerAboveEntry = [(GKLeaderboardScoreViewController *)self playerAboveEntry];

    if (playerAboveEntry)
    {
      v19 = MEMORY[0x277D0C108];
      playerAboveEntry2 = [(GKLeaderboardScoreViewController *)self playerAboveEntry];
      localPlayerEntry = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      localPlayerEntry3 = [v19 formattedDifferenceBetweenFirstScore:playerAboveEntry2 secondScore:localPlayerEntry];

      if ([localPlayerEntry3 length])
      {
        socialView2 = [(GKLeaderboardScoreViewController *)self socialView];
        playerAboveEntry3 = [(GKLeaderboardScoreViewController *)self playerAboveEntry];
        [playerAboveEntry3 player];
        v24 = v23 = localPlayerEntry3;
        v68[0] = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
        playerAboveEntry4 = [(GKLeaderboardScoreViewController *)self playerAboveEntry];
        player = [playerAboveEntry4 player];
        alias = [player alias];
        v29 = MEMORY[0x277CCACA8];
        v30 = GKGameCenterUIFrameworkBundle();
        v31 = GKGetLocalizedStringFromTableInBundle();
        v32 = [v29 localizedStringWithFormat:v31, v23];
        v33 = socialView2;
        [socialView2 configureWithPlayers:v25 title:alias footnote:v32];

LABEL_27:
        return;
      }

LABEL_32:

      goto LABEL_3;
    }

    playerBelowEntry = [(GKLeaderboardScoreViewController *)self playerBelowEntry];

    if (playerBelowEntry)
    {
      v50 = MEMORY[0x277D0C108];
      localPlayerEntry2 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      playerBelowEntry2 = [(GKLeaderboardScoreViewController *)self playerBelowEntry];
      localPlayerEntry3 = [v50 formattedDifferenceBetweenFirstScore:localPlayerEntry2 secondScore:playerBelowEntry2];

      if (![localPlayerEntry3 length])
      {
        goto LABEL_32;
      }

      socialView3 = [(GKLeaderboardScoreViewController *)self socialView];
      playerAboveEntry3 = [(GKLeaderboardScoreViewController *)self playerBelowEntry];
      [playerAboveEntry3 player];
      v24 = v23 = localPlayerEntry3;
      v67 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
      playerAboveEntry4 = [(GKLeaderboardScoreViewController *)self playerBelowEntry];
      player = [playerAboveEntry4 player];
      alias2 = [player alias];
      v54 = MEMORY[0x277CCACA8];
      v55 = GKGameCenterUIFrameworkBundle();
    }

    else
    {
      localPlayerEntry3 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      if ([localPlayerEntry3 rank] < 2)
      {
        goto LABEL_32;
      }

      topPlayerEntry = [(GKLeaderboardScoreViewController *)self topPlayerEntry];

      if (!topPlayerEntry)
      {
        goto LABEL_3;
      }

      v59 = MEMORY[0x277D0C108];
      topPlayerEntry2 = [(GKLeaderboardScoreViewController *)self topPlayerEntry];
      localPlayerEntry4 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      localPlayerEntry3 = [v59 formattedDifferenceBetweenFirstScore:topPlayerEntry2 secondScore:localPlayerEntry4];

      if (![localPlayerEntry3 length])
      {
        goto LABEL_32;
      }

      socialView3 = [(GKLeaderboardScoreViewController *)self socialView];
      playerAboveEntry3 = [(GKLeaderboardScoreViewController *)self topPlayerEntry];
      [playerAboveEntry3 player];
      v24 = v23 = localPlayerEntry3;
      v66 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
      playerAboveEntry4 = [(GKLeaderboardScoreViewController *)self topPlayerEntry];
      player = [playerAboveEntry4 player];
      alias2 = [player alias];
      v54 = MEMORY[0x277CCACA8];
      v55 = GKGameCenterUIFrameworkBundle();
    }

    v56 = GKGetLocalizedStringFromTableInBundle();
    v57 = [v54 localizedStringWithFormat:v56, v23];
    v33 = socialView3;
    [socialView3 configureWithPlayers:v25 title:alias2 footnote:v57];

    goto LABEL_27;
  }

LABEL_3:
  playerScopeControl4 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  if ([playerScopeControl4 selectedSegmentIndex])
  {
    totalEntries = [(GKLeaderboardScoreViewController *)self totalEntries];
  }

  else
  {
    localPlayerEntry5 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
    v35 = [localPlayerEntry5 rank] > 0;
    totalEntries = [(GKLeaderboardScoreViewController *)self totalEntries]- v35;
  }

  v36 = MEMORY[0x277CCACA8];
  playerScopeControl5 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  if ([playerScopeControl5 selectedSegmentIndex])
  {
    v64 = [v36 localizedStringWithFormat:@"%ld", totalEntries];
  }

  else
  {
    v38 = GKGameCenterUIFrameworkBundle();
    v39 = GKGetLocalizedStringFromTableInBundle();
    v64 = [v36 localizedStringWithFormat:v39, totalEntries];
  }

  playerScopeControl6 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  if ([playerScopeControl6 selectedSegmentIndex] == 1)
  {
    v41 = MEMORY[0x277CCACA8];
    v42 = GKGameCenterUIFrameworkBundle();
    v43 = GKGetLocalizedStringFromTableInBundle();
    v44 = [v41 localizedStringWithFormat:v43, totalEntries];
  }

  else
  {
    v42 = GKGameCenterUIFrameworkBundle();
    v44 = GKGetLocalizedStringFromTableInBundle();
  }

  socialView4 = [(GKLeaderboardScoreViewController *)self socialView];
  [socialView4 configureWithRank:&stru_28612D290 title:v64 footnote:v44 vibrant:1];

  v46 = [(GKLeaderboardScoreViewController *)self attributedStringWithSymbol:@"globe"];
  socialView5 = [(GKLeaderboardScoreViewController *)self socialView];
  rank = [socialView5 rank];
  [rank setAttributedText:v46];

LABEL_20:
}

- (void)setupReleaseStateInfo
{
  v27[1] = *MEMORY[0x277D85DE8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __57__GKLeaderboardScoreViewController_setupReleaseStateInfo__block_invoke;
  v25[3] = &unk_2796699A8;
  v25[4] = self;
  v3 = _Block_copy(v25);
  if (_os_feature_enabled_impl() && (-[GKLeaderboardScoreViewController leaderboard](self, "leaderboard"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 releaseState], v4, v5 == 2))
  {
    v6 = [MEMORY[0x277D755B8] symbolImageNamed:@"clock.fill"];
    systemGray2Color = [MEMORY[0x277D75348] systemGray2Color];
    cGColor = [systemGray2Color CGColor];

    releaseStateInfoBox = [(GKLeaderboardScoreViewController *)self releaseStateInfoBox];
    layer = [releaseStateInfoBox layer];
    [layer setBackgroundColor:cGColor];

    releaseStateInfoBox2 = [(GKLeaderboardScoreViewController *)self releaseStateInfoBox];
    layer2 = [releaseStateInfoBox2 layer];
    [layer2 setCornerRadius:14.0];

    v13 = MEMORY[0x277D74300];
    releaseStateInfoText = [(GKLeaderboardScoreViewController *)self releaseStateInfoText];
    font = [releaseStateInfoText font];
    [font pointSize];
    v16 = [v13 boldSystemFontOfSize:?];

    v26 = *MEMORY[0x277D740A8];
    v27[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v18 = objc_alloc(MEMORY[0x277CCA898]);
    pRERELEASE_ITEM = [MEMORY[0x277D0C850] PRERELEASE_ITEM];
    v20 = [v18 initWithString:pRERELEASE_ITEM attributes:v17];
    releaseStateHeaderText = [(GKLeaderboardScoreViewController *)self releaseStateHeaderText];
    [releaseStateHeaderText setAttributedText:v20];

    lEADERBOARD_PENDING_APPROVAL = [MEMORY[0x277D0C850] LEADERBOARD_PENDING_APPROVAL];
    releaseStateInfoText2 = [(GKLeaderboardScoreViewController *)self releaseStateInfoText];
    [releaseStateInfoText2 setText:lEADERBOARD_PENDING_APPROVAL];

    releaseStateIcon = [(GKLeaderboardScoreViewController *)self releaseStateIcon];
    [releaseStateIcon setImage:v6];
  }

  else
  {
    v3[2](v3);
  }
}

void __57__GKLeaderboardScoreViewController_setupReleaseStateInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) releaseStateInfoBox];
  v3 = [v2 heightAnchor];
  v4 = [v3 constraintEqualToConstant:0.0];
  [v4 setActive:1];

  v5 = [*(a1 + 32) releaseStateInfoBox];
  [v5 setHidden:1];
}

- (void)viewDidLoad
{
  v93[1] = *MEMORY[0x277D85DE8];
  v91.receiver = self;
  v91.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v91 viewDidLoad];
  daemonProxy = [MEMORY[0x277D0C010] daemonProxy];
  [daemonProxy addDataUpdateDelegate:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __47__GKLeaderboardScoreViewController_viewDidLoad__block_invoke;
  v90[3] = &unk_27966D040;
  v90[4] = self;
  v6 = [defaultCenter addObserverForName:@"GKRefreshDataTypeFriendRecommendations" object:0 queue:mainQueue usingBlock:v90];

  _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
  leaderboard = [(GKLeaderboardScoreViewController *)self leaderboard];
  identifier = [leaderboard identifier];
  [_gkExtensionViewController dashboardDidChangeToLeaderboardIdentifier:identifier];

  v10 = MEMORY[0x277D0C258];
  if (*MEMORY[0x277D0C258] == 1)
  {
    [(GKLeaderboardScoreViewController *)self setupVisualEffect];
  }

  collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
  dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
  [dataSource setupCollectionView:collectionView];

  dataSource2 = [(GKLeaderboardScoreViewController *)self dataSource];
  [dataSource2 setPresentationViewController:self];

  dataSource3 = [(GKLeaderboardScoreViewController *)self dataSource];
  [dataSource3 setLeaderboardScoreDelegate:self];

  leaderboard2 = [(GKLeaderboardScoreViewController *)self leaderboard];
  v16 = [leaderboard2 type] == 1;

  if (v16)
  {
    self->_timeScope = 2;
    timeScopeButton = [(GKLeaderboardScoreViewController *)self timeScopeButton];
    [timeScopeButton setLeaderboardOccurrence:0];

    self->_leaderboardOccurrence = 0;
    timeScope = self->_timeScope;
  }

  else
  {
    v19 = sInitialTimeScope;
    timeScopeButton2 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
    [timeScopeButton2 setTimeScope:v19];

    timeScope = sInitialTimeScope;
    self->_timeScope = sInitialTimeScope;
  }

  dataSource4 = [(GKLeaderboardScoreViewController *)self dataSource];
  [dataSource4 setTimeScope:timeScope];

  initialPlayerScope = [(GKLeaderboardScoreViewController *)self initialPlayerScope];
  [(GKLeaderboardScoreViewController *)self setPlayerScope:initialPlayerScope restrictToFriendsOnly:sRestrictToFriendsOnly];
  navigationItem = [(GKLeaderboardScoreViewController *)self navigationItem];
  [navigationItem _setAutoScrollEdgeTransitionDistance:40.0];

  navigationItem2 = [(GKLeaderboardScoreViewController *)self navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];

  navigationItem3 = [(GKLeaderboardScoreViewController *)self navigationItem];
  [navigationItem3 setLargeTitleDisplayMode:2];

  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView2 = [(GKLeaderboardScoreViewController *)self collectionView];
  [collectionView2 setBackgroundColor:clearColor];

  collectionContainer = [(GKLeaderboardScoreViewController *)self collectionContainer];
  layer = [collectionContainer layer];
  [layer setCornerRadius:14.0];

  collectionContainer2 = [(GKLeaderboardScoreViewController *)self collectionContainer];
  layer2 = [collectionContainer2 layer];
  [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

  collectionContainer3 = [(GKLeaderboardScoreViewController *)self collectionContainer];
  layer3 = [collectionContainer3 layer];
  [layer3 setMasksToBounds:1];

  [(GKLeaderboardScoreViewController *)self configureCloseButton];
  [(GKLeaderboardScoreViewController *)self addLeaderboardHighlights];
  [(GKLeaderboardScoreViewController *)self addPlayerScopeControl];
  [(GKLeaderboardScoreViewController *)self setupFadeGradient];
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  secondaryLabelCompositingFilter = [mEMORY[0x277D0C8C8] secondaryLabelCompositingFilter];
  timeScopeContainer = [(GKLeaderboardScoreViewController *)self timeScopeContainer];
  layer4 = [timeScopeContainer layer];
  [layer4 setCompositingFilter:secondaryLabelCompositingFilter];

  [(GKLeaderboardScoreViewController *)self configureTimeScopeMenu];
  timeScopeButton3 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
  titleLabel = [timeScopeButton3 titleLabel];
  [titleLabel setAdjustsFontForContentSizeCategory:1];

  scrollToTopButton = [(GKLeaderboardScoreViewController *)self scrollToTopButton];
  titleLabel2 = [scrollToTopButton titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  mainScrollView = [(GKLeaderboardScoreViewController *)self mainScrollView];
  [mainScrollView setDelegate:self];

  timeScopeButton4 = [(GKLeaderboardScoreViewController *)self timeScopeButton];

  if (timeScopeButton4)
  {
    v44 = objc_alloc_init(MEMORY[0x277D75500]);
    view = [(GKLeaderboardScoreViewController *)self view];
    [view addLayoutGuide:v44];

    timeScopeButton5 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
    v93[0] = timeScopeButton5;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];
    [v44 setPreferredFocusEnvironments:v47];

    v48 = MEMORY[0x277CCAAD0];
    timeScopeButton6 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
    superview = [timeScopeButton6 superview];
    [v48 _gkInstallEdgeConstraintsForLayoutGuide:v44 containedWithinParentView:superview];
  }

  if (*v10 & 1) != 0 || (-[GKLeaderboardScoreViewController scrollToTopButton](self, "scrollToTopButton"), v51 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277D75348] labelColor], v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v51, "setTitleColor:forState:", v52, 0), v52, v51, objc_msgSend(MEMORY[0x277D75348], "systemGroupedBackgroundColor"), v53 = objc_claimAutoreleasedReturnValue(), -[GKLeaderboardScoreViewController view](self, "view"), v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v54, "setBackgroundColor:", v53), v54, v53, (*v10))
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v56 = [whiteColor colorWithAlphaComponent:0.1];
    v57 = 1;
    secondarySystemBackgroundColor = v56;
  }

  else
  {
    v59 = MEMORY[0x277D75348];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v56 = [v59 gk_dynamicColorWithLightColor:whiteColor darkColor:secondarySystemBackgroundColor];
    v57 = 0;
  }

  timeScopeContainer2 = [(GKLeaderboardScoreViewController *)self timeScopeContainer];
  [timeScopeContainer2 setBackgroundColor:v56];

  if ((v57 & 1) == 0)
  {
  }

  v61 = *v10;
  v62 = MEMORY[0x277D75348];
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  v64 = whiteColor2;
  if (v61)
  {
    v65 = [whiteColor2 colorWithAlphaComponent:0.08];
    secondarySystemBackgroundColor2 = v65;
  }

  else
  {
    secondarySystemBackgroundColor2 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v65 = [v62 gk_dynamicColorWithLightColor:v64 darkColor:secondarySystemBackgroundColor2];
  }

  collectionContainer4 = [(GKLeaderboardScoreViewController *)self collectionContainer];
  [collectionContainer4 setBackgroundColor:v65];

  if ((v61 & 1) == 0)
  {
  }

  collectionGradientView = [(GKLeaderboardScoreViewController *)self collectionGradientView];
  v92[0] = collectionGradientView;
  highlightView = [(GKLeaderboardScoreViewController *)self highlightView];
  v92[1] = highlightView;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
  [(GKLoadingViewController *)self setViewsToHideWhileLoading:v70];

  objc_initWeak(&location, self);
  dataSource5 = [(GKLeaderboardScoreViewController *)self dataSource];
  gameRecord = [dataSource5 gameRecord];
  name = [gameRecord name];

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];
  LODWORD(dataSource5) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  dataSource6 = [(GKLeaderboardScoreViewController *)self dataSource];
  gameRecord2 = [dataSource6 gameRecord];
  v84 = MEMORY[0x277D85DD0];
  v85 = 3221225472;
  v86 = __47__GKLeaderboardScoreViewController_viewDidLoad__block_invoke_2;
  v87 = &unk_27966D068;
  objc_copyWeak(&v88, &location);
  v78 = [gameRecord2 loadIconForStyle:1 withCompletionHandler:&v84];

  v79 = [(GKLeaderboardScoreViewController *)self scrollToTopButton:v84];
  v80 = v79;
  if (dataSource5)
  {
    v81 = &stru_28612D290;
  }

  else
  {
    v81 = name;
  }

  [v79 setTitle:v81 forState:0];

  scrollToTopButton2 = [(GKLeaderboardScoreViewController *)self scrollToTopButton];
  [scrollToTopButton2 setContentHorizontalAlignment:4];

  scrollToTopButton3 = [(GKLeaderboardScoreViewController *)self scrollToTopButton];
  [scrollToTopButton3 setContentEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  [(GKLeaderboardScoreViewController *)self setupReleaseStateInfo];
  objc_destroyWeak(&v88);

  objc_destroyWeak(&location);
}

void __47__GKLeaderboardScoreViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userInfo];
  [v2 refreshContentsForDataType:4 userInfo:v3];
}

void __47__GKLeaderboardScoreViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    objc_copyWeak(&to, (a1 + 32));
    v10 = objc_loadWeakRetained(&to);
    v11 = [v10 gameIconImageView];
    [v11 setImage:v7];

    objc_destroyWeak(&to);
  }
}

- (id)timeRemainingFromDate:(id)date toDate:(id)toDate
{
  dateCopy = date;
  toDateCopy = toDate;
  v7 = toDateCopy;
  v8 = 0;
  if (dateCopy && toDateCopy)
  {
    [toDateCopy timeIntervalSinceDate:dateCopy];
    v10 = v9;
    if (v9 < 0.0)
    {
      v11 = dateCopy;

      v7 = v11;
    }

    if (v10 >= 259200.0)
    {
      v12 = MEMORY[0x277CBEAA8];
      v13 = dateCopy;
      v14 = v7;
      v15 = 16;
    }

    else
    {
      v12 = MEMORY[0x277CBEAA8];
      v13 = dateCopy;
      v14 = v7;
      if (v10 < 86400.0)
      {
        v15 = 224;
        v16 = 1;
LABEL_11:
        v8 = [v12 _gkFormattedTimeIntervalStringWithStartDate:v13 endDate:v14 calendarUnits:v15 style:v16];
        goto LABEL_12;
      }

      v15 = 48;
    }

    v16 = 2;
    goto LABEL_11;
  }

LABEL_12:

  return v8;
}

- (void)setupFadeGradient
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD9EB0]);
  [v3 setLocations:&unk_2861897D8];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v9[0] = [blackColor CGColor];
  clearColor = [MEMORY[0x277D75348] clearColor];
  v9[1] = [clearColor CGColor];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v3 setColors:v6];

  [v3 setStartPoint:{0.5, 0.88}];
  [v3 setEndPoint:{0.5, 1.0}];
  collectionGradientView = [(GKLeaderboardScoreViewController *)self collectionGradientView];
  layer = [collectionGradientView layer];
  [layer setMask:v3];

  [(GKLeaderboardScoreViewController *)self setCollectionViewFadeGradient:v3];
}

- (void)dealloc
{
  collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
  [collectionView setDataSource:0];

  collectionView2 = [(GKLeaderboardScoreViewController *)self collectionView];
  [collectionView2 setDelegate:0];

  daemonProxy = [MEMORY[0x277D0C010] daemonProxy];
  [daemonProxy removeDataUpdateDelegate:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v7.receiver = self;
  v7.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v7 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v14 viewWillAppear:appear];
  loadingState = [(GKLoadingViewController *)self loadingState];
  if (loadingState == @"Initial")
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadingState"];
  }

  view = [(GKLeaderboardScoreViewController *)self view];
  [view bounds];
  [(GKLeaderboardScoreViewController *)self updatePlayerScopeLayoutForSize:v6, v7];

  [(GKLeaderboardScoreViewController *)self enableDisableCollectionViewScrolling];
  collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  v10 = objc_alloc_init(MEMORY[0x277D75B80]);
  [v10 addTarget:self action:sel_backButtonPressed_];
  [v10 setAllowedPressTypes:&unk_2861897F0];
  view2 = [(GKLeaderboardScoreViewController *)self view];
  [view2 addGestureRecognizer:v10];

  leaderboard = [(GKLeaderboardScoreViewController *)self leaderboard];
  type = [leaderboard type];

  if (type == 1)
  {
    [(GKLeaderboardScoreViewController *)self setShouldAutoRefreshHighlights:1];
    [(GKLeaderboardScoreViewController *)self autoRefreshHighlightsPersonalView];
  }
}

- (void)backButtonPressed:(id)pressed
{
  v4 = MEMORY[0x277D75518];
  keyWindow = [MEMORY[0x277D75DA0] keyWindow];
  v6 = [v4 focusSystemForEnvironment:keyWindow];
  focusedItem = [v6 focusedItem];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GKLeaderboardScoreViewController *)self setShouldPreferFocusToPlayerScopeControl:1];
    [(GKLeaderboardScoreViewController *)self setNeedsFocusUpdate];
  }

  else
  {
    navigationController = [(GKLeaderboardScoreViewController *)self navigationController];
    v8 = [navigationController popViewControllerAnimated:1];
  }
}

- (id)preferredFocusEnvironments
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([(GKLeaderboardScoreViewController *)self shouldPreferFocusToPlayerScopeControl])
  {
    playerScopeControl = [(GKLeaderboardScoreViewController *)self playerScopeControl];

    if (playerScopeControl)
    {
      playerScopeControl2 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      v19[0] = playerScopeControl2;
      v5 = MEMORY[0x277CBEA60];
      v6 = v19;
LABEL_11:
      preferredFocusEnvironments = [v5 arrayWithObjects:v6 count:1];

      goto LABEL_12;
    }
  }

  preferredFocusCell = [(GKLeaderboardScoreViewController *)self preferredFocusCell];

  if (preferredFocusCell)
  {
    playerScopeControl2 = [(GKLeaderboardScoreViewController *)self preferredFocusCell];
    v18 = playerScopeControl2;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v18;
    goto LABEL_11;
  }

  dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
  localPlayerEntryIndexPath = [dataSource localPlayerEntryIndexPath];

  if (!localPlayerEntryIndexPath)
  {
    collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
    v12 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    playerScopeControl2 = [collectionView cellForItemAtIndexPath:v12];

    if (playerScopeControl2)
    {
      v17 = playerScopeControl2;
      v5 = MEMORY[0x277CBEA60];
      v6 = &v17;
      goto LABEL_11;
    }
  }

  playerScopeControl3 = [(GKLeaderboardScoreViewController *)self playerScopeControl];

  if (playerScopeControl3)
  {
    playerScopeControl2 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    v16 = playerScopeControl2;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v16;
    goto LABEL_11;
  }

  v15.receiver = self;
  v15.super_class = GKLeaderboardScoreViewController;
  preferredFocusEnvironments = [(GKLeaderboardScoreViewController *)&v15 preferredFocusEnvironments];
LABEL_12:

  return preferredFocusEnvironments;
}

- (void)setupVisualEffect
{
  v7 = objc_opt_new();
  _gkGameLayerBackgroundVisualEffect = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v7 setBackgroundEffects:_gkGameLayerBackgroundVisualEffect];

  [v7 _setGroupName:@"gameLayerGroup"];
  view = [(GKLeaderboardScoreViewController *)self view];
  [view insertSubview:v7 atIndex:0];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277CCAAD0];
  view2 = [(GKLeaderboardScoreViewController *)self view];
  [v5 _gkInstallEdgeConstraintsForView:v7 containedWithinParentView:view2];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v4 viewDidLayoutSubviews];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__GKLeaderboardScoreViewController_viewDidLayoutSubviews__block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__GKLeaderboardScoreViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateContentSize];
  v11 = [*(a1 + 32) collectionGradientView];
  [v11 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) collectionViewFadeGradient];
  [v10 setFrame:{v3, v5, v7, v9}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v9 viewDidAppear:appear];
  self->_startTime = CFAbsoluteTimeGetCurrent();
  [(GKLeaderboardScoreViewController *)self clearSelection];
  [(GKLeaderboardScoreViewController *)self setNeedsFocusUpdate];
  view = [(GKLeaderboardScoreViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  leaderboard = [(GKLeaderboardScoreViewController *)self leaderboard];
  identifier = [leaderboard identifier];
  [_TtC12GameCenterUI15GKMetricsBridge recordLeaderboardPageEventWithPageId:identifier withReferrerData:[(GKLeaderboardScoreViewController *)self isDeeplinked]];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(GKLeaderboardScoreViewController *)self setShouldAutoRefreshHighlights:0];
  view = [(GKLeaderboardScoreViewController *)self view];
  [view removeAllGestureRecognizers];

  reporter = [MEMORY[0x277D0C1F8] reporter];
  v7 = *MEMORY[0x277D0BB38];
  [(GKLeaderboardScoreViewController *)self startTime];
  [reporter reportScreenTimeEventForType:v7 withStartTimestamp:?];

  v8.receiver = self;
  v8.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v8 viewWillDisappear:disappearCopy];
}

- (void)configureCloseButton
{
  v3 = [MEMORY[0x277D75220] _gkXmarkedCloseButtonWithTarget:self action:sel_donePressed_];
  v4 = *MEMORY[0x277D0C258];
  v7 = v3;
  if (v4 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v3];
  }

  else
  {
    v5 = 0;
  }

  navigationItem = [(GKLeaderboardScoreViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  if (v4)
  {
  }
}

- (void)loadData
{
  dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__GKLeaderboardScoreViewController_loadData__block_invoke;
  v4[3] = &unk_27966B138;
  v4[4] = self;
  [dataSource loadDataWithCompletionHandler:v4];
}

void __44__GKLeaderboardScoreViewController_loadData__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) shouldRefreshAgain];
  v7 = *(a1 + 32);
  if (!v6)
  {
    [v7 dataUpdated:a2 withError:v5];
    v8 = [*(a1 + 32) autoScrollToPlayerId];
    v9 = [v8 length];

    v10 = [*(a1 + 32) dataSource];
    v11 = v10;
    if (v9)
    {
      v12 = [*(a1 + 32) autoScrollToPlayerId];
      v13 = [v11 indexPathForPlayerId:v12];
    }

    else
    {
      v14 = [v10 autoScrollToLocalPlayerPosition];

      if (!v14)
      {
        v13 = 0;
LABEL_10:
        v16 = [*(a1 + 32) dataSource];
        [v16 setAutoScrollToLocalPlayerPosition:1];

        goto LABEL_11;
      }

      v11 = [*(a1 + 32) dataSource];
      v13 = [v11 localPlayerEntryIndexPath];
    }

    if (v13)
    {
      v15 = [*(a1 + 32) collectionView];
      [v15 setHidden:1];

      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __44__GKLeaderboardScoreViewController_loadData__block_invoke_2;
      v20 = &unk_279669E48;
      v21 = *(a1 + 32);
      v13 = v13;
      v22 = v13;
      dispatch_async(MEMORY[0x277D85CD0], &v17);
    }

    goto LABEL_10;
  }

  [v7 setShouldRefreshAgain:0];
  [*(a1 + 32) loadData];
LABEL_11:
}

void __44__GKLeaderboardScoreViewController_loadData__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 scrollToItemAtIndexPath:*(a1 + 40) atScrollPosition:2 animated:0];

  v3 = [*(a1 + 32) collectionView];
  [v3 setHidden:0];

  v4 = [*(a1 + 32) navigationController];
  [v4 setNeedsFocusUpdate];
}

- (BOOL)hasData
{
  dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
  hasData = [dataSource hasData];

  return hasData;
}

- (void)dataUpdated:(BOOL)updated withError:(id)error
{
  updatedCopy = updated;
  errorCopy = error;
  dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
  itemCount = [dataSource itemCount];

  if (itemCount >= 1)
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadedState"];
    [(GKLeaderboardScoreViewController *)self hideNoContentPlaceholder];
    if (!updatedCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(GKLoadingViewController *)self setLoadingState:@"NoContentState"];
  [(GKLeaderboardScoreViewController *)self showNoContentPlaceholderForError:errorCopy];
  if (updatedCopy)
  {
LABEL_3:
    collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
    [collectionView contentInset];
    v10 = -v9;
    collectionView2 = [(GKLeaderboardScoreViewController *)self collectionView];
    [collectionView2 setContentOffset:{0.0, v10}];

    collectionView3 = [(GKLeaderboardScoreViewController *)self collectionView];
    [collectionView3 reloadData];

    [(GKLeaderboardScoreViewController *)self setNeedsFocusUpdate];
  }

LABEL_4:
  playerScopeControl = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  selectedSegmentIndex = [playerScopeControl selectedSegmentIndex];

  if (!selectedSegmentIndex)
  {
    dataSource2 = [(GKLeaderboardScoreViewController *)self dataSource];
    itemCount2 = [dataSource2 itemCount];

    reporter = [MEMORY[0x277D0C1F8] reporter];
    v18 = *MEMORY[0x277D0BE28];
    v19 = *MEMORY[0x277D0BA18];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:itemCount2];
    [reporter reportEvent:v18 type:v19 friendsPlayedThisGame:v20];
  }

  title = [(GKLeaderboardScoreViewController *)self title];

  if (!title)
  {
    leaderboard = [(GKLeaderboardScoreViewController *)self leaderboard];
    title2 = [leaderboard title];
    [(GKLeaderboardScoreViewController *)self setTitle:title2];

    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    scrollToTopButton = [(GKLeaderboardScoreViewController *)self scrollToTopButton];
    v28 = scrollToTopButton;
    if (IsAccessibilityCategory)
    {
      [scrollToTopButton setTitle:&stru_28612D290 forState:0];
    }

    else
    {
      leaderboard2 = [(GKLeaderboardScoreViewController *)self leaderboard];
      title3 = [leaderboard2 title];
      uppercaseString = [title3 uppercaseString];
      [v28 setTitle:uppercaseString forState:0];
    }
  }
}

- (void)showNoContentPlaceholderForError:(id)error
{
  v24[3] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  collectionView = [(GKLeaderboardScoreViewController *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(GKLeaderboardScoreViewController *)self collectionView];
    [collectionView2 setHidden:1];

    noContentView = [(GKLeaderboardScoreViewController *)self noContentView];

    if (!noContentView)
    {
      v8 = [GKNoContentView alloc];
      [(UICollectionView *)self->_collectionView bounds];
      v9 = [(GKNoContentView *)v8 initWithFrame:?];
      [(GKLeaderboardScoreViewController *)self setNoContentView:v9];

      noContentView2 = [(GKLeaderboardScoreViewController *)self noContentView];
      [noContentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      collectionView3 = [(GKLeaderboardScoreViewController *)self collectionView];
      superview = [collectionView3 superview];

      noContentView3 = [(GKLeaderboardScoreViewController *)self noContentView];
      collectionView4 = [(GKLeaderboardScoreViewController *)self collectionView];
      [superview insertSubview:noContentView3 aboveSubview:collectionView4];

      v15 = MEMORY[0x277CCAAD0];
      noContentView4 = [(GKLeaderboardScoreViewController *)self noContentView];
      collectionView5 = [(GKLeaderboardScoreViewController *)self collectionView];
      v18 = [v15 _gkConstraintsForView:noContentView4 withinView:collectionView5 insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      [superview addConstraints:v18];

      collectionGradientView = [(GKLeaderboardScoreViewController *)self collectionGradientView];
      highlightView = [(GKLeaderboardScoreViewController *)self highlightView];
      v24[1] = highlightView;
      noContentView5 = [(GKLeaderboardScoreViewController *)self noContentView];
      v24[2] = noContentView5;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
      [(GKLoadingViewController *)self setViewsToHideWhileLoading:v22];
    }

    [(GKLeaderboardScoreViewController *)self setupNoContentView:self->_noContentView withError:errorCopy];
    noContentView6 = [(GKLeaderboardScoreViewController *)self noContentView];
    [noContentView6 setHidden:0];
  }
}

- (void)hideNoContentPlaceholder
{
  noContentView = [(GKLeaderboardScoreViewController *)self noContentView];
  [noContentView setHidden:1];

  collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
  [collectionView setHidden:0];
}

- (void)setupNoContentView:(id)view withError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __65__GKLeaderboardScoreViewController_setupNoContentView_withError___block_invoke;
  v22 = &unk_27966D090;
  objc_copyWeak(&v23, &location);
  [viewCopy setButtonAction:&v19];
  v8 = [(GKLeaderboardScoreViewController *)self leaderboard:v19];
  type = [v8 type];

  if (type != 1)
  {
    timeScope = self->_timeScope;
    if (timeScope < 2)
    {
      v13 = GKGameCenterUIFrameworkBundle();
      v14 = GKGetLocalizedStringFromTableInBundle();
      [viewCopy setTitle:v14];

      v15 = GKGameCenterUIFrameworkBundle();
      v16 = GKGetLocalizedStringFromTableInBundle();
      [viewCopy setMessage:v16];

      goto LABEL_7;
    }

    if (timeScope != 2)
    {
      goto LABEL_8;
    }
  }

  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();
  [viewCopy setTitle:v11];

  [viewCopy setMessage:0];
LABEL_7:
  [viewCopy setButtonTitle:0];
LABEL_8:
  if (errorCopy)
  {
    v17 = GKGameCenterUIFrameworkBundle();
    v18 = GKGetLocalizedStringFromTableInBundle();
    [viewCopy setMessage:v18];
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __65__GKLeaderboardScoreViewController_setupNoContentView_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    [v5 timeScopePressed:v3];
  }

  objc_destroyWeak(&to);
}

- (void)addPlayerScopeControl
{
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v35[0] = v4;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  v35[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];

  v8 = [objc_alloc(MEMORY[0x277D75A08]) initWithItems:v7];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v11 = 140.0;
  }

  else if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v11 = 108.0;
  }

  else
  {
    view = [(GKLeaderboardScoreViewController *)self view];
    [view bounds];
    v14 = v13;
    view2 = [(GKLeaderboardScoreViewController *)self view];
    [view2 bounds];
    v17 = v16;
    view3 = [(GKLeaderboardScoreViewController *)self view];
    [view3 bounds];
    if (v14 >= v17)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v11 = (v21 + -40.0) / [v7 count];
  }

  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __57__GKLeaderboardScoreViewController_addPlayerScopeControl__block_invoke;
  v31 = &unk_27966A840;
  v22 = v8;
  v32 = v22;
  v33 = v11;
  [v7 enumerateObjectsUsingBlock:&v28];
  [v22 addTarget:self action:sel_playerScopeChanged_ forControlEvents:{4096, v28, v29, v30, v31}];
  v34 = *MEMORY[0x277CDA658];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  layer = [v22 layer];
  [layer setBackgroundFilters:v23];

  [(GKLeaderboardScoreViewController *)self setPlayerScopeControl:v22];
  [(GKLeaderboardScoreViewController *)self configurePlayerScopeFocusGuide];
  playerScope = [(GKLeaderboardScoreViewController *)self playerScope];
  if (playerScope == 1)
  {
    v26 = 0;
    goto LABEL_13;
  }

  if (!playerScope)
  {
    v26 = 1;
LABEL_13:
    playerScopeControl = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [playerScopeControl setSelectedSegmentIndex:v26];
  }
}

- (void)configurePlayerScopeFocusGuide
{
  v29[1] = *MEMORY[0x277D85DE8];
  collectionContainer = [(GKLeaderboardScoreViewController *)self collectionContainer];
  if (collectionContainer)
  {
    v4 = collectionContainer;
    playerScopeControl = [(GKLeaderboardScoreViewController *)self playerScopeControl];

    if (playerScopeControl)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75500]);
      playerScopeControl2 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      v29[0] = playerScopeControl2;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      [v6 setPreferredFocusEnvironments:v8];

      view = [(GKLeaderboardScoreViewController *)self view];
      [view addLayoutGuide:v6];

      v20 = MEMORY[0x277CCAAD0];
      leadingAnchor = [v6 leadingAnchor];
      view2 = [(GKLeaderboardScoreViewController *)self view];
      leadingAnchor2 = [view2 leadingAnchor];
      v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v28[0] = v24;
      trailingAnchor = [v6 trailingAnchor];
      view3 = [(GKLeaderboardScoreViewController *)self view];
      trailingAnchor2 = [view3 trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v28[1] = v19;
      topAnchor = [v6 topAnchor];
      view4 = [(GKLeaderboardScoreViewController *)self view];
      topAnchor2 = [view4 topAnchor];
      v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v28[2] = v13;
      bottomAnchor = [v6 bottomAnchor];
      collectionContainer2 = [(GKLeaderboardScoreViewController *)self collectionContainer];
      topAnchor3 = [collectionContainer2 topAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
      v28[3] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
      [v20 activateConstraints:v18];
    }
  }
}

- (void)updatePlayerScopeLayoutForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    playerScopeControl = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [playerScopeControl removeFromSuperview];

    [(GKLeaderboardScoreViewController *)self addPlayerScopeControl];
    playerScopeControl2 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [playerScopeControl2 setWidth:0 forSegmentAtIndex:108.0];

    playerScopeControl3 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [playerScopeControl3 setWidth:1 forSegmentAtIndex:108.0];
  }

  else
  {
    traitCollection = [(GKLeaderboardScoreViewController *)self traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];

    navigationItem = [(GKLeaderboardScoreViewController *)self navigationItem];
    _bottomPalette = [navigationItem _bottomPalette];
    v13 = _bottomPalette;
    if (verticalSizeClass == 2)
    {
      contentView = [_bottomPalette contentView];

      playerScopeControl4 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      superview = [playerScopeControl4 superview];

      if (!contentView || superview != contentView)
      {
        playerScopeControl5 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
        [playerScopeControl5 removeFromSuperview];

        navigationItem2 = [(GKLeaderboardScoreViewController *)self navigationItem];
        [navigationItem2 setTitleView:0];

        v18 = objc_alloc_init(MEMORY[0x277D75D18]);
        v19 = [objc_alloc(MEMORY[0x277D76118]) initWithContentView:v18];
        navigationItem3 = [(GKLeaderboardScoreViewController *)self navigationItem];
        [navigationItem3 _setBottomPalette:v19];

        navigationItem4 = [(GKLeaderboardScoreViewController *)self navigationItem];
        _bottomPalette2 = [navigationItem4 _bottomPalette];
        contentView2 = [_bottomPalette2 contentView];
        playerScopeControl6 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
        [contentView2 addSubview:playerScopeControl6];

        contentView = v18;
      }

      navigationItem5 = [(GKLeaderboardScoreViewController *)self navigationItem];
      _bottomPalette3 = [navigationItem5 _bottomPalette];
      [_bottomPalette3 setPreferredHeight:60.0];

      [contentView setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor = [contentView widthAnchor];
      superview2 = [contentView superview];
      widthAnchor2 = [superview2 widthAnchor];
      v30 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [v30 setActive:1];

      heightAnchor = [contentView heightAnchor];
      v32 = [heightAnchor constraintEqualToConstant:60.0];
      [v32 setActive:1];

      playerScopeControl7 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      [playerScopeControl7 setTranslatesAutoresizingMaskIntoConstraints:0];

      playerScopeControl8 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      centerXAnchor = [playerScopeControl8 centerXAnchor];
      centerXAnchor2 = [contentView centerXAnchor];
      v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v37 setActive:1];

      playerScopeControl9 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      bottomAnchor = [playerScopeControl9 bottomAnchor];
      bottomAnchor2 = [contentView bottomAnchor];
      v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
      [v41 setActive:1];

      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom == 1)
      {
        v44 = 140.0;
      }

      else if (GKIsXRUIIdiom())
      {
        v44 = 100.0;
      }

      else
      {
        v44 = (width + -40.0) / 3.0;
      }

      playerScopeControl10 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      [playerScopeControl10 setWidth:0 forSegmentAtIndex:v44];

      playerScopeControl11 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      [playerScopeControl11 setWidth:1 forSegmentAtIndex:v44];

      [(GKLeaderboardScoreViewController *)self configureFocusGuidesForPortraitNavigationBar];
      goto LABEL_22;
    }

    [_bottomPalette setPreferredHeight:0.0];

    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom2 == 1)
    {
      v47 = 140.0;
    }

    else
    {
      v47 = (height + -40.0) / 3.0;
    }

    playerScopeControl12 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [playerScopeControl12 setWidth:0 forSegmentAtIndex:v47];

    playerScopeControl13 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [playerScopeControl13 setWidth:1 forSegmentAtIndex:v47];

    playerScopeControl14 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    superview3 = [playerScopeControl14 superview];
    navigationItem6 = [(GKLeaderboardScoreViewController *)self navigationItem];
    titleView = [navigationItem6 titleView];
    v54 = titleView;
    if (superview3 == titleView)
    {
      navigationItem7 = [(GKLeaderboardScoreViewController *)self navigationItem];
      titleView2 = [navigationItem7 titleView];

      if (titleView2)
      {
        return;
      }
    }

    else
    {
    }

    playerScopeControl15 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [playerScopeControl15 removeFromSuperview];

    playerScopeControl3 = [(GKLeaderboardScoreViewController *)self navigationItem];
    _bottomPalette4 = [playerScopeControl3 _bottomPalette];
    contentView3 = [_bottomPalette4 contentView];
    [contentView3 removeFromSuperview];
  }

  contentView = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  navigationItem8 = [(GKLeaderboardScoreViewController *)self navigationItem];
  [navigationItem8 setTitleView:contentView];

LABEL_22:
}

- (void)configureFocusGuidesForPortraitNavigationBar
{
  v65[1] = *MEMORY[0x277D85DE8];
  navigationController = [(GKLeaderboardScoreViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  if (navigationBar)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75500]);
    navigationController2 = [(GKLeaderboardScoreViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    v65[0] = navigationBar2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    [v5 setPreferredFocusEnvironments:v8];

    navigationController3 = [(GKLeaderboardScoreViewController *)self navigationController];
    navigationBar3 = [navigationController3 navigationBar];
    [navigationBar3 addLayoutGuide:v5];

    v41 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v5 leadingAnchor];
    navigationController4 = [(GKLeaderboardScoreViewController *)self navigationController];
    navigationBar4 = [navigationController4 navigationBar];
    leadingAnchor2 = [navigationBar4 leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v64[0] = v52;
    trailingAnchor = [v5 trailingAnchor];
    navigationController5 = [(GKLeaderboardScoreViewController *)self navigationController];
    navigationBar5 = [navigationController5 navigationBar];
    trailingAnchor2 = [navigationBar5 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v64[1] = v40;
    topAnchor = [v5 topAnchor];
    navigationController6 = [(GKLeaderboardScoreViewController *)self navigationController];
    navigationBar6 = [navigationController6 navigationBar];
    topAnchor2 = [navigationBar6 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v64[2] = v12;
    bottomAnchor = [v5 bottomAnchor];
    navigationController7 = [(GKLeaderboardScoreViewController *)self navigationController];
    navigationBar7 = [navigationController7 navigationBar];
    topAnchor3 = [navigationBar7 topAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:1.0];
    v64[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:4];
    [v41 activateConstraints:v18];
  }

  navigationItem = [(GKLeaderboardScoreViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];
  contentView = [_bottomPalette contentView];
  if (contentView)
  {
    v22 = contentView;
    playerScopeControl = [(GKLeaderboardScoreViewController *)self playerScopeControl];

    if (!playerScopeControl)
    {
      return;
    }

    navigationItem = objc_alloc_init(MEMORY[0x277D75500]);
    playerScopeControl2 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    v63 = playerScopeControl2;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    [navigationItem setPreferredFocusEnvironments:v25];

    navigationItem2 = [(GKLeaderboardScoreViewController *)self navigationItem];
    _bottomPalette2 = [navigationItem2 _bottomPalette];
    contentView2 = [_bottomPalette2 contentView];
    [contentView2 addLayoutGuide:navigationItem];

    v47 = MEMORY[0x277CCAAD0];
    _bottomPalette = [navigationItem centerXAnchor];
    playerScopeControl3 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    centerXAnchor = [playerScopeControl3 centerXAnchor];
    v57 = [_bottomPalette constraintEqualToAnchor:centerXAnchor];
    v62[0] = v57;
    centerYAnchor = [navigationItem centerYAnchor];
    playerScopeControl4 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    centerYAnchor2 = [playerScopeControl4 centerYAnchor];
    v49 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v62[1] = v49;
    widthAnchor = [navigationItem widthAnchor];
    navigationItem3 = [(GKLeaderboardScoreViewController *)self navigationItem];
    _bottomPalette3 = [navigationItem3 _bottomPalette];
    contentView3 = [_bottomPalette3 contentView];
    widthAnchor2 = [contentView3 widthAnchor];
    v31 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v62[2] = v31;
    heightAnchor = [navigationItem heightAnchor];
    playerScopeControl5 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    heightAnchor2 = [playerScopeControl5 heightAnchor];
    v35 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v62[3] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    [v47 activateConstraints:v36];
  }
}

- (void)playerScopeChanged:(id)changed
{
  changedCopy = changed;
  v5 = 1;
  [(GKLeaderboardScoreViewController *)self setShouldPreferFocusToPlayerScopeControl:1];
  dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
  playerScope = [dataSource playerScope];

  selectedSegmentIndex = [changedCopy selectedSegmentIndex];
  if (!selectedSegmentIndex)
  {
    v10 = MEMORY[0x277D0BAF8];
    v9 = 1;
    goto LABEL_5;
  }

  if (selectedSegmentIndex == 1)
  {
    v5 = 0;
    v9 = 0;
    v10 = MEMORY[0x277D0BB00];
LABEL_5:
    reporter = [MEMORY[0x277D0C1F8] reporter];
    [reporter reportEvent:*MEMORY[0x277D0BE70] type:*v10];

    goto LABEL_7;
  }

  v9 = 0;
  v5 = playerScope;
LABEL_7:

  [(GKLeaderboardScoreViewController *)self setPlayerScope:v5 restrictToFriendsOnly:v9];
}

- (void)setPlayerScope:(int64_t)scope restrictToFriendsOnly:(BOOL)only
{
  onlyCopy = only;
  [(GKLeaderboardScoreViewController *)self setPlayerScope:?];
  dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
  [dataSource setPlayerScope:scope];

  [objc_opt_class() setRestrictToFriendsOnly:onlyCopy];
  dataSource2 = [(GKLeaderboardScoreViewController *)self dataSource];
  [dataSource2 setRestrictToFriendsOnly:onlyCopy];

  _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
  [_gkExtensionViewController dashboardDidChangeToLeaderboardPlayerScope:scope];

  [(GKLeaderboardScoreViewController *)self setNeedsRefresh];
}

- (void)scrollToTopPressed:(id)pressed
{
  reporter = [MEMORY[0x277D0C1F8] reporter];
  [reporter reportEvent:*MEMORY[0x277D0BE70] type:*MEMORY[0x277D0BB20]];

  dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
  startingRank = [dataSource startingRank];

  if (startingRank < 2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__GKLeaderboardScoreViewController_scrollToTopPressed___block_invoke;
    v8[3] = &unk_2796699A8;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v8 animations:0.25];
  }

  else
  {
    dataSource2 = [(GKLeaderboardScoreViewController *)self dataSource];
    [dataSource2 setAutoScrollToLocalPlayerPosition:0];

    [(GKLeaderboardScoreViewController *)self setNeedsRefresh];
  }
}

void __55__GKLeaderboardScoreViewController_scrollToTopPressed___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) collectionView];
  [v5 contentInset];
  v3 = -v2;
  v4 = [*(a1 + 32) collectionView];
  [v4 setContentOffset:{0.0, v3}];
}

- (void)configureTimeScopeMenu
{
  objc_initWeak(&location, self);
  timeScopeButton = [(GKLeaderboardScoreViewController *)self timeScopeButton];
  [timeScopeButton setContextMenuIsPrimary:1];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__GKLeaderboardScoreViewController_configureTimeScopeMenu__block_invoke;
  v5[3] = &unk_27966D0E0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  timeScopeButton2 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
  [timeScopeButton2 _setMenuProvider:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __58__GKLeaderboardScoreViewController_configureTimeScopeMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) leaderboard];
  v6 = [v5 type];

  v7 = MEMORY[0x277D750C8];
  v8 = GKGameCenterUIFrameworkBundle();
  GKGetLocalizedStringFromTableInBundle();
  if (v6 == 1)
    v9 = {;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __58__GKLeaderboardScoreViewController_configureTimeScopeMenu__block_invoke_2;
    v33[3] = &unk_27966D0B8;
    v33[4] = WeakRetained;
    v10 = [v7 actionWithTitle:v9 image:0 identifier:0 handler:v33];

    [v10 setState:{objc_msgSend(*(a1 + 32), "leaderboardOccurrence") == 0}];
    v11 = MEMORY[0x277D750C8];
    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __58__GKLeaderboardScoreViewController_configureTimeScopeMenu__block_invoke_3;
    v32[3] = &unk_27966D0B8;
    v32[4] = WeakRetained;
    v14 = [v11 actionWithTitle:v13 image:0 identifier:0 handler:v32];

    [v14 setState:{objc_msgSend(*(a1 + 32), "leaderboardOccurrence") == 1}];
    [v4 addObject:v10];
    [v4 addObject:v14];
    v15 = MEMORY[0x277D75710];
    v16 = GKGameCenterUIFrameworkBundle();
    v17 = GKGetLocalizedStringFromTableInBundle();
    v18 = [v15 menuWithTitle:v17 children:v4];
  }

  else
    v19 = {;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __58__GKLeaderboardScoreViewController_configureTimeScopeMenu__block_invoke_4;
    v31[3] = &unk_27966D0B8;
    v31[4] = WeakRetained;
    v10 = [v7 actionWithTitle:v19 image:0 identifier:0 handler:v31];

    [v10 setState:{objc_msgSend(*(a1 + 32), "timeScope") == 0}];
    v20 = MEMORY[0x277D750C8];
    v21 = GKGameCenterUIFrameworkBundle();
    v22 = GKGetLocalizedStringFromTableInBundle();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __58__GKLeaderboardScoreViewController_configureTimeScopeMenu__block_invoke_5;
    v30[3] = &unk_27966D0B8;
    v30[4] = WeakRetained;
    v14 = [v20 actionWithTitle:v22 image:0 identifier:0 handler:v30];

    [v14 setState:{objc_msgSend(*(a1 + 32), "timeScope") == 1}];
    v23 = MEMORY[0x277D750C8];
    v24 = GKGameCenterUIFrameworkBundle();
    v25 = GKGetLocalizedStringFromTableInBundle();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__GKLeaderboardScoreViewController_configureTimeScopeMenu__block_invoke_6;
    v29[3] = &unk_27966D0B8;
    v29[4] = WeakRetained;
    v16 = [v23 actionWithTitle:v25 image:0 identifier:0 handler:v29];

    [v16 setState:{objc_msgSend(*(a1 + 32), "timeScope") == 2}];
    [v4 addObject:v10];
    [v4 addObject:v14];
    [v4 addObject:v16];
    v26 = MEMORY[0x277D75710];
    v17 = GKGameCenterUIFrameworkBundle();
    v27 = GKGetLocalizedStringFromTableInBundle();
    v18 = [v26 menuWithTitle:v27 children:v4];
  }

  return v18;
}

- (void)setTimeScope:(int64_t)scope
{
  timeScope = scope;
  if (self->_timeScope != scope)
  {
    if (scope <= 2)
    {
      v5 = qword_27966D178[scope];
      reporter = [MEMORY[0x277D0C1F8] reporter];
      [reporter reportEvent:*MEMORY[0x277D0BE70] type:*v5];
    }

    self->_timeScope = timeScope;
    dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
    [dataSource setTimeScope:timeScope];

    [(GKLeaderboardScoreViewController *)self setInitialTimeScope:timeScope];
    _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
    [_gkExtensionViewController dashboardDidChangeToLeaderboardTimeScope:timeScope];

    [(GKLeaderboardScoreViewController *)self setNeedsRefresh];
    timeScope = self->_timeScope;
  }

  timeScopeButton = [(GKLeaderboardScoreViewController *)self timeScopeButton];
  [timeScopeButton setTimeScope:timeScope];
}

- (void)setLeaderboardOccurrence:(int64_t)occurrence
{
  if (self->_leaderboardOccurrence != occurrence)
  {
    v12[10] = v3;
    v12[11] = v4;
    timeScope = self->_timeScope;
    dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
    [dataSource setTimeScope:timeScope];

    if (occurrence)
    {
      if (occurrence != 1)
      {
LABEL_7:
        timeScopeButton = [(GKLeaderboardScoreViewController *)self timeScopeButton];
        [timeScopeButton setEnabled:0];

        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __61__GKLeaderboardScoreViewController_setLeaderboardOccurrence___block_invoke;
        v12[3] = &unk_27966D108;
        v12[4] = self;
        v12[5] = occurrence;
        [(GKLeaderboardScoreViewController *)self loadLeaderboardForOccurrence:occurrence handler:v12];
        return;
      }

      v9 = MEMORY[0x277D0BAF0];
    }

    else
    {
      v9 = MEMORY[0x277D0BAE8];
    }

    reporter = [MEMORY[0x277D0C1F8] reporter];
    [reporter reportEvent:*MEMORY[0x277D0BE70] type:*v9];

    goto LABEL_7;
  }
}

void __61__GKLeaderboardScoreViewController_setLeaderboardOccurrence___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v6 = [v4 leaderboard];
    [v5 setPlayerScope:{objc_msgSend(v6, "playerScope")}];

    [v5 setTimeScope:2];
    *(*(a1 + 32) + 1272) = *(a1 + 40);
    [*(a1 + 32) setLeaderboard:v5];
    v7 = [*(a1 + 32) dataSource];
    [v7 setLeaderboard:v5];

    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) dataSource];
    [v9 setLeaderboardOccurrence:v8];

    [*(a1 + 32) setNeedsRefresh];
  }

  v10 = *(a1 + 32);
  v11 = v10[159];
  v12 = [v10 timeScopeButton];
  [v12 setLeaderboardOccurrence:v11];

  v13 = [*(a1 + 32) timeScopeButton];
  [v13 setEnabled:1];
}

- (void)loadLeaderboardForOccurrence:(int64_t)occurrence handler:(id)handler
{
  v24[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (occurrence != 1)
  {
    currentOccurrence = [(GKLeaderboardScoreViewController *)self currentOccurrence];

    if (currentOccurrence)
    {
      currentOccurrence2 = [(GKLeaderboardScoreViewController *)self currentOccurrence];
      goto LABEL_6;
    }

    v16 = MEMORY[0x277D0C0A0];
    leaderboard = [(GKLeaderboardScoreViewController *)self leaderboard];
    baseLeaderboardID = [leaderboard baseLeaderboardID];
    v24[0] = baseLeaderboardID;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __73__GKLeaderboardScoreViewController_loadLeaderboardForOccurrence_handler___block_invoke_2;
    v20[3] = &unk_279669DF8;
    v20[4] = self;
    v21 = handlerCopy;
    [v16 loadLeaderboardsWithIDs:v19 completionHandler:v20];

    v15 = v21;
LABEL_9:

    goto LABEL_10;
  }

  previousOccurrence = [(GKLeaderboardScoreViewController *)self previousOccurrence];

  if (!previousOccurrence)
  {
    leaderboard2 = [(GKLeaderboardScoreViewController *)self leaderboard];
    dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
    gameRecord = [dataSource gameRecord];
    gameDescriptor = [gameRecord gameDescriptor];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __73__GKLeaderboardScoreViewController_loadLeaderboardForOccurrence_handler___block_invoke;
    v22[3] = &unk_27966D130;
    v22[4] = self;
    v23 = handlerCopy;
    [leaderboard2 loadPreviousOccurrenceWithGameDescriptor:gameDescriptor completionHandler:v22];

    v15 = v23;
    goto LABEL_9;
  }

  currentOccurrence2 = [(GKLeaderboardScoreViewController *)self previousOccurrence];
LABEL_6:
  v10 = currentOccurrence2;
  (*(handlerCopy + 2))(handlerCopy, currentOccurrence2, 0);

LABEL_10:
}

void __73__GKLeaderboardScoreViewController_loadLeaderboardForOccurrence_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setPreviousOccurrence:v7];
  (*(*(a1 + 40) + 16))();
}

void __73__GKLeaderboardScoreViewController_loadLeaderboardForOccurrence_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 count])
  {
    v6 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) setCurrentOccurrence:v6];
  (*(*(a1 + 40) + 16))();
}

- (void)setNeedsRefresh
{
  if ([(GKLeaderboardScoreViewController *)self isLoading])
  {

    [(GKLeaderboardScoreViewController *)self setShouldRefreshAgain:1];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__GKLeaderboardScoreViewController_setNeedsRefresh__block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __51__GKLeaderboardScoreViewController_setNeedsRefresh__block_invoke()
{
  gk_dispatch_debounce();
  v0 = dispatch_time(0, 1000000000);
  dispatch_after(v0, MEMORY[0x277D85CD0], &__block_literal_global_45);
}

uint64_t __51__GKLeaderboardScoreViewController_setNeedsRefresh__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isLoading])
  {
    v2 = *(a1 + 32);

    return [v2 setShouldRefreshAgain:1];
  }

  else
  {
    v4 = *(a1 + 32);

    return [v4 setLoadingState:@"RefreshingState"];
  }
}

- (BOOL)isLoading
{
  loadingState = [(GKLoadingViewController *)self loadingState];
  v3 = 1;
  if (loadingState)
  {
    if (loadingState != @"Initial" && loadingState != @"LoadingState")
    {
      v3 = loadingState == @"RefreshingState";
    }
  }

  return v3;
}

- (void)didEnterLoadingState
{
  v3.receiver = self;
  v3.super_class = GKLeaderboardScoreViewController;
  [(GKLoadingViewController *)&v3 didEnterLoadingState];
  [(GKLeaderboardScoreViewController *)self loadData];
}

- (void)donePressed:(id)pressed
{
  _gkExtensionViewController = [(UIViewController *)self _gkExtensionViewController];
  [_gkExtensionViewController finish];
}

- (void)traitCollectionDidChange:(id)change
{
  v45 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v43.receiver = self;
  v43.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v43 traitCollectionDidChange:changeCopy];
  traitCollection = [(GKLeaderboardScoreViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LODWORD(traitCollection) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

  if (traitCollection == IsAccessibilityCategory)
  {
    preferredContentSizeCategory3 = [changeCopy preferredContentSizeCategory];

    [(GKLeaderboardScoreViewController *)self enableDisableCollectionViewScrolling];
    collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
    v35 = collectionView;
    if (preferredContentSizeCategory3 == preferredContentSizeCategory)
    {
      collectionViewLayout = [collectionView collectionViewLayout];
      [collectionViewLayout invalidateLayout];

      [(GKLeaderboardScoreViewController *)self updateHighlights];
    }

    else
    {
      [collectionView reloadData];

      [(GKLeaderboardScoreViewController *)self updateContentSize];
    }
  }

  else
  {
    playerScopeControl = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [playerScopeControl removeFromSuperview];

    navigationItem = [(GKLeaderboardScoreViewController *)self navigationItem];
    _bottomPalette = [navigationItem _bottomPalette];
    contentView = [_bottomPalette contentView];
    [contentView removeFromSuperview];

    navigationItem2 = [(GKLeaderboardScoreViewController *)self navigationItem];
    _bottomPalette2 = [navigationItem2 _bottomPalette];
    [_bottomPalette2 setPreferredHeight:0.0];

    navigationItem3 = [(GKLeaderboardScoreViewController *)self navigationItem];
    _bottomPalette3 = [navigationItem3 _bottomPalette];
    [_bottomPalette3 removeFromSuperview];

    v17 = [GKLeaderboardScoreViewController alloc];
    dataSource = [(GKLeaderboardScoreViewController *)self dataSource];
    gameRecord = [dataSource gameRecord];
    leaderboard = [(GKLeaderboardScoreViewController *)self leaderboard];
    v21 = [(GKLeaderboardScoreViewController *)v17 initWithGameRecord:gameRecord leaderboard:leaderboard];

    v22 = MEMORY[0x277CBEB18];
    navigationController = [(GKLeaderboardScoreViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v25 = [v22 arrayWithArray:viewControllers];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = *v40;
      while (2)
      {
        v31 = 0;
        v32 = v29;
        v29 += v28;
        do
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(v26);
          }

          if (*(*(&v39 + 1) + 8 * v31) == self)
          {
            v29 = v32;
            goto LABEL_15;
          }

          ++v32;
          ++v31;
        }

        while (v28 != v31);
        v28 = [v26 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v29 = 0;
    }

LABEL_15:

    [v26 replaceObjectAtIndex:v29 withObject:{v21, v39}];
    navigationController2 = [(GKLeaderboardScoreViewController *)self navigationController];
    [navigationController2 setViewControllers:v26];

    view = [(GKLeaderboardScoreViewController *)self view];
    [view removeFromSuperview];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = GKLeaderboardScoreViewController;
  coordinatorCopy = coordinator;
  [(GKLeaderboardScoreViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__GKLeaderboardScoreViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27966AD00;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)clearSelection
{
  v17 = *MEMORY[0x277D85DE8];
  collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = indexPathsForSelectedItems;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        collectionView2 = [(GKLeaderboardScoreViewController *)self collectionView];
        [collectionView2 deselectItemAtIndexPath:v10 animated:1];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)collectionViewDidScroll
{
  v17[2] = *MEMORY[0x277D85DE8];
  collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v6 = v5;
  collectionView2 = [(GKLeaderboardScoreViewController *)self collectionView];
  [collectionView2 contentOffset];
  v9 = v6 - v8;
  collectionView3 = [(GKLeaderboardScoreViewController *)self collectionView];
  [collectionView3 frame];
  v12 = v9 - v11;

  v13 = v12 / 20.0;
  if (v12 / 20.0 > 1.0)
  {
    v13 = 1.0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:{1.0 - fmax(v13, 0.0)}];
  v17[0] = v14;
  v17[1] = &unk_2861896C8;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  collectionViewFadeGradient = [(GKLeaderboardScoreViewController *)self collectionViewFadeGradient];
  [collectionViewFadeGradient setLocations:v15];
}

- (void)didLoadScoresWithLocalPlayerEntry:(id)entry topPlayer:(id)player playerAbove:(id)above playerBelow:(id)below totalEntries:(int64_t)entries
{
  belowCopy = below;
  aboveCopy = above;
  playerCopy = player;
  [(GKLeaderboardScoreViewController *)self setLocalPlayerEntry:entry];
  [(GKLeaderboardScoreViewController *)self setTopPlayerEntry:playerCopy];

  [(GKLeaderboardScoreViewController *)self setPlayerAboveEntry:aboveCopy];
  [(GKLeaderboardScoreViewController *)self setPlayerBelowEntry:belowCopy];

  [(GKLeaderboardScoreViewController *)self setTotalEntries:entries];
  [(GKLeaderboardScoreViewController *)self updateHighlights];

  [(GKLeaderboardScoreViewController *)self updateContentSize];
}

- (void)didLoadAdditionalScoresWithUpdatedTotalEntries:(unint64_t)entries
{
  if ([(GKLeaderboardScoreViewController *)self totalEntries]!= entries)
  {
    [(GKLeaderboardScoreViewController *)self setTotalEntries:entries];
    [(GKLeaderboardScoreViewController *)self updateHighlights];
  }

  [(GKLeaderboardScoreViewController *)self updateContentSize];
}

- (void)updateContentSize
{
  collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v6 = 300.0;
  }

  timeScopeContainer = [(GKLeaderboardScoreViewController *)self timeScopeContainer];
  [timeScopeContainer bounds];
  v9 = v6 + v8;
  collectionContainerHeight = [(GKLeaderboardScoreViewController *)self collectionContainerHeight];
  [collectionContainerHeight setConstant:v9];

  [(GKLeaderboardScoreViewController *)self collectionViewDidScroll];
}

- (void)shareScore:(id)score fromLeaderboard:(id)leaderboard sendingView:(id)view relativeRect:(CGRect)rect
{
  v45[2] = *MEMORY[0x277D85DE8];
  scoreCopy = score;
  leaderboardCopy = leaderboard;
  viewCopy = view;
  player = [scoreCopy player];
  isLocalPlayer = [player isLocalPlayer];

  if (isLocalPlayer)
  {
    v14 = MEMORY[0x277D0BA50];
    v15 = MEMORY[0x277D0BA68];
  }

  else
  {
    player2 = [scoreCopy player];
    isFamiliarFriend = [player2 isFamiliarFriend];

    if (!isFamiliarFriend)
    {
      goto LABEL_6;
    }

    v14 = MEMORY[0x277D0BA48];
    v15 = MEMORY[0x277D0BA60];
  }

  reporter = [MEMORY[0x277D0C1F8] reporter];
  v19 = *MEMORY[0x277D0BE28];
  [reporter reportEvent:*MEMORY[0x277D0BE28] type:*v15];

  reporter2 = [MEMORY[0x277D0C1F8] reporter];
  v21 = *v14;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(scoreCopy, "rank")}];
  [reporter2 reportEvent:v19 type:v21 scoreRank:v22];

LABEL_6:
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  shouldAllowGameProgressSharing = [mEMORY[0x277D0C1D8] shouldAllowGameProgressSharing];

  if (shouldAllowGameProgressSharing)
  {
    v25 = [scoreCopy sharingScoreMessageFromLeaderboard:leaderboardCopy];
    v45[0] = v25;
    sharingScoreURL = [scoreCopy sharingScoreURL];
    v45[1] = sharingScoreURL;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v28 = [(GKLeaderboardScoreViewController *)self _gkPresentActivityViewControllerForActivityItems:v27 fromView:viewCopy withCompletionHandler:0];
  }

  else
  {
    v25 = GKGameCenterUIFrameworkBundle();
    sharingScoreURL = GKGetLocalizedStringFromTableInBundle();
    v27 = GKGameCenterUIFrameworkBundle();
    v29 = GKGetLocalizedStringFromTableInBundle();
    v30 = GKGameCenterUIFrameworkBundle();
    v31 = GKGetLocalizedStringFromTableInBundle();
    v32 = [(GKLeaderboardScoreViewController *)self _gkPresentAlertWithTitle:sharingScoreURL message:v29 buttonTitle:v31 dismissHandler:0];
  }

  player3 = [scoreCopy player];
  isLocalPlayer2 = [player3 isLocalPlayer];
  v35 = @"friendPlayer";
  if (isLocalPlayer2)
  {
    v35 = @"localPlayer";
  }

  v36 = v35;

  reporter3 = [MEMORY[0x277D0BFA8] reporter];
  v43 = @"location";
  v41[0] = @"scorer";
  v41[1] = @"scoreRank";
  v42[0] = v36;
  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(scoreCopy, "rank")}];
  v42[1] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v44 = v39;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

  [reporter3 recordClickWithAction:@"share" targetId:@"leaderboardEntry" targetType:@"collectionViewCell" pageId:@"leaderboardScores" pageType:@"leaderboard" additionalFields:v40];
}

- (void)sendFriendInvitationViaMessagesTo:(id)to withPresentingViewController:(id)controller
{
  v15[1] = *MEMORY[0x277D85DE8];
  toCopy = to;
  controllerCopy = controller;
  if (*MEMORY[0x277D0C258])
  {
    if (toCopy)
    {
      contact = [toCopy contact];
      v14 = contact;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __99__GKLeaderboardScoreViewController_sendFriendInvitationViaMessagesTo_withPresentingViewController___block_invoke_2;
    v10[3] = &unk_27966AD50;
    v9 = &v11;
    v11 = controllerCopy;
    [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerWithRecipients:v8 chatGUID:0 completionHandler:v10];
    if (!toCopy)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (toCopy)
  {
    contact = [toCopy contact];
    v15[0] = contact;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__GKLeaderboardScoreViewController_sendFriendInvitationViaMessagesTo_withPresentingViewController___block_invoke;
  v12[3] = &unk_27966C2B0;
  v9 = &v13;
  v13 = controllerCopy;
  [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerForRemoteInviteWithRecipients:v8 chatGUID:0 resultHandler:v12];
  if (toCopy)
  {
    goto LABEL_11;
  }

LABEL_12:
}

void __99__GKLeaderboardScoreViewController_sendFriendInvitationViaMessagesTo_withPresentingViewController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }
}

- (void)challengeWithScore:(id)score
{
  v11[1] = *MEMORY[0x277D85DE8];
  scoreCopy = score;
  leaderboard = [(GKLeaderboardScoreViewController *)self leaderboard];
  local = [MEMORY[0x277D0C138] local];
  v11[0] = local;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__GKLeaderboardScoreViewController_challengeWithScore___block_invoke;
  v9[3] = &unk_27966D158;
  v9[4] = self;
  v10 = scoreCopy;
  v8 = scoreCopy;
  [leaderboard loadEntriesForPlayers:v7 timeScope:2 completionHandler:v9];
}

void __55__GKLeaderboardScoreViewController_challengeWithScore___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v34 = a2;
  v36 = a3;
  v37 = a4;
  v7 = [v36 firstObject];
  v8 = [v7 _gkScore];
  if (v8)
  {
    v9 = MEMORY[0x277D0C208];
    v10 = [MEMORY[0x277D0C048] currentGame];
    v11 = [MEMORY[0x277D0C138] localPlayer];
    v12 = [v9 challengeForGame:v10 andPlayer:v11 withScore:v8];

    v13 = [*(a1 + 32) leaderboard];
    v14 = [v13 internal];
    v15 = [v12 internal];
    [v15 setLeaderboard:v14];

    v16 = [*(a1 + 40) player];
    if (v16)
    {
      v17 = [*(a1 + 40) player];
      v41[0] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    }

    else
    {
      v18 = 0;
    }

    v30 = [[GKChallengePlayerPickerViewController alloc] initWithChallenge:v12 initiallySelectedPlayers:v18];
    objc_initWeak(&location, v30);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __55__GKLeaderboardScoreViewController_challengeWithScore___block_invoke_322;
    v38[3] = &unk_27966D018;
    objc_copyWeak(&v39, &location);
    v38[4] = *(a1 + 32);
    [(GKChallengePlayerPickerViewController *)v30 setInviteFriendHandler:v38];
    v31 = [*(a1 + 32) traitCollection];
    v32 = [v31 userInterfaceIdiom] == 1;

    if (!v32)
    {
      [(GKChallengePlayerPickerViewController *)v30 setModalPresentationStyle:5];
    }

    v33 = [*(a1 + 32) _gkOriginatingViewController];
    [v33 presentViewController:v30 animated:1 completion:0];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = *(a1 + 32);
    v19 = (a1 + 32);
    v21 = GKGameCenterUIFrameworkBundle();
    v22 = GKGetLocalizedStringFromTableInBundle();
    v23 = GKGameCenterUIFrameworkBundle();
    v24 = GKGetLocalizedStringFromTableInBundle();
    v25 = GKGameCenterUIFrameworkBundle();
    v26 = GKGetLocalizedStringFromTableInBundle();
    v27 = [v20 _gkPresentAlertWithTitle:v22 message:v24 buttonTitle:v26 dismissHandler:{0, v34}];

    if (!*MEMORY[0x277D0C2A0])
    {
      v28 = GKOSLoggers();
    }

    v29 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __55__GKLeaderboardScoreViewController_challengeWithScore___block_invoke_cold_1(v19, v29);
    }
  }
}

void __55__GKLeaderboardScoreViewController_challengeWithScore___block_invoke_322(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C1D8] shared];
  v5 = [v4 isAddingFriendsRestricted];

  if (v5)
  {
    v6 = MEMORY[0x277D75110];
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v12 = MEMORY[0x277D750F8];
    v13 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    v15 = [v12 actionWithTitle:v14 style:0 handler:0];
    [v11 addAction:v15];

LABEL_7:
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained presentViewController:v11 animated:1 completion:0];

    goto LABEL_16;
  }

  v16 = _os_feature_enabled_impl();
  if (v3 || !v16)
  {
    if (v3)
    {
      if ([v3 supportsFriendingViaPush])
      {
        v22 = [v3 contactAssociationID];

        if (v22)
        {
          v23 = [*(a1 + 32) leaderboard];
          v24 = [v23 identifier];
          [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:0 pageType:@"leaderboard" pageId:v24];

          v25 = [v3 contact];
          v26 = [v25 identifier];
          v27 = [v3 contactAssociationID];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __55__GKLeaderboardScoreViewController_challengeWithScore___block_invoke_2;
          v33[3] = &unk_27966CFF0;
          v33[4] = *(a1 + 32);
          v34 = v3;
          objc_copyWeak(&v35, (a1 + 40));
          [_TtC12GameCenterUI20GameCenterObjcHelper sendFriendInvitationViaPushWithContactID:v26 contactAssociationID:v27 completionHandler:v33];

          objc_destroyWeak(&v35);
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v17 = objc_loadWeakRetained((a1 + 40));

    if (v17)
    {
      v18 = [*(a1 + 32) leaderboard];
      v19 = [v18 identifier];
      [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:2 pageType:@"leaderboard" pageId:v19];

      v20 = objc_loadWeakRetained((a1 + 40));
      v11 = [GKFriendingViewControllers inviteFriendsWithContainerViewController:v20];

      goto LABEL_7;
    }
  }

  if (v3)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2;
  }

  v29 = [*(a1 + 32) leaderboard];
  v30 = [v29 identifier];
  [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:v28 pageType:@"leaderboard" pageId:v30];

  v31 = *(a1 + 32);
  v32 = objc_loadWeakRetained((a1 + 40));
  [v31 sendFriendInvitationViaMessagesTo:v3 withPresentingViewController:v32];

LABEL_16:
}

void __55__GKLeaderboardScoreViewController_challengeWithScore___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v4 = GKOSLoggers();
    }

    v5 = *MEMORY[0x277D0C298];
    if (os_log_type_enabled(*MEMORY[0x277D0C298], OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "Unable to send friend invitation via push, falling back to Messages flow. %@", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v6 sendFriendInvitationViaMessagesTo:v7 withPresentingViewController:WeakRetained];
  }
}

- (void)shareWithScore:(id)score fromView:(id)view
{
  viewCopy = view;
  scoreCopy = score;
  leaderboard = [(GKLeaderboardScoreViewController *)self leaderboard];
  [(GKLeaderboardScoreViewController *)self shareScore:scoreCopy fromLeaderboard:leaderboard sendingView:viewCopy relativeRect:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  mainScrollView = [(GKLeaderboardScoreViewController *)self mainScrollView];

  if (mainScrollView == scrollCopy)
  {
    [(GKLeaderboardScoreViewController *)self enableDisableCollectionViewScrolling];
    collectionGradientView = [(GKLeaderboardScoreViewController *)self collectionGradientView];
    [collectionGradientView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    collectionViewFadeGradient = [(GKLeaderboardScoreViewController *)self collectionViewFadeGradient];
    [collectionViewFadeGradient setFrame:{v7, v9, v11, v13}];
  }
}

- (void)enableDisableCollectionViewScrolling
{
  traitCollection = [(GKLeaderboardScoreViewController *)self traitCollection];
  category = [traitCollection preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(category);
  traitCollection2 = [(GKLeaderboardScoreViewController *)self traitCollection];
  if ([traitCollection2 horizontalSizeClass] == 1)
  {
    traitCollection3 = [(GKLeaderboardScoreViewController *)self traitCollection];
    v7 = [traitCollection3 verticalSizeClass] == 2;
  }

  else
  {
    v7 = 0;
  }

  traitCollection4 = [(GKLeaderboardScoreViewController *)self traitCollection];
  verticalSizeClass = [traitCollection4 verticalSizeClass];

  if (!IsAccessibilityCategory)
  {
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      mainScrollView = [(GKLeaderboardScoreViewController *)self mainScrollView];
      [mainScrollView setScrollEnabled:0];
LABEL_46:

      collectionView = [(GKLeaderboardScoreViewController *)self collectionView];
      [collectionView setScrollEnabled:1];
      goto LABEL_47;
    }

    v15 = MEMORY[0x277D76818];
    if (verticalSizeClass == 1)
    {
      if ([(NSString *)category isEqualToString:*MEMORY[0x277D76820]])
      {
        v16 = 210.0;
      }

      else if ([(NSString *)category isEqualToString:*v15])
      {
        v16 = 210.0;
      }

      else
      {
        v16 = 162.0;
      }

      highlightViewWidthConstraint = [(GKLeaderboardScoreViewController *)self highlightViewWidthConstraint];
      [highlightViewWidthConstraint setConstant:v16];

      view = [(GKLeaderboardScoreViewController *)self view];
      [view bounds];
      v30 = v29;

      v31 = v30 > 320.0;
      if (v30 <= 320.0)
      {
        v32 = 20.0;
      }

      else
      {
        v32 = 44.0;
      }

      if (v31)
      {
        v33 = 32.0;
      }

      else
      {
        v33 = 20.0;
      }

      highlightViewLandscapeTopConstraint = [(GKLeaderboardScoreViewController *)self highlightViewLandscapeTopConstraint];
      [highlightViewLandscapeTopConstraint setConstant:v32];

      collectionGradientViewLandscapeTopConstraint = [(GKLeaderboardScoreViewController *)self collectionGradientViewLandscapeTopConstraint];
      [collectionGradientViewLandscapeTopConstraint setConstant:v33];
    }

    v36 = [(NSString *)category isEqualToString:*v15];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (v36)
    {
      if (userInterfaceIdiom != 1)
      {
        v45 = GKIsXRUIIdiom() == 0;
        v46 = 145.0;
        v47 = 100.0;
        goto LABEL_42;
      }

      *&v39 = 100.0;
    }

    else
    {
      if (userInterfaceIdiom != 1)
      {
        v45 = GKIsXRUIIdiom() == 0;
        v46 = 125.0;
        v47 = 54.0;
LABEL_42:
        if (v45)
        {
          v40 = v46;
        }

        else
        {
          v40 = v47;
        }

        goto LABEL_45;
      }

      *&v39 = 80.0;
    }

    v40 = *&v39;
LABEL_45:
    mainScrollView = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
    [mainScrollView setConstant:v40];
    goto LABEL_46;
  }

  highlightViewHeightConstraint = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
  [highlightViewHeightConstraint setActive:1];

  if ([(NSString *)category isEqualToString:*MEMORY[0x277D767E8]])
  {
    highlightViewHeightConstraint2 = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
    v12 = highlightViewHeightConstraint2;
    v13 = 544.0;
  }

  else if ([(NSString *)category isEqualToString:*MEMORY[0x277D767F0]])
  {
    highlightViewHeightConstraint2 = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
    v12 = highlightViewHeightConstraint2;
    v13 = 494.0;
  }

  else
  {
    if (![(NSString *)category isEqualToString:*MEMORY[0x277D767F8]])
    {
      v41 = [(NSString *)category isEqualToString:*MEMORY[0x277D76800]];
      highlightViewHeightConstraint3 = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
      v12 = highlightViewHeightConstraint3;
      if (v41)
      {
        v43 = 244.0;
        v44 = 404.0;
      }

      else
      {
        v43 = 204.0;
        v44 = 364.0;
      }

      if (v7)
      {
        v43 = v44;
      }

      [highlightViewHeightConstraint3 setConstant:v43];
      goto LABEL_17;
    }

    highlightViewHeightConstraint2 = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
    v12 = highlightViewHeightConstraint2;
    v13 = 444.0;
  }

  [highlightViewHeightConstraint2 setConstant:v13];
  v7 = 1;
LABEL_17:

  highlightView = [(GKLeaderboardScoreViewController *)self highlightView];
  [highlightView setAxis:v7];

  collectionView = [(GKLeaderboardScoreViewController *)self mainScrollView];
  [collectionView contentSize];
  v25 = 0;
  if (v19 > 0.0)
  {
    [collectionView contentOffset];
    v21 = v20;
    [collectionView contentSize];
    v23 = v22;
    [collectionView frame];
    if (v21 >= v23 - v24)
    {
      v25 = 1;
    }
  }

  collectionView2 = [(GKLeaderboardScoreViewController *)self collectionView];
  [collectionView2 setScrollEnabled:v25];

LABEL_47:
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  infoCopy = info;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__GKLeaderboardScoreViewController_refreshContentsForDataType_userInfo___block_invoke;
  block[3] = &unk_27966BE50;
  typeCopy = type;
  v9 = infoCopy;
  selfCopy = self;
  v7 = infoCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__GKLeaderboardScoreViewController_refreshContentsForDataType_userInfo___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 4)
  {
    v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B9E8]];
    v3 = [*(a1 + 40) dataSource];
    v4 = [v3 addInvitedFriendContactIdentifier:v2];

    if (v4)
    {
      v5 = [*(a1 + 40) collectionView];
      v7[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
      [v5 reloadItemsAtIndexPaths:v6];
    }
  }
}

- (UICollectionViewCell)preferredFocusCell
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredFocusCell);

  return WeakRetained;
}

void __44__GKLeaderboardScoreViewController_loadData__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "Encountered an invalid indexPath to scroll to: %@", &v3, 0xCu);
}

void __55__GKLeaderboardScoreViewController_challengeWithScore___block_invoke_cold_1(void **a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 leaderboard];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_24DE53000, v3, OS_LOG_TYPE_ERROR, "Cannot issue challenge because localPlayer's score for this leaderboard is nil. Leaderboard: %@", &v5, 0xCu);
}

@end