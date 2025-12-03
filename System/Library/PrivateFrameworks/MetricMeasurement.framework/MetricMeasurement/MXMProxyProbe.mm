@interface MXMProxyProbe
- (MXMProxyProbe)initWithCoder:(id)coder;
- (MXMProxyProbe)initWithProxyMetric:(id)metric;
- (id)sampleWithTimeout:(double)timeout stopReason:(unint64_t *)reason;
- (void)encodeWithCoder:(id)coder;
- (void)updateNowUntilStoppedWithUpdateHandler:(id)handler stopHandler:(id)stopHandler;
@end

@implementation MXMProxyProbe

- (MXMProxyProbe)initWithProxyMetric:(id)metric
{
  metricCopy = metric;
  v9.receiver = self;
  v9.super_class = MXMProxyProbe;
  v6 = [(MXMProbe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyMetric, metric);
  }

  return v7;
}

- (MXMProxyProbe)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metric"];

  v6 = [(MXMProxyProbe *)self initWithProxyMetric:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  proxyMetric = [(MXMProxyProbe *)self proxyMetric];
  [coderCopy encodeObject:proxyMetric forKey:@"metric"];
}

- (void)updateNowUntilStoppedWithUpdateHandler:(id)handler stopHandler:(id)stopHandler
{
  handlerCopy = handler;
  stopHandlerCopy = stopHandler;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:@"updateNowUntilStoppedWithUpdateHandler:stopHandler: is not implemented on MXMProxyProbe" reason:0 userInfo:0];
  objc_exception_throw(v7);
}

- (id)sampleWithTimeout:(double)timeout stopReason:(unint64_t *)reason
{
  v7 = +[MXMProxyServiceManager shared];
  proxyMetric = [(MXMProxyProbe *)self proxyMetric];
  v9 = [v7 _sampleWithProxyMetric:proxyMetric timeout:reason stopReason:timeout];

  return v9;
}

@end