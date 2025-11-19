@interface DNDModeAssertionDetails
+ (DNDModeAssertionDetails)detailsWithIdentifier:(id)a3 modeIdentifier:(id)a4 lifetime:(id)a5 reason:(unint64_t)a6;
+ (id)userRequestedAssertionDetailsWithIdentifier:(id)a3 modeIdentifier:(id)a4 lifetime:(id)a5;
- (BOOL)isEqual:(id)a3;
- (DNDModeAssertionDetails)initWithCoder:(id)a3;
- (id)_initWithDetails:(id)a3;
- (id)_initWithIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationModifiedDate:(id)a5 lifetime:(id)a6 reason:(unint64_t)a7 userVisibleEndDate:(id)a8;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeAssertionDetails

+ (DNDModeAssertionDetails)detailsWithIdentifier:(id)a3 modeIdentifier:(id)a4 lifetime:(id)a5 reason:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;

  v15 = [[a1 alloc] _initWithIdentifier:v12 modeIdentifier:v11 modeConfigurationModifiedDate:0 lifetime:v14 reason:a6 userVisibleEndDate:0];

  return v15;
}

- (id)_initWithDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 modeIdentifier];
  v7 = [v4 modeConfigurationModifiedDate];
  v8 = [v4 lifetime];
  v9 = [v4 reason];
  v10 = [v4 userVisibleEndDate];

  v11 = [(DNDModeAssertionDetails *)self _initWithIdentifier:v5 modeIdentifier:v6 modeConfigurationModifiedDate:v7 lifetime:v8 reason:v9 userVisibleEndDate:v10];
  return v11;
}

- (id)_initWithIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationModifiedDate:(id)a5 lifetime:(id)a6 reason:(unint64_t)a7 userVisibleEndDate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v33.receiver = self;
  v33.super_class = DNDModeAssertionDetails;
  v19 = [(DNDModeAssertionDetails *)&v33 init];
  if (v19)
  {
    v20 = [v14 copy];
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

    v23 = [v15 copy];
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

    v26 = [v16 copy];
    modeConfigurationModifiedDate = v19->_modeConfigurationModifiedDate;
    v19->_modeConfigurationModifiedDate = v26;

    v28 = [v17 copy];
    lifetime = v19->_lifetime;
    v19->_lifetime = v28;

    v19->_reason = a7;
    v30 = [v18 copy];
    userVisibleEndDate = v19->_userVisibleEndDate;
    v19->_userVisibleEndDate = v30;
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(DNDModeAssertionDetails *)self identifier];
  v4 = [v3 hash];
  v5 = [(DNDModeAssertionDetails *)self modeIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
  v8 = [v7 hash];
  v9 = [(DNDModeAssertionDetails *)self lifetime];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDModeAssertionDetails *)self reason];
  v12 = [(DNDModeAssertionDetails *)self userVisibleEndDate];
  v13 = v11 ^ [v12 hash];

  return v10 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDModeAssertionDetails *)self identifier];
      v8 = [(DNDModeAssertionDetails *)v6 identifier];
      if (v7 != v8)
      {
        v9 = [(DNDModeAssertionDetails *)self identifier];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_67;
        }

        v3 = v9;
        v10 = [(DNDModeAssertionDetails *)v6 identifier];
        if (!v10)
        {
          v13 = 0;
LABEL_66:

          goto LABEL_67;
        }

        v11 = [(DNDModeAssertionDetails *)self identifier];
        v12 = [(DNDModeAssertionDetails *)v6 identifier];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_65:

          goto LABEL_66;
        }

        v69 = v12;
        v70 = v11;
        v71 = v10;
      }

      v14 = [(DNDModeAssertionDetails *)self modeIdentifier];
      v15 = [(DNDModeAssertionDetails *)v6 modeIdentifier];
      v16 = v15;
      if (v14 != v15)
      {
        v17 = [(DNDModeAssertionDetails *)self modeIdentifier];
        if (v17)
        {
          v18 = v17;
          v72 = v16;
          v19 = [(DNDModeAssertionDetails *)v6 modeIdentifier];
          if (v19)
          {
            v20 = v19;
            v68 = v3;
            v21 = [(DNDModeAssertionDetails *)self modeIdentifier];
            v22 = [(DNDModeAssertionDetails *)v6 modeIdentifier];
            if (([v21 isEqual:v22] & 1) == 0)
            {

              goto LABEL_64;
            }

            v61 = v22;
            v62 = v21;
            v59 = v20;
            v60 = v18;
            v3 = v68;
LABEL_17:
            v23 = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
            v24 = [(DNDModeAssertionDetails *)v6 modeConfigurationModifiedDate];
            v25 = v24;
            if (v23 == v24)
            {
              v65 = v14;
              v67 = v23;
              v30 = v24;
LABEL_26:
              v31 = [(DNDModeAssertionDetails *)self lifetime];
              [(DNDModeAssertionDetails *)v6 lifetime];
              v32 = v64 = v31;
              v68 = v3;
              if (v31 == v32)
              {
                v35 = v30;
LABEL_34:
                v38 = v65;
                v39 = [(DNDModeAssertionDetails *)self reason];
                if (v39 == [(DNDModeAssertionDetails *)v6 reason])
                {
                  v40 = [(DNDModeAssertionDetails *)self userVisibleEndDate];
                  v41 = [(DNDModeAssertionDetails *)v6 userVisibleEndDate];
                  v3 = v68;
                  if (v40 == v41)
                  {

                    v13 = 1;
                  }

                  else
                  {
                    v66 = v41;
                    v42 = [(DNDModeAssertionDetails *)self userVisibleEndDate];
                    if (v42)
                    {
                      v51 = v42;
                      v43 = [(DNDModeAssertionDetails *)v6 userVisibleEndDate];
                      if (v43)
                      {
                        v50 = v43;
                        v49 = [(DNDModeAssertionDetails *)self userVisibleEndDate];
                        v44 = [(DNDModeAssertionDetails *)v6 userVisibleEndDate];
                        v13 = [v49 isEqual:v44];

                        v3 = v68;
                        v43 = v50;
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
                    v11 = v70;
                    v10 = v71;
                    v12 = v69;
                    if (v7 == v8)
                    {
                      goto LABEL_67;
                    }

                    goto LABEL_65;
                  }
                }

                goto LABEL_43;
              }

              v33 = [(DNDModeAssertionDetails *)self lifetime];
              if (v33)
              {
                v57 = v33;
                v34 = [(DNDModeAssertionDetails *)v6 lifetime];
                v35 = v30;
                v14 = v65;
                if (v34)
                {
                  v54 = v34;
                  v36 = [(DNDModeAssertionDetails *)self lifetime];
                  v37 = [(DNDModeAssertionDetails *)v6 lifetime];
                  if ([v36 isEqual:v37])
                  {
                    v52 = v37;
                    v53 = v36;
                    goto LABEL_34;
                  }

                  v34 = v54;
                  v14 = v65;
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
                v14 = v65;
                if (v47)
                {
                  goto LABEL_61;
                }
              }

LABEL_61:
              if (v14 != v72)
              {
              }

LABEL_64:
              v13 = 0;
              v11 = v70;
              v10 = v71;
              v3 = v68;
              v12 = v69;
              if (v7 != v8)
              {
                goto LABEL_65;
              }

LABEL_67:

              goto LABEL_68;
            }

            v26 = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
            if (v26)
            {
              v63 = v26;
              v27 = [(DNDModeAssertionDetails *)v6 modeConfigurationModifiedDate];
              if (v27)
              {
                v67 = v23;
                v58 = v27;
                v28 = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
                v29 = [(DNDModeAssertionDetails *)v6 modeConfigurationModifiedDate];
                if ([v28 isEqual:v29])
                {
                  v65 = v14;
                  v30 = v25;
                  v55 = v29;
                  v56 = v28;
                  goto LABEL_26;
                }

                goto LABEL_49;
              }
            }

LABEL_49:
            if (v14 != v72)
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

      v72 = v15;
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
  v5 = [(DNDModeAssertionDetails *)self identifier];
  v6 = [(DNDModeAssertionDetails *)self modeIdentifier];
  v7 = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
  v8 = [(DNDModeAssertionDetails *)self lifetime];
  v9 = DNDModeAssertionReasonToString([(DNDModeAssertionDetails *)self reason]);
  v10 = [(DNDModeAssertionDetails *)self userVisibleEndDate];
  v11 = [v3 stringWithFormat:@"<%@: %p identifier: '%@'; modeIdentifier: '%@'; modeConfigurationModifiedDate: %@; lifetime: %@; reason: %@; userVisibleEndDate: %@>", v4, self, v5, v6, v7, v8, v9, v10];;

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableModeAssertionDetails alloc];

  return [(DNDModeAssertionDetails *)v4 _initWithDetails:self];
}

- (DNDModeAssertionDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeConfigurationModifiedDate"];
  v8 = +[DNDModeAssertionLifetime _secureCodingLifetimeClasses];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"lifetime"];

  v10 = [v4 decodeIntegerForKey:@"reason"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userVisibleEndDate"];

  v12 = [(DNDModeAssertionDetails *)self _initWithIdentifier:v5 modeIdentifier:v6 modeConfigurationModifiedDate:v7 lifetime:v9 reason:v10 userVisibleEndDate:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDModeAssertionDetails *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(DNDModeAssertionDetails *)self modeIdentifier];
  [v4 encodeObject:v6 forKey:@"modeIdentifier"];

  v7 = [(DNDModeAssertionDetails *)self modeConfigurationModifiedDate];
  [v4 encodeObject:v7 forKey:@"modeConfigurationModifiedDate"];

  v8 = [(DNDModeAssertionDetails *)self lifetime];
  [v4 encodeObject:v8 forKey:@"lifetime"];

  [v4 encodeInteger:-[DNDModeAssertionDetails reason](self forKey:{"reason"), @"reason"}];
  v9 = [(DNDModeAssertionDetails *)self userVisibleEndDate];
  [v4 encodeObject:v9 forKey:@"userVisibleEndDate"];
}

+ (id)userRequestedAssertionDetailsWithIdentifier:(id)a3 modeIdentifier:(id)a4 lifetime:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  if (v11)
  {
    v12 = v7;
  }

  else
  {
    v12 = [DNDModeAssertionLifetime lifetimeUntilEndOfScheduleWithIdentifier:@"com.apple.donotdisturb.schedule.default"];
  }

  v13 = [DNDModeAssertionDetails detailsWithIdentifier:v9 modeIdentifier:v8 lifetime:v12];

  return v13;
}

@end