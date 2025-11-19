@interface HKClinicalAccountEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClinicalAccountEvent:(id)a3;
- (HKClinicalAccountEvent)eventWithAppendedEventDescription:(id)a3;
- (HKClinicalAccountEvent)eventWithAppendedRefreshToken:(id)a3 description:(id)a4;
- (HKClinicalAccountEvent)eventWithUpdatedCredentialStateAfter:(int64_t)a3;
- (HKClinicalAccountEvent)eventWithUpdatedCredentialStateBefore:(int64_t)a3;
- (HKClinicalAccountEvent)init;
- (HKClinicalAccountEvent)initWithAccountIdentifier:(id)a3 type:(int64_t)a4 caller:(id)a5 timestamp:(id)a6 eventDescription:(id)a7 credentialStateBefore:(int64_t)a8 credentialStateAfter:(int64_t)a9;
- (HKClinicalAccountEvent)initWithAccountIdentifier:(id)a3 type:(int64_t)a4 caller:(id)a5 timestamp:(id)a6 eventDescription:(id)a7 incomingToken:(id)a8 currentToken:(id)a9;
- (HKClinicalAccountEvent)initWithCoder:(id)a3;
- (NSString)credentialStateAfterDescription;
- (NSString)credentialStateBeforeDescription;
- (NSString)typeDescription;
- (id)eventMarkedAsFailedWithError:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalAccountEvent)initWithAccountIdentifier:(id)a3 type:(int64_t)a4 caller:(id)a5 timestamp:(id)a6 eventDescription:(id)a7 credentialStateBefore:(int64_t)a8 credentialStateAfter:(int64_t)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v29.receiver = self;
  v29.super_class = HKClinicalAccountEvent;
  v19 = [(HKClinicalAccountEvent *)&v29 init];
  if (v19)
  {
    v20 = [v15 copy];
    accountIdentifier = v19->_accountIdentifier;
    v19->_accountIdentifier = v20;

    v19->_type = a4;
    v22 = [v16 copy];
    caller = v19->_caller;
    v19->_caller = v22;

    v24 = [v17 copy];
    timestamp = v19->_timestamp;
    v19->_timestamp = v24;

    v26 = [v18 copy];
    eventDescription = v19->_eventDescription;
    v19->_eventDescription = v26;

    v19->_credentialStateBefore = a8;
    v19->_credentialStateAfter = a9;
  }

  return v19;
}

- (HKClinicalAccountEvent)initWithAccountIdentifier:(id)a3 type:(int64_t)a4 caller:(id)a5 timestamp:(id)a6 eventDescription:(id)a7 incomingToken:(id)a8 currentToken:(id)a9
{
  v16 = MEMORY[0x277CCACA8];
  v17 = a9;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  v22 = [a8 hk_SHA256Hash];
  v23 = [v17 hk_SHA256Hash];

  v24 = [v16 stringWithFormat:@"%@ - %@: %@ - %@: %@", v18, @"Incoming Token", v22, @"Current Token", v23];

  v25 = [(HKClinicalAccountEvent *)self initWithAccountIdentifier:v21 type:a4 caller:v20 timestamp:v19 eventDescription:v24 credentialStateBefore:0 credentialStateAfter:0];
  return v25;
}

- (HKClinicalAccountEvent)eventWithAppendedEventDescription:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HKClinicalAccountEvent *)self accountIdentifier];
  v7 = [(HKClinicalAccountEvent *)self type];
  v8 = [(HKClinicalAccountEvent *)self caller];
  v9 = [(HKClinicalAccountEvent *)self timestamp];
  v10 = MEMORY[0x277CCACA8];
  v11 = [(HKClinicalAccountEvent *)self eventDescription];
  v12 = [v10 stringWithFormat:@"%@ - %@", v11, v4];

  v13 = [v5 initWithAccountIdentifier:v6 type:v7 caller:v8 timestamp:v9 eventDescription:v12 credentialStateBefore:-[HKClinicalAccountEvent credentialStateBefore](self credentialStateAfter:{"credentialStateBefore"), -[HKClinicalAccountEvent credentialStateAfter](self, "credentialStateAfter")}];

  return v13;
}

- (HKClinicalAccountEvent)eventWithAppendedRefreshToken:(id)a3 description:(id)a4
{
  v6 = a4;
  v7 = a3;
  v18 = objc_alloc(objc_opt_class());
  v8 = [(HKClinicalAccountEvent *)self accountIdentifier];
  v9 = [(HKClinicalAccountEvent *)self type];
  v10 = [(HKClinicalAccountEvent *)self caller];
  v11 = [(HKClinicalAccountEvent *)self timestamp];
  v12 = MEMORY[0x277CCACA8];
  v13 = [(HKClinicalAccountEvent *)self eventDescription];
  v14 = [v7 hk_SHA256Hash];

  v15 = [v12 stringWithFormat:@"%@ - %@: %@", v13, v6, v14];

  v16 = [v18 initWithAccountIdentifier:v8 type:v9 caller:v10 timestamp:v11 eventDescription:v15 credentialStateBefore:-[HKClinicalAccountEvent credentialStateBefore](self credentialStateAfter:{"credentialStateBefore"), -[HKClinicalAccountEvent credentialStateAfter](self, "credentialStateAfter")}];

  return v16;
}

- (HKClinicalAccountEvent)eventWithUpdatedCredentialStateBefore:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HKClinicalAccountEvent *)self accountIdentifier];
  v7 = [(HKClinicalAccountEvent *)self type];
  v8 = [(HKClinicalAccountEvent *)self caller];
  v9 = [(HKClinicalAccountEvent *)self timestamp];
  v10 = [(HKClinicalAccountEvent *)self eventDescription];
  v11 = [v5 initWithAccountIdentifier:v6 type:v7 caller:v8 timestamp:v9 eventDescription:v10 credentialStateBefore:a3 credentialStateAfter:{-[HKClinicalAccountEvent credentialStateAfter](self, "credentialStateAfter")}];

  return v11;
}

- (HKClinicalAccountEvent)eventWithUpdatedCredentialStateAfter:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HKClinicalAccountEvent *)self accountIdentifier];
  v7 = [(HKClinicalAccountEvent *)self type];
  v8 = [(HKClinicalAccountEvent *)self caller];
  v9 = [(HKClinicalAccountEvent *)self timestamp];
  v10 = [(HKClinicalAccountEvent *)self eventDescription];
  v11 = [v5 initWithAccountIdentifier:v6 type:v7 caller:v8 timestamp:v9 eventDescription:v10 credentialStateBefore:-[HKClinicalAccountEvent credentialStateBefore](self credentialStateAfter:{"credentialStateBefore"), a3}];

  return v11;
}

- (id)eventMarkedAsFailedWithError:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HKClinicalAccountEvent *)self accountIdentifier];
  v7 = [(HKClinicalAccountEvent *)self type];
  v8 = [(HKClinicalAccountEvent *)self caller];
  v9 = [(HKClinicalAccountEvent *)self timestamp];
  v10 = MEMORY[0x277CCACA8];
  v11 = [(HKClinicalAccountEvent *)self eventDescription];
  v12 = [v4 hrs_completeDescription];

  v13 = [v10 stringWithFormat:@"Action: (%@) failed: (%@)", v11, v12];
  v14 = [v5 initWithAccountIdentifier:v6 type:v7 caller:v8 timestamp:v9 eventDescription:v13 credentialStateBefore:-[HKClinicalAccountEvent credentialStateBefore](self credentialStateAfter:{"credentialStateBefore"), -[HKClinicalAccountEvent credentialStateAfter](self, "credentialStateAfter")}];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(HKClinicalAccountEvent *)self isEqualToClinicalAccountEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToClinicalAccountEvent:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self == v6)
  {
    v13 = 1;
  }

  else
  {
    if (v6)
    {
      v8 = [(HKClinicalAccountEvent *)self accountIdentifier];
      v9 = [(HKClinicalAccountEvent *)v7 accountIdentifier];
      if (v8 != v9)
      {
        v10 = [(HKClinicalAccountEvent *)v7 accountIdentifier];
        if (!v10)
        {
          v13 = 0;
          goto LABEL_54;
        }

        v3 = v10;
        v11 = [(HKClinicalAccountEvent *)self accountIdentifier];
        v12 = [(HKClinicalAccountEvent *)v7 accountIdentifier];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_53:

          goto LABEL_54;
        }

        v47 = v12;
        v48 = v11;
      }

      v14 = [(HKClinicalAccountEvent *)self type];
      if (v14 != [(HKClinicalAccountEvent *)v7 type])
      {
        goto LABEL_35;
      }

      v15 = [(HKClinicalAccountEvent *)self caller];
      v16 = [(HKClinicalAccountEvent *)v7 caller];
      if (v15 != v16)
      {
        v17 = [(HKClinicalAccountEvent *)v7 caller];
        if (!v17)
        {
LABEL_34:

LABEL_35:
          v13 = 0;
          goto LABEL_52;
        }

        v45 = v17;
        v4 = [(HKClinicalAccountEvent *)self caller];
        v18 = [(HKClinicalAccountEvent *)v7 caller];
        if (([v4 isEqualToString:v18] & 1) == 0)
        {

LABEL_33:
          goto LABEL_34;
        }

        v42 = v18;
      }

      v19 = [(HKClinicalAccountEvent *)self timestamp];
      v20 = [(HKClinicalAccountEvent *)v7 timestamp];
      v46 = v19;
      v21 = v19 == v20;
      v22 = v20;
      if (v21)
      {
        v43 = v4;
        v44 = v15;
LABEL_21:
        v26 = [(HKClinicalAccountEvent *)self eventDescription];
        v27 = [(HKClinicalAccountEvent *)v7 eventDescription];
        v40 = v15;
        if (v26 == v27)
        {
          v38 = v26;
        }

        else
        {
          v28 = [(HKClinicalAccountEvent *)v7 eventDescription];
          if (!v28)
          {
            goto LABEL_38;
          }

          v35 = v28;
          v29 = [(HKClinicalAccountEvent *)self eventDescription];
          [(HKClinicalAccountEvent *)v7 eventDescription];
          v37 = v34 = v29;
          if (![v29 isEqualToString:?])
          {
            v13 = 0;
LABEL_40:

            if (v46 == v22)
            {
LABEL_48:

              v4 = v43;
              v15 = v44;
              goto LABEL_49;
            }

            v4 = v43;
            v15 = v44;
LABEL_42:

LABEL_49:
            if (v15 != v16)
            {
            }

LABEL_52:
            v11 = v48;
            v12 = v47;
            if (v8 != v9)
            {
              goto LABEL_53;
            }

LABEL_54:

            goto LABEL_55;
          }

          v38 = v26;
        }

        v30 = [(HKClinicalAccountEvent *)self credentialStateBefore];
        if (v30 == [(HKClinicalAccountEvent *)v7 credentialStateBefore])
        {
          v31 = [(HKClinicalAccountEvent *)self credentialStateAfter];
          v13 = v31 == [(HKClinicalAccountEvent *)v7 credentialStateAfter];
          v32 = v13;
          v26 = v38;
          if (v38 == v27)
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        }

        if (v38 == v27)
        {
          v32 = 0;
          v13 = 0;
          v26 = v38;
LABEL_45:

LABEL_46:
          if (v46 != v22)
          {

            v13 = v32;
          }

          goto LABEL_48;
        }

        v26 = v38;
LABEL_38:

        v32 = 0;
        v13 = 0;
        goto LABEL_46;
      }

      v23 = [(HKClinicalAccountEvent *)v7 timestamp];
      if (!v23)
      {
        v13 = 0;
        goto LABEL_42;
      }

      v39 = v22;
      v41 = v23;
      v24 = [(HKClinicalAccountEvent *)self timestamp];
      v25 = [(HKClinicalAccountEvent *)v7 timestamp];
      if ([v24 isEqualToDate:v25])
      {
        v36 = v25;
        v43 = v4;
        v44 = v15;
        v22 = v39;
        v15 = v24;
        goto LABEL_21;
      }

      if (v15 == v16)
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(HKClinicalAccountEvent *)self accountIdentifier];
  [v8 encodeObject:v4 forKey:@"accountIdentifier"];

  [v8 encodeInteger:-[HKClinicalAccountEvent type](self forKey:{"type"), @"type"}];
  v5 = [(HKClinicalAccountEvent *)self caller];
  [v8 encodeObject:v5 forKey:@"caller"];

  v6 = [(HKClinicalAccountEvent *)self timestamp];
  [v8 encodeObject:v6 forKey:@"timestamp"];

  v7 = [(HKClinicalAccountEvent *)self eventDescription];
  [v8 encodeObject:v7 forKey:@"eventDescription"];

  [v8 encodeInteger:-[HKClinicalAccountEvent credentialStateBefore](self forKey:{"credentialStateBefore"), @"credentialStateBefore"}];
  [v8 encodeInteger:-[HKClinicalAccountEvent credentialStateAfter](self forKey:{"credentialStateAfter"), @"credentialStateAfter"}];
}

- (HKClinicalAccountEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"type"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"caller"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDescription"];
  v10 = [v4 decodeIntegerForKey:@"credentialStateBefore"];
  v11 = [v4 decodeIntegerForKey:@"credentialStateAfter"];
  if (!v5 || !v7 || !v8 || !v9)
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (v6 > 2 || v10 > 3 || v11 >= 4)
  {
    [v4 hrs_failWithCocoaInvalidValueError];
    goto LABEL_11;
  }

  self = [(HKClinicalAccountEvent *)self initWithAccountIdentifier:v5 type:v6 caller:v7 timestamp:v8 eventDescription:v9 credentialStateBefore:v10 credentialStateAfter:v11];
  v12 = self;
LABEL_12:

  return v12;
}

- (NSString)typeDescription
{
  v2 = [(HKClinicalAccountEvent *)self type];
  v3 = @"unknown";
  if (v2 == 1)
  {
    v3 = @"credential state change";
  }

  if (v2 == 2)
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
  v2 = [(HKClinicalAccountEvent *)self credentialStateBefore];
  if ((v2 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return &off_2796DC900[v2 - 1]->isa;
  }
}

- (NSString)credentialStateAfterDescription
{
  v2 = [(HKClinicalAccountEvent *)self credentialStateAfter];
  if ((v2 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return &off_2796DC900[v2 - 1]->isa;
  }
}

@end