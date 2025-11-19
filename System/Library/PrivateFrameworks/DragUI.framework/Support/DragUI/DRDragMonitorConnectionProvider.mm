@interface DRDragMonitorConnectionProvider
+ (id)ensembleConnectionWithQueue:(id)a3;
+ (id)onenessConnectionWithQueue:(id)a3;
@end

@implementation DRDragMonitorConnectionProvider

+ (id)ensembleConnectionWithQueue:(id)a3
{
  v3 = a3;
  v4 = [[DRDragMonitorConnection alloc] initWithQueue:v3 machServiceName:@"com.apple.ensemble.dragserver" serviceDisplayName:@"Ensemble" options:1];

  return v4;
}

+ (id)onenessConnectionWithQueue:(id)a3
{
  v3 = a3;
  v4 = [(DRDragMonitorConnection *)[DROnenessDragMonitorConnection alloc] initWithQueue:v3 machServiceName:@"com.apple.screencontinuity.dragserver" serviceDisplayName:@"Oneness" options:0];

  return v4;
}

@end