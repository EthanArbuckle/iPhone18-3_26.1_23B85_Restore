@interface MTMetricsEventHandlers
- (MTFlexibleEventHandler)flexible;
- (void)registerDefaultEventHandlers;
@end

@implementation MTMetricsEventHandlers

- (void)registerDefaultEventHandlers
{
  [(MTEventHandlers *)self registerEventHandlerName:@"account" eventHandlerClass:objc_opt_class()];
  [(MTEventHandlers *)self registerEventHandlerName:@"click" eventHandlerClass:objc_opt_class()];
  [(MTEventHandlers *)self registerEventHandlerName:@"dialog" eventHandlerClass:objc_opt_class()];
  [(MTEventHandlers *)self registerEventHandlerName:@"enter" eventHandlerClass:objc_opt_class()];
  [(MTEventHandlers *)self registerEventHandlerName:@"exit" eventHandlerClass:objc_opt_class()];
  [(MTEventHandlers *)self registerEventHandlerName:@"impressions" eventHandlerClass:objc_opt_class()];
  [(MTEventHandlers *)self registerEventHandlerName:@"media" eventHandlerClass:objc_opt_class()];
  [(MTEventHandlers *)self registerEventHandlerName:@"page" eventHandlerClass:objc_opt_class()];
  [(MTEventHandlers *)self registerEventHandlerName:@"search" eventHandlerClass:objc_opt_class()];
  v3 = objc_opt_class();

  [(MTEventHandlers *)self registerEventHandlerName:@"demographic" eventHandlerClass:v3];
}

- (MTFlexibleEventHandler)flexible
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_flexible)
  {
    v3 = [MTFlexibleEventHandler alloc];
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