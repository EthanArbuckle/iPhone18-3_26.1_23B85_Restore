@interface HMDCameraMetricsMilestone
- (HMDCameraMetricsMilestone)initWithKey:(id)key timestamp:(int64_t)timestamp;
- (id)attributeDescriptions;
@end

@implementation HMDCameraMetricsMilestone

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCameraMetricsMilestone *)self key];
  v5 = [v3 initWithName:@"key" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCameraMetricsMilestone timestamp](self, "timestamp")}];
  v8 = [v6 initWithName:@"timestamp" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDCameraMetricsMilestone)initWithKey:(id)key timestamp:(int64_t)timestamp
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = HMDCameraMetricsMilestone;
  v8 = [(HMDCameraMetricsMilestone *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_key, key);
    v9->_timestamp = timestamp;
  }

  return v9;
}

@end