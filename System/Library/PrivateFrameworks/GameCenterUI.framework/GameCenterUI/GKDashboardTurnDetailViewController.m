@interface GKDashboardTurnDetailViewController
- (GKDashboardTurnDetailViewController)initWithTurnBasedMatch:(id)a3;
- (id)preferredFocusEnvironments;
- (void)acceptInvitation:(id)a3;
- (void)chooseMatch:(id)a3;
- (void)dealloc;
- (void)declineInvitation:(id)a3;
- (void)disableButtons;
- (void)handleTurnBasedEvent:(id)a3;
- (void)quitMatch:(id)a3;
- (void)refreshPresenter;
- (void)removeMatch:(id)a3;
- (void)viewDidLoad;
@end

@implementation GKDashboardTurnDetailViewController

- (GKDashboardTurnDetailViewController)initWithTurnBasedMatch:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _gkPlatformNibName];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10.receiver = self;
  v10.super_class = GKDashboardTurnDetailViewController;
  v7 = [(GKDashboardCollectionViewController *)&v10 initWithNibName:v5 bundle:v6];

  if (v7)
  {
    [(GKDashboardTurnDetailViewController *)v7 setMatch:v4];
    v8 = [[GKDashboardTurnDetailDataSource alloc] initWithMatch:v4];
    [(GKCollectionDataSource *)v8 setOnDarkBackground:0];
    [(GKDashboardCollectionViewController *)v7 setDataSource:v8];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKDashboardTurnDetailViewController;
  [(GKDashboardCollectionViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = GKDashboardTurnDetailViewController;
  [(GKDetailViewController *)&v28 viewDidLoad];
  [(UIViewController *)self _gkModifyTopConstraintToLayoutGuideForSubview:self->_playingWithLabel];
  v3 = [(GKDashboardCollectionViewController *)self collectionView];
  [v3 setAllowsSelection:0];
  v4 = [(GKDashboardTurnDetailViewController *)self match];
  v5 = [v4 matchTitle];
  [(UILabel *)self->_playingWithLabel setText:v5];

  v6 = MEMORY[0x277CCACA8];
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v9 = [(GKTurnBasedMatch *)self->_match creationDate];
  v10 = [v9 _gkFormattedDateForStyle:2 relative:0];
  v11 = [v6 stringWithFormat:v8, v10];
  [(UILabel *)self->_createdLabel setText:v11];

  p_firstButton = &self->_firstButton;
  [(UIButton *)self->_firstButton removeTarget:self action:0 forControlEvents:64];
  [(UIButton *)self->_secondButton removeTarget:self action:0 forControlEvents:64];
  [(UIButton *)self->_firstButton setHidden:1];
  [(UIButton *)self->_secondButton setHidden:1];
  shouldShowPlay = self->_shouldShowPlay;
  v14 = 0;
  v15 = 0;
  v16 = [(GKTurnBasedMatch *)self->_match state]- 1;
  if (v16 <= 5)
  {
    v17 = off_27966B100[v16];
    v18 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();

    v15 = *v17;
  }

  v19 = [(GKTurnBasedMatch *)self->_match state];
  v20 = 0;
  if (v19 > 4)
  {
    if (v19 == 5)
    {
      v25 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();

      v22 = 0;
      v23 = sel_removeMatch_;
      if (!v20)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (v19 != 6)
    {
      goto LABEL_21;
    }
  }

  else if ((v19 - 2) >= 3)
  {
    if (v19 != 1)
    {
      goto LABEL_21;
    }

    v21 = GKGameCenterUIFrameworkBundle();
    v20 = GKGetLocalizedStringFromTableInBundle();

    v22 = 0;
    v23 = sel_declineInvitation_;
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v24 = GKGameCenterUIFrameworkBundle();
  v20 = GKGetLocalizedStringFromTableInBundle();

  v23 = sel_quitMatch_;
  if (self->_shouldShowQuit)
  {
    v22 = 0;
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = [(GKTurnBasedMatch *)self->_match isMyTurn];
    if (!v20)
    {
      goto LABEL_21;
    }
  }

LABEL_16:
  if ((v22 & 1) == 0)
  {
    if (v14)
    {
      p_secondButton = &self->_secondButton;
    }

    else
    {
      p_secondButton = &self->_firstButton;
    }

    v27 = *p_secondButton;
    [(UIButton *)v27 setTitle:v20 forState:0];
    [(UIButton *)v27 addTarget:self action:v23 forControlEvents:64];
    [(UIButton *)v27 setHidden:0];
  }

LABEL_21:
  if (v14 && shouldShowPlay)
  {
    [(UIButton *)*p_firstButton setTitle:v14 forState:0];
    [(UIButton *)*p_firstButton addTarget:self action:v15 forControlEvents:64];
    [(UIButton *)*p_firstButton setHidden:0];
  }
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_firstButton)
  {
    v4[0] = self->_firstButton;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (void)refreshPresenter
{
  v2 = [(UIViewController *)self _gkOriginatingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setNeedsRefresh];
  }
}

- (void)acceptInvitation:(id)a3
{
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "accepted invitation", buf, 2u);
  }

  match = self->_match;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__GKDashboardTurnDetailViewController_acceptInvitation___block_invoke;
  v8[3] = &unk_27966B0B0;
  v8[4] = self;
  [(GKTurnBasedMatch *)match acceptInviteWithCompletionHandler:v8];
}

void __56__GKDashboardTurnDetailViewController_acceptInvitation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _gkExtensionViewController];
  [v4 finishWithTurnBasedMatch:v3];
}

- (void)declineInvitation:(id)a3
{
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "declineInvitation", buf, 2u);
  }

  [(GKDashboardTurnDetailViewController *)self disableButtons];
  match = self->_match;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__GKDashboardTurnDetailViewController_declineInvitation___block_invoke;
  v8[3] = &unk_279669D38;
  v8[4] = self;
  [(GKTurnBasedMatch *)match declineInviteWithCompletionHandler:v8];
}

uint64_t __57__GKDashboardTurnDetailViewController_declineInvitation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshPresenter];
  v2 = *(a1 + 32);

  return [v2 _gkRemoveViewController:v2 animated:1];
}

- (void)chooseMatch:(id)a3
{
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "chooseMatch", buf, 2u);
  }

  v7 = MEMORY[0x277D0C238];
  v8 = [(GKTurnBasedMatch *)self->_match matchID];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__GKDashboardTurnDetailViewController_chooseMatch___block_invoke;
  v9[3] = &unk_27966B0B0;
  v9[4] = self;
  [v7 loadTurnBasedMatchWithDetailsForMatchID:v8 withCompletionHandler:v9];
}

void __51__GKDashboardTurnDetailViewController_chooseMatch___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _gkExtensionViewController];
  [v4 finishWithTurnBasedMatch:v3];
}

- (void)disableButtons
{
  [(UIButton *)self->_firstButton setEnabled:0];
  [(UIButton *)self->_secondButton setEnabled:0];

  [(GKDashboardTurnDetailViewController *)self setNeedsFocusUpdate];
}

- (void)quitMatch:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "quitMatch", buf, 2u);
  }

  [(GKDashboardTurnDetailViewController *)self disableButtons];
  if ([(GKTurnBasedMatch *)self->_match isMyTurn])
  {
    v8 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v8 addObserver:self selector:sel_handleTurnBasedEvent_ name:*MEMORY[0x277D0BB70] object:0];

    v9 = [(UIViewController *)self _gkExtensionViewController];
    [v9 quitTurnBasedMatch:self->_match];
  }

  else
  {
    v10 = [(GKTurnBasedMatch *)self->_match localPlayerParticipant];
    v11 = [v10 status];

    if (v11 == 4)
    {
      v12 = *v5;
      if (!*v5)
      {
        v13 = GKOSLoggers();
        v12 = *v5;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(GKDashboardTurnDetailViewController *)&self->_match quitMatch:v12];
      }
    }

    match = self->_match;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__GKDashboardTurnDetailViewController_quitMatch___block_invoke;
    v15[3] = &unk_279669D38;
    v15[4] = self;
    [(GKTurnBasedMatch *)match participantQuitOutOfTurnWithOutcome:1 withCompletionHandler:v15];
  }
}

uint64_t __49__GKDashboardTurnDetailViewController_quitMatch___block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshPresenter];
  v2 = *(a1 + 32);

  return [v2 _gkRemoveViewController:v2 animated:1];
}

- (void)removeMatch:(id)a3
{
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "removeMatch", buf, 2u);
  }

  [(GKDashboardTurnDetailViewController *)self disableButtons];
  match = self->_match;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__GKDashboardTurnDetailViewController_removeMatch___block_invoke;
  v8[3] = &unk_279669D38;
  v8[4] = self;
  [(GKTurnBasedMatch *)match removeWithCompletionHandler:v8];
}

uint64_t __51__GKDashboardTurnDetailViewController_removeMatch___block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshPresenter];
  v2 = *(a1 + 32);

  return [v2 _gkRemoveViewController:v2 animated:1];
}

- (void)handleTurnBasedEvent:(id)a3
{
  v4 = [a3 object];
  v5 = [(GKTurnBasedMatch *)self->_match matchID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__GKDashboardTurnDetailViewController_handleTurnBasedEvent___block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __60__GKDashboardTurnDetailViewController_handleTurnBasedEvent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshPresenter];
  v2 = *(a1 + 32);

  return [v2 _gkRemoveViewController:v2 animated:1];
}

- (void)quitMatch:(void *)a1 .cold.1(void **a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [v3 localPlayerParticipant];
  v6 = *a1;
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_24DE53000, v4, OS_LOG_TYPE_DEBUG, "localParticipant: %@ has unexpected status for being active in match: %@", &v7, 0x16u);
}

@end