@interface MXMProxyMetric
- (BOOL)prepareWithOptions:(id)a3 error:(id *)a4;
- (MXMMetric)metric;
- (MXMProbe)_remoteProbe;
- (MXMProxyMetric)initWithCoder:(id)a3;
- (MXMProxyMetric)initWithMetric:(id)a3;
- (id)_constructProbe;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)_sampleMode;
- (void)_sampleMode;
- (void)didStartAtContinuousTime:(unint64_t)a3 absoluteTime:(unint64_t)a4 startDate:(id)a5;
- (void)didStartAtTime:(unint64_t)a3 startDate:(id)a4;
- (void)didStopAtContinuousTime:(unint64_t)a3 absoluteTime:(unint64_t)a4 stopDate:(id)a5;
- (void)didStopAtTime:(unint64_t)a3 stopDate:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)willStartAtEstimatedTime:(unint64_t)a3;
- (void)willStop;
@end

@implementation MXMProxyMetric

- (MXMProxyMetric)initWithMetric:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MXMProxyMetric;
  v5 = [(MXMMetric *)&v9 initWithIdentifier:@"proxy metric" filter:0];
  if (v5)
  {
    v6 = [v4 copy];
    underlyingMetric = v5->__underlyingMetric;
    v5->__underlyingMetric = v6;
  }

  return v5;
}

- (MXMMetric)metric
{
  v2 = [(MXMProxyMetric *)self _underlyingMetric];
  v3 = [v2 copy];

  return v3;
}

- (MXMProbe)_remoteProbe
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(MXMProxyMetric *)self _underlyingMetric];
  v4 = [v3 _constructProbe];

  v5 = [(MXMProxyMetric *)self _underlyingMetric];
  v6 = [v5 filter];
  [v4 setFilter:v6];

  v7 = _MXMGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(MXMProxyMetric *)self _underlyingMetric];
    v9 = [v8 filter];
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_258DAA000, v7, OS_LOG_TYPE_INFO, "Created probe %@ for remote use using filter %@.", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (MXMProxyMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MXMProxyMetric;
  v5 = [(MXMMetric *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"underlyingMetric"];
    underlyingMetric = v5->__underlyingMetric;
    v5->__underlyingMetric = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MXMProxyMetric;
  v4 = a3;
  [(MXMMetric *)&v6 encodeWithCoder:v4];
  v5 = [(MXMProxyMetric *)self _underlyingMetric:v6.receiver];
  [v4 encodeObject:v5 forKey:@"underlyingMetric"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(MXMProxyMetric *)self _underlyingMetric];
  v7 = [v6 copyWithZone:a3];
  v8 = [v5 initWithMetric:v7];

  return v8;
}

- (unint64_t)_sampleMode
{
  v4 = [(MXMProxyMetric *)self _underlyingMetric];
  v5 = [v4 _sampleMode];

  if ((v5 & 4) != 0)
  {
    [(MXMProxyMetric *)a2 _sampleMode];
  }

  v6 = [(MXMProxyMetric *)self _underlyingMetric];
  v7 = [v6 _sampleMode];

  return v7;
}

- (id)_constructProbe
{
  v3 = [MXMProxyProbe alloc];
  v4 = [(MXMMetric *)self copy];
  v5 = [(MXMProxyProbe *)v3 initWithProxyMetric:v4];

  return v5;
}

- (BOOL)prepareWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MXMProxyMetric;
  if ([(MXMMetric *)&v10 prepareWithOptions:v6 error:a4])
  {
    v7 = [(MXMProxyMetric *)self _underlyingMetric];
    v8 = [v7 prepareWithOptions:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)willStartAtEstimatedTime:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = MXMProxyMetric;
  [(MXMMetric *)&v6 willStartAtEstimatedTime:?];
  v5 = [(MXMProxyMetric *)self _underlyingMetric];
  [v5 willStartAtEstimatedTime:a3];
}

- (void)didStartAtTime:(unint64_t)a3 startDate:(id)a4
{
  v8.receiver = self;
  v8.super_class = MXMProxyMetric;
  v6 = a4;
  [(MXMMetric *)&v8 didStartAtTime:a3 startDate:v6];
  v7 = [(MXMProxyMetric *)self _underlyingMetric:v8.receiver];
  [v7 didStartAtTime:a3 startDate:v6];
}

- (void)didStartAtContinuousTime:(unint64_t)a3 absoluteTime:(unint64_t)a4 startDate:(id)a5
{
  v10.receiver = self;
  v10.super_class = MXMProxyMetric;
  v8 = a5;
  [(MXMMetric *)&v10 didStartAtContinuousTime:a3 absoluteTime:a4 startDate:v8];
  v9 = [(MXMProxyMetric *)self _underlyingMetric:v10.receiver];
  [v9 didStartAtContinuousTime:a3 absoluteTime:a4 startDate:v8];
}

- (void)willStop
{
  v4.receiver = self;
  v4.super_class = MXMProxyMetric;
  [(MXMMetric *)&v4 willStop];
  v3 = [(MXMProxyMetric *)self _underlyingMetric];
  [v3 willStop];
}

- (void)didStopAtTime:(unint64_t)a3 stopDate:(id)a4
{
  v8.receiver = self;
  v8.super_class = MXMProxyMetric;
  v6 = a4;
  [(MXMMetric *)&v8 didStopAtTime:a3 stopDate:v6];
  v7 = [(MXMProxyMetric *)self _underlyingMetric:v8.receiver];
  [v7 didStopAtTime:a3 stopDate:v6];
}

- (void)didStopAtContinuousTime:(unint64_t)a3 absoluteTime:(unint64_t)a4 stopDate:(id)a5
{
  v10.receiver = self;
  v10.super_class = MXMProxyMetric;
  v8 = a5;
  [(MXMMetric *)&v10 didStopAtContinuousTime:a3 absoluteTime:a4 stopDate:v8];
  v9 = [(MXMProxyMetric *)self _underlyingMetric:v10.receiver];
  [v9 didStopAtContinuousTime:a3 absoluteTime:a4 stopDate:v8];
}

- (void)_sampleMode
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMProxyMetric.m" lineNumber:70 description:@"Underlying metric expects continuous mode. This isn't supported"];
}

@end