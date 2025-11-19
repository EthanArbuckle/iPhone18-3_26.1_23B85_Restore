@interface NTKCompanionBridgeService
- (void)start;
@end

@implementation NTKCompanionBridgeService

- (void)start
{
  v3 = objc_opt_new();
  widgetHostController = self->_widgetHostController;
  self->_widgetHostController = v3;
}

@end