@interface HDElectrocardiogramQueryServer
- (void)_queue_start;
@end

@implementation HDElectrocardiogramQueryServer

- (void)_queue_start
{
  v9.receiver = self;
  v9.super_class = HDElectrocardiogramQueryServer;
  [(HDQueryServer *)&v9 _queue_start];
  v3 = [(HDQueryServer *)self clientProxy];
  v4 = [(HDQueryServer *)self objectType];
  v8 = 0;
  v5 = [(HDQueryServer *)self authorizationStatusRecordForType:v4 error:&v8];
  v6 = v8;

  if (v5)
  {
    [v3 client_deliverData];
  }

  else
  {
    v7 = [(HDQueryServer *)self queryUUID];
    [v3 client_deliverError:v6 forQuery:v7];
  }
}

@end