@interface MXMProxyMetric
- (BOOL)prepareWithOptions:(id)options error:(id *)error;
- (MXMMetric)metric;
- (MXMProbe)_remoteProbe;
- (MXMProxyMetric)initWithCoder:(id)coder;
- (MXMProxyMetric)initWithMetric:(id)metric;
- (id)_constructProbe;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)_sampleMode;
- (void)_sampleMode;
- (void)didStartAtContinuousTime:(unint64_t)time absoluteTime:(unint64_t)absoluteTime startDate:(id)date;
- (void)didStartAtTime:(unint64_t)time startDate:(id)date;
- (void)didStopAtContinuousTime:(unint64_t)time absoluteTime:(unint64_t)absoluteTime stopDate:(id)date;
- (void)didStopAtTime:(unint64_t)time stopDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)willStartAtEstimatedTime:(unint64_t)time;
- (void)willStop;
@end

@implementation MXMProxyMetric

- (MXMProxyMetric)initWithMetric:(id)metric
{
  metricCopy = metric;
  v9.receiver = self;
  v9.super_class = MXMProxyMetric;
  v5 = [(MXMMetric *)&v9 initWithIdentifier:@"proxy metric" filter:0];
  if (v5)
  {
    v6 = [metricCopy copy];
    underlyingMetric = v5->__underlyingMetric;
    v5->__underlyingMetric = v6;
  }

  return v5;
}

- (MXMMetric)metric
{
  _underlyingMetric = [(MXMProxyMetric *)self _underlyingMetric];
  v3 = [_underlyingMetric copy];

  return v3;
}

- (MXMProbe)_remoteProbe
{
  v16 = *MEMORY[0x277D85DE8];
  _underlyingMetric = [(MXMProxyMetric *)self _underlyingMetric];
  _constructProbe = [_underlyingMetric _constructProbe];

  _underlyingMetric2 = [(MXMProxyMetric *)self _underlyingMetric];
  filter = [_underlyingMetric2 filter];
  [_constructProbe setFilter:filter];

  v7 = _MXMGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    _underlyingMetric3 = [(MXMProxyMetric *)self _underlyingMetric];
    filter2 = [_underlyingMetric3 filter];
    v12 = 138412546;
    v13 = _constructProbe;
    v14 = 2112;
    v15 = filter2;
    _os_log_impl(&dword_258DAA000, v7, OS_LOG_TYPE_INFO, "Created probe %@ for remote use using filter %@.", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return _constructProbe;
}

- (MXMProxyMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MXMProxyMetric;
  v5 = [(MXMMetric *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"underlyingMetric"];
    underlyingMetric = v5->__underlyingMetric;
    v5->__underlyingMetric = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MXMProxyMetric;
  coderCopy = coder;
  [(MXMMetric *)&v6 encodeWithCoder:coderCopy];
  v5 = [(MXMProxyMetric *)self _underlyingMetric:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"underlyingMetric"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  _underlyingMetric = [(MXMProxyMetric *)self _underlyingMetric];
  v7 = [_underlyingMetric copyWithZone:zone];
  v8 = [v5 initWithMetric:v7];

  return v8;
}

- (unint64_t)_sampleMode
{
  _underlyingMetric = [(MXMProxyMetric *)self _underlyingMetric];
  _sampleMode = [_underlyingMetric _sampleMode];

  if ((_sampleMode & 4) != 0)
  {
    [(MXMProxyMetric *)a2 _sampleMode];
  }

  _underlyingMetric2 = [(MXMProxyMetric *)self _underlyingMetric];
  _sampleMode2 = [_underlyingMetric2 _sampleMode];

  return _sampleMode2;
}

- (id)_constructProbe
{
  v3 = [MXMProxyProbe alloc];
  v4 = [(MXMMetric *)self copy];
  v5 = [(MXMProxyProbe *)v3 initWithProxyMetric:v4];

  return v5;
}

- (BOOL)prepareWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = MXMProxyMetric;
  if ([(MXMMetric *)&v10 prepareWithOptions:optionsCopy error:error])
  {
    _underlyingMetric = [(MXMProxyMetric *)self _underlyingMetric];
    v8 = [_underlyingMetric prepareWithOptions:optionsCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)willStartAtEstimatedTime:(unint64_t)time
{
  v6.receiver = self;
  v6.super_class = MXMProxyMetric;
  [(MXMMetric *)&v6 willStartAtEstimatedTime:?];
  _underlyingMetric = [(MXMProxyMetric *)self _underlyingMetric];
  [_underlyingMetric willStartAtEstimatedTime:time];
}

- (void)didStartAtTime:(unint64_t)time startDate:(id)date
{
  v8.receiver = self;
  v8.super_class = MXMProxyMetric;
  dateCopy = date;
  [(MXMMetric *)&v8 didStartAtTime:time startDate:dateCopy];
  v7 = [(MXMProxyMetric *)self _underlyingMetric:v8.receiver];
  [v7 didStartAtTime:time startDate:dateCopy];
}

- (void)didStartAtContinuousTime:(unint64_t)time absoluteTime:(unint64_t)absoluteTime startDate:(id)date
{
  v10.receiver = self;
  v10.super_class = MXMProxyMetric;
  dateCopy = date;
  [(MXMMetric *)&v10 didStartAtContinuousTime:time absoluteTime:absoluteTime startDate:dateCopy];
  v9 = [(MXMProxyMetric *)self _underlyingMetric:v10.receiver];
  [v9 didStartAtContinuousTime:time absoluteTime:absoluteTime startDate:dateCopy];
}

- (void)willStop
{
  v4.receiver = self;
  v4.super_class = MXMProxyMetric;
  [(MXMMetric *)&v4 willStop];
  _underlyingMetric = [(MXMProxyMetric *)self _underlyingMetric];
  [_underlyingMetric willStop];
}

- (void)didStopAtTime:(unint64_t)time stopDate:(id)date
{
  v8.receiver = self;
  v8.super_class = MXMProxyMetric;
  dateCopy = date;
  [(MXMMetric *)&v8 didStopAtTime:time stopDate:dateCopy];
  v7 = [(MXMProxyMetric *)self _underlyingMetric:v8.receiver];
  [v7 didStopAtTime:time stopDate:dateCopy];
}

- (void)didStopAtContinuousTime:(unint64_t)time absoluteTime:(unint64_t)absoluteTime stopDate:(id)date
{
  v10.receiver = self;
  v10.super_class = MXMProxyMetric;
  dateCopy = date;
  [(MXMMetric *)&v10 didStopAtContinuousTime:time absoluteTime:absoluteTime stopDate:dateCopy];
  v9 = [(MXMProxyMetric *)self _underlyingMetric:v10.receiver];
  [v9 didStopAtContinuousTime:time absoluteTime:absoluteTime stopDate:dateCopy];
}

- (void)_sampleMode
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"MXMProxyMetric.m" lineNumber:70 description:@"Underlying metric expects continuous mode. This isn't supported"];
}

@end