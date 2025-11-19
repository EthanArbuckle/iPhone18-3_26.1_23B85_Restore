@interface CLSEKEvent
- (BOOL)isEqual:(id)a3;
- (CLLocation)geoLocation;
- (CLLocationCoordinate2D)coordinate;
- (CLSEKEvent)initWithCoder:(id)a3;
- (CLSEKEvent)initWithEKEvent:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(CLSEKEvent *)self title];
  v5 = [(CLSEKEvent *)self attendees];
  v6 = [v5 count];
  v7 = [(CLSEKEvent *)self startDate];
  v8 = [v3 stringWithFormat:@"CLSEKEvent title: %@, number of participants: %zu, start date: %@", v4, v6, v7];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CLSEKEvent *)self hash];
      v6 = v5 == [(CLSEKEvent *)v4 hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  calendarItemIdentifier = self->_calendarItemIdentifier;
  v5 = a3;
  [v5 encodeObject:calendarItemIdentifier forKey:@"calendarItemIdentifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeBool:self->_isBirthday forKey:@"isBirthday"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeBool:self->_allDay forKey:@"allDay"];
  [v5 encodeBool:self->_hasAttendees forKey:@"hasAttendees"];
  [v5 encodeObject:self->_attendees forKey:@"attendees"];
  [v5 encodeBool:self->_organizedByMe forKey:@"organizedByMe"];
  [v5 encodeObject:self->_selfAttendee forKey:@"selfAttendee"];
  [v5 encodeObject:self->_calendar forKey:@"calendar"];
  [v5 encodeBool:self->_isSuggestedAndAccepted forKey:@"isSuggestedAndAccepted"];
  [v5 encodeBool:self->_hasRecurrenceRules forKey:@"hasRecurrenceRules"];
  [v5 encodeDouble:@"latitude" forKey:self->_coordinate.latitude];
  [v5 encodeDouble:@"longitude" forKey:self->_coordinate.longitude];
}

- (CLSEKEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CLSEKEvent;
  v5 = [(CLSEKEvent *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendarItemIdentifier"];
    calendarItemIdentifier = v5->_calendarItemIdentifier;
    v5->_calendarItemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_isBirthday = [v4 decodeBoolForKey:@"isBirthday"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v12;

    v5->_allDay = [v4 decodeBoolForKey:@"allDay"];
    v5->_hasAttendees = [v4 decodeBoolForKey:@"hasAttendees"];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"attendees"];
    attendees = v5->_attendees;
    v5->_attendees = v17;

    v5->_organizedByMe = [v4 decodeBoolForKey:@"organizedByMe"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selfAttendee"];
    selfAttendee = v5->_selfAttendee;
    v5->_selfAttendee = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendar"];
    calendar = v5->_calendar;
    v5->_calendar = v21;

    v5->_isSuggestedAndAccepted = [v4 decodeBoolForKey:@"isSuggestedAndAccepted"];
    v5->_hasRecurrenceRules = [v4 decodeBoolForKey:@"hasRecurrenceRules"];
    [v4 decodeDoubleForKey:@"latitude"];
    v24 = v23;
    [v4 decodeDoubleForKey:@"longitude"];
    v5->_coordinate = CLLocationCoordinate2DMake(v24, v25);
  }

  return v5;
}

- (CLSEKEvent)initWithEKEvent:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = CLSEKEvent;
  v5 = [(CLSEKEvent *)&v45 init];
  if (v5)
  {
    v6 = [v4 calendarItemIdentifier];
    v7 = *(v5 + 8);
    *(v5 + 8) = v6;

    v8 = [v4 title];
    v9 = *(v5 + 2);
    *(v5 + 2) = v8;

    v5[8] = [v4 isBirthday];
    v10 = [v4 startDate];
    v11 = *(v5 + 3);
    *(v5 + 3) = v10;

    v12 = [v4 endDate];
    v13 = *(v5 + 4);
    *(v5 + 4) = v12;

    v5[9] = [v4 isAllDay];
    v5[10] = [v4 hasAttendees];
    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = [v4 attendees];
    v16 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = [v4 attendees];
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
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
            objc_enumerationMutation(v17);
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
        v19 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v19);
    }

    v25 = *(v5 + 5);
    *(v5 + 5) = v16;
    v26 = v16;

    v27 = [v4 structuredLocationWithoutPrediction];
    v28 = [v27 geoLocation];

    if (v28)
    {
      [v28 coordinate];
      *(v5 + 9) = v29;
      *(v5 + 10) = v30;
    }

    else
    {
      *(v5 + 72) = *MEMORY[0x277CE4278];
    }

    v5[11] = [v4 isSelfOrganized];
    v31 = [CLSEKParticipant alloc];
    v32 = [v4 selfAttendee];
    v33 = [(CLSEKParticipant *)v31 initWithEKParticipant:v32];
    v34 = *(v5 + 6);
    *(v5 + 6) = v33;

    v35 = [CLSEKCalendar alloc];
    v36 = [v4 calendar];
    v37 = [(CLSEKCalendar *)v35 initWithEKCalendar:v36];
    v38 = *(v5 + 7);
    *(v5 + 7) = v37;

    v39 = [v4 suggestionInfo];
    v5[13] = v39 != 0;

    v5[12] = [v4 hasRecurrenceRules];
  }

  return v5;
}

@end