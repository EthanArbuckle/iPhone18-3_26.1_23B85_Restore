@interface HDAlarmEvent
- (BOOL)isEqual:(id)a3;
- (NSDate)currentDueDate;
- (id)_initWithClientIdentifier:(id)a3 eventIdentifier:(id)a4 dueDate:(id)a5 dueDateComponents:(id)a6 eventOptions:(unint64_t)a7 clientOptions:(unint64_t)a8;
- (id)description;
- (unint64_t)hash;
@end

@implementation HDAlarmEvent

- (id)_initWithClientIdentifier:(id)a3 eventIdentifier:(id)a4 dueDate:(id)a5 dueDateComponents:(id)a6 eventOptions:(unint64_t)a7 clientOptions:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = v18;
  if (!(v17 | v18))
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"HDAlarmEvent.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"dueDate != nil || dueDateComponents != nil"}];
LABEL_12:

    goto LABEL_6;
  }

  if (v17 && v18)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"HDAlarmEvent.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"dueDate == nil || dueDateComponents == nil"}];
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  if (([v19 isValidDate] & 1) == 0)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"HDAlarmEvent.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"HDAlarmEventValidateDateComponents(dueDateComponents)"}];
    goto LABEL_12;
  }

LABEL_6:
  v32.receiver = self;
  v32.super_class = HDAlarmEvent;
  v20 = [(HDAlarmEvent *)&v32 init];
  if (v20)
  {
    v21 = [v15 copy];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = v21;

    v23 = [v16 copy];
    eventIdentifier = v20->_eventIdentifier;
    v20->_eventIdentifier = v23;

    v25 = [v17 copy];
    dueDate = v20->_dueDate;
    v20->_dueDate = v25;

    v27 = [v19 copy];
    dueDateComponents = v20->_dueDateComponents;
    v20->_dueDateComponents = v27;

    v20->_eventOptions = a7;
    v20->_clientOptions = a8;
  }

  return v20;
}

- (NSDate)currentDueDate
{
  v3 = [(HDAlarmEvent *)self dueDate];

  if (v3)
  {
    v4 = [(HDAlarmEvent *)self dueDate];
  }

  else
  {
    v5 = [(HDAlarmEvent *)self dueDateComponents];
    v6 = [v5 hk_populatedCalendarGregorianCalendarDefault];

    if (self)
    {
      [MEMORY[0x277CBEBB0] resetSystemTimeZone];
      v7 = [(HDAlarmEvent *)self _unitTest_localTimeZoneOverride];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [MEMORY[0x277CBEBB0] systemTimeZone];
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [v6 setTimeZone:v10];

    v11 = [(HDAlarmEvent *)self dueDateComponents];
    v4 = [v6 dateFromComponents:v11];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    clientIdentifier = self->_clientIdentifier;
    v7 = v5[1];
    if ((clientIdentifier == v7 || v7 && [(NSString *)clientIdentifier isEqualToString:?]) && ((eventIdentifier = self->_eventIdentifier, v9 = v5[2], eventIdentifier == v9) || v9 && [(NSString *)eventIdentifier isEqualToString:?]))
    {
      v10 = [(HDAlarmEvent *)self currentDueDate];
      v11 = [v5 currentDueDate];
      if (v10 == v11)
      {
        v15 = self->_eventOptions == v5[5] && self->_clientOptions == v5[6];
      }

      else
      {
        v12 = [v5 currentDueDate];
        if (v12)
        {
          v13 = [(HDAlarmEvent *)self currentDueDate];
          v14 = [v5 currentDueDate];
          v15 = [v13 isEqualToDate:v14] && self->_eventOptions == v5[5] && self->_clientOptions == v5[6];
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientIdentifier hash];
  v4 = [(NSString *)self->_eventIdentifier hash]^ v3;
  v5 = [(NSDate *)self->_dueDate hash];
  return v4 ^ v5 ^ [(NSDateComponents *)self->_dueDateComponents hash]^ self->_eventOptions ^ self->_clientOptions;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HDAlarmEvent *)self clientIdentifier];
  v6 = [(HDAlarmEvent *)self eventIdentifier];
  v7 = [(HDAlarmEvent *)self dueDate];
  v8 = [(HDAlarmEvent *)self dueDateComponents];
  v9 = [(HDAlarmEvent *)self eventOptions];
  if (v9)
  {
    v10 = v9;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = v11;
    if ((v10 & 2) != 0)
    {
      [v11 addObject:@"require-device-on-wrist"];
    }

    if (v10)
    {
      [v12 addObject:@"require-device-unlocked"];
    }

    v13 = [v12 componentsJoinedByString:{@", "}];
  }

  else
  {
    v13 = @"none";
  }

  v14 = [v3 stringWithFormat:@"<%@:%p client:%@ event:%@ dueDate:%@, dueDateComponents:%@, eventOptions: %@, clientOptions: %lu>", v4, self, v5, v6, v7, v8, v13, -[HDAlarmEvent clientOptions](self, "clientOptions")];

  return v14;
}

@end