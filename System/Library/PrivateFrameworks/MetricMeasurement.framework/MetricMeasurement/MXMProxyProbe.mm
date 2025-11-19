@interface MXMProxyProbe
- (MXMProxyProbe)initWithCoder:(id)a3;
- (MXMProxyProbe)initWithProxyMetric:(id)a3;
- (id)sampleWithTimeout:(double)a3 stopReason:(unint64_t *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateNowUntilStoppedWithUpdateHandler:(id)a3 stopHandler:(id)a4;
@end

@implementation MXMProxyProbe

- (MXMProxyProbe)initWithProxyMetric:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MXMProxyProbe;
  v6 = [(MXMProbe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyMetric, a3);
  }

  return v7;
}

- (MXMProxyProbe)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metric"];

  v6 = [(MXMProxyProbe *)self initWithProxyMetric:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MXMProxyProbe *)self proxyMetric];
  [v4 encodeObject:v5 forKey:@"metric"];
}

- (void)updateNowUntilStoppedWithUpdateHandler:(id)a3 stopHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:@"updateNowUntilStoppedWithUpdateHandler:stopHandler: is not implemented on MXMProxyProbe" reason:0 userInfo:0];
  objc_exception_throw(v7);
}

- (id)sampleWithTimeout:(double)a3 stopReason:(unint64_t *)a4
{
  v7 = +[MXMProxyServiceManager shared];
  v8 = [(MXMProxyProbe *)self proxyMetric];
  v9 = [v7 _sampleWithProxyMetric:v8 timeout:a4 stopReason:a3];

  return v9;
}

@end