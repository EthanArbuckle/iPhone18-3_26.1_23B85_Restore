@interface MTObject
- (MTMetricsKitTemplate)metricsKit;
- (MTObject)initWithMetricsKit:(id)kit;
@end

@implementation MTObject

- (MTObject)initWithMetricsKit:(id)kit
{
  kitCopy = kit;
  v5 = [(MTObject *)self init];
  v6 = v5;
  if (v5)
  {
    [(MTObject *)v5 setMetricsKit:kitCopy];
  }

  return v6;
}

- (MTMetricsKitTemplate)metricsKit
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsKit);

  return WeakRetained;
}

@end