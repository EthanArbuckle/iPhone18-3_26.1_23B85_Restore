@interface GDGraphSportsGameEvent
- (GDGraphSportsGameEvent)initWithEntityIdentifierField:(id)a3 eventTypesField:(id)a4 nameField:(id)a5 dateField:(id)a6 cooccurringEventsField:(id)a7 locationsField:(id)a8 startLocationField:(id)a9 endLocationField:(id)a10 teamsField:(id)a11 allNameField:(id)a12 allDateField:(id)a13 allStartLocationField:(id)a14 allEndLocationField:(id)a15;
@end

@implementation GDGraphSportsGameEvent

- (GDGraphSportsGameEvent)initWithEntityIdentifierField:(id)a3 eventTypesField:(id)a4 nameField:(id)a5 dateField:(id)a6 cooccurringEventsField:(id)a7 locationsField:(id)a8 startLocationField:(id)a9 endLocationField:(id)a10 teamsField:(id)a11 allNameField:(id)a12 allDateField:(id)a13 allStartLocationField:(id)a14 allEndLocationField:(id)a15
{
  v41 = a3;
  v29 = a4;
  v40 = a4;
  v30 = a5;
  v39 = a5;
  v31 = a6;
  v38 = a6;
  v32 = a7;
  v37 = a7;
  v36 = a8;
  v35 = a9;
  v34 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v42.receiver = self;
  v42.super_class = GDGraphSportsGameEvent;
  v25 = [(GDGraphSportsGameEvent *)&v42 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_entityIdentifier, a3);
    objc_storeStrong(&v26->_eventTypes, v29);
    objc_storeStrong(&v26->_name, v30);
    objc_storeStrong(&v26->_date, v31);
    objc_storeStrong(&v26->_cooccurringEvents, v32);
    objc_storeStrong(&v26->_locations, a8);
    objc_storeStrong(&v26->_startLocation, a9);
    objc_storeStrong(&v26->_endLocation, a10);
    objc_storeStrong(&v26->_teams, a11);
    objc_storeStrong(&v26->_allName, a12);
    objc_storeStrong(&v26->_allDate, a13);
    objc_storeStrong(&v26->_allStartLocation, a14);
    objc_storeStrong(&v26->_allEndLocation, a15);
  }

  return v26;
}

@end