@interface HKHRSampleClassificationCollection
- (HKHRSampleClassificationCollection)initWithClassifications:(id)a3 dayIndex:(id)a4 majorityTimeZone:(id)a5;
- (HKHRSampleClassificationCollection)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRSampleClassificationCollection

- (HKHRSampleClassificationCollection)initWithClassifications:(id)a3 dayIndex:(id)a4 majorityTimeZone:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKHRSampleClassificationCollection;
  v12 = [(HKHRSampleClassificationCollection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_classifications, a3);
    objc_storeStrong(&v13->_dayIndex, a4);
    objc_storeStrong(&v13->_majorityTimeZone, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  classifications = self->_classifications;
  v5 = a3;
  [v5 encodeObject:classifications forKey:@"Classifications"];
  [v5 encodeObject:self->_dayIndex forKey:@"DayIndex"];
  [v5 encodeObject:self->_majorityTimeZone forKey:@"MajorityTimeZone"];
}

- (HKHRSampleClassificationCollection)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HKHRSampleClassificationCollection;
  v5 = [(HKHRSampleClassificationCollection *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Classifications"];
    classifications = v5->_classifications;
    v5->_classifications = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DayIndex"];
    dayIndex = v5->_dayIndex;
    v5->_dayIndex = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MajorityTimeZone"];
    majorityTimeZone = v5->_majorityTimeZone;
    v5->_majorityTimeZone = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end