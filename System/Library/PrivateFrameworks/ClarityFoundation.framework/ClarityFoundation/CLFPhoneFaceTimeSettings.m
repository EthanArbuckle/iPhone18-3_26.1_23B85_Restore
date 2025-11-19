@interface CLFPhoneFaceTimeSettings
- (BOOL)dialerKeypadEnabled;
- (id)legacyOutgoingCommunicationLimit;
- (void)migrateCommunicationLimitsIfNecessary;
@end

@implementation CLFPhoneFaceTimeSettings

uint64_t __56__CLFPhoneFaceTimeSettings_GeneratedCode_sharedInstance__block_invoke()
{
  sharedInstance_SharedSettings_0 = objc_alloc_init(CLFPhoneFaceTimeSettings);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)dialerKeypadEnabled
{
  v2 = [(CLFBaseCommunicationLimitSettings *)self outgoingCommunicationLimit];
  v3 = [v2 isEqualToString:@"everyone"];

  return v3;
}

- (id)legacyOutgoingCommunicationLimit
{
  v2 = [(CLFPhoneFaceTimeSettings *)self legacyDialerKeypadEnabled];
  v3 = &CLFCommunicationLimitEveryone;
  if (!v2)
  {
    v3 = &CLFCommunicationLimitSelectedContacts;
  }

  v4 = *v3;

  return v4;
}

- (void)migrateCommunicationLimitsIfNecessary
{
  v3.receiver = self;
  v3.super_class = CLFPhoneFaceTimeSettings;
  [(CLFBaseCommunicationLimitSettings *)&v3 migrateCommunicationLimitsIfNecessary];
  [(AXBaseSettings *)self setValue:0 forPreferenceKey:@"DialerKeypadEnabled"];
}

@end