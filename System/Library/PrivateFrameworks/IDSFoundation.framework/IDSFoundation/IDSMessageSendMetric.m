@interface IDSMessageSendMetric
- (IDSMessageSendMetric)initWithCoder:(id)a3;
- (IDSMessageSendMetric)initWithDictionary:(id)a3;
- (IDSMessageSendMetric)initWithType:(int64_t)a3 guid:(id)a4 service:(id)a5;
- (IDSMessageSendMetric)initWithType:(int64_t)a3 guid:(id)a4 service:(id)a5 clientMetrics:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)metricsDictionary;
- (void)addEntry:(id)a3 forKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSMessageSendMetric

- (IDSMessageSendMetric)initWithType:(int64_t)a3 guid:(id)a4 service:(id)a5 clientMetrics:(id)a6
{
  v10 = a6;
  v11 = [(IDSMessageSendMetric *)self initWithType:a3 guid:a4 service:a5];
  v12 = v11;
  if (v10 && v11)
  {
    [(NSMutableDictionary *)v11->_metrics addEntriesFromDictionary:v10];
  }

  return v12;
}

- (IDSMessageSendMetric)initWithType:(int64_t)a3 guid:(id)a4 service:(id)a5
{
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = IDSMessageSendMetric;
  v11 = [(IDSMessageSendMetric *)&v17 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    metrics = v11->_metrics;
    v11->_metrics = v12;

    objc_storeStrong(&v11->_guid, a4);
    v14 = [v10 copy];
    service = v11->_service;
    v11->_service = v14;

    v11->_type = a3;
  }

  return v11;
}

- (IDSMessageSendMetric)initWithDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKeyedSubscript:@"IDSMessageSendMetricGuidKey"];
    v6 = [v4 objectForKeyedSubscript:@"IDSMessageSendMetricServiceKey"];
    v7 = [v4 objectForKeyedSubscript:@"IDSMessageSendMetricTypeKey"];
    v8 = [v7 integerValue];

    v9 = [v4 objectForKeyedSubscript:@"IDSMessageSendMetricMetricsKey"];

    self = [(IDSMessageSendMetric *)self initWithType:v8 guid:v5 service:v6 clientMetrics:v9];
  }

  return self;
}

- (void)addEntry:(id)a3 forKey:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(IDSMessageSendMetric *)self metrics];
    [v8 setObject:v7 forKeyedSubscript:v6];
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(IDSMessageSendMetric *)self guid];
  [v3 setObject:v4 forKeyedSubscript:@"IDSMessageSendMetricGuidKey"];

  v5 = [(IDSMessageSendMetric *)self service];
  [v3 setObject:v5 forKeyedSubscript:@"IDSMessageSendMetricServiceKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSMessageSendMetric type](self, "type")}];
  [v3 setObject:v6 forKeyedSubscript:@"IDSMessageSendMetricTypeKey"];

  v7 = [(IDSMessageSendMetric *)self metrics];
  v8 = [v7 copy];
  [v3 setObject:v8 forKeyedSubscript:@"IDSMessageSendMetricMetricsKey"];

  v9 = [v3 copy];

  return v9;
}

- (id)metricsDictionary
{
  v2 = [(IDSMessageSendMetric *)self metrics];
  v3 = [v2 copy];

  return v3;
}

- (IDSMessageSendMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = IDSMessageSendMetric;
  v5 = [(IDSMessageSendMetric *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"IDSMessageSendMetricMetricsKey"];
    metrics = v5->_metrics;
    v5->_metrics = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageSendMetricServiceKey"];
    service = v5->_service;
    v5->_service = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageSendMetricGuidKey"];
    guid = v5->_guid;
    v5->_guid = v15;

    v5->_type = [v4 decodeIntegerForKey:@"IDSMessageSendMetricTypeKey"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageSendMetricSamplingIDKey"];
    samplingID = v5->_samplingID;
    v5->_samplingID = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  metrics = self->_metrics;
  v5 = a3;
  [v5 encodeObject:metrics forKey:@"IDSMessageSendMetricMetricsKey"];
  [v5 encodeObject:self->_service forKey:@"IDSMessageSendMetricServiceKey"];
  [v5 encodeObject:self->_guid forKey:@"IDSMessageSendMetricGuidKey"];
  [v5 encodeInteger:self->_type forKey:@"IDSMessageSendMetricTypeKey"];
  [v5 encodeObject:self->_samplingID forKey:@"IDSMessageSendMetricSamplingIDKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IDSMessageSendMetric allocWithZone:a3];
  v5 = [(IDSMessageSendMetric *)self type];
  v6 = [(IDSMessageSendMetric *)self guid];
  v7 = [(IDSMessageSendMetric *)self service];
  v8 = [(IDSMessageSendMetric *)v4 initWithType:v5 guid:v6 service:v7];

  v9 = [(IDSMessageSendMetric *)v8 metrics];
  v10 = [(IDSMessageSendMetric *)self metrics];
  [v9 addEntriesFromDictionary:v10];

  v11 = [(IDSMessageSendMetric *)self samplingID];
  [(IDSMessageSendMetric *)v8 setSamplingID:v11];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IDSMessageSendMetric *)self type];
  v7 = [(IDSMessageSendMetric *)self guid];
  v8 = [(IDSMessageSendMetric *)self service];
  v9 = [(IDSMessageSendMetric *)self metrics];
  v10 = [(IDSMessageSendMetric *)self samplingID];
  v11 = [v3 stringWithFormat:@"<%@: %p> type: %ld, guid: %@, service: %@, metrics: %@, samplingID: %@", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

@end