@interface MTPAFPlaylistItem
- (MTPAFPlaylistItem)initWithStart:(unint64_t)start end:(unint64_t)end metricsData:(id)data;
@end

@implementation MTPAFPlaylistItem

- (MTPAFPlaylistItem)initWithStart:(unint64_t)start end:(unint64_t)end metricsData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = MTPAFPlaylistItem;
  v9 = [(MTPAFPlaylistItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(MTPAFPlaylistItem *)v9 setStart:start];
    [(MTPAFPlaylistItem *)v10 setEnd:end];
    [(MTPAFPlaylistItem *)v10 setMetricsData:dataCopy];
  }

  return v10;
}

@end