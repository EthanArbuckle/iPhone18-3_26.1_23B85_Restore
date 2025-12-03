@interface IMDPLogsCollector
+ (id)_primaryAccountCountryCode;
+ (id)sharedInstance;
- (BOOL)logPrivatizedImageReceivedEvent:(BOOL)event;
- (BOOL)logPrivatizedImageSentEvent:(BOOL)event;
- (BOOL)logPrivatizedUIInteractionEvent:(unint64_t)event;
- (IMDPLogsCollector)init;
@end

@implementation IMDPLogsCollector

- (IMDPLogsCollector)init
{
  v21.receiver = self;
  v21.super_class = IMDPLogsCollector;
  v2 = [(IMDPLogsCollector *)&v21 init];
  if (v2)
  {
    _primaryAccountCountryCode = [objc_opt_class() _primaryAccountCountryCode];
    v4 = +[IMCommSafetySettingsManager sharedManager];
    childIsYoungAgeGroup = [v4 childIsYoungAgeGroup];
    v6 = @"ageGroup1";
    if (childIsYoungAgeGroup)
    {
      v6 = @"ageGroup0";
    }

    v7 = v6;

    if (_primaryAccountCountryCode)
    {
      v8 = objc_alloc(MEMORY[0x1E699A0D8]);
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.messages.CommunicationSafety.%@.%@.%@", @"PrivatizedUIInteraction", v7, _primaryAccountCountryCode];
      v10 = [v8 initWithKey:v9];
      privatizedUIInteractionRecorder = v2->_privatizedUIInteractionRecorder;
      v2->_privatizedUIInteractionRecorder = v10;

      v12 = objc_alloc(MEMORY[0x1E699A0D8]);
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.messages.CommunicationSafety.%@.%@.%@", @"PrivatizedImageReceived", v7, _primaryAccountCountryCode];
      v14 = [v12 initWithKey:v13];
      privatizedImageReceivedRecorder = v2->_privatizedImageReceivedRecorder;
      v2->_privatizedImageReceivedRecorder = v14;

      v16 = objc_alloc(MEMORY[0x1E699A0D8]);
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.messages.CommunicationSafety.%@.%@.%@", @"PrivatizedImageSent", v7, _primaryAccountCountryCode];
      v18 = [v16 initWithKey:v17];
      privatizedImageSentRecorder = v2->_privatizedImageSentRecorder;
      v2->_privatizedImageSentRecorder = v18;
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1ED8CA420 != -1)
  {
    sub_1A88C38C8();
  }

  v3 = qword_1ED8CA388;

  return v3;
}

+ (id)_primaryAccountCountryCode
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80] primaryAuthKitAccount];
  if (primaryAuthKitAccount)
  {
    v4 = [mEMORY[0x1E698DC80] appleIDCountryCodeForAccount:primaryAuthKitAccount];
    lowercaseString = [v4 lowercaseString];
  }

  else
  {
    lowercaseString = 0;
  }

  return lowercaseString;
}

- (BOOL)logPrivatizedUIInteractionEvent:(unint64_t)event
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = +[IMCommSafetySettingsManager sharedManager];
  checkSensitivePhotosAnalyticsEnabled = [v5 checkSensitivePhotosAnalyticsEnabled];

  if (!checkSensitivePhotosAnalyticsEnabled)
  {
    return 0;
  }

  privatizedUIInteractionRecorder = [(IMDPLogsCollector *)self privatizedUIInteractionRecorder];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:event];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = *MEMORY[0x1E699A0F0];
  v14 = @"1";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [privatizedUIInteractionRecorder record:v9 metadata:v10];

  return v11;
}

- (BOOL)logPrivatizedImageReceivedEvent:(BOOL)event
{
  eventCopy = event;
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = +[IMCommSafetySettingsManager sharedManager];
  checkSensitivePhotosAnalyticsEnabled = [v5 checkSensitivePhotosAnalyticsEnabled];

  if (!checkSensitivePhotosAnalyticsEnabled)
  {
    return 0;
  }

  privatizedImageReceivedRecorder = [(IMDPLogsCollector *)self privatizedImageReceivedRecorder];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:eventCopy];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = *MEMORY[0x1E699A0F0];
  v14 = @"1";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [privatizedImageReceivedRecorder record:v9 metadata:v10];

  return v11;
}

- (BOOL)logPrivatizedImageSentEvent:(BOOL)event
{
  eventCopy = event;
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = +[IMCommSafetySettingsManager sharedManager];
  checkSensitivePhotosAnalyticsEnabled = [v5 checkSensitivePhotosAnalyticsEnabled];

  if (!checkSensitivePhotosAnalyticsEnabled)
  {
    return 0;
  }

  privatizedImageSentRecorder = [(IMDPLogsCollector *)self privatizedImageSentRecorder];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:eventCopy];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = *MEMORY[0x1E699A0F0];
  v14 = @"1";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [privatizedImageSentRecorder record:v9 metadata:v10];

  return v11;
}

@end