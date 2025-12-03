@interface HDHeartbeatSeriesQueryServer
- (void)_queue_start;
@end

@implementation HDHeartbeatSeriesQueryServer

- (void)_queue_start
{
  v9.receiver = self;
  v9.super_class = HDHeartbeatSeriesQueryServer;
  [(HDQueryServer *)&v9 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  objectType = [(HDQueryServer *)self objectType];
  v8 = 0;
  v5 = [(HDQueryServer *)self authorizationStatusRecordForType:objectType error:&v8];
  v6 = v8;

  if (v5)
  {
    [clientProxy client_deliverHeartbeats];
  }

  else
  {
    queryUUID = [(HDQueryServer *)self queryUUID];
    [clientProxy client_deliverError:v6 forQuery:queryUUID];
  }
}

@end