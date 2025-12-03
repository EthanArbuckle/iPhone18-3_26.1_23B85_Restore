@interface DNDModeAssertionDetails
+ (DNDModeAssertionDetails)detailsWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier lifetime:(id)lifetime reason:(unint64_t)reason;
+ (id)userRequestedAssertionDetailsWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier lifetime:(id)lifetime;
- (BOOL)isEqual:(id)equal;
- (DNDModeAssertionDetails)initWithCoder:(id)coder;
- (id)_initWithDetails:(id)details;
- (id)_initWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationModifiedDate:(id)date lifetime:(id)lifetime reason:(unint64_t)reason userVisibleEndDate:(id)endDate;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeAssertionDetails

+ (DNDModeAssertionDetails)detailsWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier lifetime:(id)lifetime reason:(unint64_t)reason
{
  lifetimeCopy = lifetime;
  modeIdentifierCopy = modeIdentifier;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
  }

  else
  {
    v13 = lifetimeCopy;
  }

  v14 = v13;

  v15 = [[self alloc] _initWithIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy modeConfigurationModifiedDate:0 lifetime:v14 reason:reason userVisibleEndDate:0];

  return v15;
}

- (id)_initWithDetails:(id)details
{
  detailsCopy = details;
  identifier = [detailsCopy identifier];
  modeIdentifier = [detailsCopy modeIdentifier];
  modeConfigurationModifiedDate = [detailsCopy modeConfigurationModifiedDate];
  lifetime = [detailsCopy lifetime];
  reason = [detailsCopy reason];
  userVisibleEndDate = [detailsCopy userVisibleEndDate];

  v11 = [(DNDModeAssertionDetails *)self _initWithIdentifier:identifier modeIdentifier:modeIdentifier modeConfigurationModifiedDate:modeConfigurationModifiedDate lifetime:lifetime reason:reason userVisibleEndDate:userVisibleEndDate];
  return v11;
}

- (id)_initWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationModifiedDate:(id)date lifetime:(id)lifetime reason:(unint64_t)reason userVisibleEndDate:(id)endDate
{
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  dateCopy = date;
  lifetimeCopy = lifetime;
  endDateCopy = endDate;
  v33.receiver = self;
  v33.super_class = DNDModeAssertionDetails;
  v19 = [(DNDModeAssertionDetails *)&v33 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &stru_2833C9B78;
    }

    objc_storeStrong(&v19->_identifier, v22);

    v23 = [modeIdentifierCopy copy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = @"com.apple.donotdisturb.mode.default";
    }

    objc_storeStrong(&v19->_modeIdentifier, v25);

    v26 = [dateCopy copy];
    modeConfigurationModifiedDate = v19->_modeConfigurationModifiedDate;
    v19->_modeConfigurationModifiedDate = v26;

    v28 = [lifetimeCopy copy];
    lifetime = v19->_lifetime;
    v19->_lifetime = v28;

    v19->_reason = reason;
    v30 = [endDateCopy copy];
    userVisibleEndDate = v19->_userVisibleEndDate;
    v19->_userVisibleEndDate = v30;
  }

  return v19;
}

- (unint64_t)hash
{
  identifier = [(DNDModeAssertionDetails *)self identifier];
  v4 = [identifier hash];
  modeIdentifier = [(DNDModeAssertionDetails *)self modeIdentifier];
  v6 = [modeIdentifier hash] ^ v4;
  modeConfigurationModifiedDate = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
  v8 = [modeConfigurationModifiedDate hash];
  lifetime = [(DNDModeAssertionDetails *)self lifetime];
  v10 = v6 ^ v8 ^ [lifetime hash];
  reason = [(DNDModeAssertionDetails *)self reason];
  userVisibleEndDate = [(DNDModeAssertionDetails *)self userVisibleEndDate];
  v13 = reason ^ [userVisibleEndDate hash];

  return v10 ^ v13;
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
      v6 = equalCopy;
      identifier = [(DNDModeAssertionDetails *)self identifier];
      identifier2 = [(DNDModeAssertionDetails *)v6 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(DNDModeAssertionDetails *)self identifier];
        if (!identifier3)
        {
          v13 = 0;
          goto LABEL_67;
        }

        v3 = identifier3;
        identifier4 = [(DNDModeAssertionDetails *)v6 identifier];
        if (!identifier4)
        {
          v13 = 0;
LABEL_66:

          goto LABEL_67;
        }

        identifier5 = [(DNDModeAssertionDetails *)self identifier];
        identifier6 = [(DNDModeAssertionDetails *)v6 identifier];
        if (![identifier5 isEqual:identifier6])
        {
          v13 = 0;
LABEL_65:

          goto LABEL_66;
        }

        v69 = identifier6;
        v70 = identifier5;
        v71 = identifier4;
      }

      modeIdentifier = [(DNDModeAssertionDetails *)self modeIdentifier];
      modeIdentifier2 = [(DNDModeAssertionDetails *)v6 modeIdentifier];
      v16 = modeIdentifier2;
      if (modeIdentifier != modeIdentifier2)
      {
        modeIdentifier3 = [(DNDModeAssertionDetails *)self modeIdentifier];
        if (modeIdentifier3)
        {
          v18 = modeIdentifier3;
          v72 = v16;
          modeIdentifier4 = [(DNDModeAssertionDetails *)v6 modeIdentifier];
          if (modeIdentifier4)
          {
            v20 = modeIdentifier4;
            v68 = v3;
            modeIdentifier5 = [(DNDModeAssertionDetails *)self modeIdentifier];
            modeIdentifier6 = [(DNDModeAssertionDetails *)v6 modeIdentifier];
            if (([modeIdentifier5 isEqual:modeIdentifier6] & 1) == 0)
            {

              goto LABEL_64;
            }

            v61 = modeIdentifier6;
            v62 = modeIdentifier5;
            v59 = v20;
            v60 = v18;
            v3 = v68;
LABEL_17:
            modeConfigurationModifiedDate = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
            modeConfigurationModifiedDate2 = [(DNDModeAssertionDetails *)v6 modeConfigurationModifiedDate];
            v25 = modeConfigurationModifiedDate2;
            if (modeConfigurationModifiedDate == modeConfigurationModifiedDate2)
            {
              v65 = modeIdentifier;
              v67 = modeConfigurationModifiedDate;
              v30 = modeConfigurationModifiedDate2;
LABEL_26:
              lifetime = [(DNDModeAssertionDetails *)self lifetime];
              [(DNDModeAssertionDetails *)v6 lifetime];
              v32 = v64 = lifetime;
              v68 = v3;
              if (lifetime == v32)
              {
                v35 = v30;
LABEL_34:
                v38 = v65;
                reason = [(DNDModeAssertionDetails *)self reason];
                if (reason == [(DNDModeAssertionDetails *)v6 reason])
                {
                  userVisibleEndDate = [(DNDModeAssertionDetails *)self userVisibleEndDate];
                  userVisibleEndDate2 = [(DNDModeAssertionDetails *)v6 userVisibleEndDate];
                  v3 = v68;
                  if (userVisibleEndDate == userVisibleEndDate2)
                  {

                    v13 = 1;
                  }

                  else
                  {
                    v66 = userVisibleEndDate2;
                    userVisibleEndDate3 = [(DNDModeAssertionDetails *)self userVisibleEndDate];
                    if (userVisibleEndDate3)
                    {
                      v51 = userVisibleEndDate3;
                      userVisibleEndDate4 = [(DNDModeAssertionDetails *)v6 userVisibleEndDate];
                      if (userVisibleEndDate4)
                      {
                        v50 = userVisibleEndDate4;
                        userVisibleEndDate5 = [(DNDModeAssertionDetails *)self userVisibleEndDate];
                        userVisibleEndDate6 = [(DNDModeAssertionDetails *)v6 userVisibleEndDate];
                        v13 = [userVisibleEndDate5 isEqual:userVisibleEndDate6];

                        v3 = v68;
                        userVisibleEndDate4 = v50;
                      }

                      else
                      {
                        v13 = 0;
                      }
                    }

                    else
                    {

                      v13 = 0;
                    }
                  }

                  v45 = v64;
                  if (v64 == v32)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                  v13 = 0;
                  v45 = v64;
                  v3 = v68;
                  if (v64 == v32)
                  {
LABEL_43:

                    if (v67 != v35)
                    {
                    }

                    if (v38 != v72)
                    {
                    }

LABEL_53:
                    identifier5 = v70;
                    identifier4 = v71;
                    identifier6 = v69;
                    if (identifier == identifier2)
                    {
                      goto LABEL_67;
                    }

                    goto LABEL_65;
                  }
                }

                goto LABEL_43;
              }

              lifetime2 = [(DNDModeAssertionDetails *)self lifetime];
              if (lifetime2)
              {
                v57 = lifetime2;
                lifetime3 = [(DNDModeAssertionDetails *)v6 lifetime];
                v35 = v30;
                modeIdentifier = v65;
                if (lifetime3)
                {
                  v54 = lifetime3;
                  lifetime4 = [(DNDModeAssertionDetails *)self lifetime];
                  lifetime5 = [(DNDModeAssertionDetails *)v6 lifetime];
                  if ([lifetime4 isEqual:lifetime5])
                  {
                    v52 = lifetime5;
                    v53 = lifetime4;
                    goto LABEL_34;
                  }

                  lifetime3 = v54;
                  modeIdentifier = v65;
                }

                v46 = v67;
                if (v67 == v35)
                {
                  goto LABEL_61;
                }
              }

              else
              {

                v46 = v67;
                v35 = v30;
                v47 = v67 == v30;
                modeIdentifier = v65;
                if (v47)
                {
                  goto LABEL_61;
                }
              }

LABEL_61:
              if (modeIdentifier != v72)
              {
              }

LABEL_64:
              v13 = 0;
              identifier5 = v70;
              identifier4 = v71;
              v3 = v68;
              identifier6 = v69;
              if (identifier != identifier2)
              {
                goto LABEL_65;
              }

LABEL_67:

              goto LABEL_68;
            }

            modeConfigurationModifiedDate3 = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
            if (modeConfigurationModifiedDate3)
            {
              v63 = modeConfigurationModifiedDate3;
              modeConfigurationModifiedDate4 = [(DNDModeAssertionDetails *)v6 modeConfigurationModifiedDate];
              if (modeConfigurationModifiedDate4)
              {
                v67 = modeConfigurationModifiedDate;
                v58 = modeConfigurationModifiedDate4;
                modeConfigurationModifiedDate5 = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
                modeConfigurationModifiedDate6 = [(DNDModeAssertionDetails *)v6 modeConfigurationModifiedDate];
                if ([modeConfigurationModifiedDate5 isEqual:modeConfigurationModifiedDate6])
                {
                  v65 = modeIdentifier;
                  v30 = v25;
                  v55 = modeConfigurationModifiedDate6;
                  v56 = modeConfigurationModifiedDate5;
                  goto LABEL_26;
                }

                goto LABEL_49;
              }
            }

LABEL_49:
            if (modeIdentifier != v72)
            {
            }

            goto LABEL_52;
          }
        }

        else
        {
        }

LABEL_52:

        v13 = 0;
        goto LABEL_53;
      }

      v72 = modeIdentifier2;
      goto LABEL_17;
    }

    v13 = 0;
  }

LABEL_68:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(DNDModeAssertionDetails *)self identifier];
  modeIdentifier = [(DNDModeAssertionDetails *)self modeIdentifier];
  modeConfigurationModifiedDate = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
  lifetime = [(DNDModeAssertionDetails *)self lifetime];
  v9 = DNDModeAssertionReasonToString([(DNDModeAssertionDetails *)self reason]);
  userVisibleEndDate = [(DNDModeAssertionDetails *)self userVisibleEndDate];
  v11 = [v3 stringWithFormat:@"<%@: %p identifier: '%@'; modeIdentifier: '%@'; modeConfigurationModifiedDate: %@; lifetime: %@; reason: %@; userVisibleEndDate: %@>", v4, self, identifier, modeIdentifier, modeConfigurationModifiedDate, lifetime, v9, userVisibleEndDate];;

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableModeAssertionDetails alloc];

  return [(DNDModeAssertionDetails *)v4 _initWithDetails:self];
}

- (DNDModeAssertionDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeConfigurationModifiedDate"];
  v8 = +[DNDModeAssertionLifetime _secureCodingLifetimeClasses];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"lifetime"];

  v10 = [coderCopy decodeIntegerForKey:@"reason"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userVisibleEndDate"];

  v12 = [(DNDModeAssertionDetails *)self _initWithIdentifier:v5 modeIdentifier:v6 modeConfigurationModifiedDate:v7 lifetime:v9 reason:v10 userVisibleEndDate:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DNDModeAssertionDetails *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  modeIdentifier = [(DNDModeAssertionDetails *)self modeIdentifier];
  [coderCopy encodeObject:modeIdentifier forKey:@"modeIdentifier"];

  modeConfigurationModifiedDate = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
  [coderCopy encodeObject:modeConfigurationModifiedDate forKey:@"modeConfigurationModifiedDate"];

  lifetime = [(DNDModeAssertionDetails *)self lifetime];
  [coderCopy encodeObject:lifetime forKey:@"lifetime"];

  [coderCopy encodeInteger:-[DNDModeAssertionDetails reason](self forKey:{"reason"), @"reason"}];
  userVisibleEndDate = [(DNDModeAssertionDetails *)self userVisibleEndDate];
  [coderCopy encodeObject:userVisibleEndDate forKey:@"userVisibleEndDate"];
}

+ (id)userRequestedAssertionDetailsWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier lifetime:(id)lifetime
{
  lifetimeCopy = lifetime;
  modeIdentifierCopy = modeIdentifier;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
  }

  else
  {
    v10 = lifetimeCopy;
  }

  v11 = v10;

  if (v11)
  {
    v12 = lifetimeCopy;
  }

  else
  {
    v12 = [DNDModeAssertionLifetime lifetimeUntilEndOfScheduleWithIdentifier:@"com.apple.donotdisturb.schedule.default"];
  }

  v13 = [DNDModeAssertionDetails detailsWithIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy lifetime:v12];

  return v13;
}

@end