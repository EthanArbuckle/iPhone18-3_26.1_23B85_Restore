@interface HKMedicationScheduleQueryConfiguration
- (HKMedicationScheduleQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationScheduleQueryConfiguration

- (HKMedicationScheduleQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKMedicationScheduleQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_limit = [v4 decodeIntegerForKey:@"Limit"];
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"SortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_limit forKey:{@"Limit", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_sortDescriptors forKey:@"SortDescriptors"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKMedicationScheduleQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setLimit:self->_limit];
  [v4 setSortDescriptors:self->_sortDescriptors];
  return v4;
}

@end