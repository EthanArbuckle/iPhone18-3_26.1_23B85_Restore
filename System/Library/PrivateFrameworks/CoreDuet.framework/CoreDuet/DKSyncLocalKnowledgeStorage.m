@interface DKSyncLocalKnowledgeStorage
@end

@implementation DKSyncLocalKnowledgeStorage

uint64_t __87___DKSyncLocalKnowledgeStorage__updateEventStatsWithFetchEventsTotal_streamNameCounts___block_invoke()
{
  v0 = [_DKEventStatsCounter counterInCollection:@"sync_fetch_local_events_total" withEventName:?];
  v1 = _updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsTotalCounter;
  _updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsTotalCounter = v0;

  v2 = objc_opt_new();
  v3 = _updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsCountersByStreamName;
  _updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsCountersByStreamName = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __91___DKSyncLocalKnowledgeStorage__updateEventStatsWithFetchTombstonesTotal_streamNameCounts___block_invoke()
{
  v0 = [_DKEventStatsCounter counterInCollection:@"sync_fetch_local_tombstones_total" withEventName:?];
  v1 = _updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesTotalCounter;
  _updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesTotalCounter = v0;

  v2 = objc_opt_new();
  v3 = _updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesCountersByStreamName;
  _updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesCountersByStreamName = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end