@interface GDGraphDrivingActivityEvent
- (GDGraphDrivingActivityEvent)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 dateField:(id)a5 attendeesField:(id)a6 locationsField:(id)a7 startLocationField:(id)a8 endLocationField:(id)a9 activityTypeObjectField:(id)a10 activityTypeField:(id)a11 confidenceField:(id)a12 allNameField:(id)a13 allDateField:(id)a14 allStartLocationField:(id)a15 allEndLocationField:(id)a16 allActivityTypeObjectField:(id)a17 allActivityTypeField:(id)a18 allConfidenceField:(id)a19;
@end

@implementation GDGraphDrivingActivityEvent

- (GDGraphDrivingActivityEvent)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 dateField:(id)a5 attendeesField:(id)a6 locationsField:(id)a7 startLocationField:(id)a8 endLocationField:(id)a9 activityTypeObjectField:(id)a10 activityTypeField:(id)a11 confidenceField:(id)a12 allNameField:(id)a13 allDateField:(id)a14 allStartLocationField:(id)a15 allEndLocationField:(id)a16 allActivityTypeObjectField:(id)a17 allActivityTypeField:(id)a18 allConfidenceField:(id)a19
{
  v48 = a3;
  v35 = a4;
  v47 = a4;
  v36 = a5;
  v46 = a5;
  v37 = a6;
  v45 = a6;
  v44 = a7;
  v43 = a8;
  v42 = a9;
  v41 = a10;
  v40 = a11;
  v39 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v27 = a16;
  v28 = a17;
  v29 = a18;
  v30 = a19;
  v49.receiver = self;
  v49.super_class = GDGraphDrivingActivityEvent;
  v31 = [(GDGraphDrivingActivityEvent *)&v49 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_entityIdentifier, a3);
    objc_storeStrong(&v32->_name, v35);
    objc_storeStrong(&v32->_date, v36);
    objc_storeStrong(&v32->_attendees, v37);
    objc_storeStrong(&v32->_locations, a7);
    objc_storeStrong(&v32->_startLocation, a8);
    objc_storeStrong(&v32->_endLocation, a9);
    objc_storeStrong(&v32->_activityTypeObject, a10);
    objc_storeStrong(&v32->_activityType, a11);
    objc_storeStrong(&v32->_confidence, a12);
    objc_storeStrong(&v32->_allName, a13);
    objc_storeStrong(&v32->_allDate, a14);
    objc_storeStrong(&v32->_allStartLocation, a15);
    objc_storeStrong(&v32->_allEndLocation, a16);
    objc_storeStrong(&v32->_allActivityTypeObject, a17);
    objc_storeStrong(&v32->_allActivityType, a18);
    objc_storeStrong(&v32->_allConfidence, a19);
  }

  return v32;
}

@end