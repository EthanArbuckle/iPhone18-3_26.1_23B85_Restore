@interface GKPlayerPickerViewController
- (GKPlayerPickerDelegate)delegate;
- (GKPlayerPickerViewController)initWithContext:(id)a3;
- (GKPlayerPickerViewController)initWithMatch:(id)a3 maxPlayers:(int64_t)a4;
- (id)_initWithMaxPlayers:(int64_t)a3 excludedPlayers:(id)a4;
- (void)internalPlayerPickerDidCancel;
- (void)internalPlayerPickerDidPickPlayers:(id)a3;
- (void)matchmakerViewController:(id)a3 didFailWithError:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKPlayerPickerViewController

- (GKPlayerPickerViewController)initWithContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = GKPlayerPickerViewController;
  v6 = [(GKPlayerPickerViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = [[GKMatchmakerViewController alloc] initWithPlayerPickerDelegate:v7 andPlayerPickerContext:v5];
    matchmakerVC = v7->_matchmakerVC;
    v7->_matchmakerVC = v8;

    [(GKMatchmakerViewController *)v7->_matchmakerVC setMatchmakerDelegate:v7];
  }

  return v7;
}

- (id)_initWithMaxPlayers:(int64_t)a3 excludedPlayers:(id)a4
{
  v6 = MEMORY[0x277D0C8A0];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  [v8 setMaxPlayers:a3];
  [v8 setExcludedPlayers:v7];

  [v8 setPickerOrigin:0];
  v9 = [(GKPlayerPickerViewController *)self initWithContext:v8];

  return v9;
}

- (GKPlayerPickerViewController)initWithMatch:(id)a3 maxPlayers:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277D0C8A0]);
  [v7 setMaxPlayers:a4];
  [v7 setPickerOrigin:2];
  v8 = [v6 players];

  if (v8)
  {
    v9 = [v6 players];
    [v7 setExcludedPlayers:v9];
  }

  [v7 setMatch:v6];
  v10 = [(GKPlayerPickerViewController *)self initWithContext:v7];

  return v10;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = GKPlayerPickerViewController;
  [(GKPlayerPickerViewController *)&v14 viewDidLoad];
  v3 = [(GKPlayerPickerViewController *)self context];
  v4 = [v3 maxPlayers];

  if (v4 <= 0)
  {
    v11 = [(GKPlayerPickerViewController *)self view];
    v12 = [v11 layer];
    [v12 setOpacity:0.0];
  }

  else
  {
    v5 = [(GKPlayerPickerViewController *)self matchmakerVC];
    [(GKPlayerPickerViewController *)self addChildViewController:v5];

    v6 = [(GKPlayerPickerViewController *)self view];
    v7 = [(GKPlayerPickerViewController *)self matchmakerVC];
    v8 = [v7 view];
    [v6 addSubview:v8];

    v9 = [(GKPlayerPickerViewController *)self matchmakerVC];
    [v9 didMoveToParentViewController:self];

    v10 = MEMORY[0x277CCAAD0];
    v11 = [(GKPlayerPickerViewController *)self matchmakerVC];
    v12 = [v11 view];
    v13 = [(GKPlayerPickerViewController *)self view];
    [v10 _gkInstallEdgeConstraintsForView:v12 containedWithinParentView:v13];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GKPlayerPickerViewController;
  [(GKPlayerPickerViewController *)&v7 viewWillAppear:a3];
  v4 = [(GKPlayerPickerViewController *)self context];
  v5 = [v4 maxPlayers];

  if (v5 <= 0)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
    {
      [GKPlayerPickerViewController viewWillAppear:];
    }

    [(GKPlayerPickerViewController *)self internalPlayerPickerDidCancel];
  }
}

- (void)internalPlayerPickerDidPickPlayers:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKPlayerPickerViewController *)self context];
  v6 = [v5 match];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v4];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        v12 = 0;
        do
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v40 + 1) + 8 * v12);
          v14 = [(GKPlayerPickerViewController *)self matchmaker];
          [v14 cancelPendingInviteToPlayer:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v10);
    }

    v15 = objc_alloc_init(MEMORY[0x277D0C148]);
    [v15 setRecipients:v7];
    v35 = [(GKPlayerPickerViewController *)self context];
    v34 = [v35 match];
    [v34 players];
    v16 = v36 = v7;
    v17 = [v16 count];
    v18 = [(GKPlayerPickerViewController *)self context];
    v19 = [v18 match];
    v20 = [v19 expectedPlayerCount];
    v21 = [(GKPlayerPickerViewController *)self matchmaker];
    v22 = [v21 allInvitedInvitees];
    [v15 setMinPlayers:{v17 + v20 + objc_msgSend(v22, "count") + 1}];

    [v15 setMaxPlayers:{objc_msgSend(v8, "count") + objc_msgSend(v15, "minPlayers")}];
    v23 = [(GKPlayerPickerViewController *)self matchmaker];
    v24 = [(GKPlayerPickerViewController *)self context];
    v25 = [v24 match];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __67__GKPlayerPickerViewController_internalPlayerPickerDidPickPlayers___block_invoke;
    v38[3] = &unk_279669D38;
    v39 = v15;
    v26 = v15;
    [v23 addPlayersToMatch:v25 matchRequest:v26 completionHandler:v38];

    v4 = v37;
  }

  v27 = [(GKPlayerPickerViewController *)self delegate];

  if (v27)
  {
    v28 = [(GKPlayerPickerViewController *)self delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v30 = [(GKPlayerPickerViewController *)self delegate];
      [v30 playerPickerViewController:self didPickPlayers:v4];
    }

    else
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v32 = GKOSLoggers();
      }

      if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
      {
        [GKPlayerPickerViewController internalPlayerPickerDidPickPlayers:];
      }
    }
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v31 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
    {
      [GKPlayerPickerViewController internalPlayerPickerDidPickPlayers:];
    }
  }

  v33 = [(GKPlayerPickerViewController *)self matchmaker];
  [v33 stopBrowsingForNearbyPlayers];
}

void __67__GKPlayerPickerViewController_internalPlayerPickerDidPickPlayers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
  {
    __67__GKPlayerPickerViewController_internalPlayerPickerDidPickPlayers___block_invoke_cold_1(a1, v3, v5);
  }
}

- (void)internalPlayerPickerDidCancel
{
  v3 = [(GKPlayerPickerViewController *)self delegate];

  if (v3)
  {
    v4 = [(GKPlayerPickerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(GKPlayerPickerViewController *)self delegate];
      [v6 playerPickerViewControllerWasCancelled:self];
    }

    else
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v8 = GKOSLoggers();
      }

      if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
      {
        [GKPlayerPickerViewController internalPlayerPickerDidCancel];
      }
    }
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
    {
      [GKPlayerPickerViewController internalPlayerPickerDidPickPlayers:];
    }
  }

  v9 = [(GKPlayerPickerViewController *)self matchmaker];
  [v9 stopBrowsingForNearbyPlayers];
}

- (void)matchmakerViewController:(id)a3 didFailWithError:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [GKPlayerPickerViewController matchmakerViewController:didFailWithError:];
  }
}

- (GKPlayerPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __67__GKPlayerPickerViewController_internalPlayerPickerDidPickPlayers___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24DE53000, log, OS_LOG_TYPE_ERROR, "Failed to add players in the player picker. request: %@, error: %@", &v4, 0x16u);
}

@end