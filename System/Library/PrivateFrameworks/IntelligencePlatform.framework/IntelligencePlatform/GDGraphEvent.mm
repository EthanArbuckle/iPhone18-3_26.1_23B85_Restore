@interface GDGraphEvent
- (GDGraphEvent)initWithEntityIdentifierField:(id)field eventTypesField:(id)typesField nameField:(id)nameField dateField:(id)dateField attendeesField:(id)attendeesField cooccurringEventsField:(id)eventsField locationsField:(id)locationsField startLocationField:(id)self0 endLocationField:(id)self1 allNameField:(id)self2 allDateField:(id)self3 allStartLocationField:(id)self4 allEndLocationField:(id)self5;
@end

@implementation GDGraphEvent

- (GDGraphEvent)initWithEntityIdentifierField:(id)field eventTypesField:(id)typesField nameField:(id)nameField dateField:(id)dateField attendeesField:(id)attendeesField cooccurringEventsField:(id)eventsField locationsField:(id)locationsField startLocationField:(id)self0 endLocationField:(id)self1 allNameField:(id)self2 allDateField:(id)self3 allStartLocationField:(id)self4 allEndLocationField:(id)self5
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
  locationsFieldCopy = locationsField;
  locationFieldCopy = locationField;
  endLocationFieldCopy = endLocationField;
  allNameFieldCopy = allNameField;
  allDateFieldCopy = allDateField;
  startLocationFieldCopy = startLocationField;
  allEndLocationFieldCopy = allEndLocationField;
  v42.receiver = self;
  v42.super_class = GDGraphEvent;
  v25 = [(GDGraphEvent *)&v42 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_entityIdentifier, field);
    objc_storeStrong(&v26->_eventTypes, typesFieldCopy);
    objc_storeStrong(&v26->_name, nameFieldCopy);
    objc_storeStrong(&v26->_date, dateFieldCopy);
    objc_storeStrong(&v26->_attendees, attendeesFieldCopy);
    objc_storeStrong(&v26->_cooccurringEvents, eventsField);
    objc_storeStrong(&v26->_locations, locationsField);
    objc_storeStrong(&v26->_startLocation, locationField);
    objc_storeStrong(&v26->_endLocation, endLocationField);
    objc_storeStrong(&v26->_allName, allNameField);
    objc_storeStrong(&v26->_allDate, allDateField);
    objc_storeStrong(&v26->_allStartLocation, startLocationField);
    objc_storeStrong(&v26->_allEndLocation, allEndLocationField);
  }

  return v26;
}

@end