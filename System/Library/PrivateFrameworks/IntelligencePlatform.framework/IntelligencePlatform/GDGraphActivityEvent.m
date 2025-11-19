@interface GDGraphActivityEvent
- (GDGraphActivityEvent)initWithEntityIdentifierField:(id)a3 eventTypesField:(id)a4 nameField:(id)a5 dateField:(id)a6 attendeesField:(id)a7 cooccurringEventsField:(id)a8 subEventsField:(id)a9 locationsField:(id)a10 startLocationField:(id)a11 endLocationField:(id)a12 activityTypeObjectField:(id)a13 activityTypeField:(id)a14 confidenceField:(id)a15 allNameField:(id)a16 allDateField:(id)a17 allStartLocationField:(id)a18 allEndLocationField:(id)a19 allActivityTypeObjectField:(id)a20 allActivityTypeField:(id)a21 allConfidenceField:(id)a22;
@end

@implementation GDGraphActivityEvent

- (GDGraphActivityEvent)initWithEntityIdentifierField:(id)a3 eventTypesField:(id)a4 nameField:(id)a5 dateField:(id)a6 attendeesField:(id)a7 cooccurringEventsField:(id)a8 subEventsField:(id)a9 locationsField:(id)a10 startLocationField:(id)a11 endLocationField:(id)a12 activityTypeObjectField:(id)a13 activityTypeField:(id)a14 confidenceField:(id)a15 allNameField:(id)a16 allDateField:(id)a17 allStartLocationField:(id)a18 allEndLocationField:(id)a19 allActivityTypeObjectField:(id)a20 allActivityTypeField:(id)a21 allConfidenceField:(id)a22
{
  v55 = a3;
  v37 = a4;
  v54 = a4;
  v38 = a5;
  v53 = a5;
  v39 = a6;
  v52 = a6;
  v40 = a7;
  v51 = a7;
  v50 = a8;
  v49 = a9;
  v48 = a10;
  v47 = a11;
  v46 = a12;
  v45 = a13;
  v44 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v30 = a18;
  v31 = a19;
  v43 = a20;
  v42 = a21;
  v32 = a22;
  v56.receiver = self;
  v56.super_class = GDGraphActivityEvent;
  v33 = [(GDGraphActivityEvent *)&v56 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_entityIdentifier, a3);
    objc_storeStrong(&v34->_eventTypes, v37);
    objc_storeStrong(&v34->_name, v38);
    objc_storeStrong(&v34->_date, v39);
    objc_storeStrong(&v34->_attendees, v40);
    objc_storeStrong(&v34->_cooccurringEvents, a8);
    objc_storeStrong(&v34->_subEvents, a9);
    objc_storeStrong(&v34->_locations, a10);
    objc_storeStrong(&v34->_startLocation, a11);
    objc_storeStrong(&v34->_endLocation, a12);
    objc_storeStrong(&v34->_activityTypeObject, a13);
    objc_storeStrong(&v34->_activityType, a14);
    objc_storeStrong(&v34->_confidence, a15);
    objc_storeStrong(&v34->_allName, a16);
    objc_storeStrong(&v34->_allDate, a17);
    objc_storeStrong(&v34->_allStartLocation, a18);
    objc_storeStrong(&v34->_allEndLocation, a19);
    objc_storeStrong(&v34->_allActivityTypeObject, a20);
    objc_storeStrong(&v34->_allActivityType, a21);
    objc_storeStrong(&v34->_allConfidence, a22);
  }

  return v34;
}

@end