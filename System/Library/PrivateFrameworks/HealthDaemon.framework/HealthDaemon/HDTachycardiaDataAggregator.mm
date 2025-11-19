@interface HDTachycardiaDataAggregator
- (BOOL)didPersistObjects:(id)a3 lastDatum:(id)a4 collector:(id)a5 error:(id *)a6;
@end

@implementation HDTachycardiaDataAggregator

- (BOOL)didPersistObjects:(id)a3 lastDatum:(id)a4 collector:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [(HDHeartEventDataAggregator *)self triggerImmediateCloudSyncWithReason:?];
  v14.receiver = self;
  v14.super_class = HDTachycardiaDataAggregator;
  LOBYTE(a6) = [(HDHeartEventDataAggregator *)&v14 didPersistObjects:v12 lastDatum:v11 collector:v10 error:a6];

  return a6;
}

@end