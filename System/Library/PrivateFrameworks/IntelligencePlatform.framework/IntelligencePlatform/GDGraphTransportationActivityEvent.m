@interface GDGraphTransportationActivityEvent
- (GDGraphTransportationActivityEvent)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 dateField:(id)a5 attendeesField:(id)a6 locationsField:(id)a7 startLocationField:(id)a8 endLocationField:(id)a9 activityTypeObjectField:(id)a10 activityTypeField:(id)a11 confidenceField:(id)a12 uncertaintyField:(id)a13 modeOfTransportationField:(id)a14 transportationTypeField:(id)a15 allNameField:(id)a16 allDateField:(id)a17 allStartLocationField:(id)a18 allEndLocationField:(id)a19 allActivityTypeObjectField:(id)a20 allActivityTypeField:(id)a21 allConfidenceField:(id)a22 allUncertaintyField:(id)a23 allModeOfTransportationField:(id)a24 allTransportationTypeField:(id)a25;
@end

@implementation GDGraphTransportationActivityEvent

- (GDGraphTransportationActivityEvent)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 dateField:(id)a5 attendeesField:(id)a6 locationsField:(id)a7 startLocationField:(id)a8 endLocationField:(id)a9 activityTypeObjectField:(id)a10 activityTypeField:(id)a11 confidenceField:(id)a12 uncertaintyField:(id)a13 modeOfTransportationField:(id)a14 transportationTypeField:(id)a15 allNameField:(id)a16 allDateField:(id)a17 allStartLocationField:(id)a18 allEndLocationField:(id)a19 allActivityTypeObjectField:(id)a20 allActivityTypeField:(id)a21 allConfidenceField:(id)a22 allUncertaintyField:(id)a23 allModeOfTransportationField:(id)a24 allTransportationTypeField:(id)a25
{
  v60 = a3;
  v40 = a4;
  v59 = a4;
  v41 = a5;
  v58 = a5;
  v42 = a6;
  v57 = a6;
  v56 = a7;
  v55 = a8;
  v54 = a9;
  v53 = a10;
  v52 = a11;
  v51 = a12;
  v50 = a13;
  v49 = a14;
  v48 = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v34 = a20;
  v47 = a21;
  v46 = a22;
  v45 = a23;
  v44 = a24;
  v35 = a25;
  v61.receiver = self;
  v61.super_class = GDGraphTransportationActivityEvent;
  v36 = [(GDGraphTransportationActivityEvent *)&v61 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_entityIdentifier, a3);
    objc_storeStrong(&v37->_name, v40);
    objc_storeStrong(&v37->_date, v41);
    objc_storeStrong(&v37->_attendees, v42);
    objc_storeStrong(&v37->_locations, a7);
    objc_storeStrong(&v37->_startLocation, a8);
    objc_storeStrong(&v37->_endLocation, a9);
    objc_storeStrong(&v37->_activityTypeObject, a10);
    objc_storeStrong(&v37->_activityType, a11);
    objc_storeStrong(&v37->_confidence, a12);
    objc_storeStrong(&v37->_uncertainty, a13);
    objc_storeStrong(&v37->_modeOfTransportation, a14);
    objc_storeStrong(&v37->_transportationType, a15);
    objc_storeStrong(&v37->_allName, a16);
    objc_storeStrong(&v37->_allDate, a17);
    objc_storeStrong(&v37->_allStartLocation, a18);
    objc_storeStrong(&v37->_allEndLocation, a19);
    objc_storeStrong(&v37->_allActivityTypeObject, a20);
    objc_storeStrong(&v37->_allActivityType, a21);
    objc_storeStrong(&v37->_allConfidence, a22);
    objc_storeStrong(&v37->_allUncertainty, a23);
    objc_storeStrong(&v37->_allModeOfTransportation, a24);
    objc_storeStrong(&v37->_allTransportationType, a25);
  }

  return v37;
}

@end