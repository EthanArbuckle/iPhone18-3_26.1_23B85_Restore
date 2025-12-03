@interface DNDClientEventBehavior
- (BOOL)isEqual:(id)equal;
- (DNDClientEventBehavior)initWithCoder:(id)coder;
- (DNDClientEventBehavior)initWithEventDetails:(id)details interruptionSuppression:(unint64_t)suppression intelligentBehavior:(int64_t)behavior resolutionReason:(unint64_t)reason activeModeUUID:(id)d;
- (id)_descriptionForRedacted:(BOOL)redacted;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDClientEventBehavior

- (unint64_t)hash
{
  eventDetails = [(DNDClientEventBehavior *)self eventDetails];
  v4 = [eventDetails hash];
  interruptionSuppression = [(DNDClientEventBehavior *)self interruptionSuppression];
  v6 = interruptionSuppression ^ [(DNDClientEventBehavior *)self intelligentBehavior]^ v4;
  resolutionReason = [(DNDClientEventBehavior *)self resolutionReason];
  activeModeUUID = [(DNDClientEventBehavior *)self activeModeUUID];
  v9 = resolutionReason ^ [activeModeUUID hash];

  return v6 ^ v9;
}

- (DNDClientEventBehavior)initWithEventDetails:(id)details interruptionSuppression:(unint64_t)suppression intelligentBehavior:(int64_t)behavior resolutionReason:(unint64_t)reason activeModeUUID:(id)d
{
  detailsCopy = details;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = DNDClientEventBehavior;
  v14 = [(DNDClientEventBehavior *)&v20 init];
  if (v14)
  {
    v15 = [detailsCopy copy];
    eventDetails = v14->_eventDetails;
    v14->_eventDetails = v15;

    v14->_interruptionSuppression = suppression;
    v14->_intelligentBehavior = behavior;
    v14->_resolutionReason = reason;
    v17 = [dCopy copy];
    activeModeUUID = v14->_activeModeUUID;
    v14->_activeModeUUID = v17;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
      eventDetails = [(DNDClientEventBehavior *)self eventDetails];
      eventDetails2 = [(DNDClientEventBehavior *)v9 eventDetails];
      if (eventDetails != eventDetails2)
      {
        eventDetails3 = [(DNDClientEventBehavior *)self eventDetails];
        if (!eventDetails3)
        {
          v14 = 0;
          goto LABEL_25;
        }

        v3 = eventDetails3;
        eventDetails4 = [(DNDClientEventBehavior *)v9 eventDetails];
        if (!eventDetails4)
        {
          v13 = 0;
LABEL_24:

          v14 = v13;
          goto LABEL_25;
        }

        eventDetails5 = [(DNDClientEventBehavior *)self eventDetails];
        eventDetails6 = [(DNDClientEventBehavior *)v9 eventDetails];
        if (![eventDetails5 isEqual:eventDetails6])
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }

      interruptionSuppression = [(DNDClientEventBehavior *)self interruptionSuppression];
      if (interruptionSuppression == [(DNDClientEventBehavior *)v9 interruptionSuppression])
      {
        intelligentBehavior = [(DNDClientEventBehavior *)self intelligentBehavior];
        if (intelligentBehavior == [(DNDClientEventBehavior *)v9 intelligentBehavior])
        {
          resolutionReason = [(DNDClientEventBehavior *)self resolutionReason];
          if (resolutionReason == [(DNDClientEventBehavior *)v9 resolutionReason])
          {
            activeModeUUID = [(DNDClientEventBehavior *)self activeModeUUID];
            activeModeUUID2 = [(DNDClientEventBehavior *)v9 activeModeUUID];
            if (activeModeUUID == activeModeUUID2)
            {

              v13 = 1;
              v14 = 1;
              goto LABEL_22;
            }

            v27 = activeModeUUID;
            v28 = activeModeUUID2;
            activeModeUUID3 = [(DNDClientEventBehavior *)self activeModeUUID];
            if (activeModeUUID3)
            {
              v26 = activeModeUUID3;
              activeModeUUID4 = [(DNDClientEventBehavior *)v9 activeModeUUID];
              if (activeModeUUID4)
              {
                v25 = activeModeUUID4;
                activeModeUUID5 = [(DNDClientEventBehavior *)self activeModeUUID];
                activeModeUUID6 = [(DNDClientEventBehavior *)v9 activeModeUUID];
                v13 = [activeModeUUID5 isEqual:activeModeUUID6];

                activeModeUUID4 = v25;
              }

              else
              {
                v13 = 0;
              }

              v14 = v13;
LABEL_22:
              if (eventDetails != eventDetails2)
              {
                goto LABEL_23;
              }

LABEL_25:

              goto LABEL_26;
            }
          }
        }
      }

      v13 = 0;
      v14 = 0;
      goto LABEL_22;
    }

    v14 = 0;
  }

LABEL_26:

  return v14;
}

- (id)_descriptionForRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  eventDetails = [(DNDClientEventBehavior *)self eventDetails];
  v8 = eventDetails;
  redactedDescription = eventDetails;
  if (redactedCopy)
  {
    redactedDescription = [eventDetails redactedDescription];
  }

  v10 = DNDStringFromInterruptionSuppression([(DNDClientEventBehavior *)self interruptionSuppression]);
  v11 = DNDIntelligentInterruptionBehaviorToString([(DNDClientEventBehavior *)self intelligentBehavior]);
  v12 = DNDResolutionReasonToString([(DNDClientEventBehavior *)self resolutionReason]);
  activeModeUUID = [(DNDClientEventBehavior *)self activeModeUUID];
  v14 = [v5 stringWithFormat:@"<%@: %p eventDetails: %@; interruptionSuppression: %@; intelligentBehavior: %@; resolutionReason: %@; activeModeUUID: %@>", v6, self, redactedDescription, v10, v11, v12, activeModeUUID];;

  if (redactedCopy)
  {
  }

  return v14;
}

- (DNDClientEventBehavior)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventDetails"];
  v6 = [coderCopy decodeIntegerForKey:@"interruptionSuppression"];
  v7 = [coderCopy decodeIntegerForKey:@"intelligentBehavior"];
  v8 = [coderCopy decodeIntegerForKey:@"resolutionReason"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeModeUUID"];

  v10 = [(DNDClientEventBehavior *)self initWithEventDetails:v5 interruptionSuppression:v6 intelligentBehavior:v7 resolutionReason:v8 activeModeUUID:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventDetails = [(DNDClientEventBehavior *)self eventDetails];
  [coderCopy encodeObject:eventDetails forKey:@"eventDetails"];

  [coderCopy encodeInteger:-[DNDClientEventBehavior interruptionSuppression](self forKey:{"interruptionSuppression"), @"interruptionSuppression"}];
  [coderCopy encodeInteger:-[DNDClientEventBehavior intelligentBehavior](self forKey:{"intelligentBehavior"), @"intelligentBehavior"}];
  [coderCopy encodeInteger:-[DNDClientEventBehavior resolutionReason](self forKey:{"resolutionReason"), @"resolutionReason"}];
  activeModeUUID = [(DNDClientEventBehavior *)self activeModeUUID];
  [coderCopy encodeObject:activeModeUUID forKey:@"activeModeUUID"];
}

@end