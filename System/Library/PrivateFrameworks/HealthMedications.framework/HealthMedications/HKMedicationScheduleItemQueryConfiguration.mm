@interface HKMedicationScheduleItemQueryConfiguration
- (HKMedicationScheduleItemQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationScheduleItemQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = HKMedicationScheduleItemQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v10 copyWithZone:zone];
  fromDate = [(HKMedicationScheduleItemQueryConfiguration *)self fromDate];
  [v4 setFromDate:fromDate];

  toDate = [(HKMedicationScheduleItemQueryConfiguration *)self toDate];
  [v4 setToDate:toDate];

  identifier = [(HKMedicationScheduleItemQueryConfiguration *)self identifier];
  [v4 setIdentifier:identifier];

  sortDescriptors = [(HKMedicationScheduleItemQueryConfiguration *)self sortDescriptors];
  [v4 setSortDescriptors:sortDescriptors];

  return v4;
}

- (HKMedicationScheduleItemQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKMedicationScheduleItemQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FromDate"];
    fromDate = v5->_fromDate;
    v5->_fromDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ToDate"];
    toDate = v5->_toDate;
    v5->_toDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"SortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleItemQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_fromDate forKey:{@"FromDate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_toDate forKey:@"ToDate"];
  [coderCopy encodeObject:self->_identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_sortDescriptors forKey:@"SortDescriptors"];
}

@end