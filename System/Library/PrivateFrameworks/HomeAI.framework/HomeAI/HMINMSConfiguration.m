@interface HMINMSConfiguration
- (HMINMSConfiguration)initWithThresholdWithLabels:(id)a3 metricWithLabels:(id)a4 thresholdDefault:(id)a5 metricDefault:(id)a6;
- (id)thresholdForLabel:(id)a3;
- (int64_t)metricForLabel:(id)a3;
@end

@implementation HMINMSConfiguration

- (HMINMSConfiguration)initWithThresholdWithLabels:(id)a3 metricWithLabels:(id)a4 thresholdDefault:(id)a5 metricDefault:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMINMSConfiguration;
  v15 = [(HMINMSConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_thresholdWithLabels, a3);
    objc_storeStrong(&v16->_metricWithLabels, a4);
    objc_storeStrong(&v16->_thresholdDefault, a5);
    objc_storeStrong(&v16->_metricDefault, a6);
  }

  return v16;
}

- (id)thresholdForLabel:(id)a3
{
  v4 = a3;
  v5 = [(HMINMSConfiguration *)self thresholdWithLabels];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [(HMINMSConfiguration *)self thresholdDefault];
  }

  v8 = v7;

  return v8;
}

- (int64_t)metricForLabel:(id)a3
{
  v4 = a3;
  v5 = [(HMINMSConfiguration *)self metricWithLabels];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(HMINMSConfiguration *)self metricWithLabels];
    v8 = [v7 objectForKeyedSubscript:v4];
    v9 = [v8 intValue];
  }

  else
  {
    v7 = [(HMINMSConfiguration *)self metricDefault];
    v9 = [v7 intValue];
  }

  return v9;
}

@end