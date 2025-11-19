@interface GDGraphCalendarEvent
- (GDGraphCalendarEvent)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 datesField:(id)a5 isAllDayField:(id)a6 identifiersField:(id)a7 attendeesField:(id)a8 organizersField:(id)a9 locationsField:(id)a10 sgeventTypeField:(id)a11 allNameField:(id)a12 allIsAllDayField:(id)a13;
@end

@implementation GDGraphCalendarEvent

- (GDGraphCalendarEvent)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 datesField:(id)a5 isAllDayField:(id)a6 identifiersField:(id)a7 attendeesField:(id)a8 organizersField:(id)a9 locationsField:(id)a10 sgeventTypeField:(id)a11 allNameField:(id)a12 allIsAllDayField:(id)a13
{
  v35 = a3;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v30 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v36.receiver = self;
  v36.super_class = GDGraphCalendarEvent;
  v23 = [(GDGraphCalendarEvent *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_entityIdentifier, a3);
    objc_storeStrong(&v24->_name, a4);
    objc_storeStrong(&v24->_dates, v27);
    objc_storeStrong(&v24->_isAllDay, a6);
    objc_storeStrong(&v24->_identifiers, v28);
    objc_storeStrong(&v24->_attendees, a8);
    objc_storeStrong(&v24->_organizers, a9);
    objc_storeStrong(&v24->_locations, a10);
    objc_storeStrong(&v24->_sgeventType, a11);
    objc_storeStrong(&v24->_allName, a12);
    objc_storeStrong(&v24->_allIsAllDay, a13);
  }

  return v24;
}

@end