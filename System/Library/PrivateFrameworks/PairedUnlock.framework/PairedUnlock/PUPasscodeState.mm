@interface PUPasscodeState
+ (BOOL)hasPasscode;
+ (BOOL)isModificationAllowed;
+ (BOOL)isUnlockOnly;
+ (id)toProtobuf;
+ (unint64_t)passcodeMinimumLength;
+ (void)setOffWristEnabledSSE:(BOOL)a3 completion:(id)a4;
@end

@implementation PUPasscodeState

+ (BOOL)hasPasscode
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

+ (BOOL)isUnlockOnly
{
  if (![a1 hasPasscode])
  {
    return 0;
  }

  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 unlockScreenType] == 2;

  return v3;
}

+ (void)setOffWristEnabledSSE:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [PUError errorWithCode:104 description:@"only supported on watch"];
  (*(a4 + 2))(v5, v6);
}

+ (unint64_t)passcodeMinimumLength
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 valueRestrictionForFeature:MCFeatureMinimumPasscodeLength];
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "current minimum passcode length is %@", &v7, 0xCu);
  }

  v5 = [v3 unsignedIntegerValue];
  return v5;
}

+ (BOOL)isModificationAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isPasscodeModificationAllowed];
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "passcode modification allowed: %{BOOL}u", v6, 8u);
  }

  return v3;
}

+ (id)toProtobuf
{
  v3 = objc_alloc_init(PUProtoPasscodePolicy);
  -[PUProtoPasscodePolicy setModificationAllowed:](v3, "setModificationAllowed:", [a1 isModificationAllowed]);
  -[PUProtoPasscodePolicy setMinimumLength:](v3, "setMinimumLength:", [a1 passcodeMinimumLength]);
  v4 = objc_alloc_init(PUProtoPasscodeState);
  -[PUProtoPasscodeState setHasPasscode:](v4, "setHasPasscode:", [a1 hasPasscode]);
  -[PUProtoPasscodeState setIsLocked:](v4, "setIsLocked:", [a1 isLocked]);
  if ([(PUProtoPasscodeState *)v4 hasPasscode])
  {
    v5 = [a1 isUnlockOnly];
  }

  else
  {
    v5 = 0;
  }

  [(PUProtoPasscodeState *)v4 setIsUnlockOnly:v5];
  if ([(PUProtoPasscodeState *)v4 hasPasscode])
  {
    v6 = [a1 isWristDetectionDisabled] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [(PUProtoPasscodeState *)v4 setIsWristDetectionEnabled:v6];
  [(PUProtoPasscodeState *)v4 setPolicy:v3];

  return v4;
}

@end