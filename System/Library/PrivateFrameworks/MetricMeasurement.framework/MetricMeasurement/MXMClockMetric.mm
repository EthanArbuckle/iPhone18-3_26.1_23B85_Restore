@interface MXMClockMetric
+ (MXMClockMetric)absoluteTime;
+ (MXMClockMetric)allTime;
+ (MXMClockMetric)continuousTime;
- (BOOL)harvestData:(id *)a3 error:(id *)a4;
- (MXMClockMetric)initWithCoder:(id)a3;
- (MXMClockMetric)initWithTag:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXMClockMetric

+ (MXMClockMetric)allTime
{
  v2 = [a1 alloc];
  v3 = +[(MXMSampleTag *)MXMClockSampleTag];
  v4 = [v2 initWithTag:v3];

  return v4;
}

+ (MXMClockMetric)absoluteTime
{
  v2 = [a1 alloc];
  v3 = +[MXMClockSampleTag absoluteTime];
  v4 = [v2 initWithTag:v3];

  return v4;
}

+ (MXMClockMetric)continuousTime
{
  v2 = [a1 alloc];
  v3 = +[MXMClockSampleTag continuousTime];
  v4 = [v2 initWithTag:v3];

  return v4;
}

- (MXMClockMetric)initWithTag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MXMClockMetric;
  v6 = [(MXMMetric *)&v9 initWithIdentifier:@"com.apple.metricmeasurement.metric.clock"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tag, a3);
  }

  return v7;
}

- (BOOL)harvestData:(id *)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [MXMInstrument activeInstrument:a3];
  v7 = [v6 currentIteration];

  if (v7)
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

    v22 = *(v7 + 40);
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
        *a3 = v19;

        goto LABEL_11;
      }
    }

    v22 = *(v7 + 56);
    v18 = [[MXMSampleTimeSeries alloc] initWithContinuousTimeSeries:&v22 length:2];
    [v8 addObject:v18];

    goto LABEL_10;
  }

LABEL_11:
  result = v7 != 0;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = MXMClockMetric;
  v5 = [(MXMMetric *)&v9 copyWithZone:?];
  v6 = [(MXMSampleTag *)self->_tag copyWithZone:a3];
  v7 = v5[8];
  v5[8] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MXMClockMetric;
  v4 = a3;
  [(MXMMetric *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tag forKey:{@"_tag", v5.receiver, v5.super_class}];
}

- (MXMClockMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MXMClockMetric;
  v5 = [(MXMMetric *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tag"];
    tag = v5->_tag;
    v5->_tag = v6;
  }

  return v5;
}

@end