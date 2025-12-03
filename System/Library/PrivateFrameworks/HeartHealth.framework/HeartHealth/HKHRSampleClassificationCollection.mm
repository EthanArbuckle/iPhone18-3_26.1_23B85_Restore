@interface HKHRSampleClassificationCollection
- (HKHRSampleClassificationCollection)initWithClassifications:(id)classifications dayIndex:(id)index majorityTimeZone:(id)zone;
- (HKHRSampleClassificationCollection)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRSampleClassificationCollection

- (HKHRSampleClassificationCollection)initWithClassifications:(id)classifications dayIndex:(id)index majorityTimeZone:(id)zone
{
  classificationsCopy = classifications;
  indexCopy = index;
  zoneCopy = zone;
  v15.receiver = self;
  v15.super_class = HKHRSampleClassificationCollection;
  v12 = [(HKHRSampleClassificationCollection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_classifications, classifications);
    objc_storeStrong(&v13->_dayIndex, index);
    objc_storeStrong(&v13->_majorityTimeZone, zone);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  classifications = self->_classifications;
  coderCopy = coder;
  [coderCopy encodeObject:classifications forKey:@"Classifications"];
  [coderCopy encodeObject:self->_dayIndex forKey:@"DayIndex"];
  [coderCopy encodeObject:self->_majorityTimeZone forKey:@"MajorityTimeZone"];
}

- (HKHRSampleClassificationCollection)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Classifications"];
    classifications = v5->_classifications;
    v5->_classifications = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DayIndex"];
    dayIndex = v5->_dayIndex;
    v5->_dayIndex = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MajorityTimeZone"];
    majorityTimeZone = v5->_majorityTimeZone;
    v5->_majorityTimeZone = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end