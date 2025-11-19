@interface LACEnvironmentMechanism
+ (id)environmentMechanismForUser:(unsigned int)a3 auditToken:(id *)a4 dependencies:(id)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (LACEnvironmentMechanism)initWithAvailabilityError:(id)a3 localizedName:(id)a4 iconSystemName:(id)a5;
- (LACEnvironmentMechanism)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACEnvironmentMechanism

- (LACEnvironmentMechanism)initWithAvailabilityError:(id)a3 localizedName:(id)a4 iconSystemName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACEnvironmentMechanism;
  v12 = [(LACEnvironmentMechanism *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_availabilityError, a3);
    objc_storeStrong(&v13->_localizedName, a4);
    objc_storeStrong(&v13->_iconSystemName, a5);
  }

  return v13;
}

+ (id)environmentMechanismForUser:(unsigned int)a3 auditToken:(id *)a4 dependencies:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [LACError errorWithCode:-1000 debugDescription:@"Call must be made on a subclass", a5];
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LACEnvironmentMechanism *)self availabilityError];
  v6 = NSStringFromSelector(sel_availabilityError);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(LACEnvironmentMechanism *)self localizedName];
  v8 = NSStringFromSelector(sel_localizedName);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(LACEnvironmentMechanism *)self iconSystemName];
  v9 = NSStringFromSelector(sel_iconSystemName);
  [v4 encodeObject:v10 forKey:v9];
}

- (LACEnvironmentMechanism)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_availabilityError);
  v6 = [v4 decodeObjectForKey:v5];
  v7 = NSStringFromSelector(sel_localizedName);
  v8 = [v4 decodeObjectForKey:v7];
  v9 = NSStringFromSelector(sel_iconSystemName);
  v10 = [v4 decodeObjectForKey:v9];

  v11 = [(LACEnvironmentMechanism *)self initWithAvailabilityError:v6 localizedName:v8 iconSystemName:v10];
  return v11;
}

- (id)description
{
  v3 = [(LACEnvironmentMechanism *)self descriptionDetails];
  v4 = [(LACEnvironmentMechanism *)self availabilityError];
  if ([LACError error:v4 hasCode:-1004])
  {
    v5 = @"usable";
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(LACEnvironmentMechanism *)self availabilityError];
    v8 = [v7 domain];
    v9 = [(LACEnvironmentMechanism *)self availabilityError];
    v5 = [v6 stringWithFormat:@"%@ error %d", v8, objc_msgSend(v9, "code")];
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = [(LACEnvironmentMechanism *)self localizedName];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"<'%@' %@ (%@)>", v11, v5, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(LACEnvironmentMechanism *)self availabilityError];
      v7 = [(LACEnvironmentMechanism *)v5 availabilityError];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(LACEnvironmentMechanism *)self availabilityError];
        v10 = [(LACEnvironmentMechanism *)v5 availabilityError];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      v13 = [(LACEnvironmentMechanism *)self localizedName];
      v14 = [(LACEnvironmentMechanism *)v5 localizedName];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(LACEnvironmentMechanism *)self localizedName];
        v17 = [(LACEnvironmentMechanism *)v5 localizedName];
        v18 = [v16 isEqualToString:v17];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      v19 = [(LACEnvironmentMechanism *)self iconSystemName];
      v20 = [(LACEnvironmentMechanism *)v5 iconSystemName];
      if (v19 == v20)
      {
        v12 = 1;
      }

      else
      {
        v21 = [(LACEnvironmentMechanism *)self iconSystemName];
        v22 = [(LACEnvironmentMechanism *)v5 iconSystemName];
        v12 = [v21 isEqualToString:v22];
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12 & 1;
}

@end