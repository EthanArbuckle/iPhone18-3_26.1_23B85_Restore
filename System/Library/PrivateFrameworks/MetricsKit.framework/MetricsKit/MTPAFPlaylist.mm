@interface MTPAFPlaylist
- (MTPAFPlaylist)initWithSharedMetricsData:(id)a3;
- (id)currentItems;
- (void)addItemStartAtMilliseconds:(unint64_t)a3 endAtMilliseconds:(unint64_t)a4 metricsData:(id)a5;
- (void)updateEventData:(id)a3;
@end

@implementation MTPAFPlaylist

- (MTPAFPlaylist)initWithSharedMetricsData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTPAFPlaylist;
  v5 = [(MTPAFPlaylist *)&v9 init];
  if (v5)
  {
    v6 = [v4 mt_deepCopy];
    [(MTPAFPlaylist *)v5 setMetricsData:v6];

    v7 = [MEMORY[0x277CBEB18] array];
    [(MTPAFPlaylist *)v5 setItems:v7];
  }

  return v5;
}

- (id)currentItems
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTPAFPlaylist *)v2 items];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (void)addItemStartAtMilliseconds:(unint64_t)a3 endAtMilliseconds:(unint64_t)a4 metricsData:(id)a5
{
  v11 = a5;
  v8 = [[MTPAFPlaylistItem alloc] initWithStart:a3 end:a4 metricsData:v11];
  v9 = self;
  objc_sync_enter(v9);
  v10 = [(MTPAFPlaylist *)v9 items];
  [v10 addObject:v8];

  objc_sync_exit(v9);
}

- (void)updateEventData:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTPAFPlaylist *)v4 metricsData];

  if (v5)
  {
    v6 = [(MTPAFPlaylist *)v4 metricsData];
    v7 = [v6 arrayByAddingObjectsFromArray:v8];
    [(MTPAFPlaylist *)v4 setMetricsData:v7];
  }

  else
  {
    [(MTPAFPlaylist *)v4 setMetricsData:v8];
  }

  objc_sync_exit(v4);
}

@end