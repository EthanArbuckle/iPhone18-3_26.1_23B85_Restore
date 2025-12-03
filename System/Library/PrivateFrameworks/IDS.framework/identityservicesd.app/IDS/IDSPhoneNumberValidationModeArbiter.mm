@interface IDSPhoneNumberValidationModeArbiter
- (BOOL)isPrefightEnabledByServerBag;
- (BOOL)isValidationModeUsingPreflight;
- (IDSCTPNRValidationMechanism)preflightShortCircuitMechanismOverride;
- (IDSPhoneNumberValidationModeArbiter)init;
- (IDSPhoneNumberValidationModeArbiter)initWithServerBag:(id)bag;
- (NSString)preflightTestDataOverride;
- (double)minimumIntervalBetweenValidationAttempts;
- (int64_t)validationMode;
- (unsigned)maxAllowableNumberOfPreflightRequests;
- (unsigned)maxAllowableNumberOfSuccessfullySentVerifications;
- (unsigned)maxAllowableNumberOfValidationAttemptsWhileNoneHaveSentSuccessfully;
@end

@implementation IDSPhoneNumberValidationModeArbiter

- (IDSPhoneNumberValidationModeArbiter)init
{
  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v4 = [(IDSPhoneNumberValidationModeArbiter *)self initWithServerBag:v3];

  return v4;
}

- (IDSPhoneNumberValidationModeArbiter)initWithServerBag:(id)bag
{
  bagCopy = bag;
  v9.receiver = self;
  v9.super_class = IDSPhoneNumberValidationModeArbiter;
  v6 = [(IDSPhoneNumberValidationModeArbiter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverBag, bag);
  }

  return v7;
}

- (BOOL)isValidationModeUsingPreflight
{
  validationMode = [(IDSPhoneNumberValidationModeArbiter *)self validationMode];
  if (validationMode != 1)
  {
    LOBYTE(validationMode) = [(IDSPhoneNumberValidationModeArbiter *)self validationMode]== 3;
  }

  return validationMode;
}

- (int64_t)validationMode
{
  v3 = +[IMUserDefaults phoneNumberValidationMode];
  v4 = +[IMLockdownManager sharedInstance];
  if ([v4 isInternalInstall])
  {
    isCarrierInstall = 1;
  }

  else
  {
    v6 = +[IMLockdownManager sharedInstance];
    isCarrierInstall = [v6 isCarrierInstall];
  }

  if (isCarrierInstall && v3)
  {
    v7 = +[IMRGLog sms];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v3 != 2)
    {
      if (!v8)
      {
LABEL_18:

        return v3;
      }

      v13 = 134217984;
      v14 = v3;
      v9 = "Phone number validation mode overridden by user defaults { modeFromDefaults: %ld }";
      v10 = v7;
      v11 = 12;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
      goto LABEL_18;
    }

    if (v8)
    {
      v13 = 134217984;
      v14 = 2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phone number validation mode overridde to unsupported legacy mode attempted -- rejecting { modeFromDefaults: %ld }", &v13, 0xCu);
    }
  }

  if (![(IDSPhoneNumberValidationModeArbiter *)self isPrefightEnabledByServerBag])
  {
    v7 = +[IMRGLog sms];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 2;
      goto LABEL_18;
    }

    LOWORD(v13) = 0;
    v9 = "Preflight disabled by server bag override -- falling back to legacy";
    v3 = 2;
    v10 = v7;
    v11 = 2;
    goto LABEL_16;
  }

  return 1;
}

- (BOOL)isPrefightEnabledByServerBag
{
  v2 = [(IDSServerBag *)self->_serverBag objectForKey:@"preflight-enabled"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (IDSCTPNRValidationMechanism)preflightShortCircuitMechanismOverride
{
  if ([(IDSPhoneNumberValidationModeArbiter *)self validationMode]== 4)
  {
    v3 = +[IDSCTPNRValidationMechanism SMSLessMechanism];
  }

  else if ([(IDSPhoneNumberValidationModeArbiter *)self validationMode]== 5)
  {
    preflightTestDataOverride = [(IDSPhoneNumberValidationModeArbiter *)self preflightTestDataOverride];
    v3 = [IDSCTPNRValidationMechanism SMSMechanismWithContext:preflightTestDataOverride];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)preflightTestDataOverride
{
  if ([(IDSPhoneNumberValidationModeArbiter *)self validationMode]== 3 || [(IDSPhoneNumberValidationModeArbiter *)self isValidationModeShortCircuitingPreflight])
  {
    v3 = +[IMUserDefaults phoneNumberValidationPreflightTestData];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)minimumIntervalBetweenValidationAttempts
{
  serverBag = [(IDSPhoneNumberValidationModeArbiter *)self serverBag];
  v4 = [serverBag objectForKey:@"preflight-mechanism-delay"];

  v5 = 360.0;
  if (v4 && ![(IDSPhoneNumberValidationModeArbiter *)self isValidationModeLegacy])
  {
    [v4 doubleValue];
    v5 = v6;
  }

  return v5;
}

- (unsigned)maxAllowableNumberOfPreflightRequests
{
  serverBag = [(IDSPhoneNumberValidationModeArbiter *)self serverBag];
  v3 = [serverBag objectForKey:@"preflight-request-limit"];

  if (v3)
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 5;
  }

  return unsignedIntValue;
}

- (unsigned)maxAllowableNumberOfSuccessfullySentVerifications
{
  v3 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v3 isInternalInstall];

  if (isInternalInstall && (v5 = IMGetCachedDomainIntForKeyWithDefaultValue(), v5 >= 1))
  {
    v6 = v5;
    v7 = +[IMRGLog sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "*********** Override max SMS retries value to %ld", &v10, 0xCu);
    }
  }

  else
  {
    v8 = [(IDSServerBag *)self->_serverBag objectForKey:@"sms-max-retries"];
    v7 = v8;
    if (v8)
    {
      LODWORD(v6) = [v8 unsignedIntValue];
    }

    else
    {
      LODWORD(v6) = 5;
    }
  }

  return v6;
}

- (unsigned)maxAllowableNumberOfValidationAttemptsWhileNoneHaveSentSuccessfully
{
  v3 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v3 isInternalInstall];

  if (isInternalInstall && (v5 = IMGetCachedDomainIntForKeyWithDefaultValue(), v5 >= 1))
  {
    v6 = v5;
    v7 = +[IMRGLog sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "*********** Override max SMS delivery retries value to %ld", &v10, 0xCu);
    }
  }

  else
  {
    v8 = [(IDSServerBag *)self->_serverBag objectForKey:@"sms-max-delivery-retries"];
    v7 = v8;
    if (v8)
    {
      LODWORD(v6) = [v8 unsignedIntValue];
    }

    else
    {
      LODWORD(v6) = 5;
    }
  }

  return v6;
}

@end