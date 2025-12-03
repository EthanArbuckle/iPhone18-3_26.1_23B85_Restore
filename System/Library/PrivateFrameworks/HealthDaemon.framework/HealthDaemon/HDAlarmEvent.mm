@interface HDAlarmEvent
- (BOOL)isEqual:(id)equal;
- (NSDate)currentDueDate;
- (id)_initWithClientIdentifier:(id)identifier eventIdentifier:(id)eventIdentifier dueDate:(id)date dueDateComponents:(id)components eventOptions:(unint64_t)options clientOptions:(unint64_t)clientOptions;
- (id)description;
- (unint64_t)hash;
@end

@implementation HDAlarmEvent

- (id)_initWithClientIdentifier:(id)identifier eventIdentifier:(id)eventIdentifier dueDate:(id)date dueDateComponents:(id)components eventOptions:(unint64_t)options clientOptions:(unint64_t)clientOptions
{
  identifierCopy = identifier;
  eventIdentifierCopy = eventIdentifier;
  dateCopy = date;
  componentsCopy = components;
  v19 = componentsCopy;
  if (!(dateCopy | componentsCopy))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAlarmEvent.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"dueDate != nil || dueDateComponents != nil"}];
LABEL_12:

    goto LABEL_6;
  }

  if (dateCopy && componentsCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDAlarmEvent.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"dueDate == nil || dueDateComponents == nil"}];
  }

  else if (!componentsCopy)
  {
    goto LABEL_6;
  }

  if (([v19 isValidDate] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAlarmEvent.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"HDAlarmEventValidateDateComponents(dueDateComponents)"}];
    goto LABEL_12;
  }

LABEL_6:
  v32.receiver = self;
  v32.super_class = HDAlarmEvent;
  v20 = [(HDAlarmEvent *)&v32 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = v21;

    v23 = [eventIdentifierCopy copy];
    eventIdentifier = v20->_eventIdentifier;
    v20->_eventIdentifier = v23;

    v25 = [dateCopy copy];
    dueDate = v20->_dueDate;
    v20->_dueDate = v25;

    v27 = [v19 copy];
    dueDateComponents = v20->_dueDateComponents;
    v20->_dueDateComponents = v27;

    v20->_eventOptions = options;
    v20->_clientOptions = clientOptions;
  }

  return v20;
}

- (NSDate)currentDueDate
{
  dueDate = [(HDAlarmEvent *)self dueDate];

  if (dueDate)
  {
    dueDate2 = [(HDAlarmEvent *)self dueDate];
  }

  else
  {
    dueDateComponents = [(HDAlarmEvent *)self dueDateComponents];
    hk_populatedCalendarGregorianCalendarDefault = [dueDateComponents hk_populatedCalendarGregorianCalendarDefault];

    if (self)
    {
      [MEMORY[0x277CBEBB0] resetSystemTimeZone];
      _unitTest_localTimeZoneOverride = [(HDAlarmEvent *)self _unitTest_localTimeZoneOverride];
      v8 = _unitTest_localTimeZoneOverride;
      if (_unitTest_localTimeZoneOverride)
      {
        systemTimeZone = _unitTest_localTimeZoneOverride;
      }

      else
      {
        systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
      }

      v10 = systemTimeZone;
    }

    else
    {
      v10 = 0;
    }

    [hk_populatedCalendarGregorianCalendarDefault setTimeZone:v10];

    dueDateComponents2 = [(HDAlarmEvent *)self dueDateComponents];
    dueDate2 = [hk_populatedCalendarGregorianCalendarDefault dateFromComponents:dueDateComponents2];
  }

  return dueDate2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    clientIdentifier = self->_clientIdentifier;
    v7 = v5[1];
    if ((clientIdentifier == v7 || v7 && [(NSString *)clientIdentifier isEqualToString:?]) && ((eventIdentifier = self->_eventIdentifier, v9 = v5[2], eventIdentifier == v9) || v9 && [(NSString *)eventIdentifier isEqualToString:?]))
    {
      currentDueDate = [(HDAlarmEvent *)self currentDueDate];
      currentDueDate2 = [v5 currentDueDate];
      if (currentDueDate == currentDueDate2)
      {
        v15 = self->_eventOptions == v5[5] && self->_clientOptions == v5[6];
      }

      else
      {
        currentDueDate3 = [v5 currentDueDate];
        if (currentDueDate3)
        {
          currentDueDate4 = [(HDAlarmEvent *)self currentDueDate];
          currentDueDate5 = [v5 currentDueDate];
          v15 = [currentDueDate4 isEqualToDate:currentDueDate5] && self->_eventOptions == v5[5] && self->_clientOptions == v5[6];
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
  clientIdentifier = [(HDAlarmEvent *)self clientIdentifier];
  eventIdentifier = [(HDAlarmEvent *)self eventIdentifier];
  dueDate = [(HDAlarmEvent *)self dueDate];
  dueDateComponents = [(HDAlarmEvent *)self dueDateComponents];
  eventOptions = [(HDAlarmEvent *)self eventOptions];
  if (eventOptions)
  {
    v10 = eventOptions;
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

  v14 = [v3 stringWithFormat:@"<%@:%p client:%@ event:%@ dueDate:%@, dueDateComponents:%@, eventOptions: %@, clientOptions: %lu>", v4, self, clientIdentifier, eventIdentifier, dueDate, dueDateComponents, v13, -[HDAlarmEvent clientOptions](self, "clientOptions")];

  return v14;
}

@end