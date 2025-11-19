@interface GEOOfflineServiceServer
- (GEOOfflineServiceServer)initWithDaemon:(id)a3;
@end

@implementation GEOOfflineServiceServer

- (GEOOfflineServiceServer)initWithDaemon:(id)a3
{
  v8.receiver = self;
  v8.super_class = GEOOfflineServiceServer;
  v3 = [(GEOOfflineServiceServer *)&v8 initWithDaemon:a3];
  if (v3)
  {
    v4 = geo_dispatch_queue_create();
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = v3;
  }

  return v3;
}

@end