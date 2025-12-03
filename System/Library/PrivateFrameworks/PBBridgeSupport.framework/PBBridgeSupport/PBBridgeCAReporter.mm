@interface PBBridgeCAReporter
+ (id)_orientationHumanReadable:(int64_t)readable;
+ (id)_pairingStyle:(int64_t)style;
+ (id)_wristChoiceHumanReadable:(int64_t)readable;
+ (id)descriptionForCommTimingType:(unint64_t)type;
+ (id)descriptionForSuccessType:(unint64_t)type;
+ (id)descriptionForTimingType:(unint64_t)type;
+ (id)stringForSigninEventDaily:(unint64_t)daily;
+ (id)stringForSigninEventPostPair:(unint64_t)pair;
+ (id)stringForSigninFollowup:(unint64_t)followup;
+ (id)stringForSigninPair:(unint64_t)pair;
+ (void)activationServerRespondedAtPage:(unint64_t)page;
+ (void)incrementSuccessType:(unint64_t)type;
+ (void)pushCommunicationTimingType:(unint64_t)type withValue:(double)value;
+ (void)pushTimingForTypeNamed:(id)named withValue:(double)value;
+ (void)pushTimingType:(unint64_t)type withValue:(double)value;
+ (void)recordAlreadyPairedAlertFiredAndWatchRecovered:(double)recovered;
+ (void)recordMaterial:(unint64_t)material andSize:(unint64_t)size;
+ (void)recordPairingInitiatedDeviceOrientationChoice:(int64_t)choice pairingSelectionType:(int64_t)type;
+ (void)recordPairingInitiatedDeviceWristChoice:(int64_t)choice pairingSelectionType:(int64_t)type;
+ (void)recordPairingTimeBackupsCount:(unint64_t)count;
+ (void)recordPasscodeChallenge:(int64_t)challenge;
+ (void)recordPasscodeCreatedWithType:(int64_t)type wasChallenged:(BOOL)challenged;
+ (void)recordSigninEventDaily:(unint64_t)daily;
+ (void)recordSigninEventFollowup:(unint64_t)followup;
+ (void)recordSigninEventPair:(unint64_t)pair;
+ (void)recordSigninEventPostPair:(unint64_t)pair;
+ (void)recordTabSelection:(int64_t)selection classicCount:(unint64_t)count tinkerCount:(unint64_t)tinkerCount;
+ (void)recordTinkerGuardianAcceptedDiagsAndUsage:(BOOL)usage;
+ (void)recordTransitionedDynamicHelpViewFromType:(int64_t)type toType:(int64_t)toType;
+ (void)recordUserInitiatedDeviceOrientationChange:(int64_t)change;
+ (void)recordUserInitiatedDeviceWristChange:(int64_t)change;
+ (void)sendEvent:(id)event with:(id)with;
@end

@implementation PBBridgeCAReporter

+ (void)sendEvent:(id)event with:(id)with
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  withCopy = with;
  v7 = pbb_shared_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = eventCopy;
    v11 = 2114;
    v12 = withCopy;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "[PBBridgeCAReporter] Sending event: <%{public}@; %{public}@>", &v9, 0x16u);
  }

  AnalyticsSendEvent();
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)descriptionForSuccessType:(unint64_t)type
{
  if (type > 0x3A)
  {
    return &stru_286FA8098;
  }

  else
  {
    return off_2799F3B88[type];
  }
}

+ (void)activationServerRespondedAtPage:(unint64_t)page
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = PBBuddyControllerDescription(page);
  v6 = [v4 stringWithFormat:@"ActivationResponded-%@", v5, @"screen"];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [self sendEvent:@"com.apple.nanobuddy.activationRespond" with:v7];

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)incrementSuccessType:(unint64_t)type
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"type";
  v4 = [PBBridgeCAReporter descriptionForSuccessType:type];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [self sendEvent:@"com.apple.nanobuddy.flow" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)descriptionForTimingType:(unint64_t)type
{
  if (type > 0xA)
  {
    return &stru_286FA8098;
  }

  else
  {
    return off_2799F3D60[type];
  }
}

+ (void)pushTimingType:(unint64_t)type withValue:(double)value
{
  v6 = [PBBridgeCAReporter descriptionForTimingType:type];
  [self pushTimingForTypeNamed:v6 withValue:value];
}

+ (void)pushTimingForTypeNamed:(id)named withValue:(double)value
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"type";
  v11[1] = @"duration";
  v12[0] = named;
  v6 = MEMORY[0x277CCABB0];
  namedCopy = named;
  v8 = [v6 numberWithDouble:value];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  [self sendEvent:@"com.apple.nanobuddy.timing" with:v9];
  v10 = *MEMORY[0x277D85DE8];
}

+ (id)descriptionForCommTimingType:(unint64_t)type
{
  v3 = &stru_286FA8098;
  if (type == 1)
  {
    v3 = @"OWD";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"RTT";
  }
}

+ (void)pushCommunicationTimingType:(unint64_t)type withValue:(double)value
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"type";
  v6 = [PBBridgeCAReporter descriptionForCommTimingType:type];
  v10[1] = @"duration";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [self sendEvent:@"com.apple.nanobuddy.comm.timing" with:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)stringForSigninPair:(unint64_t)pair
{
  if (pair >= 3)
  {
    pair = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", pair];
  }

  else
  {
    pair = off_2799F3DB8[pair];
  }

  return pair;
}

+ (void)recordSigninEventPair:(unint64_t)pair
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v7[1] = @"value";
  v8[0] = @"pair";
  v4 = [self stringForSigninPair:pair];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [self sendEvent:@"com.apple.nanobuddy.signin" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)stringForSigninFollowup:(unint64_t)followup
{
  if (followup)
  {
    followup = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", followup];
  }

  else
  {
    followup = @"NoSignin";
  }

  return followup;
}

+ (void)recordSigninEventFollowup:(unint64_t)followup
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v7[1] = @"value";
  v8[0] = @"followup";
  v4 = [self stringForSigninFollowup:followup];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [self sendEvent:@"com.apple.nanobuddy.signin" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)stringForSigninEventDaily:(unint64_t)daily
{
  if (daily == 1)
  {
    daily = @"SignedIn";
  }

  else if (daily)
  {
    daily = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", daily];
  }

  else
  {
    daily = @"NotSignedIn";
  }

  return daily;
}

+ (void)recordSigninEventDaily:(unint64_t)daily
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v7[1] = @"value";
  v8[0] = @"daily";
  v4 = [self stringForSigninEventDaily:daily];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [self sendEvent:@"com.apple.nanobuddy.signin" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)stringForSigninEventPostPair:(unint64_t)pair
{
  if (pair)
  {
    pair = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", pair];
  }

  else
  {
    pair = @"SignedIn";
  }

  return pair;
}

+ (void)recordSigninEventPostPair:(unint64_t)pair
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v7[1] = @"value";
  v8[0] = @"postpair";
  v4 = [self stringForSigninEventPostPair:pair];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [self sendEvent:@"com.apple.nanobuddy.signin" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)recordAlreadyPairedAlertFiredAndWatchRecovered:(double)recovered
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"RecoveryInterval";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:recovered];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [self sendEvent:@"com.apple.Bridge.AlreadyPairedAlert.Recovered" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)recordPasscodeCreatedWithType:(int64_t)type wasChallenged:(BOOL)challenged
{
  challengedCopy = challenged;
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"PasscodeType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v7 = v6;
  v11[1] = @"HasBeenChallenged";
  v8 = MEMORY[0x277CBEC28];
  if (challengedCopy)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  v12[0] = v6;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [self sendEvent:@"com.apple.Bridge.PasscodeChoice" with:v9];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)recordPasscodeChallenge:(int64_t)challenge
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"ChallengeType";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:challenge];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [self sendEvent:@"com.apple.Bridge.PasscodeChallenge" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)recordTransitionedDynamicHelpViewFromType:(int64_t)type toType:(int64_t)toType
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"FromType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v10[1] = @"ToType";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:toType];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [self sendEvent:@"com.apple.Bridge.DynamicHelpTransitioned" with:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)recordTinkerGuardianAcceptedDiagsAndUsage:(BOOL)usage
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (usage)
  {
    v4 = MEMORY[0x277CBEC38];
  }

  else
  {
    v4 = MEMORY[0x277CBEC28];
  }

  v7 = @"Choice";
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [self sendEvent:@"com.apple.Bridge.Tinker.DiagsAndUsage" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)recordPairingTimeBackupsCount:(unint64_t)count
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"BackupsCount";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [self sendEvent:@"com.apple.Bridge.BackupsCount" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)recordTabSelection:(int64_t)selection classicCount:(unint64_t)count tinkerCount:(unint64_t)tinkerCount
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"type";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:selection];
  v14[0] = v8;
  v13[1] = @"classicCount";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v14[1] = v9;
  v13[2] = @"tinkerCount";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:tinkerCount];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [self sendEvent:@"com.apple.Bridge.TabViewSelection" with:v11];

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_orientationHumanReadable:(int64_t)readable
{
  v3 = @"UnsetCrown";
  if (readable == 2)
  {
    v3 = @"CrownOnLeft";
  }

  if (readable == 1)
  {
    return @"CrownOnRight";
  }

  else
  {
    return v3;
  }
}

+ (id)_wristChoiceHumanReadable:(int64_t)readable
{
  v3 = @"UnsetHand";
  if (readable == 2)
  {
    v3 = @"RightHand";
  }

  if (readable == 1)
  {
    return @"LeftHand";
  }

  else
  {
    return v3;
  }
}

+ (void)recordUserInitiatedDeviceOrientationChange:(int64_t)change
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"DeviceOrientation";
  v4 = [self _orientationHumanReadable:change];
  v8[1] = @"SettingsPlatform";
  v9[0] = v4;
  _reportingPlatform = [self _reportingPlatform];
  v9[1] = _reportingPlatform;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [self sendEvent:@"com.apple.Bridge.UserInitiatedDeviceOrientationChange" with:v6];

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)recordUserInitiatedDeviceWristChange:(int64_t)change
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"WristChoice";
  v4 = [self _wristChoiceHumanReadable:change];
  v8[1] = @"SettingsPlatform";
  v9[0] = v4;
  _reportingPlatform = [self _reportingPlatform];
  v9[1] = _reportingPlatform;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [self sendEvent:@"com.apple.Bridge.UserInitiatedDeviceWristChange" with:v6];

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)_pairingStyle:(int64_t)style
{
  v3 = @"PairingUnset";
  if (style == 2)
  {
    v3 = @"PairingAutomatic";
  }

  if (style == 1)
  {
    return @"PairingManual";
  }

  else
  {
    return v3;
  }
}

+ (void)recordPairingInitiatedDeviceOrientationChoice:(int64_t)choice pairingSelectionType:(int64_t)type
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"DeviceOrientation";
  v6 = [self _orientationHumanReadable:choice];
  v10[1] = @"SettingsPlatform";
  v11[0] = v6;
  v7 = [self _pairingStyle:type];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [self sendEvent:@"com.apple.Bridge.UserInitiatedDeviceOrientationChange" with:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)recordPairingInitiatedDeviceWristChoice:(int64_t)choice pairingSelectionType:(int64_t)type
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"WristChoice";
  v6 = [self _wristChoiceHumanReadable:choice];
  v10[1] = @"SettingsPlatform";
  v11[0] = v6;
  v7 = [self _pairingStyle:type];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [self sendEvent:@"com.apple.Bridge.UserInitiatedDeviceWristChange" with:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)recordMaterial:(unint64_t)material andSize:(unint64_t)size
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"Material";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:material];
  v10[1] = @"Size";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [self sendEvent:@"com.apple.Bridge.MaterialDetails" with:v8];

  v9 = *MEMORY[0x277D85DE8];
}

@end