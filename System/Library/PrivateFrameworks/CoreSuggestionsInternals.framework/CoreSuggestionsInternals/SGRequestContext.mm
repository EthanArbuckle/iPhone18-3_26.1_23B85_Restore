@interface SGRequestContext
- (SGRequestContext)initWithServiceContext:(id)context concurrencyBehavior:(int)behavior backpressureHazard:(int)hazard extractionMode:(int)mode;
@end

@implementation SGRequestContext

- (SGRequestContext)initWithServiceContext:(id)context concurrencyBehavior:(int)behavior backpressureHazard:(int)hazard extractionMode:(int)mode
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SGRequestContext;
  v12 = [(SGRequestContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceContext, context);
    v13->_concurrencyBehavior = behavior;
    v13->_backpressureHazard = hazard;
    v13->_extractionMode = mode;
  }

  return v13;
}

@end