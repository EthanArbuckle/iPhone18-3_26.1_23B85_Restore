@interface PSDClientConnection
- (void)startSyncWithOptions:(id)options;
@end

@implementation PSDClientConnection

- (void)startSyncWithOptions:(id)options
{
  optionsCopy = options;
  v4 = +[PSDSyncInitiator sharedSyncInitiator];
  [v4 startExternalSyncWithOptions:optionsCopy];
}

@end