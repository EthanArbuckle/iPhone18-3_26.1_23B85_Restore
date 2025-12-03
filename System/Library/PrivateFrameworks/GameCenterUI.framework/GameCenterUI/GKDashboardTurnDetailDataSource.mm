@interface GKDashboardTurnDetailDataSource
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (GKDashboardTurnDetailDataSource)initWithMatch:(id)match;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)itemForIndexPath:(id)path;
- (id)sectionHeaderText;
- (int64_t)itemCount;
- (void)loadDataWithCompletionHandler:(id)handler;
- (void)setupCollectionView:(id)view;
@end

@implementation GKDashboardTurnDetailDataSource

- (GKDashboardTurnDetailDataSource)initWithMatch:(id)match
{
  matchCopy = match;
  v8.receiver = self;
  v8.super_class = GKDashboardTurnDetailDataSource;
  v5 = [(GKCollectionDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKDashboardTurnDetailDataSource *)v5 setMatch:matchCopy];
    [(GKCollectionDataSource *)v6 setUseStandardHeaders:1];
  }

  return v6;
}

- (void)setupCollectionView:(id)view
{
  viewCopy = view;
  v5 = +[GKDashboardTurnCell];
  [viewCopy registerNib:v5 forCellWithReuseIdentifier:@"turnCell"];
  v6.receiver = self;
  v6.super_class = GKDashboardTurnDetailDataSource;
  [(GKCollectionDataSource *)&v6 setupCollectionView:viewCopy];
}

- (void)loadDataWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 1, 0);
  }
}

- (int64_t)itemCount
{
  participants = [(GKTurnBasedMatch *)self->_match participants];
  v3 = [participants count];

  return v3;
}

- (id)itemForIndexPath:(id)path
{
  pathCopy = path;
  participants = [(GKTurnBasedMatch *)self->_match participants];
  v6 = [participants count];
  if (v6 <= [pathCopy item])
  {
    v8 = 0;
  }

  else
  {
    participants2 = [(GKTurnBasedMatch *)self->_match participants];
    v8 = [participants2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"turnCell" forIndexPath:pathCopy];
  item = [pathCopy item];

  participants = [(GKTurnBasedMatch *)self->_match participants];
  v10 = [participants count];

  if (v10 <= item)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardTurnDetailDataSource.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = [v11 stringWithFormat:@"%@ (_match.participants.count > index)\n[%s (%s:%d)]", v12, "-[GKDashboardTurnDetailDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 91];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
  }

  participants2 = [(GKTurnBasedMatch *)self->_match participants];
  v17 = [participants2 objectAtIndexedSubscript:item];

  [v7 setDisplayIndex:item + 1];
  [v7 configureForParticipant:v17 inMatch:self->_match];
  [v7 setOnDarkBackground:{-[GKCollectionDataSource onDarkBackground](self, "onDarkBackground")}];

  return v7;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [GKDashboardTurnCell defaultSize:view];
  v6 = 0.0;
  result.height = v5;
  result.width = v6;
  return result;
}

@end