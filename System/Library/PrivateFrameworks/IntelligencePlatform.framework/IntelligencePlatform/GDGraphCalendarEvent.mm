@interface GDGraphCalendarEvent
- (GDGraphCalendarEvent)initWithEntityIdentifierField:(id)field nameField:(id)nameField datesField:(id)datesField isAllDayField:(id)dayField identifiersField:(id)identifiersField attendeesField:(id)attendeesField organizersField:(id)organizersField locationsField:(id)self0 sgeventTypeField:(id)self1 allNameField:(id)self2 allIsAllDayField:(id)self3;
@end

@implementation GDGraphCalendarEvent

- (GDGraphCalendarEvent)initWithEntityIdentifierField:(id)field nameField:(id)nameField datesField:(id)datesField isAllDayField:(id)dayField identifiersField:(id)identifiersField attendeesField:(id)attendeesField organizersField:(id)organizersField locationsField:(id)self0 sgeventTypeField:(id)self1 allNameField:(id)self2 allIsAllDayField:(id)self3
{
  fieldCopy = field;
  nameFieldCopy = nameField;
  datesFieldCopy = datesField;
  datesFieldCopy2 = datesField;
  dayFieldCopy = dayField;
  identifiersFieldCopy = identifiersField;
  identifiersFieldCopy2 = identifiersField;
  attendeesFieldCopy = attendeesField;
  organizersFieldCopy = organizersField;
  locationsFieldCopy = locationsField;
  typeFieldCopy = typeField;
  allNameFieldCopy = allNameField;
  allDayFieldCopy = allDayField;
  v36.receiver = self;
  v36.super_class = GDGraphCalendarEvent;
  v23 = [(GDGraphCalendarEvent *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_entityIdentifier, field);
    objc_storeStrong(&v24->_name, nameField);
    objc_storeStrong(&v24->_dates, datesFieldCopy);
    objc_storeStrong(&v24->_isAllDay, dayField);
    objc_storeStrong(&v24->_identifiers, identifiersFieldCopy);
    objc_storeStrong(&v24->_attendees, attendeesField);
    objc_storeStrong(&v24->_organizers, organizersField);
    objc_storeStrong(&v24->_locations, locationsField);
    objc_storeStrong(&v24->_sgeventType, typeField);
    objc_storeStrong(&v24->_allName, allNameField);
    objc_storeStrong(&v24->_allIsAllDay, allDayField);
  }

  return v24;
}

@end