@interface HKClinicalAccountEvent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClinicalAccountEvent:(id)event;
- (HKClinicalAccountEvent)eventWithAppendedEventDescription:(id)description;
- (HKClinicalAccountEvent)eventWithAppendedRefreshToken:(id)token description:(id)description;
- (HKClinicalAccountEvent)eventWithUpdatedCredentialStateAfter:(int64_t)after;
- (HKClinicalAccountEvent)eventWithUpdatedCredentialStateBefore:(int64_t)before;
- (HKClinicalAccountEvent)init;
- (HKClinicalAccountEvent)initWithAccountIdentifier:(id)identifier type:(int64_t)type caller:(id)caller timestamp:(id)timestamp eventDescription:(id)description credentialStateBefore:(int64_t)before credentialStateAfter:(int64_t)after;
- (HKClinicalAccountEvent)initWithAccountIdentifier:(id)identifier type:(int64_t)type caller:(id)caller timestamp:(id)timestamp eventDescription:(id)description incomingToken:(id)token currentToken:(id)currentToken;
- (HKClinicalAccountEvent)initWithCoder:(id)coder;
- (NSString)credentialStateAfterDescription;
- (NSString)credentialStateBeforeDescription;
- (NSString)typeDescription;
- (id)eventMarkedAsFailedWithError:(id)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalAccountEvent

- (HKClinicalAccountEvent)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalAccountEvent)initWithAccountIdentifier:(id)identifier type:(int64_t)type caller:(id)caller timestamp:(id)timestamp eventDescription:(id)description credentialStateBefore:(int64_t)before credentialStateAfter:(int64_t)after
{
  identifierCopy = identifier;
  callerCopy = caller;
  timestampCopy = timestamp;
  descriptionCopy = description;
  v29.receiver = self;
  v29.super_class = HKClinicalAccountEvent;
  v19 = [(HKClinicalAccountEvent *)&v29 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    accountIdentifier = v19->_accountIdentifier;
    v19->_accountIdentifier = v20;

    v19->_type = type;
    v22 = [callerCopy copy];
    caller = v19->_caller;
    v19->_caller = v22;

    v24 = [timestampCopy copy];
    timestamp = v19->_timestamp;
    v19->_timestamp = v24;

    v26 = [descriptionCopy copy];
    eventDescription = v19->_eventDescription;
    v19->_eventDescription = v26;

    v19->_credentialStateBefore = before;
    v19->_credentialStateAfter = after;
  }

  return v19;
}

- (HKClinicalAccountEvent)initWithAccountIdentifier:(id)identifier type:(int64_t)type caller:(id)caller timestamp:(id)timestamp eventDescription:(id)description incomingToken:(id)token currentToken:(id)currentToken
{
  v16 = MEMORY[0x277CCACA8];
  currentTokenCopy = currentToken;
  descriptionCopy = description;
  timestampCopy = timestamp;
  callerCopy = caller;
  identifierCopy = identifier;
  hk_SHA256Hash = [token hk_SHA256Hash];
  hk_SHA256Hash2 = [currentTokenCopy hk_SHA256Hash];

  v24 = [v16 stringWithFormat:@"%@ - %@: %@ - %@: %@", descriptionCopy, @"Incoming Token", hk_SHA256Hash, @"Current Token", hk_SHA256Hash2];

  v25 = [(HKClinicalAccountEvent *)self initWithAccountIdentifier:identifierCopy type:type caller:callerCopy timestamp:timestampCopy eventDescription:v24 credentialStateBefore:0 credentialStateAfter:0];
  return v25;
}

- (HKClinicalAccountEvent)eventWithAppendedEventDescription:(id)description
{
  descriptionCopy = description;
  v5 = objc_alloc(objc_opt_class());
  accountIdentifier = [(HKClinicalAccountEvent *)self accountIdentifier];
  type = [(HKClinicalAccountEvent *)self type];
  caller = [(HKClinicalAccountEvent *)self caller];
  timestamp = [(HKClinicalAccountEvent *)self timestamp];
  v10 = MEMORY[0x277CCACA8];
  eventDescription = [(HKClinicalAccountEvent *)self eventDescription];
  descriptionCopy = [v10 stringWithFormat:@"%@ - %@", eventDescription, descriptionCopy];

  v13 = [v5 initWithAccountIdentifier:accountIdentifier type:type caller:caller timestamp:timestamp eventDescription:descriptionCopy credentialStateBefore:-[HKClinicalAccountEvent credentialStateBefore](self credentialStateAfter:{"credentialStateBefore"), -[HKClinicalAccountEvent credentialStateAfter](self, "credentialStateAfter")}];

  return v13;
}

- (HKClinicalAccountEvent)eventWithAppendedRefreshToken:(id)token description:(id)description
{
  descriptionCopy = description;
  tokenCopy = token;
  v18 = objc_alloc(objc_opt_class());
  accountIdentifier = [(HKClinicalAccountEvent *)self accountIdentifier];
  type = [(HKClinicalAccountEvent *)self type];
  caller = [(HKClinicalAccountEvent *)self caller];
  timestamp = [(HKClinicalAccountEvent *)self timestamp];
  v12 = MEMORY[0x277CCACA8];
  eventDescription = [(HKClinicalAccountEvent *)self eventDescription];
  hk_SHA256Hash = [tokenCopy hk_SHA256Hash];

  v15 = [v12 stringWithFormat:@"%@ - %@: %@", eventDescription, descriptionCopy, hk_SHA256Hash];

  v16 = [v18 initWithAccountIdentifier:accountIdentifier type:type caller:caller timestamp:timestamp eventDescription:v15 credentialStateBefore:-[HKClinicalAccountEvent credentialStateBefore](self credentialStateAfter:{"credentialStateBefore"), -[HKClinicalAccountEvent credentialStateAfter](self, "credentialStateAfter")}];

  return v16;
}

- (HKClinicalAccountEvent)eventWithUpdatedCredentialStateBefore:(int64_t)before
{
  v5 = objc_alloc(objc_opt_class());
  accountIdentifier = [(HKClinicalAccountEvent *)self accountIdentifier];
  type = [(HKClinicalAccountEvent *)self type];
  caller = [(HKClinicalAccountEvent *)self caller];
  timestamp = [(HKClinicalAccountEvent *)self timestamp];
  eventDescription = [(HKClinicalAccountEvent *)self eventDescription];
  v11 = [v5 initWithAccountIdentifier:accountIdentifier type:type caller:caller timestamp:timestamp eventDescription:eventDescription credentialStateBefore:before credentialStateAfter:{-[HKClinicalAccountEvent credentialStateAfter](self, "credentialStateAfter")}];

  return v11;
}

- (HKClinicalAccountEvent)eventWithUpdatedCredentialStateAfter:(int64_t)after
{
  v5 = objc_alloc(objc_opt_class());
  accountIdentifier = [(HKClinicalAccountEvent *)self accountIdentifier];
  type = [(HKClinicalAccountEvent *)self type];
  caller = [(HKClinicalAccountEvent *)self caller];
  timestamp = [(HKClinicalAccountEvent *)self timestamp];
  eventDescription = [(HKClinicalAccountEvent *)self eventDescription];
  v11 = [v5 initWithAccountIdentifier:accountIdentifier type:type caller:caller timestamp:timestamp eventDescription:eventDescription credentialStateBefore:-[HKClinicalAccountEvent credentialStateBefore](self credentialStateAfter:{"credentialStateBefore"), after}];

  return v11;
}

- (id)eventMarkedAsFailedWithError:(id)error
{
  errorCopy = error;
  v5 = objc_alloc(objc_opt_class());
  accountIdentifier = [(HKClinicalAccountEvent *)self accountIdentifier];
  type = [(HKClinicalAccountEvent *)self type];
  caller = [(HKClinicalAccountEvent *)self caller];
  timestamp = [(HKClinicalAccountEvent *)self timestamp];
  v10 = MEMORY[0x277CCACA8];
  eventDescription = [(HKClinicalAccountEvent *)self eventDescription];
  hrs_completeDescription = [errorCopy hrs_completeDescription];

  v13 = [v10 stringWithFormat:@"Action: (%@) failed: (%@)", eventDescription, hrs_completeDescription];
  v14 = [v5 initWithAccountIdentifier:accountIdentifier type:type caller:caller timestamp:timestamp eventDescription:v13 credentialStateBefore:-[HKClinicalAccountEvent credentialStateBefore](self credentialStateAfter:{"credentialStateBefore"), -[HKClinicalAccountEvent credentialStateAfter](self, "credentialStateAfter")}];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(HKClinicalAccountEvent *)self isEqualToClinicalAccountEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToClinicalAccountEvent:(id)event
{
  eventCopy = event;
  v7 = eventCopy;
  if (self == eventCopy)
  {
    v13 = 1;
  }

  else
  {
    if (eventCopy)
    {
      accountIdentifier = [(HKClinicalAccountEvent *)self accountIdentifier];
      accountIdentifier2 = [(HKClinicalAccountEvent *)v7 accountIdentifier];
      if (accountIdentifier != accountIdentifier2)
      {
        accountIdentifier3 = [(HKClinicalAccountEvent *)v7 accountIdentifier];
        if (!accountIdentifier3)
        {
          v13 = 0;
          goto LABEL_54;
        }

        v3 = accountIdentifier3;
        accountIdentifier4 = [(HKClinicalAccountEvent *)self accountIdentifier];
        accountIdentifier5 = [(HKClinicalAccountEvent *)v7 accountIdentifier];
        if (![accountIdentifier4 isEqual:accountIdentifier5])
        {
          v13 = 0;
LABEL_53:

          goto LABEL_54;
        }

        v47 = accountIdentifier5;
        v48 = accountIdentifier4;
      }

      type = [(HKClinicalAccountEvent *)self type];
      if (type != [(HKClinicalAccountEvent *)v7 type])
      {
        goto LABEL_35;
      }

      caller = [(HKClinicalAccountEvent *)self caller];
      caller2 = [(HKClinicalAccountEvent *)v7 caller];
      if (caller != caller2)
      {
        caller3 = [(HKClinicalAccountEvent *)v7 caller];
        if (!caller3)
        {
LABEL_34:

LABEL_35:
          v13 = 0;
          goto LABEL_52;
        }

        v45 = caller3;
        caller4 = [(HKClinicalAccountEvent *)self caller];
        caller5 = [(HKClinicalAccountEvent *)v7 caller];
        if (([caller4 isEqualToString:caller5] & 1) == 0)
        {

LABEL_33:
          goto LABEL_34;
        }

        v42 = caller5;
      }

      timestamp = [(HKClinicalAccountEvent *)self timestamp];
      timestamp2 = [(HKClinicalAccountEvent *)v7 timestamp];
      v46 = timestamp;
      v21 = timestamp == timestamp2;
      v22 = timestamp2;
      if (v21)
      {
        v43 = caller4;
        v44 = caller;
LABEL_21:
        eventDescription = [(HKClinicalAccountEvent *)self eventDescription];
        eventDescription2 = [(HKClinicalAccountEvent *)v7 eventDescription];
        v40 = caller;
        if (eventDescription == eventDescription2)
        {
          v38 = eventDescription;
        }

        else
        {
          eventDescription3 = [(HKClinicalAccountEvent *)v7 eventDescription];
          if (!eventDescription3)
          {
            goto LABEL_38;
          }

          v35 = eventDescription3;
          eventDescription4 = [(HKClinicalAccountEvent *)self eventDescription];
          [(HKClinicalAccountEvent *)v7 eventDescription];
          v37 = v34 = eventDescription4;
          if (![eventDescription4 isEqualToString:?])
          {
            v13 = 0;
LABEL_40:

            if (v46 == v22)
            {
LABEL_48:

              caller4 = v43;
              caller = v44;
              goto LABEL_49;
            }

            caller4 = v43;
            caller = v44;
LABEL_42:

LABEL_49:
            if (caller != caller2)
            {
            }

LABEL_52:
            accountIdentifier4 = v48;
            accountIdentifier5 = v47;
            if (accountIdentifier != accountIdentifier2)
            {
              goto LABEL_53;
            }

LABEL_54:

            goto LABEL_55;
          }

          v38 = eventDescription;
        }

        credentialStateBefore = [(HKClinicalAccountEvent *)self credentialStateBefore];
        if (credentialStateBefore == [(HKClinicalAccountEvent *)v7 credentialStateBefore])
        {
          credentialStateAfter = [(HKClinicalAccountEvent *)self credentialStateAfter];
          v13 = credentialStateAfter == [(HKClinicalAccountEvent *)v7 credentialStateAfter];
          v32 = v13;
          eventDescription = v38;
          if (v38 == eventDescription2)
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        }

        if (v38 == eventDescription2)
        {
          v32 = 0;
          v13 = 0;
          eventDescription = v38;
LABEL_45:

LABEL_46:
          if (v46 != v22)
          {

            v13 = v32;
          }

          goto LABEL_48;
        }

        eventDescription = v38;
LABEL_38:

        v32 = 0;
        v13 = 0;
        goto LABEL_46;
      }

      timestamp3 = [(HKClinicalAccountEvent *)v7 timestamp];
      if (!timestamp3)
      {
        v13 = 0;
        goto LABEL_42;
      }

      v39 = v22;
      v41 = timestamp3;
      timestamp4 = [(HKClinicalAccountEvent *)self timestamp];
      timestamp5 = [(HKClinicalAccountEvent *)v7 timestamp];
      if ([timestamp4 isEqualToDate:timestamp5])
      {
        v36 = timestamp5;
        v43 = caller4;
        v44 = caller;
        v22 = v39;
        caller = timestamp4;
        goto LABEL_21;
      }

      if (caller == caller2)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v13 = 0;
  }

LABEL_55:

  return v13;
}

- (unint64_t)hash
{
  v3 = self->_type ^ [(NSUUID *)self->_accountIdentifier hash];
  v4 = [(NSString *)self->_caller hash];
  v5 = v3 ^ v4 ^ [(NSDate *)self->_timestamp hash];
  return v5 ^ [(NSString *)self->_eventDescription hash]^ self->_credentialStateBefore ^ self->_credentialStateAfter;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountIdentifier = [(HKClinicalAccountEvent *)self accountIdentifier];
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];

  [coderCopy encodeInteger:-[HKClinicalAccountEvent type](self forKey:{"type"), @"type"}];
  caller = [(HKClinicalAccountEvent *)self caller];
  [coderCopy encodeObject:caller forKey:@"caller"];

  timestamp = [(HKClinicalAccountEvent *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  eventDescription = [(HKClinicalAccountEvent *)self eventDescription];
  [coderCopy encodeObject:eventDescription forKey:@"eventDescription"];

  [coderCopy encodeInteger:-[HKClinicalAccountEvent credentialStateBefore](self forKey:{"credentialStateBefore"), @"credentialStateBefore"}];
  [coderCopy encodeInteger:-[HKClinicalAccountEvent credentialStateAfter](self forKey:{"credentialStateAfter"), @"credentialStateAfter"}];
}

- (HKClinicalAccountEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"type"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"caller"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventDescription"];
  v10 = [coderCopy decodeIntegerForKey:@"credentialStateBefore"];
  v11 = [coderCopy decodeIntegerForKey:@"credentialStateAfter"];
  if (!v5 || !v7 || !v8 || !v9)
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
LABEL_11:
    selfCopy = 0;
    goto LABEL_12;
  }

  if (v6 > 2 || v10 > 3 || v11 >= 4)
  {
    [coderCopy hrs_failWithCocoaInvalidValueError];
    goto LABEL_11;
  }

  self = [(HKClinicalAccountEvent *)self initWithAccountIdentifier:v5 type:v6 caller:v7 timestamp:v8 eventDescription:v9 credentialStateBefore:v10 credentialStateAfter:v11];
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (NSString)typeDescription
{
  type = [(HKClinicalAccountEvent *)self type];
  v3 = @"unknown";
  if (type == 1)
  {
    v3 = @"credential state change";
  }

  if (type == 2)
  {
    v4 = @"ignore incoming credential from sync";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (NSString)credentialStateBeforeDescription
{
  credentialStateBefore = [(HKClinicalAccountEvent *)self credentialStateBefore];
  if ((credentialStateBefore - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return &off_2796DC900[credentialStateBefore - 1]->isa;
  }
}

- (NSString)credentialStateAfterDescription
{
  credentialStateAfter = [(HKClinicalAccountEvent *)self credentialStateAfter];
  if ((credentialStateAfter - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return &off_2796DC900[credentialStateAfter - 1]->isa;
  }
}

@end