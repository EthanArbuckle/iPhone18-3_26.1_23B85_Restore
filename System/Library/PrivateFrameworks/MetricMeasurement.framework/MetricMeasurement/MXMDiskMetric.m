@interface MXMDiskMetric
+ (MXMDiskMetric)currentProcess;
- (MXMDiskMetric)initWithBundleIdentifier:(id)a3;
- (MXMDiskMetric)initWithIdentifier:(id)a3 filter:(id)a4;
- (MXMDiskMetric)initWithProcessName:(id)a3;
- (NSNumber)processIdentifier;
- (NSString)processName;
- (id)_constructProbe;
@end

@implementation MXMDiskMetric

+ (MXMDiskMetric)currentProcess
{
  v2 = [[a1 alloc] initWithProcessIdentifier:getpid()];

  return v2;
}

- (MXMDiskMetric)initWithProcessName:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [MXMSampleTagFilter alloc];
    v6 = +[MXMUtilizationSampleTag IO];
    v7 = [(MXMSampleTagFilter *)v5 initWithTag:v6 allowDescendents:1];

    v8 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"Process Name" stringValue:v4];
    v9 = [MXMSampleFilter filterWithAttributeFilter:v8 tagFilter:v7];
    self = [(MXMDiskMetric *)self initWithIdentifier:@"com.apple.metricmeasurement.metric.disk" filter:v9];

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MXMDiskMetric)initWithBundleIdentifier:(id)a3
{
  v4 = [MXMMachUtils _processNameWithBundleIdentifier:a3];
  v5 = [(MXMDiskMetric *)self initWithProcessName:v4];

  return v5;
}

- (MXMDiskMetric)initWithIdentifier:(id)a3 filter:(id)a4
{
  v7.receiver = self;
  v7.super_class = MXMDiskMetric;
  v4 = [(MXMMetric *)&v7 initWithIdentifier:a3 filter:a4];
  v5 = v4;
  if (v4)
  {
    [(MXMMetric *)v4 setPreferredSampleMode:3];
  }

  return v5;
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