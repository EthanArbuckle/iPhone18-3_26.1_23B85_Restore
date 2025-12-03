@interface MTPAFPlaylist
- (MTPAFPlaylist)initWithSharedMetricsData:(id)data;
- (id)currentItems;
- (void)addItemStartAtMilliseconds:(unint64_t)milliseconds endAtMilliseconds:(unint64_t)atMilliseconds metricsData:(id)data;
- (void)updateEventData:(id)data;
@end

@implementation MTPAFPlaylist

- (MTPAFPlaylist)initWithSharedMetricsData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = MTPAFPlaylist;
  v5 = [(MTPAFPlaylist *)&v9 init];
  if (v5)
  {
    mt_deepCopy = [dataCopy mt_deepCopy];
    [(MTPAFPlaylist *)v5 setMetricsData:mt_deepCopy];

    array = [MEMORY[0x277CBEB18] array];
    [(MTPAFPlaylist *)v5 setItems:array];
  }

  return v5;
}

- (id)currentItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  items = [(MTPAFPlaylist *)selfCopy items];
  v4 = [items copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)addItemStartAtMilliseconds:(unint64_t)milliseconds endAtMilliseconds:(unint64_t)atMilliseconds metricsData:(id)data
{
  dataCopy = data;
  v8 = [[MTPAFPlaylistItem alloc] initWithStart:milliseconds end:atMilliseconds metricsData:dataCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  items = [(MTPAFPlaylist *)selfCopy items];
  [items addObject:v8];

  objc_sync_exit(selfCopy);
}

- (void)updateEventData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metricsData = [(MTPAFPlaylist *)selfCopy metricsData];

  if (metricsData)
  {
    metricsData2 = [(MTPAFPlaylist *)selfCopy metricsData];
    v7 = [metricsData2 arrayByAddingObjectsFromArray:dataCopy];
    [(MTPAFPlaylist *)selfCopy setMetricsData:v7];
  }

  else
  {
    [(MTPAFPlaylist *)selfCopy setMetricsData:dataCopy];
  }

  objc_sync_exit(selfCopy);
}

@end