@interface IDSKeyTransparencyPolicy
- (BOOL)_isKeyTransparencyDisabledViaServerBagProtocolVersion_FaceTime;
- (BOOL)_isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid;
- (BOOL)_isKeyTransparencyDisabledViaServerBagProtocolVersion_Multiplex;
- (BOOL)_isKeyTransparencyEnabledViaDefaults;
- (BOOL)_isKeyTransparencyEnabledViaServerBag;
- (BOOL)_isKeyTransparencyPokeWithKeysEnabledViaDefaults;
- (BOOL)isKeyTransparencyAccountKeyCircleEnabled;
- (BOOL)isKeyTransparencyAnalyticsEnabled;
- (BOOL)isKeyTransparencyCloudKitCircleEnabled;
- (BOOL)isKeyTransparencyEnabled;
- (BOOL)isKeyTransparencyEnabledForServiceIdentifier:(id)identifier;
- (BOOL)isKeyTransparencyEnabledForServiceType:(id)type;
- (BOOL)isKeyTransparencyRTCAnalyticsEnabled;
- (BOOL)isKeyTransparencySFAnalyticsEnabled;
- (BOOL)isKeyTransparencyTrustCircleEnabled;
- (BOOL)isKeyTransparencyUIEnabled;
- (BOOL)isKeyTransparencyXPCActivityEnabled;
- (BOOL)shouldSyncTrustCircleAfterSelfQueryForServiceIdentifier:(id)identifier;
- (unint64_t)keyTransparencyMaximumVerificationsPerXPCActivity;
- (unint64_t)keyTransparencyXPCActivityIntervalInSeconds;
@end

@implementation IDSKeyTransparencyPolicy

- (BOOL)isKeyTransparencyEnabled
{
  _isKeyTransparencyEnabledViaDefaults = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyEnabledViaDefaults];
  if (_isKeyTransparencyEnabledViaDefaults)
  {

    LOBYTE(_isKeyTransparencyEnabledViaDefaults) = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyEnabledViaServerBag];
  }

  return _isKeyTransparencyEnabledViaDefaults;
}

- (BOOL)_isKeyTransparencyEnabledViaDefaults
{
  if (+[IMUserDefaults isKeyTransparencyDisabled])
  {
    return CUTIsInternalInstall() ^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_isKeyTransparencyPokeWithKeysEnabledViaDefaults
{
  v2 = +[IMUserDefaults isKeyTransparencyPokeWithKeysEnabled];
  if (v2)
  {

    LOBYTE(v2) = CUTIsInternalInstall();
  }

  return v2;
}

- (BOOL)_isKeyTransparencyEnabledViaServerBag
{
  if ([(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid]&& [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_FaceTime])
  {
    return ![(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_Multiplex];
  }

  else
  {
    return 1;
  }
}

- (BOOL)_isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-min-idv-im"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = _IDSIDProtocolVersionNumber();
    v5 = [v3 compare:v4] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isKeyTransparencyDisabledViaServerBagProtocolVersion_FaceTime
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-min-idv-ft"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = _IDSIDProtocolVersionNumber();
    v5 = [v3 compare:v4] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isKeyTransparencyDisabledViaServerBagProtocolVersion_Multiplex
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-min-idv-mp1"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = _IDSIDProtocolVersionNumber();
    v5 = [v3 compare:v4] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isKeyTransparencyEnabledForServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:IDSiMessageKeyTransparencyService])
  {
    _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid];
  }

  else if ([identifierCopy isEqualToString:IDSFaceTimeMultiKeyTransparencyService])
  {
    _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_FaceTime];
  }

  else
  {
    if (![identifierCopy isEqualToString:IDSMultiplex1KeyTransparencyService])
    {
      v6 = 0;
      goto LABEL_8;
    }

    _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_Multiplex];
  }

  v6 = _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid ^ 1;
LABEL_8:

  return v6;
}

- (BOOL)isKeyTransparencyEnabledForServiceType:(id)type
{
  typeCopy = type;
  if (IDSIsiMessageRegistrationServiceType())
  {
    _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid];
  }

  else if (IDSIsMultiwayRegistrationServiceType())
  {
    _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_FaceTime];
  }

  else
  {
    if (!IDSIsMultiplex1RegistrationServiceType())
    {
      v6 = 0;
      goto LABEL_8;
    }

    _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_Multiplex];
  }

  v6 = _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid ^ 1;
LABEL_8:

  return v6;
}

- (BOOL)isKeyTransparencyTrustCircleEnabled
{
  if ([(IDSKeyTransparencyPolicy *)self isKeyTransparencyCloudKitCircleEnabled])
  {
    return 1;
  }

  return [(IDSKeyTransparencyPolicy *)self isKeyTransparencyAccountKeyCircleEnabled];
}

- (BOOL)isKeyTransparencyCloudKitCircleEnabled
{
  if (![(IDSKeyTransparencyPolicy *)self isKeyTransparencyEnabled])
  {
    return 0;
  }

  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-cloud-kit-enabled"];

  if (+[IMUserDefaults isKeyTransparencyCloudKitCircleDisabled]&& (CUTIsInternalInstall() & 1) != 0)
  {
    bOOLValue = 0;
  }

  else if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isKeyTransparencyAccountKeyCircleEnabled
{
  if (![(IDSKeyTransparencyPolicy *)self isKeyTransparencyEnabled])
  {
    return 0;
  }

  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-account-key-enabled"];

  if (+[IMUserDefaults isKeyTransparencyAccountKeyCircleDisabled]&& (CUTIsInternalInstall() & 1) != 0)
  {
    bOOLValue = 0;
  }

  else if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isKeyTransparencyXPCActivityEnabled
{
  if (![(IDSKeyTransparencyPolicy *)self isKeyTransparencyEnabled])
  {
    return 0;
  }

  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-xpc-activity-enabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (unint64_t)keyTransparencyXPCActivityIntervalInSeconds
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-xpc-activity-interval"];

  if (+[IMUserDefaults isKeyTransparencyAggressiveVerificationScheduleEnabled]&& (CUTIsInternalInstall() & 1) != 0)
  {
    unsignedIntegerValue = 300;
  }

  else
  {
    unsignedIntegerValue = 86400;
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v3 unsignedIntegerValue];
      }
    }
  }

  return unsignedIntegerValue;
}

- (unint64_t)keyTransparencyMaximumVerificationsPerXPCActivity
{
  if (![(IDSKeyTransparencyPolicy *)self isKeyTransparencyEnabled])
  {
    return 0;
  }

  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-xpc-activity-max-verifications"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 25;
  }

  return unsignedIntegerValue;
}

- (BOOL)isKeyTransparencyAnalyticsEnabled
{
  if (![(IDSKeyTransparencyPolicy *)self isKeyTransparencyEnabled])
  {
    return 0;
  }

  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-analytics-enabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isKeyTransparencyRTCAnalyticsEnabled
{
  if (![(IDSKeyTransparencyPolicy *)self isKeyTransparencyEnabled]|| !CUTIsInternalInstall())
  {
    return 0;
  }

  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-rtc-analytics-enabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isKeyTransparencySFAnalyticsEnabled
{
  if (![(IDSKeyTransparencyPolicy *)self isKeyTransparencyEnabled])
  {
    return 0;
  }

  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-sf-analytics-enabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)shouldSyncTrustCircleAfterSelfQueryForServiceIdentifier:(id)identifier
{
  if (![(IDSKeyTransparencyPolicy *)self isKeyTransparencyEnabledForServiceIdentifier:identifier])
  {
    return 0;
  }

  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v4 = [v3 objectForKey:@"kt-self-verify-rate"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    if (unsignedIntegerValue >= 0x65)
    {
      v7 = 10;
    }

    else
    {
      v7 = unsignedIntegerValue;
    }
  }

  else
  {
    v5 = 0;
    v7 = 10;
  }

  if (+[IMUserDefaults isKeyTransparencyAggressiveVerificationScheduleEnabled]&& CUTIsInternalInstall())
  {
    v7 = 75;
  }

  v9 = arc4random_uniform(0x64u);
  v8 = v7 > v9;
  v10 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v7 <= v9)
    {
      v11 = @"NO";
    }

    else
    {
      v11 = @"YES";
    }

    v12 = [NSNumber numberWithUnsignedInt:?];
    v13 = [NSNumber numberWithUnsignedInteger:v7];
    v15 = 138413058;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Determined if self-query should be verified { shouldSelfVerify: %@, diceRoll: %@, percentage: %@, bagValue: %@ }", &v15, 0x2Au);
  }

  return v8;
}

- (BOOL)isKeyTransparencyUIEnabled
{
  if (![(IDSKeyTransparencyPolicy *)self isKeyTransparencyEnabled]|| !+[IMUserDefaults isKeyTransparencyUIEnabled])
  {
    return 0;
  }

  return CUTIsInternalInstall();
}

@end