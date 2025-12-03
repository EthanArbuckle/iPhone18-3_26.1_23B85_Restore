@interface MXMNetworkMetric
+ (MXMNetworkMetric)currentProcess;
- (MXMNetworkMetric)initWithBundleIdentifier:(id)identifier;
- (MXMNetworkMetric)initWithIdentifier:(id)identifier filter:(id)filter;
- (MXMNetworkMetric)initWithProcessName:(id)name;
- (NSNumber)processIdentifier;
- (NSString)processName;
- (id)_constructProbe;
@end

@implementation MXMNetworkMetric

+ (MXMNetworkMetric)currentProcess
{
  v2 = [[self alloc] initWithProcessIdentifier:getpid()];

  return v2;
}

- (MXMNetworkMetric)initWithProcessName:(id)name
{
  if (name)
  {
    nameCopy = name;
    v5 = [MXMSampleTagFilter alloc];
    v6 = +[MXMUtilizationSampleTag network];
    v7 = [(MXMSampleTagFilter *)v5 initWithTag:v6 allowDescendents:1];

    v8 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"Process Name" stringValue:nameCopy];
    v9 = [MXMSampleFilter filterWithAttributeFilter:v8 tagFilter:v7];
    self = [(MXMNetworkMetric *)self initWithIdentifier:@"com.apple.metricmeasurement.metric.network" filter:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MXMNetworkMetric)initWithBundleIdentifier:(id)identifier
{
  v4 = [MXMMachUtils _processNameWithBundleIdentifier:identifier];
  v5 = [(MXMNetworkMetric *)self initWithProcessName:v4];

  return v5;
}

- (MXMNetworkMetric)initWithIdentifier:(id)identifier filter:(id)filter
{
  v7.receiver = self;
  v7.super_class = MXMNetworkMetric;
  v4 = [(MXMMetric *)&v7 initWithIdentifier:identifier filter:filter];
  v5 = v4;
  if (v4)
  {
    [(MXMMetric *)v4 setPreferredSampleMode:-1];
  }

  return v5;
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