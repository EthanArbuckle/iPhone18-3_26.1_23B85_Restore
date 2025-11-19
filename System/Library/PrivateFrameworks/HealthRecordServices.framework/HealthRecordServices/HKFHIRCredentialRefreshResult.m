@interface HKFHIRCredentialRefreshResult
- (BOOL)isEqual:(id)a3;
- (HKFHIRCredentialRefreshResult)initWithCoder:(id)a3;
- (HKFHIRCredentialRefreshResult)initWithCredential:(id)a3 authResponse:(id)a4 endStates:(id)a5 error:(id)a6;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFHIRCredentialRefreshResult

- (HKFHIRCredentialRefreshResult)initWithCredential:(id)a3 authResponse:(id)a4 endStates:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKFHIRCredentialRefreshResult;
  v14 = [(HKFHIRCredentialRefreshResult *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    credential = v14->_credential;
    v14->_credential = v15;

    v17 = [v11 copy];
    authResponse = v14->_authResponse;
    v14->_authResponse = v17;

    v19 = [v12 copy];
    endStates = v14->_endStates;
    v14->_endStates = v19;

    v21 = [v13 copy];
    error = v14->_error;
    v14->_error = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v13) = 0;
LABEL_42:

      goto LABEL_43;
    }

    credential = self->_credential;
    v9 = [(HKFHIRCredentialRefreshResult *)v7 credential];
    if (credential != v9)
    {
      v10 = [(HKFHIRCredentialRefreshResult *)v7 credential];
      if (!v10)
      {
        LOBYTE(v13) = 0;
        goto LABEL_41;
      }

      v3 = v10;
      v11 = self->_credential;
      v12 = [(HKFHIRCredentialRefreshResult *)v7 credential];
      if (![(HKOAuth2Credential *)v11 isEqual:v12])
      {
        LOBYTE(v13) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = v12;
    }

    authResponse = self->_authResponse;
    v15 = [(HKFHIRCredentialRefreshResult *)v7 authResponse];
    v42 = authResponse;
    if (authResponse != v15)
    {
      v16 = [(HKFHIRCredentialRefreshResult *)v7 authResponse];
      if (!v16)
      {
        LOBYTE(v13) = 0;
        goto LABEL_38;
      }

      v17 = v16;
      v18 = self->_authResponse;
      v13 = [(HKFHIRCredentialRefreshResult *)v7 authResponse];
      if (![(HDFHIRAuthResponse *)v18 isEqual:v13])
      {

        LOBYTE(v13) = 0;
        goto LABEL_39;
      }

      v38 = v13;
      v39 = v17;
    }

    endStates = self->_endStates;
    v40 = [(HKFHIRCredentialRefreshResult *)v7 endStates];
    if (endStates == v40)
    {
      v37 = v3;
    }

    else
    {
      v13 = [(HKFHIRCredentialRefreshResult *)v7 endStates];
      if (!v13)
      {
        v31 = v38;
        v32 = v39;
        v30 = v40;
        goto LABEL_30;
      }

      v20 = self->_endStates;
      v21 = [(HKFHIRCredentialRefreshResult *)v7 endStates];
      v22 = v20;
      v23 = v21;
      if (![(HKFHIRRequestTaskEndStates *)v22 isEqual:v21])
      {

        LOBYTE(v13) = 0;
        v29 = v42 == v15;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = v13;
      v37 = v3;
    }

    error = self->_error;
    v25 = [(HKFHIRCredentialRefreshResult *)v7 error];
    LOBYTE(v13) = error == v25;
    if (error != v25)
    {
      v26 = [(HKFHIRCredentialRefreshResult *)v7 error];
      if (v26)
      {
        v27 = v26;
        v13 = self->_error;
        v28 = [(HKFHIRCredentialRefreshResult *)v7 error];
        LOBYTE(v13) = [v13 isEqual:v28];

        if (endStates != v40)
        {
        }

        v29 = v42 == v15;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        v12 = v41;
        if (credential != v9)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = v40;
    if (endStates == v40)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == v15)
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

    if (v42 == v15)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(v13) = 1;
LABEL_43:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(HKFHIRCredential *)self->_credential hash];
  v4 = [(HDFHIRAuthResponse *)self->_authResponse hash]^ v3;
  v5 = [(HKFHIRRequestTaskEndStates *)self->_endStates hash];
  return v4 ^ v5 ^ [(NSError *)self->_error hash];
}

- (void)encodeWithCoder:(id)a3
{
  credential = self->_credential;
  v5 = a3;
  [v5 encodeObject:credential forKey:@"credential"];
  [v5 encodeObject:self->_authResponse forKey:@"authResponse"];
  [v5 encodeObject:self->_endStates forKey:@"endStates"];
  [v5 encodeObject:self->_error forKey:@"error"];
}

- (HKFHIRCredentialRefreshResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credential"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authResponse"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endStates"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    self = [(HKFHIRCredentialRefreshResult *)self initWithCredential:v5 authResponse:v6 endStates:v7 error:v8];

    v9 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v9 = 0;
  }

  return v9;
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