@interface NMCRPCGizmoPreviewState
- (NMCRPCGizmoPreviewState)initWithMessage:(id)a3;
@end

@implementation NMCRPCGizmoPreviewState

- (NMCRPCGizmoPreviewState)initWithMessage:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NMCRPCGizmoPreviewState;
  v6 = [(NMCRPCGizmoPreviewState *)&v11 init];
  if (v6)
  {
    v7 = +[MSPMapsPaths mapsApplicationContainerPaths];
    v8 = [v7 homeDirectory];
    AppBooleanValueWithContainer = _CFPreferencesGetAppBooleanValueWithContainer();

    v6->_hasShownNavModeAdvisory = AppBooleanValueWithContainer != 0;
    objc_storeStrong(&v6->_message, a3);
  }

  return v6;
}

@end