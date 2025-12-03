@interface GDGraphSportsGameEvent
- (GDGraphSportsGameEvent)initWithEntityIdentifierField:(id)field eventTypesField:(id)typesField nameField:(id)nameField dateField:(id)dateField cooccurringEventsField:(id)eventsField locationsField:(id)locationsField startLocationField:(id)locationField endLocationField:(id)self0 teamsField:(id)self1 allNameField:(id)self2 allDateField:(id)self3 allStartLocationField:(id)self4 allEndLocationField:(id)self5;
@end

@implementation GDGraphSportsGameEvent

- (GDGraphSportsGameEvent)initWithEntityIdentifierField:(id)field eventTypesField:(id)typesField nameField:(id)nameField dateField:(id)dateField cooccurringEventsField:(id)eventsField locationsField:(id)locationsField startLocationField:(id)locationField endLocationField:(id)self0 teamsField:(id)self1 allNameField:(id)self2 allDateField:(id)self3 allStartLocationField:(id)self4 allEndLocationField:(id)self5
{
  fieldCopy = field;
  typesFieldCopy = typesField;
  typesFieldCopy2 = typesField;
  nameFieldCopy = nameField;
  nameFieldCopy2 = nameField;
  dateFieldCopy = dateField;
  dateFieldCopy2 = dateField;
  eventsFieldCopy = eventsField;
  eventsFieldCopy2 = eventsField;
  locationsFieldCopy = locationsField;
  locationFieldCopy = locationField;
  endLocationFieldCopy = endLocationField;
  teamsFieldCopy = teamsField;
  allNameFieldCopy = allNameField;
  allDateFieldCopy = allDateField;
  startLocationFieldCopy = startLocationField;
  allEndLocationFieldCopy = allEndLocationField;
  v42.receiver = self;
  v42.super_class = GDGraphSportsGameEvent;
  v25 = [(GDGraphSportsGameEvent *)&v42 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_entityIdentifier, field);
    objc_storeStrong(&v26->_eventTypes, typesFieldCopy);
    objc_storeStrong(&v26->_name, nameFieldCopy);
    objc_storeStrong(&v26->_date, dateFieldCopy);
    objc_storeStrong(&v26->_cooccurringEvents, eventsFieldCopy);
    objc_storeStrong(&v26->_locations, locationsField);
    objc_storeStrong(&v26->_startLocation, locationField);
    objc_storeStrong(&v26->_endLocation, endLocationField);
    objc_storeStrong(&v26->_teams, teamsField);
    objc_storeStrong(&v26->_allName, allNameField);
    objc_storeStrong(&v26->_allDate, allDateField);
    objc_storeStrong(&v26->_allStartLocation, startLocationField);
    objc_storeStrong(&v26->_allEndLocation, allEndLocationField);
  }

  return v26;
}

@end