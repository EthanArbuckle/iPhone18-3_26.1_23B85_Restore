@interface MTPAFItemActivity
- (void)populatePlaylistAndItemData:(id)a3;
- (void)startAtOverallPosition:(unint64_t)a3 triggerType:(id)a4 reason:(id)a5 eventData:(id)a6;
- (void)stopAtOverallPosition:(unint64_t)a3 triggerType:(id)a4 reason:(id)a5 eventData:(id)a6;
@end

@implementation MTPAFItemActivity

- (void)startAtOverallPosition:(unint64_t)a3 triggerType:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v21 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(MTPAFItemActivity *)self item];
  v13 = [v12 start];

  if (v13 > a3)
  {
    v14 = [(MTPAFItemActivity *)self item];
    a3 = [v14 start];
  }

  v15 = [(MTPAFItemActivity *)self item];
  v16 = [v15 start];

  v17 = [MEMORY[0x277CBEB18] array];
  [(MTPAFItemActivity *)self populatePlaylistAndItemData:v17];
  if (v21)
  {
    [v17 addObjectsFromArray:v21];
  }

  v18 = [(MTPAFItemActivity *)self startEventHandler];
  v19 = [v18 metricsDataForStartActionWithPosition:a3 - v16 overallPosition:a3 type:v11 reason:v10 eventData:v17];

  v20 = [v19 recordEvent];
  [(MTPAFItemActivity *)self setStartMetricsData:v19];
}

- (void)stopAtOverallPosition:(unint64_t)a3 triggerType:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v22 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(MTPAFItemActivity *)self item];
  v13 = [v12 end];

  if (v13 < a3)
  {
    v14 = [(MTPAFItemActivity *)self item];
    a3 = [v14 end];
  }

  v15 = [(MTPAFItemActivity *)self item];
  v16 = [v15 start];

  v17 = [MEMORY[0x277CBEB18] array];
  [(MTPAFItemActivity *)self populatePlaylistAndItemData:v17];
  if (v22)
  {
    [v17 addObjectsFromArray:v22];
  }

  v18 = [(MTPAFItemActivity *)self stopEventHandler];
  v19 = [(MTPAFItemActivity *)self startMetricsData];
  v20 = [v18 metricsDataForStopActionWithPosition:a3 - v16 overallPosition:a3 type:v11 reason:v10 startMetricsData:v19 eventData:v17];

  v21 = [v20 recordEvent];
  [(MTPAFItemActivity *)self setStopMetricsData:v20];
}

- (void)populatePlaylistAndItemData:(id)a3
{
  v8 = a3;
  v4 = [(MTPAFItemActivity *)self playlist];
  v5 = [v4 metricsData];

  if (v5)
  {
    [v8 addObjectsFromArray:v5];
  }

  v6 = [(MTPAFItemActivity *)self item];
  v7 = [v6 metricsData];

  if (v7)
  {
    [v8 addObjectsFromArray:v7];
  }
}

@end