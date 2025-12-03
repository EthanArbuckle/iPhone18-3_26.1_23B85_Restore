@interface HKClinicalAccountConnectionInformation
- (BOOL)isEqual:(id)equal;
- (HKClinicalAccountConnectionInformation)init;
- (HKClinicalAccountConnectionInformation)initWithAccountIdentifier:(id)identifier gateway:(id)gateway authorization:(id)authorization authentication:(id)authentication;
- (HKClinicalAccountConnectionInformation)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKClinicalAccountConnectionInformation)initWithAccountIdentifier:(id)identifier gateway:(id)gateway authorization:(id)authorization authentication:(id)authentication
{
  identifierCopy = identifier;
  gatewayCopy = gateway;
  authorizationCopy = authorization;
  authenticationCopy = authentication;
  v24.receiver = self;
  v24.super_class = HKClinicalAccountConnectionInformation;
  v14 = [(HKClinicalAccountConnectionInformation *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    accountIdentifier = v14->_accountIdentifier;
    v14->_accountIdentifier = v15;

    v17 = [gatewayCopy copy];
    gateway = v14->_gateway;
    v14->_gateway = v17;

    v19 = [authorizationCopy copy];
    authorization = v14->_authorization;
    v14->_authorization = v19;

    v21 = [authenticationCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy != self)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(gateway3) = 0;
LABEL_42:

      goto LABEL_43;
    }

    accountIdentifier = self->_accountIdentifier;
    accountIdentifier = [(HKClinicalAccountConnectionInformation *)v7 accountIdentifier];
    if (accountIdentifier != accountIdentifier)
    {
      accountIdentifier2 = [(HKClinicalAccountConnectionInformation *)v7 accountIdentifier];
      if (!accountIdentifier2)
      {
        LOBYTE(gateway3) = 0;
        goto LABEL_41;
      }

      v3 = accountIdentifier2;
      v11 = self->_accountIdentifier;
      accountIdentifier3 = [(HKClinicalAccountConnectionInformation *)v7 accountIdentifier];
      if (![(NSUUID *)v11 isEqual:accountIdentifier3])
      {
        LOBYTE(gateway3) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = accountIdentifier3;
    }

    gateway = self->_gateway;
    gateway = [(HKClinicalAccountConnectionInformation *)v7 gateway];
    v42 = gateway;
    if (gateway != gateway)
    {
      gateway2 = [(HKClinicalAccountConnectionInformation *)v7 gateway];
      if (!gateway2)
      {
        LOBYTE(gateway3) = 0;
        goto LABEL_38;
      }

      v17 = gateway2;
      v18 = self->_gateway;
      gateway3 = [(HKClinicalAccountConnectionInformation *)v7 gateway];
      if (![(HKClinicalGateway *)v18 isEqual:gateway3])
      {

        LOBYTE(gateway3) = 0;
        goto LABEL_39;
      }

      v38 = gateway3;
      v39 = v17;
    }

    authorization = self->_authorization;
    authorization = [(HKClinicalAccountConnectionInformation *)v7 authorization];
    if (authorization == authorization)
    {
      v37 = v3;
    }

    else
    {
      gateway3 = [(HKClinicalAccountConnectionInformation *)v7 authorization];
      if (!gateway3)
      {
        v31 = v38;
        v32 = v39;
        v30 = authorization;
        goto LABEL_30;
      }

      v20 = self->_authorization;
      authorization2 = [(HKClinicalAccountConnectionInformation *)v7 authorization];
      v22 = v20;
      v23 = authorization2;
      if (![(HKOAuth2Credential *)v22 isEqual:authorization2])
      {

        LOBYTE(gateway3) = 0;
        v29 = v42 == gateway;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = gateway3;
      v37 = v3;
    }

    authentication = self->_authentication;
    authentication = [(HKClinicalAccountConnectionInformation *)v7 authentication];
    LOBYTE(gateway3) = authentication == authentication;
    if (authentication != authentication)
    {
      authentication2 = [(HKClinicalAccountConnectionInformation *)v7 authentication];
      if (authentication2)
      {
        v27 = authentication2;
        gateway3 = self->_authentication;
        authentication3 = [(HKClinicalAccountConnectionInformation *)v7 authentication];
        LOBYTE(gateway3) = [gateway3 isEqual:authentication3];

        if (authorization != authorization)
        {
        }

        v29 = v42 == gateway;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        accountIdentifier3 = v41;
        if (accountIdentifier != accountIdentifier)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = authorization;
    if (authorization == authorization)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == gateway)
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

    if (v42 == gateway)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(gateway3) = 1;
LABEL_43:

  return gateway3;
}

- (void)encodeWithCoder:(id)coder
{
  accountIdentifier = self->_accountIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_gateway forKey:@"gateway"];
  [coderCopy encodeObject:self->_authorization forKey:@"authorization"];
  [coderCopy encodeObject:self->_authentication forKey:@"authentication"];
}

- (HKClinicalAccountConnectionInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gateway"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorization"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authentication"];
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
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  else
  {
    self = [(HKClinicalAccountConnectionInformation *)self initWithAccountIdentifier:v5 gateway:v6 authorization:v7 authentication:v8];
    selfCopy = self;
  }

  return selfCopy;
}

@end