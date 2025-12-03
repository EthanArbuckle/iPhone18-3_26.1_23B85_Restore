@interface HFSetupAccessoryResult
- (BOOL)isAllZerosCode;
- (HFSetupAccessoryResult)initWithPayload:(id)payload error:(id)error hasAddRequest:(BOOL)request;
- (HFSetupAccessoryResult)initWithSetupCode:(id)code;
- (HFSetupAccessoryResult)initWithSetupURL:(id)l;
- (id)description;
@end

@implementation HFSetupAccessoryResult

- (HFSetupAccessoryResult)initWithPayload:(id)payload error:(id)error hasAddRequest:(BOOL)request
{
  payloadCopy = payload;
  errorCopy = error;
  if (payloadCopy | errorCopy)
  {
    requestCopy = 1;
  }

  else
  {
    requestCopy = request;
  }

  if (requestCopy)
  {
    v25.receiver = self;
    v25.super_class = HFSetupAccessoryResult;
    v11 = [(HFSetupAccessoryResult *)&v25 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_error, error);
      v13 = [payloadCopy copy];
      setupPayload = v12->_setupPayload;
      v12->_setupPayload = v13;

      v12->_isValidForPairing = requestCopy;
      if (v12->_error)
      {
        if (payloadCopy)
        {
          NSLog(&cfstr_Hfsetupaccesso_0.isa, payloadCopy);
        }

        goto LABEL_14;
      }

      v12->_hasAddRequest = request;
      if ([(HMSetupAccessoryPayload *)v12->_setupPayload isPaired])
      {
        v16 = [MEMORY[0x277CCA9B8] hf_errorWithCode:21];
        error = v12->_error;
        v12->_error = v16;

LABEL_14:
        v23 = v12->_setupPayload;
        v12->_setupPayload = 0;

        goto LABEL_15;
      }

      if ([(HFSetupAccessoryResult *)v12 isAllZerosCode])
      {
        v18 = MEMORY[0x277CCA9B8];
        v19 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusTitleFailureAccessoryNotInPairingMode", @"HFSetupPairingControllerStatusTitleFailureAccessoryNotInPairingMode", 1);
        v20 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureAccessoryNotInPairingMode", @"HFSetupPairingControllerStatusDescriptionFailureAccessoryNotInPairingMode", 1);
        v21 = [v18 hf_errorWithCode:22 title:v19 description:v20];
        v22 = v12->_error;
        v12->_error = v21;

        goto LABEL_14;
      }
    }

LABEL_15:
    self = v12;
    selfCopy = self;
    goto LABEL_16;
  }

  NSLog(&cfstr_Hfsetupaccesso.isa);
  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (HFSetupAccessoryResult)initWithSetupURL:(id)l
{
  v4 = MEMORY[0x277CD1DF0];
  lCopy = l;
  v10 = 0;
  v6 = [[v4 alloc] initWithSetupPayloadURL:lCopy error:&v10];

  v7 = v10;
  v8 = [(HFSetupAccessoryResult *)self initWithPayload:v6 error:v7 hasAddRequest:0];

  return v8;
}

- (HFSetupAccessoryResult)initWithSetupCode:(id)code
{
  v4 = MEMORY[0x277CD1DF0];
  codeCopy = code;
  v6 = [[v4 alloc] initWithHAPSetupCode:codeCopy];

  v7 = [(HFSetupAccessoryResult *)self initWithPayload:v6 error:0 hasAddRequest:0];
  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  setupPayload = [(HFSetupAccessoryResult *)self setupPayload];
  v5 = [v3 appendObject:setupPayload withName:@"setupPayload"];

  error = [(HFSetupAccessoryResult *)self error];
  v7 = [v3 appendObject:error withName:@"error"];

  v8 = [v3 appendBool:-[HFSetupAccessoryResult hasAddRequest](self withName:{"hasAddRequest"), @"hasAddRequest"}];
  build = [v3 build];

  return build;
}

- (BOOL)isAllZerosCode
{
  setupPayload = [(HFSetupAccessoryResult *)self setupPayload];

  if (setupPayload)
  {
    setupPayload2 = [(HFSetupAccessoryResult *)self setupPayload];
    setupCode = [setupPayload2 setupCode];
    v6 = [setupCode stringByReplacingOccurrencesOfString:@"-" withString:&stru_2824B1A78];

    if (v6)
    {
      LOBYTE(setupPayload) = [v6 compare:@"00000000"] == 0;
    }

    else
    {
      LOBYTE(setupPayload) = 0;
    }
  }

  return setupPayload;
}

@end