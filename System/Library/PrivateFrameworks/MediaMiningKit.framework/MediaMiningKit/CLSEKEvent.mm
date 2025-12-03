@interface CLSEKEvent
- (BOOL)isEqual:(id)equal;
- (CLLocation)geoLocation;
- (CLLocationCoordinate2D)coordinate;
- (CLSEKEvent)initWithCoder:(id)coder;
- (CLSEKEvent)initWithEKEvent:(id)event;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSEKEvent

- (CLLocationCoordinate2D)coordinate
{
  objc_copyStruct(v4, &self->_coordinate, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  title = [(CLSEKEvent *)self title];
  attendees = [(CLSEKEvent *)self attendees];
  v6 = [attendees count];
  startDate = [(CLSEKEvent *)self startDate];
  v8 = [v3 stringWithFormat:@"CLSEKEvent title: %@, number of participants: %zu, start date: %@", title, v6, startDate];

  return v8;
}

- (CLLocation)geoLocation
{
  if (CLLocationCoordinate2DIsValid(self->_coordinate))
  {
    v3 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:self->_coordinate.latitude longitude:self->_coordinate.longitude];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CLSEKEvent *)self hash];
      v6 = v5 == [(CLSEKEvent *)equalCopy hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  calendarItemIdentifier = self->_calendarItemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:calendarItemIdentifier forKey:@"calendarItemIdentifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeBool:self->_isBirthday forKey:@"isBirthday"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeBool:self->_allDay forKey:@"allDay"];
  [coderCopy encodeBool:self->_hasAttendees forKey:@"hasAttendees"];
  [coderCopy encodeObject:self->_attendees forKey:@"attendees"];
  [coderCopy encodeBool:self->_organizedByMe forKey:@"organizedByMe"];
  [coderCopy encodeObject:self->_selfAttendee forKey:@"selfAttendee"];
  [coderCopy encodeObject:self->_calendar forKey:@"calendar"];
  [coderCopy encodeBool:self->_isSuggestedAndAccepted forKey:@"isSuggestedAndAccepted"];
  [coderCopy encodeBool:self->_hasRecurrenceRules forKey:@"hasRecurrenceRules"];
  [coderCopy encodeDouble:@"latitude" forKey:self->_coordinate.latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_coordinate.longitude];
}

- (CLSEKEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = CLSEKEvent;
  v5 = [(CLSEKEvent *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calendarItemIdentifier"];
    calendarItemIdentifier = v5->_calendarItemIdentifier;
    v5->_calendarItemIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_isBirthday = [coderCopy decodeBoolForKey:@"isBirthday"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v12;

    v5->_allDay = [coderCopy decodeBoolForKey:@"allDay"];
    v5->_hasAttendees = [coderCopy decodeBoolForKey:@"hasAttendees"];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"attendees"];
    attendees = v5->_attendees;
    v5->_attendees = v17;

    v5->_organizedByMe = [coderCopy decodeBoolForKey:@"organizedByMe"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfAttendee"];
    selfAttendee = v5->_selfAttendee;
    v5->_selfAttendee = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calendar"];
    calendar = v5->_calendar;
    v5->_calendar = v21;

    v5->_isSuggestedAndAccepted = [coderCopy decodeBoolForKey:@"isSuggestedAndAccepted"];
    v5->_hasRecurrenceRules = [coderCopy decodeBoolForKey:@"hasRecurrenceRules"];
    [coderCopy decodeDoubleForKey:@"latitude"];
    v24 = v23;
    [coderCopy decodeDoubleForKey:@"longitude"];
    v5->_coordinate = CLLocationCoordinate2DMake(v24, v25);
  }

  return v5;
}

- (CLSEKEvent)initWithEKEvent:(id)event
{
  v47 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v45.receiver = self;
  v45.super_class = CLSEKEvent;
  v5 = [(CLSEKEvent *)&v45 init];
  if (v5)
  {
    calendarItemIdentifier = [eventCopy calendarItemIdentifier];
    v7 = *(v5 + 8);
    *(v5 + 8) = calendarItemIdentifier;

    title = [eventCopy title];
    v9 = *(v5 + 2);
    *(v5 + 2) = title;

    v5[8] = [eventCopy isBirthday];
    startDate = [eventCopy startDate];
    v11 = *(v5 + 3);
    *(v5 + 3) = startDate;

    endDate = [eventCopy endDate];
    v13 = *(v5 + 4);
    *(v5 + 4) = endDate;

    v5[9] = [eventCopy isAllDay];
    v5[10] = [eventCopy hasAttendees];
    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    attendees = [eventCopy attendees];
    v16 = [v14 initWithCapacity:{objc_msgSend(attendees, "count")}];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    attendees2 = [eventCopy attendees];
    v18 = [attendees2 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v42;
      do
      {
        v21 = 0;
        do
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(attendees2);
          }

          v22 = *(*(&v41 + 1) + 8 * v21);
          v23 = objc_autoreleasePoolPush();
          v24 = [[CLSEKParticipant alloc] initWithEKParticipant:v22];
          if (v24)
          {
            [v16 addObject:v24];
          }

          objc_autoreleasePoolPop(v23);
          ++v21;
        }

        while (v19 != v21);
        v19 = [attendees2 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v19);
    }

    v25 = *(v5 + 5);
    *(v5 + 5) = v16;
    v26 = v16;

    structuredLocationWithoutPrediction = [eventCopy structuredLocationWithoutPrediction];
    geoLocation = [structuredLocationWithoutPrediction geoLocation];

    if (geoLocation)
    {
      [geoLocation coordinate];
      *(v5 + 9) = v29;
      *(v5 + 10) = v30;
    }

    else
    {
      *(v5 + 72) = *MEMORY[0x277CE4278];
    }

    v5[11] = [eventCopy isSelfOrganized];
    v31 = [CLSEKParticipant alloc];
    selfAttendee = [eventCopy selfAttendee];
    v33 = [(CLSEKParticipant *)v31 initWithEKParticipant:selfAttendee];
    v34 = *(v5 + 6);
    *(v5 + 6) = v33;

    v35 = [CLSEKCalendar alloc];
    calendar = [eventCopy calendar];
    v37 = [(CLSEKCalendar *)v35 initWithEKCalendar:calendar];
    v38 = *(v5 + 7);
    *(v5 + 7) = v37;

    suggestionInfo = [eventCopy suggestionInfo];
    v5[13] = suggestionInfo != 0;

    v5[12] = [eventCopy hasRecurrenceRules];
  }

  return v5;
}

@end