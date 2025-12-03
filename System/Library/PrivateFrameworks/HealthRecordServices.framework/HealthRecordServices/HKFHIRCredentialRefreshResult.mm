@interface HKFHIRCredentialRefreshResult
- (BOOL)isEqual:(id)equal;
- (HKFHIRCredentialRefreshResult)initWithCoder:(id)coder;
- (HKFHIRCredentialRefreshResult)initWithCredential:(id)credential authResponse:(id)response endStates:(id)states error:(id)error;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFHIRCredentialRefreshResult

- (HKFHIRCredentialRefreshResult)initWithCredential:(id)credential authResponse:(id)response endStates:(id)states error:(id)error
{
  credentialCopy = credential;
  responseCopy = response;
  statesCopy = states;
  errorCopy = error;
  v24.receiver = self;
  v24.super_class = HKFHIRCredentialRefreshResult;
  v14 = [(HKFHIRCredentialRefreshResult *)&v24 init];
  if (v14)
  {
    v15 = [credentialCopy copy];
    credential = v14->_credential;
    v14->_credential = v15;

    v17 = [responseCopy copy];
    authResponse = v14->_authResponse;
    v14->_authResponse = v17;

    v19 = [statesCopy copy];
    endStates = v14->_endStates;
    v14->_endStates = v19;

    v21 = [errorCopy copy];
    error = v14->_error;
    v14->_error = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(authResponse3) = 0;
LABEL_42:

      goto LABEL_43;
    }

    credential = self->_credential;
    credential = [(HKFHIRCredentialRefreshResult *)v7 credential];
    if (credential != credential)
    {
      credential2 = [(HKFHIRCredentialRefreshResult *)v7 credential];
      if (!credential2)
      {
        LOBYTE(authResponse3) = 0;
        goto LABEL_41;
      }

      v3 = credential2;
      v11 = self->_credential;
      credential3 = [(HKFHIRCredentialRefreshResult *)v7 credential];
      if (![(HKOAuth2Credential *)v11 isEqual:credential3])
      {
        LOBYTE(authResponse3) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = credential3;
    }

    authResponse = self->_authResponse;
    authResponse = [(HKFHIRCredentialRefreshResult *)v7 authResponse];
    v42 = authResponse;
    if (authResponse != authResponse)
    {
      authResponse2 = [(HKFHIRCredentialRefreshResult *)v7 authResponse];
      if (!authResponse2)
      {
        LOBYTE(authResponse3) = 0;
        goto LABEL_38;
      }

      v17 = authResponse2;
      v18 = self->_authResponse;
      authResponse3 = [(HKFHIRCredentialRefreshResult *)v7 authResponse];
      if (![(HDFHIRAuthResponse *)v18 isEqual:authResponse3])
      {

        LOBYTE(authResponse3) = 0;
        goto LABEL_39;
      }

      v38 = authResponse3;
      v39 = v17;
    }

    endStates = self->_endStates;
    endStates = [(HKFHIRCredentialRefreshResult *)v7 endStates];
    if (endStates == endStates)
    {
      v37 = v3;
    }

    else
    {
      authResponse3 = [(HKFHIRCredentialRefreshResult *)v7 endStates];
      if (!authResponse3)
      {
        v31 = v38;
        v32 = v39;
        v30 = endStates;
        goto LABEL_30;
      }

      v20 = self->_endStates;
      endStates2 = [(HKFHIRCredentialRefreshResult *)v7 endStates];
      v22 = v20;
      v23 = endStates2;
      if (![(HKFHIRRequestTaskEndStates *)v22 isEqual:endStates2])
      {

        LOBYTE(authResponse3) = 0;
        v29 = v42 == authResponse;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = authResponse3;
      v37 = v3;
    }

    error = self->_error;
    error = [(HKFHIRCredentialRefreshResult *)v7 error];
    LOBYTE(authResponse3) = error == error;
    if (error != error)
    {
      error2 = [(HKFHIRCredentialRefreshResult *)v7 error];
      if (error2)
      {
        v27 = error2;
        authResponse3 = self->_error;
        error3 = [(HKFHIRCredentialRefreshResult *)v7 error];
        LOBYTE(authResponse3) = [authResponse3 isEqual:error3];

        if (endStates != endStates)
        {
        }

        v29 = v42 == authResponse;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        credential3 = v41;
        if (credential != credential)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = endStates;
    if (endStates == endStates)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == authResponse)
      {
        goto LABEL_38;
      }

LABEL_36:

      goto LABEL_37;
    }

    v3 = v37;
    v31 = v38;
    v32 = v39;
LABEL_30:

    if (v42 == authResponse)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(authResponse3) = 1;
LABEL_43:

  return authResponse3;
}

- (unint64_t)hash
{
  v3 = [(HKFHIRCredential *)self->_credential hash];
  v4 = [(HDFHIRAuthResponse *)self->_authResponse hash]^ v3;
  v5 = [(HKFHIRRequestTaskEndStates *)self->_endStates hash];
  return v4 ^ v5 ^ [(NSError *)self->_error hash];
}

- (void)encodeWithCoder:(id)coder
{
  credential = self->_credential;
  coderCopy = coder;
  [coderCopy encodeObject:credential forKey:@"credential"];
  [coderCopy encodeObject:self->_authResponse forKey:@"authResponse"];
  [coderCopy encodeObject:self->_endStates forKey:@"endStates"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
}

- (HKFHIRCredentialRefreshResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credential"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authResponse"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endStates"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    self = [(HKFHIRCredentialRefreshResult *)self initWithCredential:v5 authResponse:v6 endStates:v7 error:v8];

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKFHIRCredential *)self->_credential debugDescription];
  v6 = [(HDFHIRAuthResponse *)self->_authResponse debugDescription];
  v7 = [(HKFHIRRequestTaskEndStates *)self->_endStates debugDescription];
  v8 = [v3 stringWithFormat:@"<%@ %p credential %@; auth response %@; end states %@; error %@>", v4, self, v5, v6, v7, self->_error];;

  return v8;
}

@end