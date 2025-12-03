@interface GDGraphGamingActivityEvent
- (GDGraphGamingActivityEvent)initWithEntityIdentifierField:(id)field nameField:(id)nameField dateField:(id)dateField attendeesField:(id)attendeesField locationsField:(id)locationsField startLocationField:(id)locationField endLocationField:(id)endLocationField activityTypeObjectField:(id)self0 activityTypeField:(id)self1 confidenceField:(id)self2 softwareField:(id)self3 allNameField:(id)self4 allDateField:(id)self5 allStartLocationField:(id)self6 allEndLocationField:(id)self7 allActivityTypeObjectField:(id)self8 allActivityTypeField:(id)self9 allConfidenceField:(id)allConfidenceField allSoftwareField:(id)allSoftwareField;
@end

@implementation GDGraphGamingActivityEvent

- (GDGraphGamingActivityEvent)initWithEntityIdentifierField:(id)field nameField:(id)nameField dateField:(id)dateField attendeesField:(id)attendeesField locationsField:(id)locationsField startLocationField:(id)locationField endLocationField:(id)endLocationField activityTypeObjectField:(id)self0 activityTypeField:(id)self1 confidenceField:(id)self2 softwareField:(id)self3 allNameField:(id)self4 allDateField:(id)self5 allStartLocationField:(id)self6 allEndLocationField:(id)self7 allActivityTypeObjectField:(id)self8 allActivityTypeField:(id)self9 allConfidenceField:(id)allConfidenceField allSoftwareField:(id)allSoftwareField
{
  fieldCopy = field;
  nameFieldCopy = nameField;
  nameFieldCopy2 = nameField;
  dateFieldCopy = dateField;
  dateFieldCopy2 = dateField;
  attendeesFieldCopy = attendeesField;
  locationsFieldCopy = locationsField;
  locationFieldCopy = locationField;
  locationFieldCopy2 = locationField;
  endLocationFieldCopy = endLocationField;
  objectFieldCopy = objectField;
  typeFieldCopy = typeField;
  confidenceFieldCopy = confidenceField;
  softwareFieldCopy = softwareField;
  allNameFieldCopy = allNameField;
  allDateFieldCopy = allDateField;
  startLocationFieldCopy = startLocationField;
  allEndLocationFieldCopy = allEndLocationField;
  typeObjectFieldCopy = typeObjectField;
  activityTypeFieldCopy = activityTypeField;
  allConfidenceFieldCopy = allConfidenceField;
  allSoftwareFieldCopy = allSoftwareField;
  v53.receiver = self;
  v53.super_class = GDGraphGamingActivityEvent;
  v33 = [(GDGraphGamingActivityEvent *)&v53 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_entityIdentifier, field);
    objc_storeStrong(&v34->_name, nameFieldCopy);
    objc_storeStrong(&v34->_date, dateFieldCopy);
    objc_storeStrong(&v34->_attendees, attendeesField);
    objc_storeStrong(&v34->_locations, locationsField);
    objc_storeStrong(&v34->_startLocation, locationFieldCopy);
    objc_storeStrong(&v34->_endLocation, endLocationField);
    objc_storeStrong(&v34->_activityTypeObject, objectField);
    objc_storeStrong(&v34->_activityType, typeField);
    objc_storeStrong(&v34->_confidence, confidenceField);
    objc_storeStrong(&v34->_software, softwareField);
    objc_storeStrong(&v34->_allName, allNameField);
    objc_storeStrong(&v34->_allDate, allDateField);
    objc_storeStrong(&v34->_allStartLocation, startLocationField);
    objc_storeStrong(&v34->_allEndLocation, allEndLocationField);
    objc_storeStrong(&v34->_allActivityTypeObject, typeObjectField);
    objc_storeStrong(&v34->_allActivityType, activityTypeField);
    objc_storeStrong(&v34->_allConfidence, allConfidenceField);
    objc_storeStrong(&v34->_allSoftware, allSoftwareField);
  }

  return v34;
}

@end