@interface GDGraphGamingActivityEvent
- (GDGraphGamingActivityEvent)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 dateField:(id)a5 attendeesField:(id)a6 locationsField:(id)a7 startLocationField:(id)a8 endLocationField:(id)a9 activityTypeObjectField:(id)a10 activityTypeField:(id)a11 confidenceField:(id)a12 softwareField:(id)a13 allNameField:(id)a14 allDateField:(id)a15 allStartLocationField:(id)a16 allEndLocationField:(id)a17 allActivityTypeObjectField:(id)a18 allActivityTypeField:(id)a19 allConfidenceField:(id)a20 allSoftwareField:(id)a21;
@end

@implementation GDGraphGamingActivityEvent

- (GDGraphGamingActivityEvent)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 dateField:(id)a5 attendeesField:(id)a6 locationsField:(id)a7 startLocationField:(id)a8 endLocationField:(id)a9 activityTypeObjectField:(id)a10 activityTypeField:(id)a11 confidenceField:(id)a12 softwareField:(id)a13 allNameField:(id)a14 allDateField:(id)a15 allStartLocationField:(id)a16 allEndLocationField:(id)a17 allActivityTypeObjectField:(id)a18 allActivityTypeField:(id)a19 allConfidenceField:(id)a20 allSoftwareField:(id)a21
{
  v52 = a3;
  v37 = a4;
  v51 = a4;
  v38 = a5;
  v50 = a5;
  v49 = a6;
  v48 = a7;
  v39 = a8;
  v47 = a8;
  v46 = a9;
  v45 = a10;
  v44 = a11;
  v43 = a12;
  v42 = a13;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v30 = a18;
  v31 = a19;
  v41 = a20;
  v32 = a21;
  v53.receiver = self;
  v53.super_class = GDGraphGamingActivityEvent;
  v33 = [(GDGraphGamingActivityEvent *)&v53 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_entityIdentifier, a3);
    objc_storeStrong(&v34->_name, v37);
    objc_storeStrong(&v34->_date, v38);
    objc_storeStrong(&v34->_attendees, a6);
    objc_storeStrong(&v34->_locations, a7);
    objc_storeStrong(&v34->_startLocation, v39);
    objc_storeStrong(&v34->_endLocation, a9);
    objc_storeStrong(&v34->_activityTypeObject, a10);
    objc_storeStrong(&v34->_activityType, a11);
    objc_storeStrong(&v34->_confidence, a12);
    objc_storeStrong(&v34->_software, a13);
    objc_storeStrong(&v34->_allName, a14);
    objc_storeStrong(&v34->_allDate, a15);
    objc_storeStrong(&v34->_allStartLocation, a16);
    objc_storeStrong(&v34->_allEndLocation, a17);
    objc_storeStrong(&v34->_allActivityTypeObject, a18);
    objc_storeStrong(&v34->_allActivityType, a19);
    objc_storeStrong(&v34->_allConfidence, a20);
    objc_storeStrong(&v34->_allSoftware, a21);
  }

  return v34;
}

@end