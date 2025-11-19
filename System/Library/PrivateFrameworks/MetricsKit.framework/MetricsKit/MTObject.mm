@interface MTObject
- (MTMetricsKitTemplate)metricsKit;
- (MTObject)initWithMetricsKit:(id)a3;
@end

@implementation MTObject

- (MTObject)initWithMetricsKit:(id)a3
{
  v4 = a3;
  v5 = [(MTObject *)self init];
  v6 = v5;
  if (v5)
  {
    [(MTObject *)v5 setMetricsKit:v4];
  }

  return v6;
}

- (MTMetricsKitTemplate)metricsKit
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsKit);

  return WeakRetained;
}

@end