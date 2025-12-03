@interface GDGraphDateRelationship
- (GDGraphDateRelationship)initWithStartDateField:(id)field endDateField:(id)dateField occurrenceDateField:(id)occurrenceDateField allStartDateField:(id)startDateField allEndDateField:(id)endDateField allOccurrenceDateField:(id)allOccurrenceDateField;
@end

@implementation GDGraphDateRelationship

- (GDGraphDateRelationship)initWithStartDateField:(id)field endDateField:(id)dateField occurrenceDateField:(id)occurrenceDateField allStartDateField:(id)startDateField allEndDateField:(id)endDateField allOccurrenceDateField:(id)allOccurrenceDateField
{
  fieldCopy = field;
  dateFieldCopy = dateField;
  occurrenceDateFieldCopy = occurrenceDateField;
  startDateFieldCopy = startDateField;
  endDateFieldCopy = endDateField;
  allOccurrenceDateFieldCopy = allOccurrenceDateField;
  v24.receiver = self;
  v24.super_class = GDGraphDateRelationship;
  v18 = [(GDGraphDateRelationship *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_startDate, field);
    objc_storeStrong(&v19->_endDate, dateField);
    objc_storeStrong(&v19->_occurrenceDate, occurrenceDateField);
    objc_storeStrong(&v19->_allStartDate, startDateField);
    objc_storeStrong(&v19->_allEndDate, endDateField);
    objc_storeStrong(&v19->_allOccurrenceDate, allOccurrenceDateField);
  }

  return v19;
}

@end