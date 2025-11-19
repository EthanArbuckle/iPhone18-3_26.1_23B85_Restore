@interface PBBridgeCAReporter
+ (id)_orientationHumanReadable:(int64_t)a3;
+ (id)_pairingStyle:(int64_t)a3;
+ (id)_wristChoiceHumanReadable:(int64_t)a3;
+ (id)descriptionForCommTimingType:(unint64_t)a3;
+ (id)descriptionForSuccessType:(unint64_t)a3;
+ (id)descriptionForTimingType:(unint64_t)a3;
+ (id)stringForSigninEventDaily:(unint64_t)a3;
+ (id)stringForSigninEventPostPair:(unint64_t)a3;
+ (id)stringForSigninFollowup:(unint64_t)a3;
+ (id)stringForSigninPair:(unint64_t)a3;
+ (void)activationServerRespondedAtPage:(unint64_t)a3;
+ (void)incrementSuccessType:(unint64_t)a3;
+ (void)pushCommunicationTimingType:(unint64_t)a3 withValue:(double)a4;
+ (void)pushTimingForTypeNamed:(id)a3 withValue:(double)a4;
+ (void)pushTimingType:(unint64_t)a3 withValue:(double)a4;
+ (void)recordAlreadyPairedAlertFiredAndWatchRecovered:(double)a3;
+ (void)recordMaterial:(unint64_t)a3 andSize:(unint64_t)a4;
+ (void)recordPairingInitiatedDeviceOrientationChoice:(int64_t)a3 pairingSelectionType:(int64_t)a4;
+ (void)recordPairingInitiatedDeviceWristChoice:(int64_t)a3 pairingSelectionType:(int64_t)a4;
+ (void)recordPairingTimeBackupsCount:(unint64_t)a3;
+ (void)recordPasscodeChallenge:(int64_t)a3;
+ (void)recordPasscodeCreatedWithType:(int64_t)a3 wasChallenged:(BOOL)a4;
+ (void)recordSigninEventDaily:(unint64_t)a3;
+ (void)recordSigninEventFollowup:(unint64_t)a3;
+ (void)recordSigninEventPair:(unint64_t)a3;
+ (void)recordSigninEventPostPair:(unint64_t)a3;
+ (void)recordTabSelection:(int64_t)a3 classicCount:(unint64_t)a4 tinkerCount:(unint64_t)a5;
+ (void)recordTinkerGuardianAcceptedDiagsAndUsage:(BOOL)a3;
+ (void)recordTransitionedDynamicHelpViewFromType:(int64_t)a3 toType:(int64_t)a4;
+ (void)recordUserInitiatedDeviceOrientationChange:(int64_t)a3;
+ (void)recordUserInitiatedDeviceWristChange:(int64_t)a3;
+ (void)sendEvent:(id)a3 with:(id)a4;
@end

@implementation PBBridgeCAReporter

+ (void)sendEvent:(id)a3 with:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = pbb_shared_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "[PBBridgeCAReporter] Sending event: <%{public}@; %{public}@>", &v9, 0x16u);
  }

  AnalyticsSendEvent();
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)descriptionForSuccessType:(unint64_t)a3
{
  if (a3 > 0x3A)
  {
    return &stru_286FA8098;
  }

  else
  {
    return off_2799F3B88[a3];
  }
}

+ (void)activationServerRespondedAtPage:(unint64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = PBBuddyControllerDescription(a3);
  v6 = [v4 stringWithFormat:@"ActivationResponded-%@", v5, @"screen"];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [a1 sendEvent:@"com.apple.nanobuddy.activationRespond" with:v7];

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)incrementSuccessType:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"type";
  v4 = [PBBridgeCAReporter descriptionForSuccessType:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [a1 sendEvent:@"com.apple.nanobuddy.flow" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)descriptionForTimingType:(unint64_t)a3
{
  if (a3 > 0xA)
  {
    return &stru_286FA8098;
  }

  else
  {
    return off_2799F3D60[a3];
  }
}

+ (void)pushTimingType:(unint64_t)a3 withValue:(double)a4
{
  v6 = [PBBridgeCAReporter descriptionForTimingType:a3];
  [a1 pushTimingForTypeNamed:v6 withValue:a4];
}

+ (void)pushTimingForTypeNamed:(id)a3 withValue:(double)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"type";
  v11[1] = @"duration";
  v12[0] = a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  [a1 sendEvent:@"com.apple.nanobuddy.timing" with:v9];
  v10 = *MEMORY[0x277D85DE8];
}

+ (id)descriptionForCommTimingType:(unint64_t)a3
{
  v3 = &stru_286FA8098;
  if (a3 == 1)
  {
    v3 = @"OWD";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"RTT";
  }
}

+ (void)pushCommunicationTimingType:(unint64_t)a3 withValue:(double)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"type";
  v6 = [PBBridgeCAReporter descriptionForCommTimingType:a3];
  v10[1] = @"duration";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [a1 sendEvent:@"com.apple.nanobuddy.comm.timing" with:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)stringForSigninPair:(unint64_t)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", a3];
  }

  else
  {
    v4 = off_2799F3DB8[a3];
  }

  return v4;
}

+ (void)recordSigninEventPair:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v7[1] = @"value";
  v8[0] = @"pair";
  v4 = [a1 stringForSigninPair:a3];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [a1 sendEvent:@"com.apple.nanobuddy.signin" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)stringForSigninFollowup:(unint64_t)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", a3];
  }

  else
  {
    v4 = @"NoSignin";
  }

  return v4;
}

+ (void)recordSigninEventFollowup:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v7[1] = @"value";
  v8[0] = @"followup";
  v4 = [a1 stringForSigninFollowup:a3];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [a1 sendEvent:@"com.apple.nanobuddy.signin" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)stringForSigninEventDaily:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = @"SignedIn";
  }

  else if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", a3];
  }

  else
  {
    v4 = @"NotSignedIn";
  }

  return v4;
}

+ (void)recordSigninEventDaily:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v7[1] = @"value";
  v8[0] = @"daily";
  v4 = [a1 stringForSigninEventDaily:a3];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [a1 sendEvent:@"com.apple.nanobuddy.signin" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)stringForSigninEventPostPair:(unint64_t)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", a3];
  }

  else
  {
    v4 = @"SignedIn";
  }

  return v4;
}

+ (void)recordSigninEventPostPair:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v7[1] = @"value";
  v8[0] = @"postpair";
  v4 = [a1 stringForSigninEventPostPair:a3];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [a1 sendEvent:@"com.apple.nanobuddy.signin" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)recordAlreadyPairedAlertFiredAndWatchRecovered:(double)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"RecoveryInterval";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [a1 sendEvent:@"com.apple.Bridge.AlreadyPairedAlert.Recovered" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)recordPasscodeCreatedWithType:(int64_t)a3 wasChallenged:(BOOL)a4
{
  v4 = a4;
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"PasscodeType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = v6;
  v11[1] = @"HasBeenChallenged";
  v8 = MEMORY[0x277CBEC28];
  if (v4)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  v12[0] = v6;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [a1 sendEvent:@"com.apple.Bridge.PasscodeChoice" with:v9];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)recordPasscodeChallenge:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"ChallengeType";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [a1 sendEvent:@"com.apple.Bridge.PasscodeChallenge" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)recordTransitionedDynamicHelpViewFromType:(int64_t)a3 toType:(int64_t)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"FromType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10[1] = @"ToType";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [a1 sendEvent:@"com.apple.Bridge.DynamicHelpTransitioned" with:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)recordTinkerGuardianAcceptedDiagsAndUsage:(BOOL)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a3)
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
  [a1 sendEvent:@"com.apple.Bridge.Tinker.DiagsAndUsage" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)recordPairingTimeBackupsCount:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"BackupsCount";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [a1 sendEvent:@"com.apple.Bridge.BackupsCount" with:v5];

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)recordTabSelection:(int64_t)a3 classicCount:(unint64_t)a4 tinkerCount:(unint64_t)a5
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"type";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v14[0] = v8;
  v13[1] = @"classicCount";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v14[1] = v9;
  v13[2] = @"tinkerCount";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [a1 sendEvent:@"com.apple.Bridge.TabViewSelection" with:v11];

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_orientationHumanReadable:(int64_t)a3
{
  v3 = @"UnsetCrown";
  if (a3 == 2)
  {
    v3 = @"CrownOnLeft";
  }

  if (a3 == 1)
  {
    return @"CrownOnRight";
  }

  else
  {
    return v3;
  }
}

+ (id)_wristChoiceHumanReadable:(int64_t)a3
{
  v3 = @"UnsetHand";
  if (a3 == 2)
  {
    v3 = @"RightHand";
  }

  if (a3 == 1)
  {
    return @"LeftHand";
  }

  else
  {
    return v3;
  }
}

+ (void)recordUserInitiatedDeviceOrientationChange:(int64_t)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"DeviceOrientation";
  v4 = [a1 _orientationHumanReadable:a3];
  v8[1] = @"SettingsPlatform";
  v9[0] = v4;
  v5 = [a1 _reportingPlatform];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [a1 sendEvent:@"com.apple.Bridge.UserInitiatedDeviceOrientationChange" with:v6];

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)recordUserInitiatedDeviceWristChange:(int64_t)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"WristChoice";
  v4 = [a1 _wristChoiceHumanReadable:a3];
  v8[1] = @"SettingsPlatform";
  v9[0] = v4;
  v5 = [a1 _reportingPlatform];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [a1 sendEvent:@"com.apple.Bridge.UserInitiatedDeviceWristChange" with:v6];

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)_pairingStyle:(int64_t)a3
{
  v3 = @"PairingUnset";
  if (a3 == 2)
  {
    v3 = @"PairingAutomatic";
  }

  if (a3 == 1)
  {
    return @"PairingManual";
  }

  else
  {
    return v3;
  }
}

+ (void)recordPairingInitiatedDeviceOrientationChoice:(int64_t)a3 pairingSelectionType:(int64_t)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"DeviceOrientation";
  v6 = [a1 _orientationHumanReadable:a3];
  v10[1] = @"SettingsPlatform";
  v11[0] = v6;
  v7 = [a1 _pairingStyle:a4];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [a1 sendEvent:@"com.apple.Bridge.UserInitiatedDeviceOrientationChange" with:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)recordPairingInitiatedDeviceWristChoice:(int64_t)a3 pairingSelectionType:(int64_t)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"WristChoice";
  v6 = [a1 _wristChoiceHumanReadable:a3];
  v10[1] = @"SettingsPlatform";
  v11[0] = v6;
  v7 = [a1 _pairingStyle:a4];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [a1 sendEvent:@"com.apple.Bridge.UserInitiatedDeviceWristChange" with:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)recordMaterial:(unint64_t)a3 andSize:(unint64_t)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"Material";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10[1] = @"Size";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [a1 sendEvent:@"com.apple.Bridge.MaterialDetails" with:v8];

  v9 = *MEMORY[0x277D85DE8];
}

@end