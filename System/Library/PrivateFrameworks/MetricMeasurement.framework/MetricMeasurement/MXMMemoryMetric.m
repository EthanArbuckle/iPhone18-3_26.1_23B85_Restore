@interface MXMMemoryMetric
+ (MXMMemoryMetric)currentProcess;
- (MXMMemoryMetric)initWithBundleIdentifier:(id)a3;
- (MXMMemoryMetric)initWithIdentifier:(id)a3 filter:(id)a4;
- (MXMMemoryMetric)initWithProcessName:(id)a3;
- (NSNumber)processIdentifier;
- (NSString)processName;
- (id)_constructProbe;
- (void)willStartAtEstimatedTime:(unint64_t)a3;
@end

@implementation MXMMemoryMetric

+ (MXMMemoryMetric)currentProcess
{
  v2 = [[a1 alloc] initWithProcessIdentifier:getpid()];

  return v2;
}

- (MXMMemoryMetric)initWithProcessName:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [MXMSampleTagFilter alloc];
    v6 = +[MXMUtilizationSampleTag memory];
    v7 = [(MXMSampleTagFilter *)v5 initWithTag:v6 allowDescendents:1];

    v8 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"Process Name" stringValue:v4];
    v9 = [MXMSampleFilter filterWithAttributeFilter:v8 tagFilter:v7];
    self = [(MXMMemoryMetric *)self initWithIdentifier:@"com.apple.metricmeasurement.metric.memory" filter:v9];

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MXMMemoryMetric)initWithBundleIdentifier:(id)a3
{
  v4 = [MXMMachUtils _processNameWithBundleIdentifier:a3];
  v5 = [(MXMMemoryMetric *)self initWithProcessName:v4];

  return v5;
}

- (MXMMemoryMetric)initWithIdentifier:(id)a3 filter:(id)a4
{
  v7.receiver = self;
  v7.super_class = MXMMemoryMetric;
  v4 = [(MXMMetric *)&v7 initWithIdentifier:a3 filter:a4];
  v5 = v4;
  if (v4)
  {
    [(MXMMetric *)v4 setPreferredSampleMode:3];
  }

  return v5;
}

- (void)willStartAtEstimatedTime:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = MXMMemoryMetric;
  v5 = [(MXMMetric *)&v7 _getProbe];
  [v5 performPreIterationActions];
  v6.receiver = self;
  v6.super_class = MXMMemoryMetric;
  [(MXMMetric *)&v6 willStartAtEstimatedTime:a3];
}

- (NSString)processName
{
  v2 = [(MXMMetric *)self filter];
  v3 = [v2 attributeFilterWithName:@"Process Name"];
  v4 = [v3 stringValue];

  return v4;
}

- (NSNumber)processIdentifier
{
  v2 = [(MXMMetric *)self filter];
  v3 = [v2 attributeFilterWithName:@"Process Identifier"];
  v4 = [v3 numericValue];

  return v4;
}

- (id)_constructProbe
{
  v2 = objc_alloc_init(MXMResourceProbe);

  return v2;
}

@end