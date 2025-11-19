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
- (void)reloadWithClearLocalCache:(BOOL)a3;
- (void)setGames:(id)a3;
- (void)setLoadingGames:(BOOL)a3;
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

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = [MEMORY[0x277D0BFD8] willEnterForeground];
    [v5 addObserver:v2 selector:sel_applicationWillEnterForeground_ name:v6 object:0];

    [(GKSettingsFriendListAccess *)v2 loadAllGames];
    v7 = v2;
  }

  return v2;
}

- (void)loadAllGames
{
  v3 = [(GKSettingsFriendListAccess *)self games];

  if (!v3 && ![(GKSettingsFriendListAccess *)self isFriendListSharingRestricted])
  {
    [(GKSettingsFriendListAccess *)self setLoadingGames:1];
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277D0C010];
    v5 = [(GKSettingsFriendListAccess *)self localPlayer];
    v6 = [v4 proxyForPlayer:v5];
    v7 = [v6 gameServicePrivate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__GKSettingsFriendListAccess_loadAllGames__block_invoke;
    v8[3] = &unk_279669FB8;
    objc_copyWeak(&v9, &location);
    [v7 getFriendListAccessForAllGames:v8];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKSettingsFriendListAccess;
  [(GKSettingsFriendListAccess *)&v4 dealloc];
}

- (GKLocalPlayer)localPlayer
{
  localPlayer = self->_localPlayer;
  if (localPlayer)
  {
    v3 = localPlayer;
  }

  else
  {
    v3 = [MEMORY[0x277D0C138] local];
  }

  return v3;
}

- (void)setGames:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC98];
  v5 = a3;
  v6 = [v4 sortDescriptorWithKey:@"name" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  games = self->_games;
  self->_games = v8;
}

- (id)loadFreshSpecifiers
{
  v3 = [(GKSettingsFriendListAccess *)self table];
  [v3 setTableHeaderView:0];

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(GKSettingsFriendListAccess *)self globalFriendListAccessSpecifier];
  [v4 addObjectsFromArray:v5];

  if ([(GKSettingsFriendListAccess *)self loadingGames])
  {
    v6 = [(GKSettingsFriendListAccess *)self loadingSpecifier];
    [v4 addObjectsFromArray:v6];
  }

  if (![(GKSettingsFriendListAccess *)self isFriendListSharingRestricted])
  {
    if ([(GKSettingsFriendListAccess *)self globalFriendListAccess])
    {
      v7 = [(GKSettingsFriendListAccess *)self games];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [(GKSettingsFriendListAccess *)self individualBundleIDFriendListAccessSpecifier];
        [v4 addObjectsFromArray:v9];
      }
    }
  }

  return v4;
}

- (void)setLoadingGames:(BOOL)a3
{
  if (a3)
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
  v3 = [(GKSettingsFriendListAccess *)self loadFreshSpecifiers];
  v4 = *MEMORY[0x277D3FC48];
  v5 = *(&self->super.super.super.super.super.isa + v4);
  *(&self->super.super.super.super.super.isa + v4) = v3;

  v6 = *(&self->super.super.super.super.super.isa + v4);

  return v6;
}

- (id)globalFriendListAccessSpecifier
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();

  v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v6 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];
  [v3 addObject:v6];
  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28612D290 target:self set:sel_setGlobalFriendListAccess_withSpecifier_ get:0 detail:0 cell:6 edit:0];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  if ([(GKSettingsFriendListAccess *)self isFriendListSharingRestricted])
  {
    [v7 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  [v3 addObject:v7];

  return v3;
}

- (BOOL)globalFriendListAccess
{
  if ([(GKSettingsFriendListAccess *)self isFriendListSharingRestricted])
  {
    return 0;
  }

  v4 = [(GKSettingsFriendListAccess *)self localPlayer];
  v5 = [v4 internal];
  v3 = [v5 globalFriendListAccess] == 0;

  return v3;
}

- (void)reloadWithClearLocalCache:(BOOL)a3
{
  if (a3)
  {
    [(GKSettingsFriendListAccess *)self setGames:0];
  }

  [(GKSettingsFriendListAccess *)self loadAllGames];
  v4 = [(GKSettingsFriendListAccess *)self loadFreshSpecifiers];

  [(GKSettingsFriendListAccess *)self reloadSpecifiers];
}

- (id)loadingSpecifier
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v2 addObject:v3];
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
  [v2 addObject:v4];

  return v2;
}

- (id)individualBundleIDFriendListAccessSpecifier
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  [v4 setProperty:v6 forKey:*MEMORY[0x277D3FF88]];
  [v3 addObject:v4];
  v7 = [(GKSettingsFriendListAccess *)self games];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__GKSettingsFriendListAccess_individualBundleIDFriendListAccessSpecifier__block_invoke;
  v12[3] = &unk_27966A008;
  v12[4] = self;
  v8 = v3;
  v13 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

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
  v2 = [MEMORY[0x277D0C1D8] shared];
  v3 = [v2 isFriendsSharingRestricted];

  return v3;
}

- (PSSpecifier)globalAccessSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_globalAccessSpecifier);

  return WeakRetained;
}

@end