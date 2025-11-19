@interface GKLeaderboardScoreViewController
- (BOOL)hasData;
- (BOOL)isLoading;
- (BOOL)updateHighlightsPersonalView;
- (GKLeaderboardScoreViewController)initWithGameRecord:(id)a3 leaderboard:(id)a4;
- (UICollectionViewCell)preferredFocusCell;
- (id)attributedStringWithSymbol:(id)a3;
- (id)preferredFocusEnvironments;
- (id)timeRemainingFromDate:(id)a3 toDate:(id)a4;
- (void)addLeaderboardHighlights;
- (void)addPlayerScopeControl;
- (void)autoRefreshHighlightsPersonalView;
- (void)backButtonPressed:(id)a3;
- (void)challengeWithScore:(id)a3;
- (void)clearSelection;
- (void)collectionViewDidScroll;
- (void)configureCloseButton;
- (void)configureFocusGuidesForPortraitNavigationBar;
- (void)configurePlayerScopeFocusGuide;
- (void)configureTimeScopeMenu;
- (void)dataUpdated:(BOOL)a3 withError:(id)a4;
- (void)dealloc;
- (void)didEnterLoadingState;
- (void)didLoadAdditionalScoresWithUpdatedTotalEntries:(unint64_t)a3;
- (void)didLoadScoresWithLocalPlayerEntry:(id)a3 topPlayer:(id)a4 playerAbove:(id)a5 playerBelow:(id)a6 totalEntries:(int64_t)a7;
- (void)donePressed:(id)a3;
- (void)enableDisableCollectionViewScrolling;
- (void)hideNoContentPlaceholder;
- (void)loadData;
- (void)loadLeaderboardForOccurrence:(int64_t)a3 handler:(id)a4;
- (void)playerScopeChanged:(id)a3;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
- (void)scrollToTopPressed:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)sendFriendInvitationViaMessagesTo:(id)a3 withPresentingViewController:(id)a4;
- (void)setLeaderboardOccurrence:(int64_t)a3;
- (void)setNeedsRefresh;
- (void)setPlayerScope:(int64_t)a3 restrictToFriendsOnly:(BOOL)a4;
- (void)setTimeScope:(int64_t)a3;
- (void)setupFadeGradient;
- (void)setupNoContentView:(id)a3 withError:(id)a4;
- (void)setupReleaseStateInfo;
- (void)setupVisualEffect;
- (void)shareScore:(id)a3 fromLeaderboard:(id)a4 sendingView:(id)a5 relativeRect:(CGRect)a6;
- (void)shareWithScore:(id)a3 fromView:(id)a4;
- (void)showNoContentPlaceholderForError:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateContentSize;
- (void)updateHighlights;
- (void)updatePlayerScopeLayoutForSize:(CGSize)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation GKLeaderboardScoreViewController

- (GKLeaderboardScoreViewController)initWithGameRecord:(id)a3 leaderboard:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v8 = @"GKLeaderboardScoreViewController_xrOS";
  }

  else
  {
    v9 = [MEMORY[0x277D75C80] currentTraitCollection];
    v10 = [v9 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

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
    [(GKLeaderboardScoreViewController *)v14 setLeaderboard:v7];
    if ([v7 type] == 1)
    {
      [(GKLeaderboardScoreViewController *)v14 setCurrentOccurrence:v7];
    }

    v15 = [v7 title];
    [(GKLeaderboardScoreViewController *)v14 setTitle:v15];

    [(GKLoadingViewController *)v14 setLoadingIndicatorDelay:0.0];
    v16 = [[GKLeaderboardScoreDataSource alloc] initWithGameRecord:v6 leaderboard:v7];
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
  v3 = [MEMORY[0x277D75C80] currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
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
  v7 = [v6 firstObject];
  [(GKLeaderboardScoreViewController *)self setPersonalView:v7];

  v8 = [v14 loadNibNamed:v5 owner:self options:0];
  v9 = [v8 firstObject];
  [(GKLeaderboardScoreViewController *)self setSocialView:v9];

  v10 = [(GKLeaderboardScoreViewController *)self highlightView];
  v11 = [(GKLeaderboardScoreViewController *)self personalView];
  [v10 addArrangedSubview:v11];

  v12 = [(GKLeaderboardScoreViewController *)self highlightView];
  v13 = [(GKLeaderboardScoreViewController *)self socialView];
  [v12 addArrangedSubview:v13];

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

- (id)attributedStringWithSymbol:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB48];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x277D74270];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:v4];

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
  v14 = [MEMORY[0x277D75348] labelColor];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v5 addAttributes:v15 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

- (BOOL)updateHighlightsPersonalView
{
  v76[1] = *MEMORY[0x277D85DE8];
  v3 = [(GKLeaderboardScoreViewController *)self leaderboard];
  v4 = [v3 type];

  if (v4 != 1)
  {
LABEL_4:
    if (-[GKLeaderboardScoreViewController hasData](self, "hasData") && (-[GKLeaderboardScoreViewController localPlayerEntry](self, "localPlayerEntry"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 rank], v10, v11 >= 1))
    {
      v12 = [(GKLeaderboardScoreViewController *)self leaderboard];
      if ([v12 playerScope])
      {

LABEL_8:
        v13 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
        v14 = [v13 selectedSegmentIndex];
        v15 = MEMORY[0x277CCACA8];
        v16 = GKGameCenterUIFrameworkBundle();
        GKGetLocalizedStringFromTableInBundle();
        if (v14 < 1)
          v17 = {;
          v19 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
          v21 = [v15 localizedStringWithFormat:v17, objc_msgSend(v19, "rank"), -[GKLeaderboardScoreViewController totalEntries](self, "totalEntries")];
        }

        else
          v17 = {;
          v18 = MEMORY[0x277CCABB0];
          v19 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
          v20 = [v18 numberWithInteger:{objc_msgSend(v19, "rank")}];
          v21 = [v15 localizedStringWithFormat:v17, v20];
        }

        v55 = [(GKLeaderboardScoreViewController *)self personalView];
        v56 = [MEMORY[0x277D0C138] local];
        v75 = v56;
        v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
        v58 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
        v59 = [v58 formattedScore];
        [v55 configureWithPlayers:v57 title:v59 footnote:v21];

        return 0;
      }

      v36 = [(GKLeaderboardScoreViewController *)self totalEntries];

      if (v36 < 1)
      {
        goto LABEL_8;
      }

      v37 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      v38 = 100 * [v37 rank];
      v39 = v38 / [(GKLeaderboardScoreViewController *)self totalEntries];

      if (v39 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v39;
      }

      v41 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      v42 = [v41 rank];

      if (v42 > 10)
      {
        if (v39 > 10)
        {
          goto LABEL_8;
        }

        v74 = [(GKLeaderboardScoreViewController *)self personalView];
        v61 = [MEMORY[0x277D0C138] local];
        v76[0] = v61;
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
        [v74 configureWithPlayers:v62 title:v67 footnote:v71];
      }

      else
      {
        v72 = [(GKLeaderboardScoreViewController *)self personalView];
        v43 = MEMORY[0x277CCACA8];
        v73 = GKGameCenterUIFrameworkBundle();
        v44 = GKGetLocalizedStringFromTableInBundle();
        v45 = MEMORY[0x277CCABB0];
        v46 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
        v47 = [v45 numberWithInteger:{objc_msgSend(v46, "rank")}];
        v48 = [v43 localizedStringWithFormat:v44, v47];
        v49 = GKGameCenterUIFrameworkBundle();
        v50 = GKGetLocalizedStringFromTableInBundle();
        v51 = MEMORY[0x277CCACA8];
        v52 = GKGameCenterUIFrameworkBundle();
        v53 = GKGetLocalizedStringFromTableInBundle();
        v54 = [v51 localizedStringWithFormat:v53, -[GKLeaderboardScoreViewController totalEntries](self, "totalEntries")];
        [v72 configureWithRank:v48 title:v50 footnote:v54 vibrant:1];
      }
    }

    else
    {
      v22 = [(GKLeaderboardScoreViewController *)self personalView];
      v23 = GKGameCenterUIFrameworkBundle();
      v24 = GKGetLocalizedStringFromTableInBundle();
      v25 = GKGameCenterUIFrameworkBundle();
      v26 = GKGetLocalizedStringFromTableInBundle();
      [v22 configureWithRank:@"👏" title:v24 footnote:v26 vibrant:0];
    }

    return 0;
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(GKLeaderboardScoreViewController *)self leaderboard];
  v7 = [v6 startDate];
  v8 = [(GKLeaderboardScoreViewController *)self leaderboard];
  [v8 duration];
  v9 = [v7 dateByAddingTimeInterval:?];

  if ([v5 compare:v9] != -1)
  {

    goto LABEL_4;
  }

  v27 = [(GKLeaderboardScoreViewController *)self timeRemainingFromDate:v5 toDate:v9];
  v28 = [(GKLeaderboardScoreViewController *)self attributedStringWithSymbol:@"timer"];
  v29 = [(GKLeaderboardScoreViewController *)self personalView];
  v30 = GKGameCenterUIFrameworkBundle();
  v31 = GKGetLocalizedStringFromTableInBundle();
  v32 = 1;
  [v29 configureWithRank:&stru_28612D290 title:v27 footnote:v31 vibrant:1];

  v33 = [(GKLeaderboardScoreViewController *)self personalView];
  v34 = [v33 rank];
  [v34 setAttributedText:v28];

  v35 = [(GKLeaderboardScoreViewController *)self personalView];
  [v35 configureVibrancy:1];

  return v32;
}

- (void)updateHighlights
{
  v68[1] = *MEMORY[0x277D85DE8];
  [(GKLeaderboardScoreViewController *)self updateHighlightsPersonalView];
  if (![(GKLeaderboardScoreViewController *)self hasData])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [v8 selectedSegmentIndex];
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v64 = [v7 localizedStringWithFormat:v10, 0];

    v11 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    if ([v11 selectedSegmentIndex] == 1)
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

    v16 = [(GKLeaderboardScoreViewController *)self socialView];
    v17 = [(GKLeaderboardScoreViewController *)self formattedNumber:&unk_2861892D0];
    [v16 configureWithRank:v17 title:v64 footnote:v15 vibrant:1];

    goto LABEL_20;
  }

  v3 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  v4 = [v3 selectedSegmentIndex];

  if (v4 <= 0)
  {
    v18 = [(GKLeaderboardScoreViewController *)self playerAboveEntry];

    if (v18)
    {
      v19 = MEMORY[0x277D0C108];
      v20 = [(GKLeaderboardScoreViewController *)self playerAboveEntry];
      v21 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      v22 = [v19 formattedDifferenceBetweenFirstScore:v20 secondScore:v21];

      if ([v22 length])
      {
        v62 = [(GKLeaderboardScoreViewController *)self socialView];
        v65 = [(GKLeaderboardScoreViewController *)self playerAboveEntry];
        [v65 player];
        v24 = v23 = v22;
        v68[0] = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
        v26 = [(GKLeaderboardScoreViewController *)self playerAboveEntry];
        v27 = [v26 player];
        v28 = [v27 alias];
        v29 = MEMORY[0x277CCACA8];
        v30 = GKGameCenterUIFrameworkBundle();
        v31 = GKGetLocalizedStringFromTableInBundle();
        v32 = [v29 localizedStringWithFormat:v31, v23];
        v33 = v62;
        [v62 configureWithPlayers:v25 title:v28 footnote:v32];

LABEL_27:
        return;
      }

LABEL_32:

      goto LABEL_3;
    }

    v49 = [(GKLeaderboardScoreViewController *)self playerBelowEntry];

    if (v49)
    {
      v50 = MEMORY[0x277D0C108];
      v51 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      v52 = [(GKLeaderboardScoreViewController *)self playerBelowEntry];
      v22 = [v50 formattedDifferenceBetweenFirstScore:v51 secondScore:v52];

      if (![v22 length])
      {
        goto LABEL_32;
      }

      v63 = [(GKLeaderboardScoreViewController *)self socialView];
      v65 = [(GKLeaderboardScoreViewController *)self playerBelowEntry];
      [v65 player];
      v24 = v23 = v22;
      v67 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
      v26 = [(GKLeaderboardScoreViewController *)self playerBelowEntry];
      v27 = [v26 player];
      v53 = [v27 alias];
      v54 = MEMORY[0x277CCACA8];
      v55 = GKGameCenterUIFrameworkBundle();
    }

    else
    {
      v22 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      if ([v22 rank] < 2)
      {
        goto LABEL_32;
      }

      v58 = [(GKLeaderboardScoreViewController *)self topPlayerEntry];

      if (!v58)
      {
        goto LABEL_3;
      }

      v59 = MEMORY[0x277D0C108];
      v60 = [(GKLeaderboardScoreViewController *)self topPlayerEntry];
      v61 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
      v22 = [v59 formattedDifferenceBetweenFirstScore:v60 secondScore:v61];

      if (![v22 length])
      {
        goto LABEL_32;
      }

      v63 = [(GKLeaderboardScoreViewController *)self socialView];
      v65 = [(GKLeaderboardScoreViewController *)self topPlayerEntry];
      [v65 player];
      v24 = v23 = v22;
      v66 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
      v26 = [(GKLeaderboardScoreViewController *)self topPlayerEntry];
      v27 = [v26 player];
      v53 = [v27 alias];
      v54 = MEMORY[0x277CCACA8];
      v55 = GKGameCenterUIFrameworkBundle();
    }

    v56 = GKGetLocalizedStringFromTableInBundle();
    v57 = [v54 localizedStringWithFormat:v56, v23];
    v33 = v63;
    [v63 configureWithPlayers:v25 title:v53 footnote:v57];

    goto LABEL_27;
  }

LABEL_3:
  v5 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  if ([v5 selectedSegmentIndex])
  {
    v6 = [(GKLeaderboardScoreViewController *)self totalEntries];
  }

  else
  {
    v34 = [(GKLeaderboardScoreViewController *)self localPlayerEntry];
    v35 = [v34 rank] > 0;
    v6 = [(GKLeaderboardScoreViewController *)self totalEntries]- v35;
  }

  v36 = MEMORY[0x277CCACA8];
  v37 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  if ([v37 selectedSegmentIndex])
  {
    v64 = [v36 localizedStringWithFormat:@"%ld", v6];
  }

  else
  {
    v38 = GKGameCenterUIFrameworkBundle();
    v39 = GKGetLocalizedStringFromTableInBundle();
    v64 = [v36 localizedStringWithFormat:v39, v6];
  }

  v40 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  if ([v40 selectedSegmentIndex] == 1)
  {
    v41 = MEMORY[0x277CCACA8];
    v42 = GKGameCenterUIFrameworkBundle();
    v43 = GKGetLocalizedStringFromTableInBundle();
    v44 = [v41 localizedStringWithFormat:v43, v6];
  }

  else
  {
    v42 = GKGameCenterUIFrameworkBundle();
    v44 = GKGetLocalizedStringFromTableInBundle();
  }

  v45 = [(GKLeaderboardScoreViewController *)self socialView];
  [v45 configureWithRank:&stru_28612D290 title:v64 footnote:v44 vibrant:1];

  v46 = [(GKLeaderboardScoreViewController *)self attributedStringWithSymbol:@"globe"];
  v47 = [(GKLeaderboardScoreViewController *)self socialView];
  v48 = [v47 rank];
  [v48 setAttributedText:v46];

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
    v7 = [MEMORY[0x277D75348] systemGray2Color];
    v8 = [v7 CGColor];

    v9 = [(GKLeaderboardScoreViewController *)self releaseStateInfoBox];
    v10 = [v9 layer];
    [v10 setBackgroundColor:v8];

    v11 = [(GKLeaderboardScoreViewController *)self releaseStateInfoBox];
    v12 = [v11 layer];
    [v12 setCornerRadius:14.0];

    v13 = MEMORY[0x277D74300];
    v14 = [(GKLeaderboardScoreViewController *)self releaseStateInfoText];
    v15 = [v14 font];
    [v15 pointSize];
    v16 = [v13 boldSystemFontOfSize:?];

    v26 = *MEMORY[0x277D740A8];
    v27[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v18 = objc_alloc(MEMORY[0x277CCA898]);
    v19 = [MEMORY[0x277D0C850] PRERELEASE_ITEM];
    v20 = [v18 initWithString:v19 attributes:v17];
    v21 = [(GKLeaderboardScoreViewController *)self releaseStateHeaderText];
    [v21 setAttributedText:v20];

    v22 = [MEMORY[0x277D0C850] LEADERBOARD_PENDING_APPROVAL];
    v23 = [(GKLeaderboardScoreViewController *)self releaseStateInfoText];
    [v23 setText:v22];

    v24 = [(GKLeaderboardScoreViewController *)self releaseStateIcon];
    [v24 setImage:v6];
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
  v3 = [MEMORY[0x277D0C010] daemonProxy];
  [v3 addDataUpdateDelegate:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [MEMORY[0x277CCABD8] mainQueue];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __47__GKLeaderboardScoreViewController_viewDidLoad__block_invoke;
  v90[3] = &unk_27966D040;
  v90[4] = self;
  v6 = [v4 addObserverForName:@"GKRefreshDataTypeFriendRecommendations" object:0 queue:v5 usingBlock:v90];

  v7 = [(UIViewController *)self _gkExtensionViewController];
  v8 = [(GKLeaderboardScoreViewController *)self leaderboard];
  v9 = [v8 identifier];
  [v7 dashboardDidChangeToLeaderboardIdentifier:v9];

  v10 = MEMORY[0x277D0C258];
  if (*MEMORY[0x277D0C258] == 1)
  {
    [(GKLeaderboardScoreViewController *)self setupVisualEffect];
  }

  v11 = [(GKLeaderboardScoreViewController *)self collectionView];
  v12 = [(GKLeaderboardScoreViewController *)self dataSource];
  [v12 setupCollectionView:v11];

  v13 = [(GKLeaderboardScoreViewController *)self dataSource];
  [v13 setPresentationViewController:self];

  v14 = [(GKLeaderboardScoreViewController *)self dataSource];
  [v14 setLeaderboardScoreDelegate:self];

  v15 = [(GKLeaderboardScoreViewController *)self leaderboard];
  v16 = [v15 type] == 1;

  if (v16)
  {
    self->_timeScope = 2;
    v17 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
    [v17 setLeaderboardOccurrence:0];

    self->_leaderboardOccurrence = 0;
    timeScope = self->_timeScope;
  }

  else
  {
    v19 = sInitialTimeScope;
    v20 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
    [v20 setTimeScope:v19];

    timeScope = sInitialTimeScope;
    self->_timeScope = sInitialTimeScope;
  }

  v21 = [(GKLeaderboardScoreViewController *)self dataSource];
  [v21 setTimeScope:timeScope];

  v22 = [(GKLeaderboardScoreViewController *)self initialPlayerScope];
  [(GKLeaderboardScoreViewController *)self setPlayerScope:v22 restrictToFriendsOnly:sRestrictToFriendsOnly];
  v23 = [(GKLeaderboardScoreViewController *)self navigationItem];
  [v23 _setAutoScrollEdgeTransitionDistance:40.0];

  v24 = [(GKLeaderboardScoreViewController *)self navigationItem];
  [v24 _setManualScrollEdgeAppearanceEnabled:1];

  v25 = [(GKLeaderboardScoreViewController *)self navigationItem];
  [v25 setLargeTitleDisplayMode:2];

  v26 = [MEMORY[0x277D75348] clearColor];
  v27 = [(GKLeaderboardScoreViewController *)self collectionView];
  [v27 setBackgroundColor:v26];

  v28 = [(GKLeaderboardScoreViewController *)self collectionContainer];
  v29 = [v28 layer];
  [v29 setCornerRadius:14.0];

  v30 = [(GKLeaderboardScoreViewController *)self collectionContainer];
  v31 = [v30 layer];
  [v31 setCornerCurve:*MEMORY[0x277CDA138]];

  v32 = [(GKLeaderboardScoreViewController *)self collectionContainer];
  v33 = [v32 layer];
  [v33 setMasksToBounds:1];

  [(GKLeaderboardScoreViewController *)self configureCloseButton];
  [(GKLeaderboardScoreViewController *)self addLeaderboardHighlights];
  [(GKLeaderboardScoreViewController *)self addPlayerScopeControl];
  [(GKLeaderboardScoreViewController *)self setupFadeGradient];
  v34 = [MEMORY[0x277D0C8C8] sharedTheme];
  v35 = [v34 secondaryLabelCompositingFilter];
  v36 = [(GKLeaderboardScoreViewController *)self timeScopeContainer];
  v37 = [v36 layer];
  [v37 setCompositingFilter:v35];

  [(GKLeaderboardScoreViewController *)self configureTimeScopeMenu];
  v38 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
  v39 = [v38 titleLabel];
  [v39 setAdjustsFontForContentSizeCategory:1];

  v40 = [(GKLeaderboardScoreViewController *)self scrollToTopButton];
  v41 = [v40 titleLabel];
  [v41 setAdjustsFontForContentSizeCategory:1];

  v42 = [(GKLeaderboardScoreViewController *)self mainScrollView];
  [v42 setDelegate:self];

  v43 = [(GKLeaderboardScoreViewController *)self timeScopeButton];

  if (v43)
  {
    v44 = objc_alloc_init(MEMORY[0x277D75500]);
    v45 = [(GKLeaderboardScoreViewController *)self view];
    [v45 addLayoutGuide:v44];

    v46 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
    v93[0] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];
    [v44 setPreferredFocusEnvironments:v47];

    v48 = MEMORY[0x277CCAAD0];
    v49 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
    v50 = [v49 superview];
    [v48 _gkInstallEdgeConstraintsForLayoutGuide:v44 containedWithinParentView:v50];
  }

  if (*v10 & 1) != 0 || (-[GKLeaderboardScoreViewController scrollToTopButton](self, "scrollToTopButton"), v51 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277D75348] labelColor], v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v51, "setTitleColor:forState:", v52, 0), v52, v51, objc_msgSend(MEMORY[0x277D75348], "systemGroupedBackgroundColor"), v53 = objc_claimAutoreleasedReturnValue(), -[GKLeaderboardScoreViewController view](self, "view"), v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v54, "setBackgroundColor:", v53), v54, v53, (*v10))
  {
    v55 = [MEMORY[0x277D75348] whiteColor];
    v56 = [v55 colorWithAlphaComponent:0.1];
    v57 = 1;
    v58 = v56;
  }

  else
  {
    v59 = MEMORY[0x277D75348];
    v55 = [MEMORY[0x277D75348] whiteColor];
    v58 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v56 = [v59 gk_dynamicColorWithLightColor:v55 darkColor:v58];
    v57 = 0;
  }

  v60 = [(GKLeaderboardScoreViewController *)self timeScopeContainer];
  [v60 setBackgroundColor:v56];

  if ((v57 & 1) == 0)
  {
  }

  v61 = *v10;
  v62 = MEMORY[0x277D75348];
  v63 = [MEMORY[0x277D75348] whiteColor];
  v64 = v63;
  if (v61)
  {
    v65 = [v63 colorWithAlphaComponent:0.08];
    v66 = v65;
  }

  else
  {
    v66 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v65 = [v62 gk_dynamicColorWithLightColor:v64 darkColor:v66];
  }

  v67 = [(GKLeaderboardScoreViewController *)self collectionContainer];
  [v67 setBackgroundColor:v65];

  if ((v61 & 1) == 0)
  {
  }

  v68 = [(GKLeaderboardScoreViewController *)self collectionGradientView];
  v92[0] = v68;
  v69 = [(GKLeaderboardScoreViewController *)self highlightView];
  v92[1] = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
  [(GKLoadingViewController *)self setViewsToHideWhileLoading:v70];

  objc_initWeak(&location, self);
  v71 = [(GKLeaderboardScoreViewController *)self dataSource];
  v72 = [v71 gameRecord];
  v73 = [v72 name];

  v74 = [MEMORY[0x277D75C80] currentTraitCollection];
  v75 = [v74 preferredContentSizeCategory];
  LODWORD(v71) = UIContentSizeCategoryIsAccessibilityCategory(v75);

  v76 = [(GKLeaderboardScoreViewController *)self dataSource];
  v77 = [v76 gameRecord];
  v84 = MEMORY[0x277D85DD0];
  v85 = 3221225472;
  v86 = __47__GKLeaderboardScoreViewController_viewDidLoad__block_invoke_2;
  v87 = &unk_27966D068;
  objc_copyWeak(&v88, &location);
  v78 = [v77 loadIconForStyle:1 withCompletionHandler:&v84];

  v79 = [(GKLeaderboardScoreViewController *)self scrollToTopButton:v84];
  v80 = v79;
  if (v71)
  {
    v81 = &stru_28612D290;
  }

  else
  {
    v81 = v73;
  }

  [v79 setTitle:v81 forState:0];

  v82 = [(GKLeaderboardScoreViewController *)self scrollToTopButton];
  [v82 setContentHorizontalAlignment:4];

  v83 = [(GKLeaderboardScoreViewController *)self scrollToTopButton];
  [v83 setContentEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

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

- (id)timeRemainingFromDate:(id)a3 toDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    [v6 timeIntervalSinceDate:v5];
    v10 = v9;
    if (v9 < 0.0)
    {
      v11 = v5;

      v7 = v11;
    }

    if (v10 >= 259200.0)
    {
      v12 = MEMORY[0x277CBEAA8];
      v13 = v5;
      v14 = v7;
      v15 = 16;
    }

    else
    {
      v12 = MEMORY[0x277CBEAA8];
      v13 = v5;
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
  v4 = [MEMORY[0x277D75348] blackColor];
  v9[0] = [v4 CGColor];
  v5 = [MEMORY[0x277D75348] clearColor];
  v9[1] = [v5 CGColor];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v3 setColors:v6];

  [v3 setStartPoint:{0.5, 0.88}];
  [v3 setEndPoint:{0.5, 1.0}];
  v7 = [(GKLeaderboardScoreViewController *)self collectionGradientView];
  v8 = [v7 layer];
  [v8 setMask:v3];

  [(GKLeaderboardScoreViewController *)self setCollectionViewFadeGradient:v3];
}

- (void)dealloc
{
  v3 = [(GKLeaderboardScoreViewController *)self collectionView];
  [v3 setDataSource:0];

  v4 = [(GKLeaderboardScoreViewController *)self collectionView];
  [v4 setDelegate:0];

  v5 = [MEMORY[0x277D0C010] daemonProxy];
  [v5 removeDataUpdateDelegate:self];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v7 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v14 viewWillAppear:a3];
  v4 = [(GKLoadingViewController *)self loadingState];
  if (v4 == @"Initial")
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadingState"];
  }

  v5 = [(GKLeaderboardScoreViewController *)self view];
  [v5 bounds];
  [(GKLeaderboardScoreViewController *)self updatePlayerScopeLayoutForSize:v6, v7];

  [(GKLeaderboardScoreViewController *)self enableDisableCollectionViewScrolling];
  v8 = [(GKLeaderboardScoreViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  [v9 invalidateLayout];

  v10 = objc_alloc_init(MEMORY[0x277D75B80]);
  [v10 addTarget:self action:sel_backButtonPressed_];
  [v10 setAllowedPressTypes:&unk_2861897F0];
  v11 = [(GKLeaderboardScoreViewController *)self view];
  [v11 addGestureRecognizer:v10];

  v12 = [(GKLeaderboardScoreViewController *)self leaderboard];
  v13 = [v12 type];

  if (v13 == 1)
  {
    [(GKLeaderboardScoreViewController *)self setShouldAutoRefreshHighlights:1];
    [(GKLeaderboardScoreViewController *)self autoRefreshHighlightsPersonalView];
  }
}

- (void)backButtonPressed:(id)a3
{
  v4 = MEMORY[0x277D75518];
  v5 = [MEMORY[0x277D75DA0] keyWindow];
  v6 = [v4 focusSystemForEnvironment:v5];
  v9 = [v6 focusedItem];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GKLeaderboardScoreViewController *)self setShouldPreferFocusToPlayerScopeControl:1];
    [(GKLeaderboardScoreViewController *)self setNeedsFocusUpdate];
  }

  else
  {
    v7 = [(GKLeaderboardScoreViewController *)self navigationController];
    v8 = [v7 popViewControllerAnimated:1];
  }
}

- (id)preferredFocusEnvironments
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([(GKLeaderboardScoreViewController *)self shouldPreferFocusToPlayerScopeControl])
  {
    v3 = [(GKLeaderboardScoreViewController *)self playerScopeControl];

    if (v3)
    {
      v4 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      v19[0] = v4;
      v5 = MEMORY[0x277CBEA60];
      v6 = v19;
LABEL_11:
      v13 = [v5 arrayWithObjects:v6 count:1];

      goto LABEL_12;
    }
  }

  v7 = [(GKLeaderboardScoreViewController *)self preferredFocusCell];

  if (v7)
  {
    v4 = [(GKLeaderboardScoreViewController *)self preferredFocusCell];
    v18 = v4;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v18;
    goto LABEL_11;
  }

  v8 = [(GKLeaderboardScoreViewController *)self dataSource];
  v9 = [v8 localPlayerEntryIndexPath];

  if (!v9)
  {
    v11 = [(GKLeaderboardScoreViewController *)self collectionView];
    v12 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v4 = [v11 cellForItemAtIndexPath:v12];

    if (v4)
    {
      v17 = v4;
      v5 = MEMORY[0x277CBEA60];
      v6 = &v17;
      goto LABEL_11;
    }
  }

  v10 = [(GKLeaderboardScoreViewController *)self playerScopeControl];

  if (v10)
  {
    v4 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    v16 = v4;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v16;
    goto LABEL_11;
  }

  v15.receiver = self;
  v15.super_class = GKLeaderboardScoreViewController;
  v13 = [(GKLeaderboardScoreViewController *)&v15 preferredFocusEnvironments];
LABEL_12:

  return v13;
}

- (void)setupVisualEffect
{
  v7 = objc_opt_new();
  v3 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v7 setBackgroundEffects:v3];

  [v7 _setGroupName:@"gameLayerGroup"];
  v4 = [(GKLeaderboardScoreViewController *)self view];
  [v4 insertSubview:v7 atIndex:0];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277CCAAD0];
  v6 = [(GKLeaderboardScoreViewController *)self view];
  [v5 _gkInstallEdgeConstraintsForView:v7 containedWithinParentView:v6];
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

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v9 viewDidAppear:a3];
  self->_startTime = CFAbsoluteTimeGetCurrent();
  [(GKLeaderboardScoreViewController *)self clearSelection];
  [(GKLeaderboardScoreViewController *)self setNeedsFocusUpdate];
  v4 = [(GKLeaderboardScoreViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 _rootSheetPresentationController];
  [v6 _setShouldScaleDownBehindDescendantSheets:0];

  v7 = [(GKLeaderboardScoreViewController *)self leaderboard];
  v8 = [v7 identifier];
  [_TtC12GameCenterUI15GKMetricsBridge recordLeaderboardPageEventWithPageId:v8 withReferrerData:[(GKLeaderboardScoreViewController *)self isDeeplinked]];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(GKLeaderboardScoreViewController *)self setShouldAutoRefreshHighlights:0];
  v5 = [(GKLeaderboardScoreViewController *)self view];
  [v5 removeAllGestureRecognizers];

  v6 = [MEMORY[0x277D0C1F8] reporter];
  v7 = *MEMORY[0x277D0BB38];
  [(GKLeaderboardScoreViewController *)self startTime];
  [v6 reportScreenTimeEventForType:v7 withStartTimestamp:?];

  v8.receiver = self;
  v8.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v8 viewWillDisappear:v3];
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

  v6 = [(GKLeaderboardScoreViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  if (v4)
  {
  }
}

- (void)loadData
{
  v3 = [(GKLeaderboardScoreViewController *)self dataSource];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__GKLeaderboardScoreViewController_loadData__block_invoke;
  v4[3] = &unk_27966B138;
  v4[4] = self;
  [v3 loadDataWithCompletionHandler:v4];
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
  v2 = [(GKLeaderboardScoreViewController *)self dataSource];
  v3 = [v2 hasData];

  return v3;
}

- (void)dataUpdated:(BOOL)a3 withError:(id)a4
{
  v4 = a3;
  v32 = a4;
  v6 = [(GKLeaderboardScoreViewController *)self dataSource];
  v7 = [v6 itemCount];

  if (v7 >= 1)
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadedState"];
    [(GKLeaderboardScoreViewController *)self hideNoContentPlaceholder];
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(GKLoadingViewController *)self setLoadingState:@"NoContentState"];
  [(GKLeaderboardScoreViewController *)self showNoContentPlaceholderForError:v32];
  if (v4)
  {
LABEL_3:
    v8 = [(GKLeaderboardScoreViewController *)self collectionView];
    [v8 contentInset];
    v10 = -v9;
    v11 = [(GKLeaderboardScoreViewController *)self collectionView];
    [v11 setContentOffset:{0.0, v10}];

    v12 = [(GKLeaderboardScoreViewController *)self collectionView];
    [v12 reloadData];

    [(GKLeaderboardScoreViewController *)self setNeedsFocusUpdate];
  }

LABEL_4:
  v13 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  v14 = [v13 selectedSegmentIndex];

  if (!v14)
  {
    v15 = [(GKLeaderboardScoreViewController *)self dataSource];
    v16 = [v15 itemCount];

    v17 = [MEMORY[0x277D0C1F8] reporter];
    v18 = *MEMORY[0x277D0BE28];
    v19 = *MEMORY[0x277D0BA18];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [v17 reportEvent:v18 type:v19 friendsPlayedThisGame:v20];
  }

  v21 = [(GKLeaderboardScoreViewController *)self title];

  if (!v21)
  {
    v22 = [(GKLeaderboardScoreViewController *)self leaderboard];
    v23 = [v22 title];
    [(GKLeaderboardScoreViewController *)self setTitle:v23];

    v24 = [MEMORY[0x277D75C80] currentTraitCollection];
    v25 = [v24 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v25);

    v27 = [(GKLeaderboardScoreViewController *)self scrollToTopButton];
    v28 = v27;
    if (IsAccessibilityCategory)
    {
      [v27 setTitle:&stru_28612D290 forState:0];
    }

    else
    {
      v29 = [(GKLeaderboardScoreViewController *)self leaderboard];
      v30 = [v29 title];
      v31 = [v30 uppercaseString];
      [v28 setTitle:v31 forState:0];
    }
  }
}

- (void)showNoContentPlaceholderForError:(id)a3
{
  v24[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKLeaderboardScoreViewController *)self collectionView];

  if (v5)
  {
    v6 = [(GKLeaderboardScoreViewController *)self collectionView];
    [v6 setHidden:1];

    v7 = [(GKLeaderboardScoreViewController *)self noContentView];

    if (!v7)
    {
      v8 = [GKNoContentView alloc];
      [(UICollectionView *)self->_collectionView bounds];
      v9 = [(GKNoContentView *)v8 initWithFrame:?];
      [(GKLeaderboardScoreViewController *)self setNoContentView:v9];

      v10 = [(GKLeaderboardScoreViewController *)self noContentView];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

      v11 = [(GKLeaderboardScoreViewController *)self collectionView];
      v12 = [v11 superview];

      v13 = [(GKLeaderboardScoreViewController *)self noContentView];
      v14 = [(GKLeaderboardScoreViewController *)self collectionView];
      [v12 insertSubview:v13 aboveSubview:v14];

      v15 = MEMORY[0x277CCAAD0];
      v16 = [(GKLeaderboardScoreViewController *)self noContentView];
      v17 = [(GKLeaderboardScoreViewController *)self collectionView];
      v18 = [v15 _gkConstraintsForView:v16 withinView:v17 insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      [v12 addConstraints:v18];

      v19 = [(GKLeaderboardScoreViewController *)self collectionGradientView];
      v20 = [(GKLeaderboardScoreViewController *)self highlightView];
      v24[1] = v20;
      v21 = [(GKLeaderboardScoreViewController *)self noContentView];
      v24[2] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
      [(GKLoadingViewController *)self setViewsToHideWhileLoading:v22];
    }

    [(GKLeaderboardScoreViewController *)self setupNoContentView:self->_noContentView withError:v4];
    v23 = [(GKLeaderboardScoreViewController *)self noContentView];
    [v23 setHidden:0];
  }
}

- (void)hideNoContentPlaceholder
{
  v3 = [(GKLeaderboardScoreViewController *)self noContentView];
  [v3 setHidden:1];

  v4 = [(GKLeaderboardScoreViewController *)self collectionView];
  [v4 setHidden:0];
}

- (void)setupNoContentView:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __65__GKLeaderboardScoreViewController_setupNoContentView_withError___block_invoke;
  v22 = &unk_27966D090;
  objc_copyWeak(&v23, &location);
  [v6 setButtonAction:&v19];
  v8 = [(GKLeaderboardScoreViewController *)self leaderboard:v19];
  v9 = [v8 type];

  if (v9 != 1)
  {
    timeScope = self->_timeScope;
    if (timeScope < 2)
    {
      v13 = GKGameCenterUIFrameworkBundle();
      v14 = GKGetLocalizedStringFromTableInBundle();
      [v6 setTitle:v14];

      v15 = GKGameCenterUIFrameworkBundle();
      v16 = GKGetLocalizedStringFromTableInBundle();
      [v6 setMessage:v16];

      goto LABEL_7;
    }

    if (timeScope != 2)
    {
      goto LABEL_8;
    }
  }

  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();
  [v6 setTitle:v11];

  [v6 setMessage:0];
LABEL_7:
  [v6 setButtonTitle:0];
LABEL_8:
  if (v7)
  {
    v17 = GKGameCenterUIFrameworkBundle();
    v18 = GKGetLocalizedStringFromTableInBundle();
    [v6 setMessage:v18];
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
  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1)
  {
    v11 = 140.0;
  }

  else if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v11 = 108.0;
  }

  else
  {
    v12 = [(GKLeaderboardScoreViewController *)self view];
    [v12 bounds];
    v14 = v13;
    v15 = [(GKLeaderboardScoreViewController *)self view];
    [v15 bounds];
    v17 = v16;
    v18 = [(GKLeaderboardScoreViewController *)self view];
    [v18 bounds];
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
  v24 = [v22 layer];
  [v24 setBackgroundFilters:v23];

  [(GKLeaderboardScoreViewController *)self setPlayerScopeControl:v22];
  [(GKLeaderboardScoreViewController *)self configurePlayerScopeFocusGuide];
  v25 = [(GKLeaderboardScoreViewController *)self playerScope];
  if (v25 == 1)
  {
    v26 = 0;
    goto LABEL_13;
  }

  if (!v25)
  {
    v26 = 1;
LABEL_13:
    v27 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [v27 setSelectedSegmentIndex:v26];
  }
}

- (void)configurePlayerScopeFocusGuide
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = [(GKLeaderboardScoreViewController *)self collectionContainer];
  if (v3)
  {
    v4 = v3;
    v5 = [(GKLeaderboardScoreViewController *)self playerScopeControl];

    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75500]);
      v7 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      v29[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      [v6 setPreferredFocusEnvironments:v8];

      v9 = [(GKLeaderboardScoreViewController *)self view];
      [v9 addLayoutGuide:v6];

      v20 = MEMORY[0x277CCAAD0];
      v26 = [v6 leadingAnchor];
      v27 = [(GKLeaderboardScoreViewController *)self view];
      v25 = [v27 leadingAnchor];
      v24 = [v26 constraintEqualToAnchor:v25];
      v28[0] = v24;
      v22 = [v6 trailingAnchor];
      v23 = [(GKLeaderboardScoreViewController *)self view];
      v21 = [v23 trailingAnchor];
      v19 = [v22 constraintEqualToAnchor:v21];
      v28[1] = v19;
      v10 = [v6 topAnchor];
      v11 = [(GKLeaderboardScoreViewController *)self view];
      v12 = [v11 topAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];
      v28[2] = v13;
      v14 = [v6 bottomAnchor];
      v15 = [(GKLeaderboardScoreViewController *)self collectionContainer];
      v16 = [v15 topAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];
      v28[3] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
      [v20 activateConstraints:v18];
    }
  }
}

- (void)updatePlayerScopeLayoutForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v6 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [v6 removeFromSuperview];

    [(GKLeaderboardScoreViewController *)self addPlayerScopeControl];
    v7 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [v7 setWidth:0 forSegmentAtIndex:108.0];

    v8 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [v8 setWidth:1 forSegmentAtIndex:108.0];
  }

  else
  {
    v9 = [(GKLeaderboardScoreViewController *)self traitCollection];
    v10 = [v9 verticalSizeClass];

    v11 = [(GKLeaderboardScoreViewController *)self navigationItem];
    v12 = [v11 _bottomPalette];
    v13 = v12;
    if (v10 == 2)
    {
      v63 = [v12 contentView];

      v14 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      v15 = [v14 superview];

      if (!v63 || v15 != v63)
      {
        v16 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
        [v16 removeFromSuperview];

        v17 = [(GKLeaderboardScoreViewController *)self navigationItem];
        [v17 setTitleView:0];

        v18 = objc_alloc_init(MEMORY[0x277D75D18]);
        v19 = [objc_alloc(MEMORY[0x277D76118]) initWithContentView:v18];
        v20 = [(GKLeaderboardScoreViewController *)self navigationItem];
        [v20 _setBottomPalette:v19];

        v21 = [(GKLeaderboardScoreViewController *)self navigationItem];
        v22 = [v21 _bottomPalette];
        v23 = [v22 contentView];
        v24 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
        [v23 addSubview:v24];

        v63 = v18;
      }

      v25 = [(GKLeaderboardScoreViewController *)self navigationItem];
      v26 = [v25 _bottomPalette];
      [v26 setPreferredHeight:60.0];

      [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
      v27 = [v63 widthAnchor];
      v28 = [v63 superview];
      v29 = [v28 widthAnchor];
      v30 = [v27 constraintEqualToAnchor:v29];
      [v30 setActive:1];

      v31 = [v63 heightAnchor];
      v32 = [v31 constraintEqualToConstant:60.0];
      [v32 setActive:1];

      v33 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

      v34 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      v35 = [v34 centerXAnchor];
      v36 = [v63 centerXAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];
      [v37 setActive:1];

      v38 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      v39 = [v38 bottomAnchor];
      v40 = [v63 bottomAnchor];
      v41 = [v39 constraintEqualToAnchor:v40 constant:-10.0];
      [v41 setActive:1];

      v42 = [MEMORY[0x277D75418] currentDevice];
      v43 = [v42 userInterfaceIdiom];

      if (v43 == 1)
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

      v61 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      [v61 setWidth:0 forSegmentAtIndex:v44];

      v62 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
      [v62 setWidth:1 forSegmentAtIndex:v44];

      [(GKLeaderboardScoreViewController *)self configureFocusGuidesForPortraitNavigationBar];
      goto LABEL_22;
    }

    [v12 setPreferredHeight:0.0];

    v45 = [MEMORY[0x277D75418] currentDevice];
    v46 = [v45 userInterfaceIdiom];

    if (v46 == 1)
    {
      v47 = 140.0;
    }

    else
    {
      v47 = (height + -40.0) / 3.0;
    }

    v48 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [v48 setWidth:0 forSegmentAtIndex:v47];

    v49 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [v49 setWidth:1 forSegmentAtIndex:v47];

    v50 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    v51 = [v50 superview];
    v52 = [(GKLeaderboardScoreViewController *)self navigationItem];
    v53 = [v52 titleView];
    v54 = v53;
    if (v51 == v53)
    {
      v59 = [(GKLeaderboardScoreViewController *)self navigationItem];
      v60 = [v59 titleView];

      if (v60)
      {
        return;
      }
    }

    else
    {
    }

    v55 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [v55 removeFromSuperview];

    v8 = [(GKLeaderboardScoreViewController *)self navigationItem];
    v56 = [v8 _bottomPalette];
    v57 = [v56 contentView];
    [v57 removeFromSuperview];
  }

  v63 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
  v58 = [(GKLeaderboardScoreViewController *)self navigationItem];
  [v58 setTitleView:v63];

LABEL_22:
}

- (void)configureFocusGuidesForPortraitNavigationBar
{
  v65[1] = *MEMORY[0x277D85DE8];
  v3 = [(GKLeaderboardScoreViewController *)self navigationController];
  v4 = [v3 navigationBar];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75500]);
    v6 = [(GKLeaderboardScoreViewController *)self navigationController];
    v7 = [v6 navigationBar];
    v65[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    [v5 setPreferredFocusEnvironments:v8];

    v9 = [(GKLeaderboardScoreViewController *)self navigationController];
    v10 = [v9 navigationBar];
    [v10 addLayoutGuide:v5];

    v41 = MEMORY[0x277CCAAD0];
    v58 = [v5 leadingAnchor];
    v60 = [(GKLeaderboardScoreViewController *)self navigationController];
    v56 = [v60 navigationBar];
    v54 = [v56 leadingAnchor];
    v52 = [v58 constraintEqualToAnchor:v54];
    v64[0] = v52;
    v48 = [v5 trailingAnchor];
    v50 = [(GKLeaderboardScoreViewController *)self navigationController];
    v46 = [v50 navigationBar];
    v43 = [v46 trailingAnchor];
    v40 = [v48 constraintEqualToAnchor:v43];
    v64[1] = v40;
    v38 = [v5 topAnchor];
    v39 = [(GKLeaderboardScoreViewController *)self navigationController];
    v37 = [v39 navigationBar];
    v11 = [v37 topAnchor];
    v12 = [v38 constraintEqualToAnchor:v11];
    v64[2] = v12;
    v13 = [v5 bottomAnchor];
    v14 = [(GKLeaderboardScoreViewController *)self navigationController];
    v15 = [v14 navigationBar];
    v16 = [v15 topAnchor];
    v17 = [v13 constraintEqualToAnchor:v16 constant:1.0];
    v64[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:4];
    [v41 activateConstraints:v18];
  }

  v19 = [(GKLeaderboardScoreViewController *)self navigationItem];
  v20 = [v19 _bottomPalette];
  v21 = [v20 contentView];
  if (v21)
  {
    v22 = v21;
    v23 = [(GKLeaderboardScoreViewController *)self playerScopeControl];

    if (!v23)
    {
      return;
    }

    v19 = objc_alloc_init(MEMORY[0x277D75500]);
    v24 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    v63 = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    [v19 setPreferredFocusEnvironments:v25];

    v26 = [(GKLeaderboardScoreViewController *)self navigationItem];
    v27 = [v26 _bottomPalette];
    v28 = [v27 contentView];
    [v28 addLayoutGuide:v19];

    v47 = MEMORY[0x277CCAAD0];
    v20 = [v19 centerXAnchor];
    v61 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    v59 = [v61 centerXAnchor];
    v57 = [v20 constraintEqualToAnchor:v59];
    v62[0] = v57;
    v53 = [v19 centerYAnchor];
    v55 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    v51 = [v55 centerYAnchor];
    v49 = [v53 constraintEqualToAnchor:v51];
    v62[1] = v49;
    v42 = [v19 widthAnchor];
    v45 = [(GKLeaderboardScoreViewController *)self navigationItem];
    v44 = [v45 _bottomPalette];
    v29 = [v44 contentView];
    v30 = [v29 widthAnchor];
    v31 = [v42 constraintEqualToAnchor:v30];
    v62[2] = v31;
    v32 = [v19 heightAnchor];
    v33 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    v34 = [v33 heightAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    v62[3] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    [v47 activateConstraints:v36];
  }
}

- (void)playerScopeChanged:(id)a3
{
  v4 = a3;
  v5 = 1;
  [(GKLeaderboardScoreViewController *)self setShouldPreferFocusToPlayerScopeControl:1];
  v6 = [(GKLeaderboardScoreViewController *)self dataSource];
  v7 = [v6 playerScope];

  v8 = [v4 selectedSegmentIndex];
  if (!v8)
  {
    v10 = MEMORY[0x277D0BAF8];
    v9 = 1;
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    v5 = 0;
    v9 = 0;
    v10 = MEMORY[0x277D0BB00];
LABEL_5:
    v11 = [MEMORY[0x277D0C1F8] reporter];
    [v11 reportEvent:*MEMORY[0x277D0BE70] type:*v10];

    goto LABEL_7;
  }

  v9 = 0;
  v5 = v7;
LABEL_7:

  [(GKLeaderboardScoreViewController *)self setPlayerScope:v5 restrictToFriendsOnly:v9];
}

- (void)setPlayerScope:(int64_t)a3 restrictToFriendsOnly:(BOOL)a4
{
  v4 = a4;
  [(GKLeaderboardScoreViewController *)self setPlayerScope:?];
  v7 = [(GKLeaderboardScoreViewController *)self dataSource];
  [v7 setPlayerScope:a3];

  [objc_opt_class() setRestrictToFriendsOnly:v4];
  v8 = [(GKLeaderboardScoreViewController *)self dataSource];
  [v8 setRestrictToFriendsOnly:v4];

  v9 = [(UIViewController *)self _gkExtensionViewController];
  [v9 dashboardDidChangeToLeaderboardPlayerScope:a3];

  [(GKLeaderboardScoreViewController *)self setNeedsRefresh];
}

- (void)scrollToTopPressed:(id)a3
{
  v4 = [MEMORY[0x277D0C1F8] reporter];
  [v4 reportEvent:*MEMORY[0x277D0BE70] type:*MEMORY[0x277D0BB20]];

  v5 = [(GKLeaderboardScoreViewController *)self dataSource];
  v6 = [v5 startingRank];

  if (v6 < 2)
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
    v7 = [(GKLeaderboardScoreViewController *)self dataSource];
    [v7 setAutoScrollToLocalPlayerPosition:0];

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
  v3 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
  [v3 setContextMenuIsPrimary:1];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__GKLeaderboardScoreViewController_configureTimeScopeMenu__block_invoke;
  v5[3] = &unk_27966D0E0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v4 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
  [v4 _setMenuProvider:v5];

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

- (void)setTimeScope:(int64_t)a3
{
  timeScope = a3;
  if (self->_timeScope != a3)
  {
    if (a3 <= 2)
    {
      v5 = qword_27966D178[a3];
      v6 = [MEMORY[0x277D0C1F8] reporter];
      [v6 reportEvent:*MEMORY[0x277D0BE70] type:*v5];
    }

    self->_timeScope = timeScope;
    v7 = [(GKLeaderboardScoreViewController *)self dataSource];
    [v7 setTimeScope:timeScope];

    [(GKLeaderboardScoreViewController *)self setInitialTimeScope:timeScope];
    v8 = [(UIViewController *)self _gkExtensionViewController];
    [v8 dashboardDidChangeToLeaderboardTimeScope:timeScope];

    [(GKLeaderboardScoreViewController *)self setNeedsRefresh];
    timeScope = self->_timeScope;
  }

  v9 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
  [v9 setTimeScope:timeScope];
}

- (void)setLeaderboardOccurrence:(int64_t)a3
{
  if (self->_leaderboardOccurrence != a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    timeScope = self->_timeScope;
    v8 = [(GKLeaderboardScoreViewController *)self dataSource];
    [v8 setTimeScope:timeScope];

    if (a3)
    {
      if (a3 != 1)
      {
LABEL_7:
        v11 = [(GKLeaderboardScoreViewController *)self timeScopeButton];
        [v11 setEnabled:0];

        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __61__GKLeaderboardScoreViewController_setLeaderboardOccurrence___block_invoke;
        v12[3] = &unk_27966D108;
        v12[4] = self;
        v12[5] = a3;
        [(GKLeaderboardScoreViewController *)self loadLeaderboardForOccurrence:a3 handler:v12];
        return;
      }

      v9 = MEMORY[0x277D0BAF0];
    }

    else
    {
      v9 = MEMORY[0x277D0BAE8];
    }

    v10 = [MEMORY[0x277D0C1F8] reporter];
    [v10 reportEvent:*MEMORY[0x277D0BE70] type:*v9];

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

- (void)loadLeaderboardForOccurrence:(int64_t)a3 handler:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 != 1)
  {
    v9 = [(GKLeaderboardScoreViewController *)self currentOccurrence];

    if (v9)
    {
      v8 = [(GKLeaderboardScoreViewController *)self currentOccurrence];
      goto LABEL_6;
    }

    v16 = MEMORY[0x277D0C0A0];
    v17 = [(GKLeaderboardScoreViewController *)self leaderboard];
    v18 = [v17 baseLeaderboardID];
    v24[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __73__GKLeaderboardScoreViewController_loadLeaderboardForOccurrence_handler___block_invoke_2;
    v20[3] = &unk_279669DF8;
    v20[4] = self;
    v21 = v6;
    [v16 loadLeaderboardsWithIDs:v19 completionHandler:v20];

    v15 = v21;
LABEL_9:

    goto LABEL_10;
  }

  v7 = [(GKLeaderboardScoreViewController *)self previousOccurrence];

  if (!v7)
  {
    v11 = [(GKLeaderboardScoreViewController *)self leaderboard];
    v12 = [(GKLeaderboardScoreViewController *)self dataSource];
    v13 = [v12 gameRecord];
    v14 = [v13 gameDescriptor];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __73__GKLeaderboardScoreViewController_loadLeaderboardForOccurrence_handler___block_invoke;
    v22[3] = &unk_27966D130;
    v22[4] = self;
    v23 = v6;
    [v11 loadPreviousOccurrenceWithGameDescriptor:v14 completionHandler:v22];

    v15 = v23;
    goto LABEL_9;
  }

  v8 = [(GKLeaderboardScoreViewController *)self previousOccurrence];
LABEL_6:
  v10 = v8;
  (*(v6 + 2))(v6, v8, 0);

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
  v2 = [(GKLoadingViewController *)self loadingState];
  v3 = 1;
  if (v2)
  {
    if (v2 != @"Initial" && v2 != @"LoadingState")
    {
      v3 = v2 == @"RefreshingState";
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

- (void)donePressed:(id)a3
{
  v3 = [(UIViewController *)self _gkExtensionViewController];
  [v3 finish];
}

- (void)traitCollectionDidChange:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = GKLeaderboardScoreViewController;
  [(GKLeaderboardScoreViewController *)&v43 traitCollectionDidChange:v4];
  v5 = [(GKLeaderboardScoreViewController *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = UIContentSizeCategoryIsAccessibilityCategory(v6);
  v7 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  if (v5 == IsAccessibilityCategory)
  {
    v33 = [v4 preferredContentSizeCategory];

    [(GKLeaderboardScoreViewController *)self enableDisableCollectionViewScrolling];
    v34 = [(GKLeaderboardScoreViewController *)self collectionView];
    v35 = v34;
    if (v33 == v6)
    {
      v38 = [v34 collectionViewLayout];
      [v38 invalidateLayout];

      [(GKLeaderboardScoreViewController *)self updateHighlights];
    }

    else
    {
      [v34 reloadData];

      [(GKLeaderboardScoreViewController *)self updateContentSize];
    }
  }

  else
  {
    v9 = [(GKLeaderboardScoreViewController *)self playerScopeControl];
    [v9 removeFromSuperview];

    v10 = [(GKLeaderboardScoreViewController *)self navigationItem];
    v11 = [v10 _bottomPalette];
    v12 = [v11 contentView];
    [v12 removeFromSuperview];

    v13 = [(GKLeaderboardScoreViewController *)self navigationItem];
    v14 = [v13 _bottomPalette];
    [v14 setPreferredHeight:0.0];

    v15 = [(GKLeaderboardScoreViewController *)self navigationItem];
    v16 = [v15 _bottomPalette];
    [v16 removeFromSuperview];

    v17 = [GKLeaderboardScoreViewController alloc];
    v18 = [(GKLeaderboardScoreViewController *)self dataSource];
    v19 = [v18 gameRecord];
    v20 = [(GKLeaderboardScoreViewController *)self leaderboard];
    v21 = [(GKLeaderboardScoreViewController *)v17 initWithGameRecord:v19 leaderboard:v20];

    v22 = MEMORY[0x277CBEB18];
    v23 = [(GKLeaderboardScoreViewController *)self navigationController];
    v24 = [v23 viewControllers];
    v25 = [v22 arrayWithArray:v24];

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
    v36 = [(GKLeaderboardScoreViewController *)self navigationController];
    [v36 setViewControllers:v26];

    v37 = [(GKLeaderboardScoreViewController *)self view];
    [v37 removeFromSuperview];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = GKLeaderboardScoreViewController;
  v7 = a4;
  [(GKLeaderboardScoreViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__GKLeaderboardScoreViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27966AD00;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)clearSelection
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(GKLeaderboardScoreViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
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
        v11 = [(GKLeaderboardScoreViewController *)self collectionView];
        [v11 deselectItemAtIndexPath:v10 animated:1];

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
  v3 = [(GKLeaderboardScoreViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];
  [v4 collectionViewContentSize];
  v6 = v5;
  v7 = [(GKLeaderboardScoreViewController *)self collectionView];
  [v7 contentOffset];
  v9 = v6 - v8;
  v10 = [(GKLeaderboardScoreViewController *)self collectionView];
  [v10 frame];
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
  v16 = [(GKLeaderboardScoreViewController *)self collectionViewFadeGradient];
  [v16 setLocations:v15];
}

- (void)didLoadScoresWithLocalPlayerEntry:(id)a3 topPlayer:(id)a4 playerAbove:(id)a5 playerBelow:(id)a6 totalEntries:(int64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  [(GKLeaderboardScoreViewController *)self setLocalPlayerEntry:a3];
  [(GKLeaderboardScoreViewController *)self setTopPlayerEntry:v14];

  [(GKLeaderboardScoreViewController *)self setPlayerAboveEntry:v13];
  [(GKLeaderboardScoreViewController *)self setPlayerBelowEntry:v12];

  [(GKLeaderboardScoreViewController *)self setTotalEntries:a7];
  [(GKLeaderboardScoreViewController *)self updateHighlights];

  [(GKLeaderboardScoreViewController *)self updateContentSize];
}

- (void)didLoadAdditionalScoresWithUpdatedTotalEntries:(unint64_t)a3
{
  if ([(GKLeaderboardScoreViewController *)self totalEntries]!= a3)
  {
    [(GKLeaderboardScoreViewController *)self setTotalEntries:a3];
    [(GKLeaderboardScoreViewController *)self updateHighlights];
  }

  [(GKLeaderboardScoreViewController *)self updateContentSize];
}

- (void)updateContentSize
{
  v3 = [(GKLeaderboardScoreViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];
  [v4 collectionViewContentSize];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v6 = 300.0;
  }

  v7 = [(GKLeaderboardScoreViewController *)self timeScopeContainer];
  [v7 bounds];
  v9 = v6 + v8;
  v10 = [(GKLeaderboardScoreViewController *)self collectionContainerHeight];
  [v10 setConstant:v9];

  [(GKLeaderboardScoreViewController *)self collectionViewDidScroll];
}

- (void)shareScore:(id)a3 fromLeaderboard:(id)a4 sendingView:(id)a5 relativeRect:(CGRect)a6
{
  v45[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 player];
  v13 = [v12 isLocalPlayer];

  if (v13)
  {
    v14 = MEMORY[0x277D0BA50];
    v15 = MEMORY[0x277D0BA68];
  }

  else
  {
    v16 = [v9 player];
    v17 = [v16 isFamiliarFriend];

    if (!v17)
    {
      goto LABEL_6;
    }

    v14 = MEMORY[0x277D0BA48];
    v15 = MEMORY[0x277D0BA60];
  }

  v18 = [MEMORY[0x277D0C1F8] reporter];
  v19 = *MEMORY[0x277D0BE28];
  [v18 reportEvent:*MEMORY[0x277D0BE28] type:*v15];

  v20 = [MEMORY[0x277D0C1F8] reporter];
  v21 = *v14;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "rank")}];
  [v20 reportEvent:v19 type:v21 scoreRank:v22];

LABEL_6:
  v23 = [MEMORY[0x277D0C1D8] shared];
  v24 = [v23 shouldAllowGameProgressSharing];

  if (v24)
  {
    v25 = [v9 sharingScoreMessageFromLeaderboard:v10];
    v45[0] = v25;
    v26 = [v9 sharingScoreURL];
    v45[1] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v28 = [(GKLeaderboardScoreViewController *)self _gkPresentActivityViewControllerForActivityItems:v27 fromView:v11 withCompletionHandler:0];
  }

  else
  {
    v25 = GKGameCenterUIFrameworkBundle();
    v26 = GKGetLocalizedStringFromTableInBundle();
    v27 = GKGameCenterUIFrameworkBundle();
    v29 = GKGetLocalizedStringFromTableInBundle();
    v30 = GKGameCenterUIFrameworkBundle();
    v31 = GKGetLocalizedStringFromTableInBundle();
    v32 = [(GKLeaderboardScoreViewController *)self _gkPresentAlertWithTitle:v26 message:v29 buttonTitle:v31 dismissHandler:0];
  }

  v33 = [v9 player];
  v34 = [v33 isLocalPlayer];
  v35 = @"friendPlayer";
  if (v34)
  {
    v35 = @"localPlayer";
  }

  v36 = v35;

  v37 = [MEMORY[0x277D0BFA8] reporter];
  v43 = @"location";
  v41[0] = @"scorer";
  v41[1] = @"scoreRank";
  v42[0] = v36;
  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "rank")}];
  v42[1] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v44 = v39;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

  [v37 recordClickWithAction:@"share" targetId:@"leaderboardEntry" targetType:@"collectionViewCell" pageId:@"leaderboardScores" pageType:@"leaderboard" additionalFields:v40];
}

- (void)sendFriendInvitationViaMessagesTo:(id)a3 withPresentingViewController:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (*MEMORY[0x277D0C258])
  {
    if (v6)
    {
      v4 = [v6 contact];
      v14 = v4;
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
    v11 = v7;
    [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerWithRecipients:v8 chatGUID:0 completionHandler:v10];
    if (!v6)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v6)
  {
    v4 = [v6 contact];
    v15[0] = v4;
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
  v13 = v7;
  [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerForRemoteInviteWithRecipients:v8 chatGUID:0 resultHandler:v12];
  if (v6)
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

- (void)challengeWithScore:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKLeaderboardScoreViewController *)self leaderboard];
  v6 = [MEMORY[0x277D0C138] local];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__GKLeaderboardScoreViewController_challengeWithScore___block_invoke;
  v9[3] = &unk_27966D158;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v5 loadEntriesForPlayers:v7 timeScope:2 completionHandler:v9];
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

- (void)shareWithScore:(id)a3 fromView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKLeaderboardScoreViewController *)self leaderboard];
  [(GKLeaderboardScoreViewController *)self shareScore:v7 fromLeaderboard:v8 sendingView:v6 relativeRect:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(GKLeaderboardScoreViewController *)self mainScrollView];

  if (v5 == v4)
  {
    [(GKLeaderboardScoreViewController *)self enableDisableCollectionViewScrolling];
    v15 = [(GKLeaderboardScoreViewController *)self collectionGradientView];
    [v15 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(GKLeaderboardScoreViewController *)self collectionViewFadeGradient];
    [v14 setFrame:{v7, v9, v11, v13}];
  }
}

- (void)enableDisableCollectionViewScrolling
{
  v3 = [(GKLeaderboardScoreViewController *)self traitCollection];
  category = [v3 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(category);
  v5 = [(GKLeaderboardScoreViewController *)self traitCollection];
  if ([v5 horizontalSizeClass] == 1)
  {
    v6 = [(GKLeaderboardScoreViewController *)self traitCollection];
    v7 = [v6 verticalSizeClass] == 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(GKLeaderboardScoreViewController *)self traitCollection];
  v9 = [v8 verticalSizeClass];

  if (!IsAccessibilityCategory)
  {
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v14 = [(GKLeaderboardScoreViewController *)self mainScrollView];
      [v14 setScrollEnabled:0];
LABEL_46:

      v18 = [(GKLeaderboardScoreViewController *)self collectionView];
      [v18 setScrollEnabled:1];
      goto LABEL_47;
    }

    v15 = MEMORY[0x277D76818];
    if (v9 == 1)
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

      v27 = [(GKLeaderboardScoreViewController *)self highlightViewWidthConstraint];
      [v27 setConstant:v16];

      v28 = [(GKLeaderboardScoreViewController *)self view];
      [v28 bounds];
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

      v34 = [(GKLeaderboardScoreViewController *)self highlightViewLandscapeTopConstraint];
      [v34 setConstant:v32];

      v35 = [(GKLeaderboardScoreViewController *)self collectionGradientViewLandscapeTopConstraint];
      [v35 setConstant:v33];
    }

    v36 = [(NSString *)category isEqualToString:*v15];
    v37 = [MEMORY[0x277D75418] currentDevice];
    v38 = [v37 userInterfaceIdiom];

    if (v36)
    {
      if (v38 != 1)
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
      if (v38 != 1)
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
    v14 = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
    [v14 setConstant:v40];
    goto LABEL_46;
  }

  v10 = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
  [v10 setActive:1];

  if ([(NSString *)category isEqualToString:*MEMORY[0x277D767E8]])
  {
    v11 = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
    v12 = v11;
    v13 = 544.0;
  }

  else if ([(NSString *)category isEqualToString:*MEMORY[0x277D767F0]])
  {
    v11 = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
    v12 = v11;
    v13 = 494.0;
  }

  else
  {
    if (![(NSString *)category isEqualToString:*MEMORY[0x277D767F8]])
    {
      v41 = [(NSString *)category isEqualToString:*MEMORY[0x277D76800]];
      v42 = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
      v12 = v42;
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

      [v42 setConstant:v43];
      goto LABEL_17;
    }

    v11 = [(GKLeaderboardScoreViewController *)self highlightViewHeightConstraint];
    v12 = v11;
    v13 = 444.0;
  }

  [v11 setConstant:v13];
  v7 = 1;
LABEL_17:

  v17 = [(GKLeaderboardScoreViewController *)self highlightView];
  [v17 setAxis:v7];

  v18 = [(GKLeaderboardScoreViewController *)self mainScrollView];
  [v18 contentSize];
  v25 = 0;
  if (v19 > 0.0)
  {
    [v18 contentOffset];
    v21 = v20;
    [v18 contentSize];
    v23 = v22;
    [v18 frame];
    if (v21 >= v23 - v24)
    {
      v25 = 1;
    }
  }

  v26 = [(GKLeaderboardScoreViewController *)self collectionView];
  [v26 setScrollEnabled:v25];

LABEL_47:
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__GKLeaderboardScoreViewController_refreshContentsForDataType_userInfo___block_invoke;
  block[3] = &unk_27966BE50;
  v11 = a3;
  v9 = v6;
  v10 = self;
  v7 = v6;
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