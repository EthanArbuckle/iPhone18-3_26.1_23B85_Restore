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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_flexible)
  {
    v3 = [MTFlexiblePerfEventHandler alloc];
    metricsKit = [(MTObject *)selfCopy metricsKit];
    v5 = [(MTObject *)v3 initWithMetricsKit:metricsKit];
    flexible = selfCopy->_flexible;
    selfCopy->_flexible = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_flexible;

  return v7;
}

@end