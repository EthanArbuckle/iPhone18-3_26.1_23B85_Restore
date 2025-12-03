@interface PUPasscodeState
+ (BOOL)hasPasscode;
+ (BOOL)isModificationAllowed;
+ (BOOL)isUnlockOnly;
+ (id)toProtobuf;
+ (unint64_t)passcodeMinimumLength;
+ (void)setOffWristEnabledSSE:(BOOL)e completion:(id)completion;
@end

@implementation PUPasscodeState

+ (BOOL)hasPasscode
{
  v2 = +[MCProfileConnection sharedConnection];
  isPasscodeSet = [v2 isPasscodeSet];

  return isPasscodeSet;
}

+ (BOOL)isUnlockOnly
{
  if (![self hasPasscode])
  {
    return 0;
  }

  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 unlockScreenType] == 2;

  return v3;
}

+ (void)setOffWristEnabledSSE:(BOOL)e completion:(id)completion
{
  completionCopy = completion;
  v6 = [PUError errorWithCode:104 description:@"only supported on watch"];
  (*(completion + 2))(completionCopy, v6);
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

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

+ (BOOL)isModificationAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  isPasscodeModificationAllowed = [v2 isPasscodeModificationAllowed];
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = isPasscodeModificationAllowed;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "passcode modification allowed: %{BOOL}u", v6, 8u);
  }

  return isPasscodeModificationAllowed;
}

+ (id)toProtobuf
{
  v3 = objc_alloc_init(PUProtoPasscodePolicy);
  -[PUProtoPasscodePolicy setModificationAllowed:](v3, "setModificationAllowed:", [self isModificationAllowed]);
  -[PUProtoPasscodePolicy setMinimumLength:](v3, "setMinimumLength:", [self passcodeMinimumLength]);
  v4 = objc_alloc_init(PUProtoPasscodeState);
  -[PUProtoPasscodeState setHasPasscode:](v4, "setHasPasscode:", [self hasPasscode]);
  -[PUProtoPasscodeState setIsLocked:](v4, "setIsLocked:", [self isLocked]);
  if ([(PUProtoPasscodeState *)v4 hasPasscode])
  {
    isUnlockOnly = [self isUnlockOnly];
  }

  else
  {
    isUnlockOnly = 0;
  }

  [(PUProtoPasscodeState *)v4 setIsUnlockOnly:isUnlockOnly];
  if ([(PUProtoPasscodeState *)v4 hasPasscode])
  {
    v6 = [self isWristDetectionDisabled] ^ 1;
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