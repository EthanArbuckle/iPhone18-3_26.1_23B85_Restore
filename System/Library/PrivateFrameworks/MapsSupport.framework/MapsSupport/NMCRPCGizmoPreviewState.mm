@interface NMCRPCGizmoPreviewState
- (NMCRPCGizmoPreviewState)initWithMessage:(id)message;
@end

@implementation NMCRPCGizmoPreviewState

- (NMCRPCGizmoPreviewState)initWithMessage:(id)message
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = NMCRPCGizmoPreviewState;
  v6 = [(NMCRPCGizmoPreviewState *)&v11 init];
  if (v6)
  {
    v7 = +[MSPMapsPaths mapsApplicationContainerPaths];
    homeDirectory = [v7 homeDirectory];
    AppBooleanValueWithContainer = _CFPreferencesGetAppBooleanValueWithContainer();

    v6->_hasShownNavModeAdvisory = AppBooleanValueWithContainer != 0;
    objc_storeStrong(&v6->_message, message);
  }

  return v6;
}

@end