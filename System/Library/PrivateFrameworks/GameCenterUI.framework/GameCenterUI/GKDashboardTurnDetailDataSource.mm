@interface GKDashboardTurnDetailDataSource
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKDashboardTurnDetailDataSource)initWithMatch:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)itemForIndexPath:(id)a3;
- (id)sectionHeaderText;
- (int64_t)itemCount;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)setupCollectionView:(id)a3;
@end

@implementation GKDashboardTurnDetailDataSource

- (GKDashboardTurnDetailDataSource)initWithMatch:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKDashboardTurnDetailDataSource;
  v5 = [(GKCollectionDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKDashboardTurnDetailDataSource *)v5 setMatch:v4];
    [(GKCollectionDataSource *)v6 setUseStandardHeaders:1];
  }

  return v6;
}

- (void)setupCollectionView:(id)a3
{
  v4 = a3;
  v5 = +[GKDashboardTurnCell];
  [v4 registerNib:v5 forCellWithReuseIdentifier:@"turnCell"];
  v6.receiver = self;
  v6.super_class = GKDashboardTurnDetailDataSource;
  [(GKCollectionDataSource *)&v6 setupCollectionView:v4];
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1, 0);
  }
}

- (int64_t)itemCount
{
  v2 = [(GKTurnBasedMatch *)self->_match participants];
  v3 = [v2 count];

  return v3;
}

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(GKTurnBasedMatch *)self->_match participants];
  v6 = [v5 count];
  if (v6 <= [v4 item])
  {
    v8 = 0;
  }

  else
  {
    v7 = [(GKTurnBasedMatch *)self->_match participants];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  return v8;
}

- (id)sectionHeaderText
{
  v3 = MEMORY[0x277CCACA8];
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  v6 = [v3 stringWithFormat:v5, -[GKDashboardTurnDetailDataSource itemCount](self, "itemCount")];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"turnCell" forIndexPath:v6];
  v8 = [v6 item];

  v9 = [(GKTurnBasedMatch *)self->_match participants];
  v10 = [v9 count];

  if (v10 <= v8)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardTurnDetailDataSource.m"];
    v14 = [v13 lastPathComponent];
    v15 = [v11 stringWithFormat:@"%@ (_match.participants.count > index)\n[%s (%s:%d)]", v12, "-[GKDashboardTurnDetailDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(v14, "UTF8String"), 91];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
  }

  v16 = [(GKTurnBasedMatch *)self->_match participants];
  v17 = [v16 objectAtIndexedSubscript:v8];

  [v7 setDisplayIndex:v8 + 1];
  [v7 configureForParticipant:v17 inMatch:self->_match];
  [v7 setOnDarkBackground:{-[GKCollectionDataSource onDarkBackground](self, "onDarkBackground")}];

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [GKDashboardTurnCell defaultSize:a3];
  v6 = 0.0;
  result.height = v5;
  result.width = v6;
  return result;
}

@end