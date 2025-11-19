@interface HKClinicalEphemeralAccount
+ (id)ephemeralAccountIdentifier;
- (BOOL)isEqual:(id)a3;
- (HKClinicalEphemeralAccount)initWithCoder:(id)a3;
- (HKClinicalEphemeralAccount)initWithGateway:(id)a3 authResponse:(id)a4 requestedScopeString:(id)a5;
- (HKClinicalEphemeralAccount)initWithProvenance:(id)a3 authResponse:(id)a4 requestedScopeString:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalEphemeralAccount

- (HKClinicalEphemeralAccount)initWithProvenance:(id)a3 authResponse:(id)a4 requestedScopeString:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [objc_opt_class() ephemeralAccountIdentifier];
  v12 = +[HKClinicalSharingStatus unknownStatus];
  v20.receiver = self;
  v20.super_class = HKClinicalEphemeralAccount;
  v19 = 0;
  v13 = [(HKClinicalAccount *)&v20 initWithIdentifier:v11 state:0 userEnabled:1 lastFetchDate:0 lastFullFetchDate:0 lastFailedFetchDate:0 failedFetchAttemptsCount:0 clinicalSharingStatus:v12 hasClinicalSharingScopes:v19 provenance:v10];

  if (v13)
  {
    v14 = [v8 copy];
    authResponse = v13->_authResponse;
    v13->_authResponse = v14;

    v16 = [v9 copy];
    requestedScopeString = v13->_requestedScopeString;
    v13->_requestedScopeString = v16;
  }

  return v13;
}

- (HKClinicalEphemeralAccount)initWithGateway:(id)a3 authResponse:(id)a4 requestedScopeString:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[HKClinicalAccountProvenance alloc] initWithGateway:v10];

  v12 = [(HKClinicalEphemeralAccount *)self initWithProvenance:v11 authResponse:v9 requestedScopeString:v8];
  return v12;
}

+ (id)ephemeralAccountIdentifier
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v22.receiver = self, v22.super_class = HKClinicalEphemeralAccount, ![(HKClinicalAccount *)&v22 isEqual:v7]))
    {
      v13 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v8 = 80;
    authResponse = self->_authResponse;
    v10 = [(HKClinicalEphemeralAccount *)v7 authResponse];
    if (authResponse == v10)
    {
      goto LABEL_10;
    }

    v11 = [(HKClinicalEphemeralAccount *)v7 authResponse];
    if (!v11)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v3 = v11;
    v12 = self->_authResponse;
    v8 = [(HKClinicalEphemeralAccount *)v7 authResponse];
    if ([(HDFHIRAuthResponse *)v12 isEqual:v8])
    {
LABEL_10:
      requestedScopeString = self->_requestedScopeString;
      v15 = [(HKClinicalEphemeralAccount *)v7 requestedScopeString];
      v16 = v15;
      if (requestedScopeString == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(HKClinicalEphemeralAccount *)v7 requestedScopeString];
        if (v17)
        {
          v18 = v17;
          v19 = self->_requestedScopeString;
          v20 = [(HKClinicalEphemeralAccount *)v7 requestedScopeString];
          v13 = [(NSString *)v19 isEqualToString:v20];
        }

        else
        {

          v13 = 0;
        }
      }

      if (authResponse == v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_18;
  }

  v13 = 1;
LABEL_20:

  return v13;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = HKClinicalEphemeralAccount;
  v3 = [(HKClinicalAccount *)&v6 hash];
  v4 = [(HDFHIRAuthResponse *)self->_authResponse hash]^ v3;
  return v4 ^ [(NSString *)self->_requestedScopeString hash];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKClinicalEphemeralAccount;
  v4 = a3;
  [(HKClinicalAccount *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_authResponse forKey:{@"authResponse", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_requestedScopeString forKey:@"requestedScopeString"];
}

- (HKClinicalEphemeralAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKClinicalEphemeralAccount;
  v5 = [(HKClinicalAccount *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authResponse"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedScopeString"];
      if (v7)
      {
        objc_storeStrong(&v5->_authResponse, v6);
        objc_storeStrong(&v5->_requestedScopeString, v7);
        v8 = v5;
      }

      else
      {
        [v4 hrs_failWithCocoaValueNotFoundError];
        v8 = 0;
      }
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end