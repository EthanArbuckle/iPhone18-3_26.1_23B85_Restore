@interface PSDClientConnection
- (void)startSyncWithOptions:(id)a3;
@end

@implementation PSDClientConnection

- (void)startSyncWithOptions:(id)a3
{
  v3 = a3;
  v4 = +[PSDSyncInitiator sharedSyncInitiator];
  [v4 startExternalSyncWithOptions:v3];
}

@end