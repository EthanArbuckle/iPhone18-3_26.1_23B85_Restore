@interface HKHRAFibBurdenSevenDaySampleProperties
- (HKHRAFibBurdenSevenDaySampleProperties)initWithBurdenPercentage:(id)a3 timeZone:(id)a4;
- (HKHRAFibBurdenSevenDaySampleProperties)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRAFibBurdenSevenDaySampleProperties

- (HKHRAFibBurdenSevenDaySampleProperties)initWithBurdenPercentage:(id)a3 timeZone:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKHRAFibBurdenSevenDaySampleProperties;
  v9 = [(HKHRAFibBurdenSevenDaySampleProperties *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_burdenPercentage, a3);
    objc_storeStrong(&v10->_timeZone, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  burdenPercentage = self->_burdenPercentage;
  v5 = a3;
  [v5 encodeObject:burdenPercentage forKey:@"burdenPercentage"];
  [v5 encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (HKHRAFibBurdenSevenDaySampleProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKHRAFibBurdenSevenDaySampleProperties;
  v5 = [(HKHRAFibBurdenSevenDaySampleProperties *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"burdenPercentage"];
    burdenPercentage = v5->_burdenPercentage;
    v5->_burdenPercentage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;
  }

  return v5;
}

@end