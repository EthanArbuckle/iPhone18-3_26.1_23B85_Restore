@interface GKPlayerPickerViewController
- (GKPlayerPickerDelegate)delegate;
- (GKPlayerPickerViewController)initWithContext:(id)context;
- (GKPlayerPickerViewController)initWithMatch:(id)match maxPlayers:(int64_t)players;
- (id)_initWithMaxPlayers:(int64_t)players excludedPlayers:(id)excludedPlayers;
- (void)internalPlayerPickerDidCancel;
- (void)internalPlayerPickerDidPickPlayers:(id)players;
- (void)matchmakerViewController:(id)controller didFailWithError:(id)error;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GKPlayerPickerViewController

- (GKPlayerPickerViewController)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = GKPlayerPickerViewController;
  v6 = [(GKPlayerPickerViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = [[GKMatchmakerViewController alloc] initWithPlayerPickerDelegate:v7 andPlayerPickerContext:contextCopy];
    matchmakerVC = v7->_matchmakerVC;
    v7->_matchmakerVC = v8;

    [(GKMatchmakerViewController *)v7->_matchmakerVC setMatchmakerDelegate:v7];
  }

  return v7;
}

- (id)_initWithMaxPlayers:(int64_t)players excludedPlayers:(id)excludedPlayers
{
  v6 = MEMORY[0x277D0C8A0];
  excludedPlayersCopy = excludedPlayers;
  v8 = objc_alloc_init(v6);
  [v8 setMaxPlayers:players];
  [v8 setExcludedPlayers:excludedPlayersCopy];

  [v8 setPickerOrigin:0];
  v9 = [(GKPlayerPickerViewController *)self initWithContext:v8];

  return v9;
}

- (GKPlayerPickerViewController)initWithMatch:(id)match maxPlayers:(int64_t)players
{
  matchCopy = match;
  v7 = objc_alloc_init(MEMORY[0x277D0C8A0]);
  [v7 setMaxPlayers:players];
  [v7 setPickerOrigin:2];
  players = [matchCopy players];

  if (players)
  {
    players2 = [matchCopy players];
    [v7 setExcludedPlayers:players2];
  }

  [v7 setMatch:matchCopy];
  v10 = [(GKPlayerPickerViewController *)self initWithContext:v7];

  return v10;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = GKPlayerPickerViewController;
  [(GKPlayerPickerViewController *)&v14 viewDidLoad];
  context = [(GKPlayerPickerViewController *)self context];
  maxPlayers = [context maxPlayers];

  if (maxPlayers <= 0)
  {
    view = [(GKPlayerPickerViewController *)self view];
    layer = [view layer];
    [layer setOpacity:0.0];
  }

  else
  {
    matchmakerVC = [(GKPlayerPickerViewController *)self matchmakerVC];
    [(GKPlayerPickerViewController *)self addChildViewController:matchmakerVC];

    view2 = [(GKPlayerPickerViewController *)self view];
    matchmakerVC2 = [(GKPlayerPickerViewController *)self matchmakerVC];
    view3 = [matchmakerVC2 view];
    [view2 addSubview:view3];

    matchmakerVC3 = [(GKPlayerPickerViewController *)self matchmakerVC];
    [matchmakerVC3 didMoveToParentViewController:self];

    v10 = MEMORY[0x277CCAAD0];
    view = [(GKPlayerPickerViewController *)self matchmakerVC];
    layer = [view view];
    view4 = [(GKPlayerPickerViewController *)self view];
    [v10 _gkInstallEdgeConstraintsForView:layer containedWithinParentView:view4];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = GKPlayerPickerViewController;
  [(GKPlayerPickerViewController *)&v7 viewWillAppear:appear];
  context = [(GKPlayerPickerViewController *)self context];
  maxPlayers = [context maxPlayers];

  if (maxPlayers <= 0)
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

- (void)internalPlayerPickerDidPickPlayers:(id)players
{
  v45 = *MEMORY[0x277D85DE8];
  playersCopy = players;
  context = [(GKPlayerPickerViewController *)self context];
  match = [context match];

  if (match)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:playersCopy];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = playersCopy;
    v8 = playersCopy;
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
          matchmaker = [(GKPlayerPickerViewController *)self matchmaker];
          [matchmaker cancelPendingInviteToPlayer:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v10);
    }

    v15 = objc_alloc_init(MEMORY[0x277D0C148]);
    [v15 setRecipients:v7];
    context2 = [(GKPlayerPickerViewController *)self context];
    match2 = [context2 match];
    [match2 players];
    v16 = v36 = v7;
    v17 = [v16 count];
    context3 = [(GKPlayerPickerViewController *)self context];
    match3 = [context3 match];
    expectedPlayerCount = [match3 expectedPlayerCount];
    matchmaker2 = [(GKPlayerPickerViewController *)self matchmaker];
    allInvitedInvitees = [matchmaker2 allInvitedInvitees];
    [v15 setMinPlayers:{v17 + expectedPlayerCount + objc_msgSend(allInvitedInvitees, "count") + 1}];

    [v15 setMaxPlayers:{objc_msgSend(v8, "count") + objc_msgSend(v15, "minPlayers")}];
    matchmaker3 = [(GKPlayerPickerViewController *)self matchmaker];
    context4 = [(GKPlayerPickerViewController *)self context];
    match4 = [context4 match];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __67__GKPlayerPickerViewController_internalPlayerPickerDidPickPlayers___block_invoke;
    v38[3] = &unk_279669D38;
    v39 = v15;
    v26 = v15;
    [matchmaker3 addPlayersToMatch:match4 matchRequest:v26 completionHandler:v38];

    playersCopy = v37;
  }

  delegate = [(GKPlayerPickerViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(GKPlayerPickerViewController *)self delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      delegate3 = [(GKPlayerPickerViewController *)self delegate];
      [delegate3 playerPickerViewController:self didPickPlayers:playersCopy];
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

  matchmaker4 = [(GKPlayerPickerViewController *)self matchmaker];
  [matchmaker4 stopBrowsingForNearbyPlayers];
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
  delegate = [(GKPlayerPickerViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(GKPlayerPickerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate3 = [(GKPlayerPickerViewController *)self delegate];
      [delegate3 playerPickerViewControllerWasCancelled:self];
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

  matchmaker = [(GKPlayerPickerViewController *)self matchmaker];
  [matchmaker stopBrowsingForNearbyPlayers];
}

- (void)matchmakerViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
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