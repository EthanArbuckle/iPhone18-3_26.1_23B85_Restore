@interface IDSPreflightStack
- (BOOL)containsMechanisms;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesIMSI:(id)i PLMN:(id)n;
- (IDSPreflightStack)initWithIMSI:(id)i PLMN:(id)n validationMechanisms:(id)mechanisms;
- (id)description;
- (id)preflightStackByPoppingMechanism;
- (id)topMechanism;
- (unint64_t)hash;
@end

@implementation IDSPreflightStack

- (IDSPreflightStack)initWithIMSI:(id)i PLMN:(id)n validationMechanisms:(id)mechanisms
{
  iCopy = i;
  nCopy = n;
  mechanismsCopy = mechanisms;
  v19.receiver = self;
  v19.super_class = IDSPreflightStack;
  v11 = [(IDSPreflightStack *)&v19 init];
  if (v11)
  {
    v12 = [iCopy copy];
    IMSI = v11->_IMSI;
    v11->_IMSI = v12;

    v14 = [nCopy copy];
    PLMN = v11->_PLMN;
    v11->_PLMN = v14;

    v16 = [mechanismsCopy copy];
    validationMechanisms = v11->_validationMechanisms;
    v11->_validationMechanisms = v16;
  }

  return v11;
}

- (BOOL)matchesIMSI:(id)i PLMN:(id)n
{
  nCopy = n;
  iCopy = i;
  iMSI = [(IDSPreflightStack *)self IMSI];
  v9 = [iMSI isEqualToString:iCopy];

  if (v9)
  {
    pLMN = [(IDSPreflightStack *)self PLMN];
    v11 = [pLMN isEqualToString:nCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)containsMechanisms
{
  validationMechanisms = [(IDSPreflightStack *)self validationMechanisms];
  v3 = [validationMechanisms count] != 0;

  return v3;
}

- (id)topMechanism
{
  validationMechanisms = [(IDSPreflightStack *)self validationMechanisms];
  firstObject = [validationMechanisms firstObject];

  return firstObject;
}

- (id)preflightStackByPoppingMechanism
{
  validationMechanisms = [(IDSPreflightStack *)self validationMechanisms];
  v4 = [validationMechanisms mutableCopy];

  if ([v4 count])
  {
    [v4 removeFirstObject];
  }

  v5 = [IDSPreflightStack alloc];
  iMSI = [(IDSPreflightStack *)self IMSI];
  pLMN = [(IDSPreflightStack *)self PLMN];
  v8 = [(IDSPreflightStack *)v5 initWithIMSI:iMSI PLMN:pLMN validationMechanisms:v4];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    iMSI = [(IDSPreflightStack *)self IMSI];
    iMSI2 = [v5 IMSI];
    if (iMSI == iMSI2)
    {
      v10 = 1;
    }

    else
    {
      iMSI3 = [(IDSPreflightStack *)self IMSI];
      iMSI4 = [v5 IMSI];
      v10 = [iMSI3 isEqual:iMSI4];
    }

    pLMN = [(IDSPreflightStack *)self PLMN];
    pLMN2 = [v5 PLMN];
    if (pLMN == pLMN2)
    {
      v16 = 1;
    }

    else
    {
      pLMN3 = [(IDSPreflightStack *)self PLMN];
      pLMN4 = [v5 PLMN];
      v16 = [pLMN3 isEqual:pLMN4];
    }

    validationMechanisms = [(IDSPreflightStack *)self validationMechanisms];
    validationMechanisms2 = [v5 validationMechanisms];
    if (validationMechanisms == validationMechanisms2)
    {
      v21 = 1;
    }

    else
    {
      validationMechanisms3 = [(IDSPreflightStack *)self validationMechanisms];
      validationMechanisms4 = [v5 validationMechanisms];
      v21 = [validationMechanisms3 isEqual:validationMechanisms4];
    }

    v11 = v10 & v16 & v21;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  iMSI = [(IDSPreflightStack *)self IMSI];
  v4 = [iMSI hash];
  pLMN = [(IDSPreflightStack *)self PLMN];
  v6 = [pLMN hash] ^ v4;
  validationMechanisms = [(IDSPreflightStack *)self validationMechanisms];
  v8 = [validationMechanisms hash];

  return v6 ^ v8;
}

- (id)description
{
  iMSI = [(IDSPreflightStack *)self IMSI];
  pLMN = [(IDSPreflightStack *)self PLMN];
  validationMechanisms = [(IDSPreflightStack *)self validationMechanisms];
  v6 = [NSString stringWithFormat:@"IDSPreflightStack { IMSI: %@, PLMN: %@, mechanisms: %@ }", iMSI, pLMN, validationMechanisms];

  return v6;
}

@end