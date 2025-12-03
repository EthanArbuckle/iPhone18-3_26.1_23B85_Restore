@interface MTPAFItemActivity
- (void)populatePlaylistAndItemData:(id)data;
- (void)startAtOverallPosition:(unint64_t)position triggerType:(id)type reason:(id)reason eventData:(id)data;
- (void)stopAtOverallPosition:(unint64_t)position triggerType:(id)type reason:(id)reason eventData:(id)data;
@end

@implementation MTPAFItemActivity

- (void)startAtOverallPosition:(unint64_t)position triggerType:(id)type reason:(id)reason eventData:(id)data
{
  dataCopy = data;
  reasonCopy = reason;
  typeCopy = type;
  item = [(MTPAFItemActivity *)self item];
  start = [item start];

  if (start > position)
  {
    item2 = [(MTPAFItemActivity *)self item];
    position = [item2 start];
  }

  item3 = [(MTPAFItemActivity *)self item];
  start2 = [item3 start];

  array = [MEMORY[0x277CBEB18] array];
  [(MTPAFItemActivity *)self populatePlaylistAndItemData:array];
  if (dataCopy)
  {
    [array addObjectsFromArray:dataCopy];
  }

  startEventHandler = [(MTPAFItemActivity *)self startEventHandler];
  v19 = [startEventHandler metricsDataForStartActionWithPosition:position - start2 overallPosition:position type:typeCopy reason:reasonCopy eventData:array];

  recordEvent = [v19 recordEvent];
  [(MTPAFItemActivity *)self setStartMetricsData:v19];
}

- (void)stopAtOverallPosition:(unint64_t)position triggerType:(id)type reason:(id)reason eventData:(id)data
{
  dataCopy = data;
  reasonCopy = reason;
  typeCopy = type;
  item = [(MTPAFItemActivity *)self item];
  v13 = [item end];

  if (v13 < position)
  {
    item2 = [(MTPAFItemActivity *)self item];
    position = [item2 end];
  }

  item3 = [(MTPAFItemActivity *)self item];
  start = [item3 start];

  array = [MEMORY[0x277CBEB18] array];
  [(MTPAFItemActivity *)self populatePlaylistAndItemData:array];
  if (dataCopy)
  {
    [array addObjectsFromArray:dataCopy];
  }

  stopEventHandler = [(MTPAFItemActivity *)self stopEventHandler];
  startMetricsData = [(MTPAFItemActivity *)self startMetricsData];
  v20 = [stopEventHandler metricsDataForStopActionWithPosition:position - start overallPosition:position type:typeCopy reason:reasonCopy startMetricsData:startMetricsData eventData:array];

  recordEvent = [v20 recordEvent];
  [(MTPAFItemActivity *)self setStopMetricsData:v20];
}

- (void)populatePlaylistAndItemData:(id)data
{
  dataCopy = data;
  playlist = [(MTPAFItemActivity *)self playlist];
  metricsData = [playlist metricsData];

  if (metricsData)
  {
    [dataCopy addObjectsFromArray:metricsData];
  }

  item = [(MTPAFItemActivity *)self item];
  metricsData2 = [item metricsData];

  if (metricsData2)
  {
    [dataCopy addObjectsFromArray:metricsData2];
  }
}

@end