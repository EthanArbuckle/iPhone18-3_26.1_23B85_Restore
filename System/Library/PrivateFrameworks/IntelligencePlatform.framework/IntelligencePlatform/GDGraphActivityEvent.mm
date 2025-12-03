@interface GDGraphActivityEvent
- (GDGraphActivityEvent)initWithEntityIdentifierField:(id)field eventTypesField:(id)typesField nameField:(id)nameField dateField:(id)dateField attendeesField:(id)attendeesField cooccurringEventsField:(id)eventsField subEventsField:(id)subEventsField locationsField:(id)self0 startLocationField:(id)self1 endLocationField:(id)self2 activityTypeObjectField:(id)self3 activityTypeField:(id)self4 confidenceField:(id)self5 allNameField:(id)self6 allDateField:(id)self7 allStartLocationField:(id)self8 allEndLocationField:(id)self9 allActivityTypeObjectField:(id)typeObjectField allActivityTypeField:(id)activityTypeField allConfidenceField:(id)allConfidenceField;
@end

@implementation GDGraphActivityEvent

- (GDGraphActivityEvent)initWithEntityIdentifierField:(id)field eventTypesField:(id)typesField nameField:(id)nameField dateField:(id)dateField attendeesField:(id)attendeesField cooccurringEventsField:(id)eventsField subEventsField:(id)subEventsField locationsField:(id)self0 startLocationField:(id)self1 endLocationField:(id)self2 activityTypeObjectField:(id)self3 activityTypeField:(id)self4 confidenceField:(id)self5 allNameField:(id)self6 allDateField:(id)self7 allStartLocationField:(id)self8 allEndLocationField:(id)self9 allActivityTypeObjectField:(id)typeObjectField allActivityTypeField:(id)activityTypeField allConfidenceField:(id)allConfidenceField
{
  fieldCopy = field;
  typesFieldCopy = typesField;
  typesFieldCopy2 = typesField;
  nameFieldCopy = nameField;
  nameFieldCopy2 = nameField;
  dateFieldCopy = dateField;
  dateFieldCopy2 = dateField;
  attendeesFieldCopy = attendeesField;
  attendeesFieldCopy2 = attendeesField;
  eventsFieldCopy = eventsField;
  subEventsFieldCopy = subEventsField;
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
  v56.receiver = self;
  v56.super_class = GDGraphActivityEvent;
  v33 = [(GDGraphActivityEvent *)&v56 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_entityIdentifier, field);
    objc_storeStrong(&v34->_eventTypes, typesFieldCopy);
    objc_storeStrong(&v34->_name, nameFieldCopy);
    objc_storeStrong(&v34->_date, dateFieldCopy);
    objc_storeStrong(&v34->_attendees, attendeesFieldCopy);
    objc_storeStrong(&v34->_cooccurringEvents, eventsField);
    objc_storeStrong(&v34->_subEvents, subEventsField);
    objc_storeStrong(&v34->_locations, locationsField);
    objc_storeStrong(&v34->_startLocation, locationField);
    objc_storeStrong(&v34->_endLocation, endLocationField);
    objc_storeStrong(&v34->_activityTypeObject, objectField);
    objc_storeStrong(&v34->_activityType, typeField);
    objc_storeStrong(&v34->_confidence, confidenceField);
    objc_storeStrong(&v34->_allName, allNameField);
    objc_storeStrong(&v34->_allDate, allDateField);
    objc_storeStrong(&v34->_allStartLocation, startLocationField);
    objc_storeStrong(&v34->_allEndLocation, allEndLocationField);
    objc_storeStrong(&v34->_allActivityTypeObject, typeObjectField);
    objc_storeStrong(&v34->_allActivityType, activityTypeField);
    objc_storeStrong(&v34->_allConfidence, allConfidenceField);
  }

  return v34;
}

@end