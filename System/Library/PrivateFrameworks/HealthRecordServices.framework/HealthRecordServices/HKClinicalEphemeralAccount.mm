@interface HKClinicalEphemeralAccount
+ (id)ephemeralAccountIdentifier;
- (BOOL)isEqual:(id)equal;
- (HKClinicalEphemeralAccount)initWithCoder:(id)coder;
- (HKClinicalEphemeralAccount)initWithGateway:(id)gateway authResponse:(id)response requestedScopeString:(id)string;
- (HKClinicalEphemeralAccount)initWithProvenance:(id)provenance authResponse:(id)response requestedScopeString:(id)string;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalEphemeralAccount

- (HKClinicalEphemeralAccount)initWithProvenance:(id)provenance authResponse:(id)response requestedScopeString:(id)string
{
  responseCopy = response;
  stringCopy = string;
  provenanceCopy = provenance;
  ephemeralAccountIdentifier = [objc_opt_class() ephemeralAccountIdentifier];
  v12 = +[HKClinicalSharingStatus unknownStatus];
  v20.receiver = self;
  v20.super_class = HKClinicalEphemeralAccount;
  v19 = 0;
  v13 = [(HKClinicalAccount *)&v20 initWithIdentifier:ephemeralAccountIdentifier state:0 userEnabled:1 lastFetchDate:0 lastFullFetchDate:0 lastFailedFetchDate:0 failedFetchAttemptsCount:0 clinicalSharingStatus:v12 hasClinicalSharingScopes:v19 provenance:provenanceCopy];

  if (v13)
  {
    v14 = [responseCopy copy];
    authResponse = v13->_authResponse;
    v13->_authResponse = v14;

    v16 = [stringCopy copy];
    requestedScopeString = v13->_requestedScopeString;
    v13->_requestedScopeString = v16;
  }

  return v13;
}

- (HKClinicalEphemeralAccount)initWithGateway:(id)gateway authResponse:(id)response requestedScopeString:(id)string
{
  stringCopy = string;
  responseCopy = response;
  gatewayCopy = gateway;
  v11 = [[HKClinicalAccountProvenance alloc] initWithGateway:gatewayCopy];

  v12 = [(HKClinicalEphemeralAccount *)self initWithProvenance:v11 authResponse:responseCopy requestedScopeString:stringCopy];
  return v12;
}

+ (id)ephemeralAccountIdentifier
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v22.receiver = self, v22.super_class = HKClinicalEphemeralAccount, ![(HKClinicalAccount *)&v22 isEqual:v7]))
    {
      v13 = 0;
LABEL_19:

      goto LABEL_20;
    }

    authResponse3 = 80;
    authResponse = self->_authResponse;
    authResponse = [(HKClinicalEphemeralAccount *)v7 authResponse];
    if (authResponse == authResponse)
    {
      goto LABEL_10;
    }

    authResponse2 = [(HKClinicalEphemeralAccount *)v7 authResponse];
    if (!authResponse2)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v3 = authResponse2;
    v12 = self->_authResponse;
    authResponse3 = [(HKClinicalEphemeralAccount *)v7 authResponse];
    if ([(HDFHIRAuthResponse *)v12 isEqual:authResponse3])
    {
LABEL_10:
      requestedScopeString = self->_requestedScopeString;
      requestedScopeString = [(HKClinicalEphemeralAccount *)v7 requestedScopeString];
      v16 = requestedScopeString;
      if (requestedScopeString == requestedScopeString)
      {

        v13 = 1;
      }

      else
      {
        requestedScopeString2 = [(HKClinicalEphemeralAccount *)v7 requestedScopeString];
        if (requestedScopeString2)
        {
          v18 = requestedScopeString2;
          v19 = self->_requestedScopeString;
          requestedScopeString3 = [(HKClinicalEphemeralAccount *)v7 requestedScopeString];
          v13 = [(NSString *)v19 isEqualToString:requestedScopeString3];
        }

        else
        {

          v13 = 0;
        }
      }

      if (authResponse == authResponse)
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKClinicalEphemeralAccount;
  coderCopy = coder;
  [(HKClinicalAccount *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_authResponse forKey:{@"authResponse", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_requestedScopeString forKey:@"requestedScopeString"];
}

- (HKClinicalEphemeralAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKClinicalEphemeralAccount;
  v5 = [(HKClinicalAccount *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authResponse"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedScopeString"];
      if (v7)
      {
        objc_storeStrong(&v5->_authResponse, v6);
        objc_storeStrong(&v5->_requestedScopeString, v7);
        v8 = v5;
      }

      else
      {
        [coderCopy hrs_failWithCocoaValueNotFoundError];
        v8 = 0;
      }
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
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