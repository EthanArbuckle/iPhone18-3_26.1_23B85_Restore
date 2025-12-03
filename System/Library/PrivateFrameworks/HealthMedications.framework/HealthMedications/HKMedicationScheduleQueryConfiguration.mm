@interface HKMedicationScheduleQueryConfiguration
- (HKMedicationScheduleQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationScheduleQueryConfiguration

- (HKMedicationScheduleQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKMedicationScheduleQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_limit = [coderCopy decodeIntegerForKey:@"Limit"];
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"SortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_limit forKey:{@"Limit", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_sortDescriptors forKey:@"SortDescriptors"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKMedicationScheduleQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setLimit:self->_limit];
  [v4 setSortDescriptors:self->_sortDescriptors];
  return v4;
}

@end