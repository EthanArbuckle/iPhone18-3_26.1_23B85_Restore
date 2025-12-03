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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_flexible)
  {
    v3 = [MTFlexibleEventHandler alloc];
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