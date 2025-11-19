@interface GKRawTurnsDataSource
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5;
- (void)setItems:(id)a3;
@end

@implementation GKRawTurnsDataSource

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5
{
  v6 = a5;
  v7 = MEMORY[0x277D0C238];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__GKRawTurnsDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke;
  v9[3] = &unk_27966A8B8;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 loadTurnBasedMatchSummariesIncludingCompatibleBundleID:1 withCompletionHandler:v9];
}

void __75__GKRawTurnsDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__GKRawTurnsDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_2;
  v8[3] = &unk_279669E48;
  v6 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v9 = v5;
  v7 = v5;
  [v6 addUpdate:v8 error:a3];
}

- (void)setItems:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setState:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = GKRawTurnsDataSource;
  [(GKBasicCollectionViewDataSource *)&v9 setItems:v4];
}

@end