@interface GKSettingsFriendListAccess
- (BOOL)globalFriendListAccess;
- (BOOL)isFriendListSharingRestricted;
- (GKLocalPlayer)localPlayer;
- (GKSettingsFriendListAccess)init;
- (PSSpecifier)globalAccessSpecifier;
- (id)globalFriendListAccessSpecifier;
- (id)individualBundleIDFriendListAccessSpecifier;
- (id)loadFreshSpecifiers;
- (id)loadingSpecifier;
- (id)specifiers;
- (void)dealloc;
- (void)loadAllGames;
- (void)reloadWithClearLocalCache:(BOOL)cache;
- (void)setGames:(id)games;
- (void)setLoadingGames:(BOOL)games;
@end

@implementation GKSettingsFriendListAccess

- (GKSettingsFriendListAccess)init
{
  v9.receiver = self;
  v9.super_class = GKSettingsFriendListAccess;
  v2 = [(GKSettingsFriendListAccess *)&v9 init];
  if (v2)
  {
    v3 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();
    [(GKSettingsFriendListAccess *)v2 setTitle:v4];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    willEnterForeground = [MEMORY[0x277D0BFD8] willEnterForeground];
    [defaultCenter addObserver:v2 selector:sel_applicationWillEnterForeground_ name:willEnterForeground object:0];

    [(GKSettingsFriendListAccess *)v2 loadAllGames];
    v7 = v2;
  }

  return v2;
}

- (void)loadAllGames
{
  games = [(GKSettingsFriendListAccess *)self games];

  if (!games && ![(GKSettingsFriendListAccess *)self isFriendListSharingRestricted])
  {
    [(GKSettingsFriendListAccess *)self setLoadingGames:1];
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277D0C010];
    localPlayer = [(GKSettingsFriendListAccess *)self localPlayer];
    v6 = [v4 proxyForPlayer:localPlayer];
    gameServicePrivate = [v6 gameServicePrivate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__GKSettingsFriendListAccess_loadAllGames__block_invoke;
    v8[3] = &unk_279669FB8;
    objc_copyWeak(&v9, &location);
    [gameServicePrivate getFriendListAccessForAllGames:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __42__GKSettingsFriendListAccess_loadAllGames__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__GKSettingsFriendListAccess_loadAllGames__block_invoke_2;
  v14[3] = &unk_279669F90;
  v8 = v7;
  v15 = v8;
  [v5 enumerateObjectsUsingBlock:v14];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setGameSettings:v8];

  v10 = [v5 _gkValuesForKeyPath:@"bundleID"];
  v11 = MEMORY[0x277D0C048];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__GKSettingsFriendListAccess_loadAllGames__block_invoke_3;
  v12[3] = &unk_279669FB8;
  objc_copyWeak(&v13, (a1 + 32));
  [v11 loadGamesWithBundleIDs:v10 withCompletionHandler:v12];
  objc_destroyWeak(&v13);
}

void __42__GKSettingsFriendListAccess_loadAllGames__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 bundleID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __42__GKSettingsFriendListAccess_loadAllGames__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setLoadingGames:0];
    [v4 setGames:v5];
    [v4 reloadSpecifiers];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKSettingsFriendListAccess;
  [(GKSettingsFriendListAccess *)&v4 dealloc];
}

- (GKLocalPlayer)localPlayer
{
  localPlayer = self->_localPlayer;
  if (localPlayer)
  {
    local = localPlayer;
  }

  else
  {
    local = [MEMORY[0x277D0C138] local];
  }

  return local;
}

- (void)setGames:(id)games
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC98];
  gamesCopy = games;
  v6 = [v4 sortDescriptorWithKey:@"name" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [gamesCopy sortedArrayUsingDescriptors:v7];

  games = self->_games;
  self->_games = v8;
}

- (id)loadFreshSpecifiers
{
  table = [(GKSettingsFriendListAccess *)self table];
  [table setTableHeaderView:0];

  array = [MEMORY[0x277CBEB18] array];
  globalFriendListAccessSpecifier = [(GKSettingsFriendListAccess *)self globalFriendListAccessSpecifier];
  [array addObjectsFromArray:globalFriendListAccessSpecifier];

  if ([(GKSettingsFriendListAccess *)self loadingGames])
  {
    loadingSpecifier = [(GKSettingsFriendListAccess *)self loadingSpecifier];
    [array addObjectsFromArray:loadingSpecifier];
  }

  if (![(GKSettingsFriendListAccess *)self isFriendListSharingRestricted])
  {
    if ([(GKSettingsFriendListAccess *)self globalFriendListAccess])
    {
      games = [(GKSettingsFriendListAccess *)self games];
      v8 = [games count];

      if (v8)
      {
        individualBundleIDFriendListAccessSpecifier = [(GKSettingsFriendListAccess *)self individualBundleIDFriendListAccessSpecifier];
        [array addObjectsFromArray:individualBundleIDFriendListAccessSpecifier];
      }
    }
  }

  return array;
}

- (void)setLoadingGames:(BOOL)games
{
  if (games)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_time(0, 600000023);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __46__GKSettingsFriendListAccess_setLoadingGames___block_invoke;
    v4[3] = &unk_279669FE0;
    objc_copyWeak(&v5, &location);
    dispatch_after(v3, MEMORY[0x277D85CD0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_loadingGames = 0;
  }
}

void __46__GKSettingsFriendListAccess_setLoadingGames___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && !*(WeakRetained + 184))
  {
    WeakRetained[1456] = 1;
    v3 = WeakRetained;
    v2 = [WeakRetained loadFreshSpecifiers];
    [v3 reloadSpecifiers];
    WeakRetained = v3;
  }
}

- (id)specifiers
{
  loadFreshSpecifiers = [(GKSettingsFriendListAccess *)self loadFreshSpecifiers];
  v4 = *MEMORY[0x277D3FC48];
  v5 = *(&self->super.super.super.super.super.isa + v4);
  *(&self->super.super.super.super.super.isa + v4) = loadFreshSpecifiers;

  v6 = *(&self->super.super.super.super.super.isa + v4);

  return v6;
}

- (id)globalFriendListAccessSpecifier
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();

  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [emptyGroupSpecifier setProperty:v5 forKey:*MEMORY[0x277D3FF88]];
  [array addObject:emptyGroupSpecifier];
  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28612D290 target:self set:sel_setGlobalFriendListAccess_withSpecifier_ get:0 detail:0 cell:6 edit:0];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  if ([(GKSettingsFriendListAccess *)self isFriendListSharingRestricted])
  {
    [v7 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  [array addObject:v7];

  return array;
}

- (BOOL)globalFriendListAccess
{
  if ([(GKSettingsFriendListAccess *)self isFriendListSharingRestricted])
  {
    return 0;
  }

  localPlayer = [(GKSettingsFriendListAccess *)self localPlayer];
  internal = [localPlayer internal];
  v3 = [internal globalFriendListAccess] == 0;

  return v3;
}

- (void)reloadWithClearLocalCache:(BOOL)cache
{
  if (cache)
  {
    [(GKSettingsFriendListAccess *)self setGames:0];
  }

  [(GKSettingsFriendListAccess *)self loadAllGames];
  loadFreshSpecifiers = [(GKSettingsFriendListAccess *)self loadFreshSpecifiers];

  [(GKSettingsFriendListAccess *)self reloadSpecifiers];
}

- (id)loadingSpecifier
{
  array = [MEMORY[0x277CBEB18] array];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [array addObject:emptyGroupSpecifier];
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
  [array addObject:v4];

  return array;
}

- (id)individualBundleIDFriendListAccessSpecifier
{
  array = [MEMORY[0x277CBEB18] array];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  [emptyGroupSpecifier setProperty:v6 forKey:*MEMORY[0x277D3FF88]];
  [array addObject:emptyGroupSpecifier];
  games = [(GKSettingsFriendListAccess *)self games];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__GKSettingsFriendListAccess_individualBundleIDFriendListAccessSpecifier__block_invoke;
  v12[3] = &unk_27966A008;
  v12[4] = self;
  v8 = array;
  v13 = v8;
  [games enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __73__GKSettingsFriendListAccess_individualBundleIDFriendListAccessSpecifier__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = a2;
  v5 = [v4 name];
  v9 = [v3 preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:0 cell:6 edit:0];

  [v9 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v9 setProperty:v4 forKey:@"specifier.GKGame"];
  v6 = [*(a1 + 32) gameSettings];
  v7 = [v4 bundleIdentifier];

  v8 = [v6 objectForKeyedSubscript:v7];
  [v9 setProperty:v8 forKey:@"specifier.GKGameSettings"];

  [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  [*(a1 + 40) addObject:v9];
}

- (BOOL)isFriendListSharingRestricted
{
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  isFriendsSharingRestricted = [mEMORY[0x277D0C1D8] isFriendsSharingRestricted];

  return isFriendsSharingRestricted;
}

- (PSSpecifier)globalAccessSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_globalAccessSpecifier);

  return WeakRetained;
}

@end