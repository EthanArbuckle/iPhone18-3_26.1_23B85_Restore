@interface DNDSEventBehaviorResolution
+ (id)resolutionForDate:(id)date eventBehavior:(id)behavior clientIdentifier:(id)identifier outcome:(unint64_t)outcome reason:(unint64_t)reason;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionForRedacted:(BOOL)redacted;
- (id)_initWithUUID:(id)d date:(id)date eventBehavior:(id)behavior clientIdentifier:(id)identifier outcome:(unint64_t)outcome reason:(unint64_t)reason;
- (unint64_t)hash;
@end

@implementation DNDSEventBehaviorResolution

+ (id)resolutionForDate:(id)date eventBehavior:(id)behavior clientIdentifier:(id)identifier outcome:(unint64_t)outcome reason:(unint64_t)reason
{
  identifierCopy = identifier;
  behaviorCopy = behavior;
  dateCopy = date;
  v15 = [self alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v17 = [v15 _initWithUUID:uUID date:dateCopy eventBehavior:behaviorCopy clientIdentifier:identifierCopy outcome:outcome reason:reason];

  return v17;
}

- (id)_initWithUUID:(id)d date:(id)date eventBehavior:(id)behavior clientIdentifier:(id)identifier outcome:(unint64_t)outcome reason:(unint64_t)reason
{
  dCopy = d;
  dateCopy = date;
  behaviorCopy = behavior;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = DNDSEventBehaviorResolution;
  v18 = [(DNDSEventBehaviorResolution *)&v28 init];
  if (v18)
  {
    v19 = [dCopy copy];
    UUID = v18->_UUID;
    v18->_UUID = v19;

    v21 = [dateCopy copy];
    date = v18->_date;
    v18->_date = v21;

    v23 = [behaviorCopy copy];
    eventBehavior = v18->_eventBehavior;
    v18->_eventBehavior = v23;

    v25 = [identifierCopy copy];
    clientIdentifier = v18->_clientIdentifier;
    v18->_clientIdentifier = v25;

    v18->_outcome = outcome;
    v18->_reason = reason;
  }

  return v18;
}

- (unint64_t)hash
{
  uUID = [(DNDSEventBehaviorResolution *)self UUID];
  v4 = [uUID hash];
  date = [(DNDSEventBehaviorResolution *)self date];
  v6 = [date hash] ^ v4;
  eventBehavior = [(DNDSEventBehaviorResolution *)self eventBehavior];
  v8 = [eventBehavior hash];
  clientIdentifier = [(DNDSEventBehaviorResolution *)self clientIdentifier];
  v10 = v6 ^ v8 ^ [clientIdentifier hash];
  outcome = [(DNDSEventBehaviorResolution *)self outcome];
  v12 = outcome ^ [(DNDSEventBehaviorResolution *)self reason];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      uUID = [(DNDSEventBehaviorResolution *)self UUID];
      uUID2 = [(DNDSEventBehaviorResolution *)v7 UUID];
      if (uUID != uUID2)
      {
        uUID3 = [(DNDSEventBehaviorResolution *)self UUID];
        if (!uUID3)
        {
          v13 = 0;
          goto LABEL_64;
        }

        date5 = uUID3;
        uUID4 = [(DNDSEventBehaviorResolution *)v7 UUID];
        if (!uUID4)
        {
          v13 = 0;
LABEL_63:

          goto LABEL_64;
        }

        uUID5 = [(DNDSEventBehaviorResolution *)self UUID];
        uUID6 = [(DNDSEventBehaviorResolution *)v7 UUID];
        if (![uUID5 isEqual:uUID6])
        {
          v13 = 0;
LABEL_62:

          goto LABEL_63;
        }

        v56 = date5;
        v53 = uUID6;
        v54 = uUID5;
        v55 = uUID4;
      }

      date = [(DNDSEventBehaviorResolution *)self date];
      date2 = [(DNDSEventBehaviorResolution *)v7 date];
      if (date != date2)
      {
        date3 = [(DNDSEventBehaviorResolution *)self date];
        if (date3)
        {
          v17 = date3;
          v57 = date;
          date4 = [(DNDSEventBehaviorResolution *)v7 date];
          if (date4)
          {
            v19 = date4;
            date5 = [(DNDSEventBehaviorResolution *)self date];
            uUID6 = [(DNDSEventBehaviorResolution *)v7 date];
            if ([date5 isEqual:uUID6])
            {
              v46 = v19;
              v47 = v17;
              goto LABEL_17;
            }
          }
        }

        else
        {
        }

LABEL_46:
        v13 = 0;
        goto LABEL_61;
      }

      v57 = date;
LABEL_17:
      eventBehavior = [(DNDSEventBehaviorResolution *)self eventBehavior];
      eventBehavior2 = [(DNDSEventBehaviorResolution *)v7 eventBehavior];
      if (eventBehavior == eventBehavior2)
      {
        v49 = eventBehavior;
        v50 = uUID6;
        v52 = date5;
LABEL_26:
        clientIdentifier = [(DNDSEventBehaviorResolution *)self clientIdentifier];
        clientIdentifier2 = [(DNDSEventBehaviorResolution *)v7 clientIdentifier];
        v51 = clientIdentifier;
        if (clientIdentifier == clientIdentifier2)
        {
          outcome = [(DNDSEventBehaviorResolution *)self outcome];
        }

        else
        {
          clientIdentifier3 = [(DNDSEventBehaviorResolution *)self clientIdentifier];
          v29 = eventBehavior;
          if (!clientIdentifier3)
          {

            v13 = 0;
            goto LABEL_52;
          }

          v43 = clientIdentifier3;
          clientIdentifier4 = [(DNDSEventBehaviorResolution *)v7 clientIdentifier];
          if (!clientIdentifier4)
          {
            v13 = 0;
LABEL_51:

LABEL_52:
            v35 = v49;
            if (v49 != eventBehavior2)
            {
              v36 = v44;
LABEL_57:
            }

LABEL_58:

            if (v57 != date2)
            {
            }

LABEL_61:
            uUID4 = v55;
            date5 = v56;
            uUID6 = v53;
            uUID5 = v54;
            if (uUID != uUID2)
            {
              goto LABEL_62;
            }

LABEL_64:

            goto LABEL_65;
          }

          v41 = clientIdentifier4;
          clientIdentifier5 = [(DNDSEventBehaviorResolution *)self clientIdentifier];
          clientIdentifier6 = [(DNDSEventBehaviorResolution *)v7 clientIdentifier];
          if (![clientIdentifier5 isEqual:?])
          {
            v13 = 0;
LABEL_50:

            goto LABEL_51;
          }

          v39 = clientIdentifier5;
          eventBehavior = v29;
          outcome = [(DNDSEventBehaviorResolution *)self outcome];
        }

        if (outcome != [(DNDSEventBehaviorResolution *)v7 outcome])
        {
          v29 = eventBehavior;
          if (v51 != clientIdentifier2)
          {

            v13 = 0;
            goto LABEL_56;
          }

          v13 = 0;
LABEL_55:

LABEL_56:
          v35 = v49;
          v36 = v44;
          if (v49 != eventBehavior2)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        reason = [(DNDSEventBehaviorResolution *)self reason];
        v13 = reason == [(DNDSEventBehaviorResolution *)v7 reason];
        v29 = eventBehavior;
        clientIdentifier5 = v40;
        if (v51 == clientIdentifier2)
        {
          goto LABEL_55;
        }

        goto LABEL_50;
      }

      eventBehavior3 = [(DNDSEventBehaviorResolution *)self eventBehavior];
      if (eventBehavior3)
      {
        v48 = eventBehavior3;
        eventBehavior4 = [(DNDSEventBehaviorResolution *)v7 eventBehavior];
        if (eventBehavior4)
        {
          v50 = uUID6;
          v52 = date5;
          v45 = eventBehavior4;
          eventBehavior5 = [(DNDSEventBehaviorResolution *)self eventBehavior];
          eventBehavior6 = [(DNDSEventBehaviorResolution *)v7 eventBehavior];
          if ([eventBehavior5 isEqual:eventBehavior6])
          {
            v49 = eventBehavior;
            eventBehavior = eventBehavior5;
            v44 = eventBehavior6;
            goto LABEL_26;
          }

          v34 = v57;
          if (v57 == date2)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }
      }

      v34 = v57;
      if (v57 == date2)
      {
LABEL_45:

        goto LABEL_46;
      }

LABEL_44:
      goto LABEL_45;
    }

    v13 = 0;
  }

LABEL_65:

  return v13;
}

- (id)_descriptionForRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  v16 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  uUID = [(DNDSEventBehaviorResolution *)self UUID];
  date = [(DNDSEventBehaviorResolution *)self date];
  eventBehavior = [(DNDSEventBehaviorResolution *)self eventBehavior];
  v9 = eventBehavior;
  redactedDescription = eventBehavior;
  if (redactedCopy)
  {
    redactedDescription = [eventBehavior redactedDescription];
  }

  clientIdentifier = [(DNDSEventBehaviorResolution *)self clientIdentifier];
  v12 = DNDSResolutionOutcomeToString([(DNDSEventBehaviorResolution *)self outcome]);
  [(DNDSEventBehaviorResolution *)self reason];
  v13 = DNDResolutionReasonToString();
  v14 = [v16 stringWithFormat:@"<%@: %p UUID: %@; date: %@; eventBehavior: %@; clientIdentifier: '%@'; outcome: %@; reason: %@>", v5, self, uUID, date, redactedDescription, clientIdentifier, v12, v13];;

  if (redactedCopy)
  {
  }

  return v14;
}

@end