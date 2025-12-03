@interface HDTachycardiaDataAggregator
- (BOOL)didPersistObjects:(id)objects lastDatum:(id)datum collector:(id)collector error:(id *)error;
@end

@implementation HDTachycardiaDataAggregator

- (BOOL)didPersistObjects:(id)objects lastDatum:(id)datum collector:(id)collector error:(id *)error
{
  collectorCopy = collector;
  datumCopy = datum;
  objectsCopy = objects;
  [(HDHeartEventDataAggregator *)self triggerImmediateCloudSyncWithReason:?];
  v14.receiver = self;
  v14.super_class = HDTachycardiaDataAggregator;
  LOBYTE(error) = [(HDHeartEventDataAggregator *)&v14 didPersistObjects:objectsCopy lastDatum:datumCopy collector:collectorCopy error:error];

  return error;
}

@end