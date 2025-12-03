@interface MXMMemoryMetric
+ (MXMMemoryMetric)currentProcess;
- (MXMMemoryMetric)initWithBundleIdentifier:(id)identifier;
- (MXMMemoryMetric)initWithIdentifier:(id)identifier filter:(id)filter;
- (MXMMemoryMetric)initWithProcessName:(id)name;
- (NSNumber)processIdentifier;
- (NSString)processName;
- (id)_constructProbe;
- (void)willStartAtEstimatedTime:(unint64_t)time;
@end

@implementation MXMMemoryMetric

+ (MXMMemoryMetric)currentProcess
{
  v2 = [[self alloc] initWithProcessIdentifier:getpid()];

  return v2;
}

- (MXMMemoryMetric)initWithProcessName:(id)name
{
  if (name)
  {
    nameCopy = name;
    v5 = [MXMSampleTagFilter alloc];
    v6 = +[MXMUtilizationSampleTag memory];
    v7 = [(MXMSampleTagFilter *)v5 initWithTag:v6 allowDescendents:1];

    v8 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"Process Name" stringValue:nameCopy];
    v9 = [MXMSampleFilter filterWithAttributeFilter:v8 tagFilter:v7];
    self = [(MXMMemoryMetric *)self initWithIdentifier:@"com.apple.metricmeasurement.metric.memory" filter:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MXMMemoryMetric)initWithBundleIdentifier:(id)identifier
{
  v4 = [MXMMachUtils _processNameWithBundleIdentifier:identifier];
  v5 = [(MXMMemoryMetric *)self initWithProcessName:v4];

  return v5;
}

- (MXMMemoryMetric)initWithIdentifier:(id)identifier filter:(id)filter
{
  v7.receiver = self;
  v7.super_class = MXMMemoryMetric;
  v4 = [(MXMMetric *)&v7 initWithIdentifier:identifier filter:filter];
  v5 = v4;
  if (v4)
  {
    [(MXMMetric *)v4 setPreferredSampleMode:3];
  }

  return v5;
}

- (void)willStartAtEstimatedTime:(unint64_t)time
{
  v7.receiver = self;
  v7.super_class = MXMMemoryMetric;
  _getProbe = [(MXMMetric *)&v7 _getProbe];
  [_getProbe performPreIterationActions];
  v6.receiver = self;
  v6.super_class = MXMMemoryMetric;
  [(MXMMetric *)&v6 willStartAtEstimatedTime:time];
}

- (NSString)processName
{
  filter = [(MXMMetric *)self filter];
  v3 = [filter attributeFilterWithName:@"Process Name"];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (NSNumber)processIdentifier
{
  filter = [(MXMMetric *)self filter];
  v3 = [filter attributeFilterWithName:@"Process Identifier"];
  numericValue = [v3 numericValue];

  return numericValue;
}

- (id)_constructProbe
{
  v2 = objc_alloc_init(MXMResourceProbe);

  return v2;
}

@end