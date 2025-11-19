@interface MTPerfEventHandlers
- (MTFlexiblePerfEventHandler)flexible;
- (void)registerDefaultEventHandlers;
@end

@implementation MTPerfEventHandlers

- (void)registerDefaultEventHandlers
{
  [(MTEventHandlers *)self registerEventHandlerName:@"pageRender" eventHandlerClass:objc_opt_class()];
  v3 = objc_opt_class();

  [(MTEventHandlers *)self registerEventHandlerName:@"loadUrl" eventHandlerClass:v3];
}

- (MTFlexiblePerfEventHandler)flexible
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_flexible)
  {
    v3 = [MTFlexiblePerfEventHandler alloc];
    v4 = [(MTObject *)v2 metricsKit];
    v5 = [(MTObject *)v3 initWithMetricsKit:v4];
    flexible = v2->_flexible;
    v2->_flexible = v5;
  }

  objc_sync_exit(v2);

  v7 = v2->_flexible;

  return v7;
}

@end