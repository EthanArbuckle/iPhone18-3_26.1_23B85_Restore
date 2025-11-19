@interface HKClinicalAccountConnectionInformation
- (BOOL)isEqual:(id)a3;
- (HKClinicalAccountConnectionInformation)init;
- (HKClinicalAccountConnectionInformation)initWithAccountIdentifier:(id)a3 gateway:(id)a4 authorization:(id)a5 authentication:(id)a6;
- (HKClinicalAccountConnectionInformation)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalAccountConnectionInformation

- (HKClinicalAccountConnectionInformation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalAccountConnectionInformation)initWithAccountIdentifier:(id)a3 gateway:(id)a4 authorization:(id)a5 authentication:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKClinicalAccountConnectionInformation;
  v14 = [(HKClinicalAccountConnectionInformation *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    accountIdentifier = v14->_accountIdentifier;
    v14->_accountIdentifier = v15;

    v17 = [v11 copy];
    gateway = v14->_gateway;
    v14->_gateway = v17;

    v19 = [v12 copy];
    authorization = v14->_authorization;
    v14->_authorization = v19;

    v21 = [v13 copy];
    authentication = v14->_authentication;
    v14->_authentication = v21;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_accountIdentifier hash];
  v4 = [(HKClinicalGateway *)self->_gateway hash]^ v3;
  v5 = [(HKFHIRCredential *)self->_authorization hash];
  return v4 ^ v5 ^ [(HKFHIRServerAuthenticationInformation *)self->_authentication hash];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 != self)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v13) = 0;
LABEL_42:

      goto LABEL_43;
    }

    accountIdentifier = self->_accountIdentifier;
    v9 = [(HKClinicalAccountConnectionInformation *)v7 accountIdentifier];
    if (accountIdentifier != v9)
    {
      v10 = [(HKClinicalAccountConnectionInformation *)v7 accountIdentifier];
      if (!v10)
      {
        LOBYTE(v13) = 0;
        goto LABEL_41;
      }

      v3 = v10;
      v11 = self->_accountIdentifier;
      v12 = [(HKClinicalAccountConnectionInformation *)v7 accountIdentifier];
      if (![(NSUUID *)v11 isEqual:v12])
      {
        LOBYTE(v13) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = v12;
    }

    gateway = self->_gateway;
    v15 = [(HKClinicalAccountConnectionInformation *)v7 gateway];
    v42 = gateway;
    if (gateway != v15)
    {
      v16 = [(HKClinicalAccountConnectionInformation *)v7 gateway];
      if (!v16)
      {
        LOBYTE(v13) = 0;
        goto LABEL_38;
      }

      v17 = v16;
      v18 = self->_gateway;
      v13 = [(HKClinicalAccountConnectionInformation *)v7 gateway];
      if (![(HKClinicalGateway *)v18 isEqual:v13])
      {

        LOBYTE(v13) = 0;
        goto LABEL_39;
      }

      v38 = v13;
      v39 = v17;
    }

    authorization = self->_authorization;
    v40 = [(HKClinicalAccountConnectionInformation *)v7 authorization];
    if (authorization == v40)
    {
      v37 = v3;
    }

    else
    {
      v13 = [(HKClinicalAccountConnectionInformation *)v7 authorization];
      if (!v13)
      {
        v31 = v38;
        v32 = v39;
        v30 = v40;
        goto LABEL_30;
      }

      v20 = self->_authorization;
      v21 = [(HKClinicalAccountConnectionInformation *)v7 authorization];
      v22 = v20;
      v23 = v21;
      if (![(HKOAuth2Credential *)v22 isEqual:v21])
      {

        LOBYTE(v13) = 0;
        v29 = v42 == v15;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = v13;
      v37 = v3;
    }

    authentication = self->_authentication;
    v25 = [(HKClinicalAccountConnectionInformation *)v7 authentication];
    LOBYTE(v13) = authentication == v25;
    if (authentication != v25)
    {
      v26 = [(HKClinicalAccountConnectionInformation *)v7 authentication];
      if (v26)
      {
        v27 = v26;
        v13 = self->_authentication;
        v28 = [(HKClinicalAccountConnectionInformation *)v7 authentication];
        LOBYTE(v13) = [v13 isEqual:v28];

        if (authorization != v40)
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
        if (accountIdentifier != v9)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = v40;
    if (authorization == v40)
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

- (void)encodeWithCoder:(id)a3
{
  accountIdentifier = self->_accountIdentifier;
  v5 = a3;
  [v5 encodeObject:accountIdentifier forKey:@"accountIdentifier"];
  [v5 encodeObject:self->_gateway forKey:@"gateway"];
  [v5 encodeObject:self->_authorization forKey:@"authorization"];
  [v5 encodeObject:self->_authentication forKey:@"authentication"];
}

- (HKClinicalAccountConnectionInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gateway"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorization"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authentication"];
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  else
  {
    self = [(HKClinicalAccountConnectionInformation *)self initWithAccountIdentifier:v5 gateway:v6 authorization:v7 authentication:v8];
    v10 = self;
  }

  return v10;
}

@end