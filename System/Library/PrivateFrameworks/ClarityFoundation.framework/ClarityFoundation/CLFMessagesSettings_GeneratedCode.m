@interface CLFMessagesSettings_GeneratedCode
+ (CLFMessagesSettings)sharedInstance;
+ (id)allPreferenceSelectorsAsStrings;
- (BOOL)photoKeyboardEnabled;
- (CLFMessagesSettings_GeneratedCode)init;
@end

@implementation CLFMessagesSettings_GeneratedCode

+ (CLFMessagesSettings)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[CLFMessagesSettings_GeneratedCode sharedInstance];
  }

  v3 = sharedInstance_SharedSettings_2;

  return v3;
}

- (CLFMessagesSettings_GeneratedCode)init
{
  v17.receiver = self;
  v17.super_class = CLFMessagesSettings_GeneratedCode;
  v2 = [(CLFBaseCommunicationLimitSettings_GeneratedCode *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_conversationDetailsEnabled);
    [v4 setObject:@"ConversationDetailsEnabled" forKeyedSubscript:v5];

    v6 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_emojiKeyboardEnabled);
    [v6 setObject:@"EmojiKeyboardEnabled" forKeyedSubscript:v7];

    v8 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_photoKeyboardEnabled);
    [v8 setObject:@"PhotoKeyboardEnabled" forKeyedSubscript:v9];

    v10 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v11 = NSStringFromSelector(sel_softwareKeyboardEnabled);
    [v10 setObject:@"SoftwareKeyboardEnabled" forKeyedSubscript:v11];

    v12 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v13 = NSStringFromSelector(sel_tapToSpeakEnabled);
    [v12 setObject:@"TapToSpeakEnabled" forKeyedSubscript:v13];

    v14 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v15 = NSStringFromSelector(sel_videoRecordingEnabled);
    [v14 setObject:@"VideoRecordingEnabled" forKeyedSubscript:v15];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v14[6] = *MEMORY[0x1E69E9840];
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___CLFMessagesSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v13, sel_allPreferenceSelectorsAsStrings);
  v3 = NSStringFromSelector(sel_conversationDetailsEnabled);
  v14[0] = v3;
  v4 = NSStringFromSelector(sel_emojiKeyboardEnabled);
  v14[1] = v4;
  v5 = NSStringFromSelector(sel_photoKeyboardEnabled);
  v14[2] = v5;
  v6 = NSStringFromSelector(sel_softwareKeyboardEnabled);
  v14[3] = v6;
  v7 = NSStringFromSelector(sel_tapToSpeakEnabled);
  v14[4] = v7;
  v8 = NSStringFromSelector(sel_videoRecordingEnabled);
  v14[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:6];
  v10 = [v2 arrayByAddingObjectsFromArray:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)photoKeyboardEnabled
{
  v3 = [(CLFMessagesSettings_GeneratedCode *)self softwareKeyboardEnabled];
  v4 = [(CLFMessagesSettings_GeneratedCode *)self emojiKeyboardEnabled]+ v3;
  v5 = v4 + [(CLFMessagesSettings_GeneratedCode *)self videoRecordingEnabled]> 1;

  return [(AXBaseSettings *)self BOOLValueForPreferenceKey:@"PhotoKeyboardEnabled" defaultValue:v5];
}

@end