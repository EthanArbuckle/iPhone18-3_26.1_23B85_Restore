@interface MTPAFPlaylistItem
- (MTPAFPlaylistItem)initWithStart:(unint64_t)a3 end:(unint64_t)a4 metricsData:(id)a5;
@end

@implementation MTPAFPlaylistItem

- (MTPAFPlaylistItem)initWithStart:(unint64_t)a3 end:(unint64_t)a4 metricsData:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = MTPAFPlaylistItem;
  v9 = [(MTPAFPlaylistItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(MTPAFPlaylistItem *)v9 setStart:a3];
    [(MTPAFPlaylistItem *)v10 setEnd:a4];
    [(MTPAFPlaylistItem *)v10 setMetricsData:v8];
  }

  return v10;
}

@end