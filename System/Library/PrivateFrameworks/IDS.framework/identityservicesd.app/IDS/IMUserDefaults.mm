@interface IMUserDefaults
+ (BOOL)abcOnQueryCacheDifference;
+ (BOOL)bypassHomeNumberCarrierCheck;
+ (BOOL)bypassRegistrationControlStatusCheck;
+ (BOOL)clearStewieStoreOnLaunch;
+ (BOOL)forceFlushOnDeliveryReceipt;
+ (BOOL)forceStewieHTTP;
+ (BOOL)forceStewieQA1;
+ (BOOL)forceStewieQA2;
+ (BOOL)handleInFirewallAllowList:(id)a3;
+ (BOOL)isAbsintheV4Enabled;
+ (BOOL)isAlwaysPairAsTinker;
+ (BOOL)isBAACertDisabled;
+ (BOOL)isDebugPiscoLoggingEnabled;
+ (BOOL)isDroppingMadridMessages;
+ (BOOL)isFakingEveryUnlockAsFirstUnlock;
+ (BOOL)isFirewallEnabled;
+ (BOOL)isForcefulECCEnabled;
+ (BOOL)isForcefulLegacyEnabled;
+ (BOOL)isForcingAttachmentMessage;
+ (BOOL)isForcingOnePerFanout;
+ (BOOL)isKTAsyncEnrollmentDisabled;
+ (BOOL)isKeyTransparencyAccountKeyCircleDisabled;
+ (BOOL)isKeyTransparencyAggressiveVerificationScheduleEnabled;
+ (BOOL)isKeyTransparencyCloudKitCircleDisabled;
+ (BOOL)isKeyTransparencyDisabled;
+ (BOOL)isKeyTransparencyPokeWithKeysEnabled;
+ (BOOL)isKeyTransparencyUIEnabled;
+ (BOOL)isPiscoDisabled;
+ (BOOL)keyTransparencyDropOptInMessageAfterSending;
+ (BOOL)keyTransparencyDropOptInMessageBeforeSending;
+ (BOOL)shouldDropKTAccountKeyOnlyDuringReg;
+ (BOOL)shouldDropKTAccountKeySignatureOnlyDuringReg;
+ (BOOL)shouldDropKTAccountKeySignatureRequestDuringReg;
+ (BOOL)shouldDropKTAccountKeySignatureRequestOnLaunch;
+ (BOOL)shouldDropKTAccountKeySignatureResponseDuringReg;
+ (BOOL)shouldDropKTAccountKeySignatureResponseOnLaunch;
+ (BOOL)shouldFirewallDropForAllCategories;
+ (BOOL)shouldForceFailKTKVSSync;
+ (BOOL)useKeyTransparencyAccountStatusDefault;
+ (id)configurationForOptions:(id)a3;
+ (id)fileForOptions:(id)a3;
+ (id)fileTypeForOptions:(id)a3;
+ (id)fixedInterface;
+ (id)fixedInterfaceDestination;
+ (id)secondaryRegistrationDisabledDiceRoll;
+ (id)stewieProvisionURLOverride;
+ (int64_t)coalesceDelayOverride;
+ (int64_t)excessiveQueryCacheEntriesThreshold;
+ (int64_t)homeNumberSecondsUntilExpiration;
+ (int64_t)keyTransparencyAccountStatusDefault;
+ (int64_t)keyTransparencyCKContainerExpiryOverride;
+ (int64_t)keyTransparencyFirstGossipChance;
+ (int64_t)keyTransparencySubsequentGossipChance;
+ (int64_t)offGridModeDisableWhenOnlineForTimeInterval;
+ (int64_t)serviceConstraintOverride:(id)a3;
+ (int64_t)sessionNetworkAvailabilityCheckOverrideBehavior;
+ (int64_t)stewieDebounceWindow;
+ (int64_t)stewieHeartbeatInterval;
+ (void)setSecondaryRegistrationDisabledDiceRoll:(id)a3;
@end

@implementation IMUserDefaults

+ (int64_t)keyTransparencyFirstGossipChance
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"IDSKeyTransparencyFirstGossipChanceDefault"];

  return v3;
}

+ (BOOL)isFakingEveryUnlockAsFirstUnlock
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"EveryUnlockAsFirstUnlock"];

  return v3;
}

+ (int64_t)sessionNetworkAvailabilityCheckOverrideBehavior
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"NetworkAvailabilityCheckOverrideValue"];
  if (v3 >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)fixedInterface
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 stringForKey:@"FixedInterface"];

  return v3;
}

+ (id)fixedInterfaceDestination
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 stringForKey:@"FixedInterfaceDestination"];

  return v3;
}

+ (BOOL)isPiscoDisabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"DisablePisco"];

  return v3;
}

+ (BOOL)isAbsintheV4Enabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"EnableAbsintheV4Option"];

  return v3;
}

+ (BOOL)isBAACertDisabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"DisableBAACertOption"];

  return v3;
}

+ (BOOL)isDebugPiscoLoggingEnabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"EnableDebugPiscoLogging"];

  return v3;
}

+ (BOOL)isAlwaysPairAsTinker
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"AlwaysPairAsTinker"];

  return v3;
}

+ (BOOL)isForcefulECCEnabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"ForcefulECC"];

  return v3;
}

+ (BOOL)isForcefulLegacyEnabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"ForcefulLegacy"];

  return v3;
}

+ (BOOL)isKTAsyncEnrollmentDisabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"DisableKTAsyncEnrollment"];

  return v3;
}

+ (BOOL)isKeyTransparencyDisabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"DisableKeyTransparency"];

  return v3;
}

+ (BOOL)isKeyTransparencyPokeWithKeysEnabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"EnableKeyTransparencyPokeWithKeys"];

  return v3;
}

+ (BOOL)isKeyTransparencyCloudKitCircleDisabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"DisableKeyTransparencyCloudKitCircle"];

  return v3;
}

+ (BOOL)isKeyTransparencyAccountKeyCircleDisabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"DisableKeyTransparencyAccountKeyCircle"];

  return v3;
}

+ (BOOL)isKeyTransparencyAggressiveVerificationScheduleEnabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"EnableKeyTransparencyAggressiveVerificationSchedule"];

  return v3;
}

+ (BOOL)isKeyTransparencyUIEnabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"EnableKeyTransparencyUI"];

  return v3;
}

+ (BOOL)shouldDropKTAccountKeySignatureRequestDuringReg
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"IDSKTDropAccountKeySignatureRequestDuringReg"];

  return v3;
}

+ (BOOL)shouldDropKTAccountKeySignatureResponseDuringReg
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"IDSKTDropAccountKeySignatureResponseDuringReg"];

  return v3;
}

+ (BOOL)shouldDropKTAccountKeySignatureRequestOnLaunch
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"IDSKTDropAccountKeySignatureRequestOnLaunch"];

  return v3;
}

+ (BOOL)shouldDropKTAccountKeySignatureResponseOnLaunch
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"IDSKTDropAccountKeySignatureResponseOnLaunch"];

  return v3;
}

+ (BOOL)shouldDropKTAccountKeyOnlyDuringReg
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"IDSKTDropPublicKeyFromResponseDuringReg"];

  return v3;
}

+ (BOOL)shouldDropKTAccountKeySignatureOnlyDuringReg
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"IDSKTDropSignatureFromResponseDuringReg"];

  return v3;
}

+ (BOOL)shouldForceFailKTKVSSync
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"IDSForceFailKVSSync"];

  return v3;
}

+ (int64_t)keyTransparencySubsequentGossipChance
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"IDSKeyTransparencySubsequentGossipChanceDefault"];

  return v3;
}

+ (BOOL)keyTransparencyDropOptInMessageBeforeSending
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"IDSKeyTransparencyDropOptInMessageBeforeSending"];

  return v3;
}

+ (BOOL)keyTransparencyDropOptInMessageAfterSending
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"IDSKeyTransparencyDropOptInMessageAfterSending"];

  return v3;
}

+ (BOOL)useKeyTransparencyAccountStatusDefault
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"IDSKeyTransparencyUseAccountStatusDefault"];

  return v3;
}

+ (int64_t)keyTransparencyAccountStatusDefault
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"IDSKeyTransparencyAccountStatusDefault"];

  return v3;
}

+ (BOOL)forceFlushOnDeliveryReceipt
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"ForceFlushOnDeliveryReceipt"];

  return v3;
}

+ (BOOL)isForcingAttachmentMessage
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"ForceAttachmentMessage"];

  return v3;
}

+ (BOOL)isForcingOnePerFanout
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"ForceOnePerFanout"];

  return v3;
}

+ (BOOL)isDroppingMadridMessages
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"DropMadridMessages"];

  return v3;
}

+ (BOOL)bypassHomeNumberCarrierCheck
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"BypassHomeNumberCarrierCheck"];

  return v3;
}

+ (int64_t)homeNumberSecondsUntilExpiration
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"HomeNumberSecondsUntilExpiration"];

  return v3;
}

+ (int64_t)coalesceDelayOverride
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"CoalesceDelayOverride"];

  return v3;
}

+ (int64_t)keyTransparencyCKContainerExpiryOverride
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"KeyTransparencyCKContainerExpiryOverride"];

  return v3;
}

+ (BOOL)forceStewieQA2
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"ForceStewieQA2"];

  return v3;
}

+ (BOOL)forceStewieQA1
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"ForceStewieQA1"];

  return v3;
}

+ (id)stewieProvisionURLOverride
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 stringForKey:@"StewieProvisionURLOverride"];

  return v3;
}

+ (BOOL)forceStewieHTTP
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"ForceStewieHTTP"];

  return v3;
}

+ (int64_t)stewieDebounceWindow
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"StewieDebounceWindow"];

  return v3;
}

+ (BOOL)clearStewieStoreOnLaunch
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"ClearStewieStoreOnLaunch"];

  return v3;
}

+ (int64_t)stewieHeartbeatInterval
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"StewieHeartbeatInterval"];

  return v3;
}

+ (BOOL)bypassRegistrationControlStatusCheck
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"BypassRegistrationControlStatusCheck"];

  return v3;
}

+ (id)configurationForOptions:(id)a3
{
  v3 = a3;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v5 = [v3 bundleID];
  v6 = [v3 name];

  v7 = [NSString stringWithFormat:@"global-bag-config-%@-%@", v5, v6];

  v8 = [v4 dictionaryForKey:v7];

  return v8;
}

+ (id)fileForOptions:(id)a3
{
  v3 = a3;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v5 = [v3 bundleID];
  v6 = [v3 name];

  v7 = [NSString stringWithFormat:@"global-bag-file-%@-%@", v5, v6];

  v8 = [v4 dataForKey:v7];

  return v8;
}

+ (id)fileTypeForOptions:(id)a3
{
  v3 = a3;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v5 = [v3 bundleID];
  v6 = [v3 name];

  v7 = [NSString stringWithFormat:@"global-bag-filetype-%@-%@", v5, v6];

  v8 = [v4 stringForKey:v7];

  return v8;
}

+ (BOOL)isFirewallEnabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  if ([v2 BOOLForKey:@"FirewallOn"] & 1) != 0 || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKey:inDomain:", @"LDMGlobalEnabled", NSGlobalDomain), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v4, v3, (v5))
  {
    v6 = 1;
  }

  else
  {
    v7 = [IMWeakLinkClass() shared];
    v6 = [v7 enabled];
  }

  return v6;
}

+ (BOOL)shouldFirewallDropForAllCategories
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"FirewallBlocksAll"];

  return v3;
}

+ (BOOL)handleInFirewallAllowList:(id)a3
{
  v3 = a3;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v5 = [NSString stringWithFormat:@"%@%@", @"FirewallAllowList-", v3];

  LOBYTE(v3) = [v4 BOOLForKey:v5];
  return v3;
}

+ (int64_t)serviceConstraintOverride:(id)a3
{
  v3 = a3;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v5 = [NSString stringWithFormat:@"%@%@", @"ServiceConstraintOverride-", v3];

  v6 = [v4 integerForKey:v5];
  return v6;
}

+ (int64_t)excessiveQueryCacheEntriesThreshold
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"ExcessiveQueryCacheEntriesThreshold"];

  return v3;
}

+ (BOOL)abcOnQueryCacheDifference
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 BOOLForKey:@"ABCOnQueryCacheDifference"];

  return v3;
}

+ (id)secondaryRegistrationDisabledDiceRoll
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 objectForKey:@"SecondaryRegistrationDisabledDiceRoll"];

  return v3;
}

+ (void)setSecondaryRegistrationDisabledDiceRoll:(id)a3
{
  v3 = a3;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  [v4 setObject:v3 forKey:@"SecondaryRegistrationDisabledDiceRoll"];
}

+ (int64_t)offGridModeDisableWhenOnlineForTimeInterval
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  v3 = [v2 integerForKey:@"ExcessiveQueryCacheEntriesThreshold"];

  return v3;
}

@end