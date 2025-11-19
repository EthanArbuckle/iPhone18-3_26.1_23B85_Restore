@interface DNDModeAssertionCalendarEventLifetime
- (BOOL)isEqual:(id)a3;
- (DNDModeAssertionCalendarEventLifetime)initWithCoder:(id)a3;
- (DNDModeAssertionCalendarEventLifetime)initWithEventUniqueID:(id)a3 occurrenceDate:(id)a4 onlyDuringEvent:(BOOL)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeAssertionCalendarEventLifetime

- (DNDModeAssertionCalendarEventLifetime)initWithEventUniqueID:(id)a3 occurrenceDate:(id)a4 onlyDuringEvent:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = DNDModeAssertionCalendarEventLifetime;
  v10 = [(DNDModeAssertionLifetime *)&v16 _init];
  if (v10)
  {
    v11 = [v8 copy];
    eventUniqueID = v10->_eventUniqueID;
    v10->_eventUniqueID = v11;

    v13 = [v9 copy];
    occurrenceDate = v10->_occurrenceDate;
    v10->_occurrenceDate = v13;

    v10->_onlyDuringEvent = a5;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
  v4 = [v3 hash];
  v5 = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDModeAssertionCalendarEventLifetime *)self isOnlyDuringEvent];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
      v10 = [(DNDModeAssertionCalendarEventLifetime *)v8 eventUniqueID];
      if (v9 != v10)
      {
        v11 = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
        if (!v11)
        {
          LOBYTE(v14) = 0;
          goto LABEL_27;
        }

        v3 = v11;
        v12 = [(DNDModeAssertionCalendarEventLifetime *)v8 eventUniqueID];
        if (!v12)
        {
          LOBYTE(v14) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v4 = v12;
        v13 = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
        v5 = [(DNDModeAssertionCalendarEventLifetime *)v8 eventUniqueID];
        if (![v13 isEqual:v5])
        {
          LOBYTE(v14) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v26 = v5;
        v27 = v13;
        v28 = v4;
      }

      v15 = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
      v16 = [(DNDModeAssertionCalendarEventLifetime *)v8 occurrenceDate];
      if (v15 == v16)
      {
        goto LABEL_16;
      }

      v17 = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
      if (!v17)
      {

        LOBYTE(v14) = 0;
        goto LABEL_24;
      }

      v5 = v17;
      v18 = [(DNDModeAssertionCalendarEventLifetime *)v8 occurrenceDate];
      if (!v18)
      {
        LOBYTE(v14) = 0;
        goto LABEL_22;
      }

      v24 = v18;
      v19 = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
      v20 = [(DNDModeAssertionCalendarEventLifetime *)v8 occurrenceDate];
      v25 = v19;
      v21 = v19;
      v4 = v20;
      if ([v21 isEqual:v20])
      {
LABEL_16:
        v22 = [(DNDModeAssertionCalendarEventLifetime *)self isOnlyDuringEvent];
        v14 = v22 ^ [(DNDModeAssertionCalendarEventLifetime *)v8 isOnlyDuringEvent]^ 1;
        if (v15 == v16)
        {
LABEL_23:

LABEL_24:
          v13 = v27;
          v4 = v28;
          v5 = v26;
          if (v9 != v10)
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
  v5 = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
  v6 = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
  v7 = [(DNDModeAssertionCalendarEventLifetime *)self isOnlyDuringEvent];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p eventUniqueID: '%@'; occurrenceDate: %@; onlyDuringEvent: %@>", v4, self, v5, v6, v8];;

  return v9;
}

- (DNDModeAssertionCalendarEventLifetime)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventUniqueID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"occurrenceDate"];
  v7 = [v4 decodeBoolForKey:@"onlyDuringEvent"];

  v8 = [(DNDModeAssertionCalendarEventLifetime *)self initWithEventUniqueID:v5 occurrenceDate:v6 onlyDuringEvent:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DNDModeAssertionCalendarEventLifetime *)self eventUniqueID];
  [v6 encodeObject:v4 forKey:@"eventUniqueID"];

  v5 = [(DNDModeAssertionCalendarEventLifetime *)self occurrenceDate];
  [v6 encodeObject:v5 forKey:@"occurrenceDate"];

  [v6 encodeBool:-[DNDModeAssertionCalendarEventLifetime isOnlyDuringEvent](self forKey:{"isOnlyDuringEvent"), @"onlyDuringEvent"}];
}

@end