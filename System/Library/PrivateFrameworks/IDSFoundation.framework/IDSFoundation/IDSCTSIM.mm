@interface IDSCTSIM
- (BOOL)isDefaultVoiceSIM;
- (IDSCTSIM)initWithContext:(id)context optionsNeeded:(unsigned __int8)needed;
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
  context = [(IDSCTSIM *)self context];
  phoneNumber = [context phoneNumber];

  return phoneNumber;
}

- (IDSCTSIM)initWithContext:(id)context optionsNeeded:(unsigned __int8)needed
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = IDSCTSIM;
  v8 = [(IDSCTSIM *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
    mobileCountryCode = v9->_mobileCountryCode;
    v9->_mobileCountryCode = 0;

    mobileNetworkCode = v9->_mobileNetworkCode;
    v9->_mobileNetworkCode = 0;

    hardwareType = v9->_hardwareType;
    v9->_hardwareType = 0;

    slotID = [(CTXPCServiceSubscriptionContext *)v9->_context slotID];
    if (slotID <= 2)
    {
      v9->_slot = qword_1A7E40F38[slotID];
    }

    v9->_optionsNeeded = needed;
  }

  return v9;
}

- (NSString)label
{
  context = [(IDSCTSIM *)self context];
  label = [context label];

  return label;
}

- (NSString)SIMIdentifier
{
  context = [(IDSCTSIM *)self context];
  labelID = [context labelID];

  return labelID;
}

- (BOOL)isDefaultVoiceSIM
{
  context = [(IDSCTSIM *)self context];
  userDefaultVoice = [context userDefaultVoice];
  v4 = userDefaultVoice != 0;

  return v4;
}

- (NSString)mobileCountryCode
{
  mobileCountryCode = self->_mobileCountryCode;
  if (!mobileCountryCode)
  {
    v4 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
    context = [(IDSCTSIM *)self context];
    v12 = 0;
    v6 = [v4 copyMobileSubscriberCountryCode:context error:&v12];
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
    context = [(IDSCTSIM *)self context];
    v12 = 0;
    v6 = [v4 copyMobileSubscriberNetworkCode:context error:&v12];
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
    context = [(IDSCTSIM *)self context];
    v11 = 0;
    v6 = [v4 getSimHardwareInfo:context error:&v11];
    v7 = v11;

    hardwareType = [v6 hardwareType];
    if (hardwareType <= 2)
    {
      v9 = self->_hardwareType;
      self->_hardwareType = qword_1E77E26C8[hardwareType];
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
  context = [(IDSCTSIM *)self context];
  v9 = [v3 stringWithFormat:@"<%@:%p mcc: %@, mnc: %@, opts: %@, context: %@", v4, self, mobileCountryCode, mobileNetworkCode, v7, context];

  return v9;
}

@end