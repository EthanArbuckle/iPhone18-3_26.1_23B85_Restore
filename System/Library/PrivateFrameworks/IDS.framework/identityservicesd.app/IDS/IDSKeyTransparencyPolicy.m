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
- (BOOL)isKeyTransparencyEnabledForServiceIdentifier:(id)a3;
- (BOOL)isKeyTransparencyEnabledForServiceType:(id)a3;
- (BOOL)isKeyTransparencyRTCAnalyticsEnabled;
- (BOOL)isKeyTransparencySFAnalyticsEnabled;
- (BOOL)isKeyTransparencyTrustCircleEnabled;
- (BOOL)isKeyTransparencyUIEnabled;
- (BOOL)isKeyTransparencyXPCActivityEnabled;
- (BOOL)shouldSyncTrustCircleAfterSelfQueryForServiceIdentifier:(id)a3;
- (unint64_t)keyTransparencyMaximumVerificationsPerXPCActivity;
- (unint64_t)keyTransparencyXPCActivityIntervalInSeconds;
@end

@implementation IDSKeyTransparencyPolicy

- (BOOL)isKeyTransparencyEnabled
{
  v3 = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyEnabledViaDefaults];
  if (v3)
  {

    LOBYTE(v3) = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyEnabledViaServerBag];
  }

  return v3;
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

- (BOOL)isKeyTransparencyEnabledForServiceIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:IDSiMessageKeyTransparencyService])
  {
    v5 = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid];
  }

  else if ([v4 isEqualToString:IDSFaceTimeMultiKeyTransparencyService])
  {
    v5 = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_FaceTime];
  }

  else
  {
    if (![v4 isEqualToString:IDSMultiplex1KeyTransparencyService])
    {
      v6 = 0;
      goto LABEL_8;
    }

    v5 = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_Multiplex];
  }

  v6 = v5 ^ 1;
LABEL_8:

  return v6;
}

- (BOOL)isKeyTransparencyEnabledForServiceType:(id)a3
{
  v4 = a3;
  if (IDSIsiMessageRegistrationServiceType())
  {
    v5 = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_Madrid];
  }

  else if (IDSIsMultiwayRegistrationServiceType())
  {
    v5 = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_FaceTime];
  }

  else
  {
    if (!IDSIsMultiplex1RegistrationServiceType())
    {
      v6 = 0;
      goto LABEL_8;
    }

    v5 = [(IDSKeyTransparencyPolicy *)self _isKeyTransparencyDisabledViaServerBagProtocolVersion_Multiplex];
  }

  v6 = v5 ^ 1;
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
    v4 = 0;
  }

  else if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
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
    v4 = 0;
  }

  else if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
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
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)keyTransparencyXPCActivityIntervalInSeconds
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-xpc-activity-interval"];

  if (+[IMUserDefaults isKeyTransparencyAggressiveVerificationScheduleEnabled]&& (CUTIsInternalInstall() & 1) != 0)
  {
    v4 = 300;
  }

  else
  {
    v4 = 86400;
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v3 unsignedIntegerValue];
      }
    }
  }

  return v4;
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
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 25;
  }

  return v4;
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
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
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
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
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
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldSyncTrustCircleAfterSelfQueryForServiceIdentifier:(id)a3
{
  if (![(IDSKeyTransparencyPolicy *)self isKeyTransparencyEnabledForServiceIdentifier:a3])
  {
    return 0;
  }

  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v4 = [v3 objectForKey:@"kt-self-verify-rate"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 unsignedIntegerValue];
    if (v6 >= 0x65)
    {
      v7 = 10;
    }

    else
    {
      v7 = v6;
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