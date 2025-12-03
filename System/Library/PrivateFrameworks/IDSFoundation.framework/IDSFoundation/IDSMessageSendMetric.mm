@interface IDSMessageSendMetric
- (IDSMessageSendMetric)initWithCoder:(id)coder;
- (IDSMessageSendMetric)initWithDictionary:(id)dictionary;
- (IDSMessageSendMetric)initWithType:(int64_t)type guid:(id)guid service:(id)service;
- (IDSMessageSendMetric)initWithType:(int64_t)type guid:(id)guid service:(id)service clientMetrics:(id)metrics;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)metricsDictionary;
- (void)addEntry:(id)entry forKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSMessageSendMetric

- (IDSMessageSendMetric)initWithType:(int64_t)type guid:(id)guid service:(id)service clientMetrics:(id)metrics
{
  metricsCopy = metrics;
  v11 = [(IDSMessageSendMetric *)self initWithType:type guid:guid service:service];
  v12 = v11;
  if (metricsCopy && v11)
  {
    [(NSMutableDictionary *)v11->_metrics addEntriesFromDictionary:metricsCopy];
  }

  return v12;
}

- (IDSMessageSendMetric)initWithType:(int64_t)type guid:(id)guid service:(id)service
{
  guidCopy = guid;
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = IDSMessageSendMetric;
  v11 = [(IDSMessageSendMetric *)&v17 init];
  if (v11)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    metrics = v11->_metrics;
    v11->_metrics = dictionary;

    objc_storeStrong(&v11->_guid, guid);
    v14 = [serviceCopy copy];
    service = v11->_service;
    v11->_service = v14;

    v11->_type = type;
  }

  return v11;
}

- (IDSMessageSendMetric)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = [dictionaryCopy objectForKeyedSubscript:@"IDSMessageSendMetricGuidKey"];
    v6 = [dictionaryCopy objectForKeyedSubscript:@"IDSMessageSendMetricServiceKey"];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"IDSMessageSendMetricTypeKey"];
    integerValue = [v7 integerValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"IDSMessageSendMetricMetricsKey"];

    self = [(IDSMessageSendMetric *)self initWithType:integerValue guid:v5 service:v6 clientMetrics:v9];
  }

  return self;
}

- (void)addEntry:(id)entry forKey:(id)key
{
  if (entry && key)
  {
    keyCopy = key;
    entryCopy = entry;
    metrics = [(IDSMessageSendMetric *)self metrics];
    [metrics setObject:entryCopy forKeyedSubscript:keyCopy];
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  guid = [(IDSMessageSendMetric *)self guid];
  [dictionary setObject:guid forKeyedSubscript:@"IDSMessageSendMetricGuidKey"];

  service = [(IDSMessageSendMetric *)self service];
  [dictionary setObject:service forKeyedSubscript:@"IDSMessageSendMetricServiceKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSMessageSendMetric type](self, "type")}];
  [dictionary setObject:v6 forKeyedSubscript:@"IDSMessageSendMetricTypeKey"];

  metrics = [(IDSMessageSendMetric *)self metrics];
  v8 = [metrics copy];
  [dictionary setObject:v8 forKeyedSubscript:@"IDSMessageSendMetricMetricsKey"];

  v9 = [dictionary copy];

  return v9;
}

- (id)metricsDictionary
{
  metrics = [(IDSMessageSendMetric *)self metrics];
  v3 = [metrics copy];

  return v3;
}

- (IDSMessageSendMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"IDSMessageSendMetricMetricsKey"];
    metrics = v5->_metrics;
    v5->_metrics = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageSendMetricServiceKey"];
    service = v5->_service;
    v5->_service = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageSendMetricGuidKey"];
    guid = v5->_guid;
    v5->_guid = v15;

    v5->_type = [coderCopy decodeIntegerForKey:@"IDSMessageSendMetricTypeKey"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageSendMetricSamplingIDKey"];
    samplingID = v5->_samplingID;
    v5->_samplingID = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  metrics = self->_metrics;
  coderCopy = coder;
  [coderCopy encodeObject:metrics forKey:@"IDSMessageSendMetricMetricsKey"];
  [coderCopy encodeObject:self->_service forKey:@"IDSMessageSendMetricServiceKey"];
  [coderCopy encodeObject:self->_guid forKey:@"IDSMessageSendMetricGuidKey"];
  [coderCopy encodeInteger:self->_type forKey:@"IDSMessageSendMetricTypeKey"];
  [coderCopy encodeObject:self->_samplingID forKey:@"IDSMessageSendMetricSamplingIDKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSMessageSendMetric allocWithZone:zone];
  type = [(IDSMessageSendMetric *)self type];
  guid = [(IDSMessageSendMetric *)self guid];
  service = [(IDSMessageSendMetric *)self service];
  v8 = [(IDSMessageSendMetric *)v4 initWithType:type guid:guid service:service];

  metrics = [(IDSMessageSendMetric *)v8 metrics];
  metrics2 = [(IDSMessageSendMetric *)self metrics];
  [metrics addEntriesFromDictionary:metrics2];

  samplingID = [(IDSMessageSendMetric *)self samplingID];
  [(IDSMessageSendMetric *)v8 setSamplingID:samplingID];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(IDSMessageSendMetric *)self type];
  guid = [(IDSMessageSendMetric *)self guid];
  service = [(IDSMessageSendMetric *)self service];
  metrics = [(IDSMessageSendMetric *)self metrics];
  samplingID = [(IDSMessageSendMetric *)self samplingID];
  v11 = [v3 stringWithFormat:@"<%@: %p> type: %ld, guid: %@, service: %@, metrics: %@, samplingID: %@", v5, self, type, guid, service, metrics, samplingID];

  return v11;
}

@end