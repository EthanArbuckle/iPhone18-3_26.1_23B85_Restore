@interface DRDragMonitorConnectionProvider
+ (id)ensembleConnectionWithQueue:(id)queue;
+ (id)onenessConnectionWithQueue:(id)queue;
@end

@implementation DRDragMonitorConnectionProvider

+ (id)ensembleConnectionWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[DRDragMonitorConnection alloc] initWithQueue:queueCopy machServiceName:@"com.apple.ensemble.dragserver" serviceDisplayName:@"Ensemble" options:1];

  return v4;
}

+ (id)onenessConnectionWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [(DRDragMonitorConnection *)[DROnenessDragMonitorConnection alloc] initWithQueue:queueCopy machServiceName:@"com.apple.screencontinuity.dragserver" serviceDisplayName:@"Oneness" options:0];

  return v4;
}

@end