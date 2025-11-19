@interface GDGraphDateRelationship
- (GDGraphDateRelationship)initWithStartDateField:(id)a3 endDateField:(id)a4 occurrenceDateField:(id)a5 allStartDateField:(id)a6 allEndDateField:(id)a7 allOccurrenceDateField:(id)a8;
@end

@implementation GDGraphDateRelationship

- (GDGraphDateRelationship)initWithStartDateField:(id)a3 endDateField:(id)a4 occurrenceDateField:(id)a5 allStartDateField:(id)a6 allEndDateField:(id)a7 allOccurrenceDateField:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = GDGraphDateRelationship;
  v18 = [(GDGraphDateRelationship *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_startDate, a3);
    objc_storeStrong(&v19->_endDate, a4);
    objc_storeStrong(&v19->_occurrenceDate, a5);
    objc_storeStrong(&v19->_allStartDate, a6);
    objc_storeStrong(&v19->_allEndDate, a7);
    objc_storeStrong(&v19->_allOccurrenceDate, a8);
  }

  return v19;
}

@end