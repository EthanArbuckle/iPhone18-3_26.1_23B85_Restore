@interface DNDClientEventBehavior
- (BOOL)isEqual:(id)a3;
- (DNDClientEventBehavior)initWithCoder:(id)a3;
- (DNDClientEventBehavior)initWithEventDetails:(id)a3 interruptionSuppression:(unint64_t)a4 intelligentBehavior:(int64_t)a5 resolutionReason:(unint64_t)a6 activeModeUUID:(id)a7;
- (id)_descriptionForRedacted:(BOOL)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDClientEventBehavior

- (unint64_t)hash
{
  v3 = [(DNDClientEventBehavior *)self eventDetails];
  v4 = [v3 hash];
  v5 = [(DNDClientEventBehavior *)self interruptionSuppression];
  v6 = v5 ^ [(DNDClientEventBehavior *)self intelligentBehavior]^ v4;
  v7 = [(DNDClientEventBehavior *)self resolutionReason];
  v8 = [(DNDClientEventBehavior *)self activeModeUUID];
  v9 = v7 ^ [v8 hash];

  return v6 ^ v9;
}

- (DNDClientEventBehavior)initWithEventDetails:(id)a3 interruptionSuppression:(unint64_t)a4 intelligentBehavior:(int64_t)a5 resolutionReason:(unint64_t)a6 activeModeUUID:(id)a7
{
  v12 = a3;
  v13 = a7;
  v20.receiver = self;
  v20.super_class = DNDClientEventBehavior;
  v14 = [(DNDClientEventBehavior *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    eventDetails = v14->_eventDetails;
    v14->_eventDetails = v15;

    v14->_interruptionSuppression = a4;
    v14->_intelligentBehavior = a5;
    v14->_resolutionReason = a6;
    v17 = [v13 copy];
    activeModeUUID = v14->_activeModeUUID;
    v14->_activeModeUUID = v17;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [(DNDClientEventBehavior *)self eventDetails];
      v11 = [(DNDClientEventBehavior *)v9 eventDetails];
      if (v10 != v11)
      {
        v12 = [(DNDClientEventBehavior *)self eventDetails];
        if (!v12)
        {
          v14 = 0;
          goto LABEL_25;
        }

        v3 = v12;
        v4 = [(DNDClientEventBehavior *)v9 eventDetails];
        if (!v4)
        {
          v13 = 0;
LABEL_24:

          v14 = v13;
          goto LABEL_25;
        }

        v5 = [(DNDClientEventBehavior *)self eventDetails];
        v6 = [(DNDClientEventBehavior *)v9 eventDetails];
        if (![v5 isEqual:v6])
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }

      v15 = [(DNDClientEventBehavior *)self interruptionSuppression];
      if (v15 == [(DNDClientEventBehavior *)v9 interruptionSuppression])
      {
        v16 = [(DNDClientEventBehavior *)self intelligentBehavior];
        if (v16 == [(DNDClientEventBehavior *)v9 intelligentBehavior])
        {
          v17 = [(DNDClientEventBehavior *)self resolutionReason];
          if (v17 == [(DNDClientEventBehavior *)v9 resolutionReason])
          {
            v18 = [(DNDClientEventBehavior *)self activeModeUUID];
            v19 = [(DNDClientEventBehavior *)v9 activeModeUUID];
            if (v18 == v19)
            {

              v13 = 1;
              v14 = 1;
              goto LABEL_22;
            }

            v27 = v18;
            v28 = v19;
            v20 = [(DNDClientEventBehavior *)self activeModeUUID];
            if (v20)
            {
              v26 = v20;
              v21 = [(DNDClientEventBehavior *)v9 activeModeUUID];
              if (v21)
              {
                v25 = v21;
                v24 = [(DNDClientEventBehavior *)self activeModeUUID];
                v22 = [(DNDClientEventBehavior *)v9 activeModeUUID];
                v13 = [v24 isEqual:v22];

                v21 = v25;
              }

              else
              {
                v13 = 0;
              }

              v14 = v13;
LABEL_22:
              if (v10 != v11)
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

- (id)_descriptionForRedacted:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [(DNDClientEventBehavior *)self eventDetails];
  v8 = v7;
  v9 = v7;
  if (v3)
  {
    v9 = [v7 redactedDescription];
  }

  v10 = DNDStringFromInterruptionSuppression([(DNDClientEventBehavior *)self interruptionSuppression]);
  v11 = DNDIntelligentInterruptionBehaviorToString([(DNDClientEventBehavior *)self intelligentBehavior]);
  v12 = DNDResolutionReasonToString([(DNDClientEventBehavior *)self resolutionReason]);
  v13 = [(DNDClientEventBehavior *)self activeModeUUID];
  v14 = [v5 stringWithFormat:@"<%@: %p eventDetails: %@; interruptionSuppression: %@; intelligentBehavior: %@; resolutionReason: %@; activeModeUUID: %@>", v6, self, v9, v10, v11, v12, v13];;

  if (v3)
  {
  }

  return v14;
}

- (DNDClientEventBehavior)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDetails"];
  v6 = [v4 decodeIntegerForKey:@"interruptionSuppression"];
  v7 = [v4 decodeIntegerForKey:@"intelligentBehavior"];
  v8 = [v4 decodeIntegerForKey:@"resolutionReason"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeModeUUID"];

  v10 = [(DNDClientEventBehavior *)self initWithEventDetails:v5 interruptionSuppression:v6 intelligentBehavior:v7 resolutionReason:v8 activeModeUUID:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDClientEventBehavior *)self eventDetails];
  [v4 encodeObject:v5 forKey:@"eventDetails"];

  [v4 encodeInteger:-[DNDClientEventBehavior interruptionSuppression](self forKey:{"interruptionSuppression"), @"interruptionSuppression"}];
  [v4 encodeInteger:-[DNDClientEventBehavior intelligentBehavior](self forKey:{"intelligentBehavior"), @"intelligentBehavior"}];
  [v4 encodeInteger:-[DNDClientEventBehavior resolutionReason](self forKey:{"resolutionReason"), @"resolutionReason"}];
  v6 = [(DNDClientEventBehavior *)self activeModeUUID];
  [v4 encodeObject:v6 forKey:@"activeModeUUID"];
}

@end