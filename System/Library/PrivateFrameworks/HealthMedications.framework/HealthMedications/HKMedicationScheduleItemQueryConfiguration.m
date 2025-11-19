@interface HKMedicationScheduleItemQueryConfiguration
- (HKMedicationScheduleItemQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationScheduleItemQueryConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = HKMedicationScheduleItemQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v10 copyWithZone:a3];
  v5 = [(HKMedicationScheduleItemQueryConfiguration *)self fromDate];
  [v4 setFromDate:v5];

  v6 = [(HKMedicationScheduleItemQueryConfiguration *)self toDate];
  [v4 setToDate:v6];

  v7 = [(HKMedicationScheduleItemQueryConfiguration *)self identifier];
  [v4 setIdentifier:v7];

  v8 = [(HKMedicationScheduleItemQueryConfiguration *)self sortDescriptors];
  [v4 setSortDescriptors:v8];

  return v4;
}

- (HKMedicationScheduleItemQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKMedicationScheduleItemQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FromDate"];
    fromDate = v5->_fromDate;
    v5->_fromDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ToDate"];
    toDate = v5->_toDate;
    v5->_toDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"SortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleItemQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_fromDate forKey:{@"FromDate", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_toDate forKey:@"ToDate"];
  [v4 encodeObject:self->_identifier forKey:@"Identifier"];
  [v4 encodeObject:self->_sortDescriptors forKey:@"SortDescriptors"];
}

@end