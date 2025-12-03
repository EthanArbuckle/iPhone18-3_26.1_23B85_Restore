@interface HMINMSConfiguration
- (HMINMSConfiguration)initWithThresholdWithLabels:(id)labels metricWithLabels:(id)withLabels thresholdDefault:(id)default metricDefault:(id)metricDefault;
- (id)thresholdForLabel:(id)label;
- (int64_t)metricForLabel:(id)label;
@end

@implementation HMINMSConfiguration

- (HMINMSConfiguration)initWithThresholdWithLabels:(id)labels metricWithLabels:(id)withLabels thresholdDefault:(id)default metricDefault:(id)metricDefault
{
  labelsCopy = labels;
  withLabelsCopy = withLabels;
  defaultCopy = default;
  metricDefaultCopy = metricDefault;
  v18.receiver = self;
  v18.super_class = HMINMSConfiguration;
  v15 = [(HMINMSConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_thresholdWithLabels, labels);
    objc_storeStrong(&v16->_metricWithLabels, withLabels);
    objc_storeStrong(&v16->_thresholdDefault, default);
    objc_storeStrong(&v16->_metricDefault, metricDefault);
  }

  return v16;
}

- (id)thresholdForLabel:(id)label
{
  labelCopy = label;
  thresholdWithLabels = [(HMINMSConfiguration *)self thresholdWithLabels];
  v6 = [thresholdWithLabels objectForKeyedSubscript:labelCopy];

  if (v6)
  {
    thresholdDefault = v6;
  }

  else
  {
    thresholdDefault = [(HMINMSConfiguration *)self thresholdDefault];
  }

  v8 = thresholdDefault;

  return v8;
}

- (int64_t)metricForLabel:(id)label
{
  labelCopy = label;
  metricWithLabels = [(HMINMSConfiguration *)self metricWithLabels];
  v6 = [metricWithLabels objectForKeyedSubscript:labelCopy];

  if (v6)
  {
    metricWithLabels2 = [(HMINMSConfiguration *)self metricWithLabels];
    v8 = [metricWithLabels2 objectForKeyedSubscript:labelCopy];
    intValue = [v8 intValue];
  }

  else
  {
    metricWithLabels2 = [(HMINMSConfiguration *)self metricDefault];
    intValue = [metricWithLabels2 intValue];
  }

  return intValue;
}

@end