@interface SGRequestContext
- (SGRequestContext)initWithServiceContext:(id)a3 concurrencyBehavior:(int)a4 backpressureHazard:(int)a5 extractionMode:(int)a6;
@end

@implementation SGRequestContext

- (SGRequestContext)initWithServiceContext:(id)a3 concurrencyBehavior:(int)a4 backpressureHazard:(int)a5 extractionMode:(int)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SGRequestContext;
  v12 = [(SGRequestContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceContext, a3);
    v13->_concurrencyBehavior = a4;
    v13->_backpressureHazard = a5;
    v13->_extractionMode = a6;
  }

  return v13;
}

@end