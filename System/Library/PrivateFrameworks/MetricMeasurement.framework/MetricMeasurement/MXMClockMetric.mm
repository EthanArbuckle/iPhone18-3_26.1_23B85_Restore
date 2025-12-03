@interface MXMClockMetric
+ (MXMClockMetric)absoluteTime;
+ (MXMClockMetric)allTime;
+ (MXMClockMetric)continuousTime;
- (BOOL)harvestData:(id *)data error:(id *)error;
- (MXMClockMetric)initWithCoder:(id)coder;
- (MXMClockMetric)initWithTag:(id)tag;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXMClockMetric

+ (MXMClockMetric)allTime
{
  v2 = [self alloc];
  v3 = +[(MXMSampleTag *)MXMClockSampleTag];
  v4 = [v2 initWithTag:v3];

  return v4;
}

+ (MXMClockMetric)absoluteTime
{
  v2 = [self alloc];
  v3 = +[MXMClockSampleTag absoluteTime];
  v4 = [v2 initWithTag:v3];

  return v4;
}

+ (MXMClockMetric)continuousTime
{
  v2 = [self alloc];
  v3 = +[MXMClockSampleTag continuousTime];
  v4 = [v2 initWithTag:v3];

  return v4;
}

- (MXMClockMetric)initWithTag:(id)tag
{
  tagCopy = tag;
  v9.receiver = self;
  v9.super_class = MXMClockMetric;
  v6 = [(MXMMetric *)&v9 initWithIdentifier:@"com.apple.metricmeasurement.metric.clock"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tag, tag);
  }

  return v7;
}

- (BOOL)harvestData:(id *)data error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [MXMInstrument activeInstrument:data];
  currentIteration = [v6 currentIteration];

  if (currentIteration)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    tag = self->_tag;
    v10 = +[MXMClockSampleTag absoluteTime];
    if ([(MXMSampleTag *)tag containsTag:v10])
    {
    }

    else
    {
      v11 = self->_tag;
      v12 = +[MXMClockSampleTag absoluteTime];
      LODWORD(v11) = [(MXMSampleTag *)v11 isEqualToTag:v12];

      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v22 = *(currentIteration + 40);
    v13 = [[MXMSampleTimeSeries alloc] initWithAbsoluteTimeSeries:&v22 length:2];
    [v8 addObject:{v13, v22}];

LABEL_6:
    v14 = self->_tag;
    v15 = +[MXMClockSampleTag continuousTime];
    if ([(MXMSampleTag *)v14 containsTag:v15])
    {
    }

    else
    {
      v16 = self->_tag;
      v17 = +[MXMClockSampleTag continuousTime];
      LODWORD(v16) = [(MXMSampleTag *)v16 isEqualToTag:v17];

      if (!v16)
      {
LABEL_10:
        v19 = [[MXMSampleData alloc] initWithSets:v8];
        *data = v19;

        goto LABEL_11;
      }
    }

    v22 = *(currentIteration + 56);
    v18 = [[MXMSampleTimeSeries alloc] initWithContinuousTimeSeries:&v22 length:2];
    [v8 addObject:v18];

    goto LABEL_10;
  }

LABEL_11:
  result = currentIteration != 0;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = MXMClockMetric;
  v5 = [(MXMMetric *)&v9 copyWithZone:?];
  v6 = [(MXMSampleTag *)self->_tag copyWithZone:zone];
  v7 = v5[8];
  v5[8] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MXMClockMetric;
  coderCopy = coder;
  [(MXMMetric *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tag forKey:{@"_tag", v5.receiver, v5.super_class}];
}

- (MXMClockMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MXMClockMetric;
  v5 = [(MXMMetric *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tag"];
    tag = v5->_tag;
    v5->_tag = v6;
  }

  return v5;
}

@end