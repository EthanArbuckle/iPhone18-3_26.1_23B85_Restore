@interface DNDModeAssertionCalendarEventLifetime
- (BOOL)isEqual:(id)equal;
- (DNDModeAssertionCalendarEventLifetime)initWithCoder:(id)coder;
- (DNDModeAssertionCalendarEventLifetime)initWithEventUniqueID:(id)d occurrenceDate:(id)date onlyDuringEvent:(BOOL)event;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeAssertionCalendarEventLifetime

- (DNDModeAssertionCalendarEventLifetime)initWithEventUniqueID:(id)d occurrenceDate:(id)date onlyDuringEvent:(BOOL)event
{
  dCopy = d;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = DNDModeAssertionCalendarEventLifetime;
  _init = [(DNDModeAssertionLifetime *)&v16 _init];
  if (_init)
  {
    v11 = [dCopy copy];
    eventUniqueID = _init->_eventUniqueID;
    _init->_eventUniqueID = v11;

    v13 = [dateCopy copy];
    occurrenceDate = _init->_occurrenceDate;
    _init->_occurrenceDate = v13;

    _init->_onlyDuringEvent = event;
  }

  return _init;
}

- (unint64_t)hash
{
  eventUniqueID = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
  v4 = [eventUniqueID hash];
  occurrenceDate = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
  v6 = [occurrenceDate hash] ^ v4;
  isOnlyDuringEvent = [(DNDModeAssertionCalendarEventLifetime *)self isOnlyDuringEvent];

  return v6 ^ isOnlyDuringEvent;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      eventUniqueID = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
      eventUniqueID2 = [(DNDModeAssertionCalendarEventLifetime *)v8 eventUniqueID];
      if (eventUniqueID != eventUniqueID2)
      {
        eventUniqueID3 = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
        if (!eventUniqueID3)
        {
          LOBYTE(v14) = 0;
          goto LABEL_27;
        }

        v3 = eventUniqueID3;
        eventUniqueID4 = [(DNDModeAssertionCalendarEventLifetime *)v8 eventUniqueID];
        if (!eventUniqueID4)
        {
          LOBYTE(v14) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v4 = eventUniqueID4;
        eventUniqueID5 = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
        eventUniqueID6 = [(DNDModeAssertionCalendarEventLifetime *)v8 eventUniqueID];
        if (![eventUniqueID5 isEqual:eventUniqueID6])
        {
          LOBYTE(v14) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v26 = eventUniqueID6;
        v27 = eventUniqueID5;
        v28 = v4;
      }

      occurrenceDate = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
      occurrenceDate2 = [(DNDModeAssertionCalendarEventLifetime *)v8 occurrenceDate];
      if (occurrenceDate == occurrenceDate2)
      {
        goto LABEL_16;
      }

      occurrenceDate3 = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
      if (!occurrenceDate3)
      {

        LOBYTE(v14) = 0;
        goto LABEL_24;
      }

      eventUniqueID6 = occurrenceDate3;
      occurrenceDate4 = [(DNDModeAssertionCalendarEventLifetime *)v8 occurrenceDate];
      if (!occurrenceDate4)
      {
        LOBYTE(v14) = 0;
        goto LABEL_22;
      }

      v24 = occurrenceDate4;
      occurrenceDate5 = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
      occurrenceDate6 = [(DNDModeAssertionCalendarEventLifetime *)v8 occurrenceDate];
      v25 = occurrenceDate5;
      v21 = occurrenceDate5;
      v4 = occurrenceDate6;
      if ([v21 isEqual:occurrenceDate6])
      {
LABEL_16:
        isOnlyDuringEvent = [(DNDModeAssertionCalendarEventLifetime *)self isOnlyDuringEvent];
        v14 = isOnlyDuringEvent ^ [(DNDModeAssertionCalendarEventLifetime *)v8 isOnlyDuringEvent]^ 1;
        if (occurrenceDate == occurrenceDate2)
        {
LABEL_23:

LABEL_24:
          eventUniqueID5 = v27;
          v4 = v28;
          eventUniqueID6 = v26;
          if (eventUniqueID != eventUniqueID2)
          {
            goto LABEL_25;
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }

LABEL_22:
      goto LABEL_23;
    }

    LOBYTE(v14) = 0;
  }

LABEL_28:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  eventUniqueID = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
  occurrenceDate = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
  isOnlyDuringEvent = [(DNDModeAssertionCalendarEventLifetime *)self isOnlyDuringEvent];
  v8 = @"NO";
  if (isOnlyDuringEvent)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p eventUniqueID: '%@'; occurrenceDate: %@; onlyDuringEvent: %@>", v4, self, eventUniqueID, occurrenceDate, v8];;

  return v9;
}

- (DNDModeAssertionCalendarEventLifetime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventUniqueID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"occurrenceDate"];
  v7 = [coderCopy decodeBoolForKey:@"onlyDuringEvent"];

  v8 = [(DNDModeAssertionCalendarEventLifetime *)self initWithEventUniqueID:v5 occurrenceDate:v6 onlyDuringEvent:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventUniqueID = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
  [coderCopy encodeObject:eventUniqueID forKey:@"eventUniqueID"];

  occurrenceDate = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
  [coderCopy encodeObject:occurrenceDate forKey:@"occurrenceDate"];

  [coderCopy encodeBool:-[DNDModeAssertionCalendarEventLifetime isOnlyDuringEvent](self forKey:{"isOnlyDuringEvent"), @"onlyDuringEvent"}];
}

@end