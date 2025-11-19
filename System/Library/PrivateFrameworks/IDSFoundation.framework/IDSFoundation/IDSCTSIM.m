@interface IDSCTSIM
- (BOOL)isDefaultVoiceSIM;
- (IDSCTSIM)initWithContext:(id)a3 optionsNeeded:(unsigned __int8)a4;
- (NSString)SIMIdentifier;
- (NSString)description;
- (NSString)label;
- (NSString)mobileCountryCode;
- (NSString)mobileNetworkCode;
- (NSString)phoneNumber;
- (unint64_t)hardwareType;
@end

@implementation IDSCTSIM

- (NSString)phoneNumber
{
  v2 = [(IDSCTSIM *)self context];
  v3 = [v2 phoneNumber];

  return v3;
}

- (IDSCTSIM)initWithContext:(id)a3 optionsNeeded:(unsigned __int8)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = IDSCTSIM;
  v8 = [(IDSCTSIM *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a3);
    mobileCountryCode = v9->_mobileCountryCode;
    v9->_mobileCountryCode = 0;

    mobileNetworkCode = v9->_mobileNetworkCode;
    v9->_mobileNetworkCode = 0;

    hardwareType = v9->_hardwareType;
    v9->_hardwareType = 0;

    v13 = [(CTXPCServiceSubscriptionContext *)v9->_context slotID];
    if (v13 <= 2)
    {
      v9->_slot = qword_1A7E40F38[v13];
    }

    v9->_optionsNeeded = a4;
  }

  return v9;
}

- (NSString)label
{
  v2 = [(IDSCTSIM *)self context];
  v3 = [v2 label];

  return v3;
}

- (NSString)SIMIdentifier
{
  v2 = [(IDSCTSIM *)self context];
  v3 = [v2 labelID];

  return v3;
}

- (BOOL)isDefaultVoiceSIM
{
  v2 = [(IDSCTSIM *)self context];
  v3 = [v2 userDefaultVoice];
  v4 = v3 != 0;

  return v4;
}

- (NSString)mobileCountryCode
{
  mobileCountryCode = self->_mobileCountryCode;
  if (!mobileCountryCode)
  {
    v4 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
    v5 = [(IDSCTSIM *)self context];
    v12 = 0;
    v6 = [v4 copyMobileSubscriberCountryCode:v5 error:&v12];
    v7 = v12;

    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v9 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1F2B8();
      }
    }

    v10 = self->_mobileCountryCode;
    self->_mobileCountryCode = v6;

    mobileCountryCode = self->_mobileCountryCode;
  }

  return mobileCountryCode;
}

- (NSString)mobileNetworkCode
{
  mobileNetworkCode = self->_mobileNetworkCode;
  if (!mobileNetworkCode)
  {
    v4 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
    v5 = [(IDSCTSIM *)self context];
    v12 = 0;
    v6 = [v4 copyMobileSubscriberNetworkCode:v5 error:&v12];
    v7 = v12;

    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v9 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1F320();
      }
    }

    v10 = self->_mobileNetworkCode;
    self->_mobileNetworkCode = v6;

    mobileNetworkCode = self->_mobileNetworkCode;
  }

  return mobileNetworkCode;
}

- (unint64_t)hardwareType
{
  hardwareType = self->_hardwareType;
  if (!hardwareType)
  {
    v4 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
    v5 = [(IDSCTSIM *)self context];
    v11 = 0;
    v6 = [v4 getSimHardwareInfo:v5 error:&v11];
    v7 = v11;

    v8 = [v6 hardwareType];
    if (v8 <= 2)
    {
      v9 = self->_hardwareType;
      self->_hardwareType = qword_1E77E26C8[v8];
    }

    hardwareType = self->_hardwareType;
  }

  return [(NSNumber *)hardwareType integerValue];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  mobileCountryCode = self->_mobileCountryCode;
  mobileNetworkCode = self->_mobileNetworkCode;
  v7 = _IDSBinaryStringForValue(self->_optionsNeeded, 8u);
  v8 = [(IDSCTSIM *)self context];
  v9 = [v3 stringWithFormat:@"<%@:%p mcc: %@, mnc: %@, opts: %@, context: %@", v4, self, mobileCountryCode, mobileNetworkCode, v7, v8];

  return v9;
}

@end