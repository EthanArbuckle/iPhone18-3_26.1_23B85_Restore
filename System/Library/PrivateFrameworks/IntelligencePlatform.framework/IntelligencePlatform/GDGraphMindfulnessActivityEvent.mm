@interface GDGraphMindfulnessActivityEvent
- (GDGraphMindfulnessActivityEvent)initWithEntityIdentifierField:(id)field nameField:(id)nameField dateField:(id)dateField attendeesField:(id)attendeesField locationsField:(id)locationsField startLocationField:(id)locationField endLocationField:(id)endLocationField activityTypeObjectField:(id)self0 activityTypeField:(id)self1 confidenceField:(id)self2 allNameField:(id)self3 allDateField:(id)self4 allStartLocationField:(id)self5 allEndLocationField:(id)self6 allActivityTypeObjectField:(id)self7 allActivityTypeField:(id)self8 allConfidenceField:(id)self9;
@end

@implementation GDGraphMindfulnessActivityEvent

- (GDGraphMindfulnessActivityEvent)initWithEntityIdentifierField:(id)field nameField:(id)nameField dateField:(id)dateField attendeesField:(id)attendeesField locationsField:(id)locationsField startLocationField:(id)locationField endLocationField:(id)endLocationField activityTypeObjectField:(id)self0 activityTypeField:(id)self1 confidenceField:(id)self2 allNameField:(id)self3 allDateField:(id)self4 allStartLocationField:(id)self5 allEndLocationField:(id)self6 allActivityTypeObjectField:(id)self7 allActivityTypeField:(id)self8 allConfidenceField:(id)self9
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
  allNameFieldCopy = allNameField;
  allDateFieldCopy = allDateField;
  startLocationFieldCopy = startLocationField;
  allEndLocationFieldCopy = allEndLocationField;
  typeObjectFieldCopy = typeObjectField;
  activityTypeFieldCopy = activityTypeField;
  allConfidenceFieldCopy = allConfidenceField;
  v49.receiver = self;
  v49.super_class = GDGraphMindfulnessActivityEvent;
  v31 = [(GDGraphMindfulnessActivityEvent *)&v49 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_entityIdentifier, field);
    objc_storeStrong(&v32->_name, nameFieldCopy);
    objc_storeStrong(&v32->_date, dateFieldCopy);
    objc_storeStrong(&v32->_attendees, attendeesFieldCopy);
    objc_storeStrong(&v32->_locations, locationsField);
    objc_storeStrong(&v32->_startLocation, locationField);
    objc_storeStrong(&v32->_endLocation, endLocationField);
    objc_storeStrong(&v32->_activityTypeObject, objectField);
    objc_storeStrong(&v32->_activityType, typeField);
    objc_storeStrong(&v32->_confidence, confidenceField);
    objc_storeStrong(&v32->_allName, allNameField);
    objc_storeStrong(&v32->_allDate, allDateField);
    objc_storeStrong(&v32->_allStartLocation, startLocationField);
    objc_storeStrong(&v32->_allEndLocation, allEndLocationField);
    objc_storeStrong(&v32->_allActivityTypeObject, typeObjectField);
    objc_storeStrong(&v32->_allActivityType, activityTypeField);
    objc_storeStrong(&v32->_allConfidence, allConfidenceField);
  }

  return v32;
}

@end