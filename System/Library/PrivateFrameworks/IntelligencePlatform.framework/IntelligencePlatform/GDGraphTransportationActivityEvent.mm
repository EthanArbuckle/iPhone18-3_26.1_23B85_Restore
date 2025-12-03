@interface GDGraphTransportationActivityEvent
- (GDGraphTransportationActivityEvent)initWithEntityIdentifierField:(id)field nameField:(id)nameField dateField:(id)dateField attendeesField:(id)attendeesField locationsField:(id)locationsField startLocationField:(id)locationField endLocationField:(id)endLocationField activityTypeObjectField:(id)self0 activityTypeField:(id)self1 confidenceField:(id)self2 uncertaintyField:(id)self3 modeOfTransportationField:(id)self4 transportationTypeField:(id)self5 allNameField:(id)self6 allDateField:(id)self7 allStartLocationField:(id)self8 allEndLocationField:(id)self9 allActivityTypeObjectField:(id)typeObjectField allActivityTypeField:(id)activityTypeField allConfidenceField:(id)allConfidenceField allUncertaintyField:(id)allUncertaintyField allModeOfTransportationField:(id)ofTransportationField allTransportationTypeField:(id)allTransportationTypeField;
@end

@implementation GDGraphTransportationActivityEvent

- (GDGraphTransportationActivityEvent)initWithEntityIdentifierField:(id)field nameField:(id)nameField dateField:(id)dateField attendeesField:(id)attendeesField locationsField:(id)locationsField startLocationField:(id)locationField endLocationField:(id)endLocationField activityTypeObjectField:(id)self0 activityTypeField:(id)self1 confidenceField:(id)self2 uncertaintyField:(id)self3 modeOfTransportationField:(id)self4 transportationTypeField:(id)self5 allNameField:(id)self6 allDateField:(id)self7 allStartLocationField:(id)self8 allEndLocationField:(id)self9 allActivityTypeObjectField:(id)typeObjectField allActivityTypeField:(id)activityTypeField allConfidenceField:(id)allConfidenceField allUncertaintyField:(id)allUncertaintyField allModeOfTransportationField:(id)ofTransportationField allTransportationTypeField:(id)allTransportationTypeField
{
  fieldCopy = field;
  nameFieldCopy = nameField;
  nameFieldCopy2 = nameField;
  dateFieldCopy = dateField;
  dateFieldCopy2 = dateField;
  attendeesFieldCopy = attendeesField;
  attendeesFieldCopy2 = attendeesField;
  locationsFieldCopy = locationsField;
  locationFieldCopy = locationField;
  endLocationFieldCopy = endLocationField;
  objectFieldCopy = objectField;
  typeFieldCopy = typeField;
  confidenceFieldCopy = confidenceField;
  uncertaintyFieldCopy = uncertaintyField;
  transportationFieldCopy = transportationField;
  transportationTypeFieldCopy = transportationTypeField;
  allNameFieldCopy = allNameField;
  allDateFieldCopy = allDateField;
  startLocationFieldCopy = startLocationField;
  allEndLocationFieldCopy = allEndLocationField;
  typeObjectFieldCopy = typeObjectField;
  activityTypeFieldCopy = activityTypeField;
  allConfidenceFieldCopy = allConfidenceField;
  allUncertaintyFieldCopy = allUncertaintyField;
  ofTransportationFieldCopy = ofTransportationField;
  allTransportationTypeFieldCopy = allTransportationTypeField;
  v61.receiver = self;
  v61.super_class = GDGraphTransportationActivityEvent;
  v36 = [(GDGraphTransportationActivityEvent *)&v61 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_entityIdentifier, field);
    objc_storeStrong(&v37->_name, nameFieldCopy);
    objc_storeStrong(&v37->_date, dateFieldCopy);
    objc_storeStrong(&v37->_attendees, attendeesFieldCopy);
    objc_storeStrong(&v37->_locations, locationsField);
    objc_storeStrong(&v37->_startLocation, locationField);
    objc_storeStrong(&v37->_endLocation, endLocationField);
    objc_storeStrong(&v37->_activityTypeObject, objectField);
    objc_storeStrong(&v37->_activityType, typeField);
    objc_storeStrong(&v37->_confidence, confidenceField);
    objc_storeStrong(&v37->_uncertainty, uncertaintyField);
    objc_storeStrong(&v37->_modeOfTransportation, transportationField);
    objc_storeStrong(&v37->_transportationType, transportationTypeField);
    objc_storeStrong(&v37->_allName, allNameField);
    objc_storeStrong(&v37->_allDate, allDateField);
    objc_storeStrong(&v37->_allStartLocation, startLocationField);
    objc_storeStrong(&v37->_allEndLocation, allEndLocationField);
    objc_storeStrong(&v37->_allActivityTypeObject, typeObjectField);
    objc_storeStrong(&v37->_allActivityType, activityTypeField);
    objc_storeStrong(&v37->_allConfidence, allConfidenceField);
    objc_storeStrong(&v37->_allUncertainty, allUncertaintyField);
    objc_storeStrong(&v37->_allModeOfTransportation, ofTransportationField);
    objc_storeStrong(&v37->_allTransportationType, allTransportationTypeField);
  }

  return v37;
}

@end