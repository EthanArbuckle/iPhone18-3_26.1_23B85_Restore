@interface HKHRAFibBurdenSevenDaySampleProperties
- (HKHRAFibBurdenSevenDaySampleProperties)initWithBurdenPercentage:(id)percentage timeZone:(id)zone;
- (HKHRAFibBurdenSevenDaySampleProperties)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRAFibBurdenSevenDaySampleProperties

- (HKHRAFibBurdenSevenDaySampleProperties)initWithBurdenPercentage:(id)percentage timeZone:(id)zone
{
  percentageCopy = percentage;
  zoneCopy = zone;
  v12.receiver = self;
  v12.super_class = HKHRAFibBurdenSevenDaySampleProperties;
  v9 = [(HKHRAFibBurdenSevenDaySampleProperties *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_burdenPercentage, percentage);
    objc_storeStrong(&v10->_timeZone, zone);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  burdenPercentage = self->_burdenPercentage;
  coderCopy = coder;
  [coderCopy encodeObject:burdenPercentage forKey:@"burdenPercentage"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (HKHRAFibBurdenSevenDaySampleProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKHRAFibBurdenSevenDaySampleProperties;
  v5 = [(HKHRAFibBurdenSevenDaySampleProperties *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"burdenPercentage"];
    burdenPercentage = v5->_burdenPercentage;
    v5->_burdenPercentage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;
  }

  return v5;
}

@end