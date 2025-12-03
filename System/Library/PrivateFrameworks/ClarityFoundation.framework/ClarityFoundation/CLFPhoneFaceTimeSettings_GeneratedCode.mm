@interface CLFPhoneFaceTimeSettings_GeneratedCode
+ (CLFPhoneFaceTimeSettings)sharedInstance;
+ (id)allPreferenceSelectorsAsStrings;
- (CLFPhoneFaceTimeSettings_GeneratedCode)init;
@end

@implementation CLFPhoneFaceTimeSettings_GeneratedCode

+ (CLFPhoneFaceTimeSettings)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CLFPhoneFaceTimeSettings_GeneratedCode sharedInstance];
  }

  v3 = sharedInstance_SharedSettings_0;

  return v3;
}

- (CLFPhoneFaceTimeSettings_GeneratedCode)init
{
  v13.receiver = self;
  v13.super_class = CLFPhoneFaceTimeSettings_GeneratedCode;
  v2 = [(CLFBaseCommunicationLimitSettings_GeneratedCode *)&v13 init];
  v3 = v2;
  if (v2)
  {
    preferenceKeysBySelectorName = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_inCallKeypadEnabled);
    [preferenceKeysBySelectorName setObject:@"InCallKeypadEnabled" forKeyedSubscript:v5];

    preferenceKeysBySelectorName2 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_muteEnabled);
    [preferenceKeysBySelectorName2 setObject:@"MuteEnabled" forKeyedSubscript:v7];

    preferenceKeysBySelectorName3 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_recentsEnabled);
    [preferenceKeysBySelectorName3 setObject:@"RecentsEnabled" forKeyedSubscript:v9];

    preferenceKeysBySelectorName4 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v11 = NSStringFromSelector(sel_speakerOptionEnabled);
    [preferenceKeysBySelectorName4 setObject:@"SpeakerOptionEnabled" forKeyedSubscript:v11];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___CLFPhoneFaceTimeSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v11, sel_allPreferenceSelectorsAsStrings);
  v3 = NSStringFromSelector(sel_inCallKeypadEnabled);
  v12[0] = v3;
  v4 = NSStringFromSelector(sel_muteEnabled);
  v12[1] = v4;
  v5 = NSStringFromSelector(sel_recentsEnabled);
  v12[2] = v5;
  v6 = NSStringFromSelector(sel_speakerOptionEnabled);
  v12[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v8 = [v2 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end