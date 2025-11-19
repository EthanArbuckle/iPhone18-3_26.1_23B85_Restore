@interface IMDPLogsCollector
+ (id)_primaryAccountCountryCode;
+ (id)sharedInstance;
- (BOOL)logPrivatizedImageReceivedEvent:(BOOL)a3;
- (BOOL)logPrivatizedImageSentEvent:(BOOL)a3;
- (BOOL)logPrivatizedUIInteractionEvent:(unint64_t)a3;
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
    v3 = [objc_opt_class() _primaryAccountCountryCode];
    v4 = +[IMCommSafetySettingsManager sharedManager];
    v5 = [v4 childIsYoungAgeGroup];
    v6 = @"ageGroup1";
    if (v5)
    {
      v6 = @"ageGroup0";
    }

    v7 = v6;

    if (v3)
    {
      v8 = objc_alloc(MEMORY[0x1E699A0D8]);
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.messages.CommunicationSafety.%@.%@.%@", @"PrivatizedUIInteraction", v7, v3];
      v10 = [v8 initWithKey:v9];
      privatizedUIInteractionRecorder = v2->_privatizedUIInteractionRecorder;
      v2->_privatizedUIInteractionRecorder = v10;

      v12 = objc_alloc(MEMORY[0x1E699A0D8]);
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.messages.CommunicationSafety.%@.%@.%@", @"PrivatizedImageReceived", v7, v3];
      v14 = [v12 initWithKey:v13];
      privatizedImageReceivedRecorder = v2->_privatizedImageReceivedRecorder;
      v2->_privatizedImageReceivedRecorder = v14;

      v16 = objc_alloc(MEMORY[0x1E699A0D8]);
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.messages.CommunicationSafety.%@.%@.%@", @"PrivatizedImageSent", v7, v3];
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
  v2 = [MEMORY[0x1E698DC80] sharedInstance];
  v3 = [v2 primaryAuthKitAccount];
  if (v3)
  {
    v4 = [v2 appleIDCountryCodeForAccount:v3];
    v5 = [v4 lowercaseString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)logPrivatizedUIInteractionEvent:(unint64_t)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = +[IMCommSafetySettingsManager sharedManager];
  v6 = [v5 checkSensitivePhotosAnalyticsEnabled];

  if (!v6)
  {
    return 0;
  }

  v7 = [(IMDPLogsCollector *)self privatizedUIInteractionRecorder];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = *MEMORY[0x1E699A0F0];
  v14 = @"1";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [v7 record:v9 metadata:v10];

  return v11;
}

- (BOOL)logPrivatizedImageReceivedEvent:(BOOL)a3
{
  v3 = a3;
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = +[IMCommSafetySettingsManager sharedManager];
  v6 = [v5 checkSensitivePhotosAnalyticsEnabled];

  if (!v6)
  {
    return 0;
  }

  v7 = [(IMDPLogsCollector *)self privatizedImageReceivedRecorder];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = *MEMORY[0x1E699A0F0];
  v14 = @"1";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [v7 record:v9 metadata:v10];

  return v11;
}

- (BOOL)logPrivatizedImageSentEvent:(BOOL)a3
{
  v3 = a3;
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = +[IMCommSafetySettingsManager sharedManager];
  v6 = [v5 checkSensitivePhotosAnalyticsEnabled];

  if (!v6)
  {
    return 0;
  }

  v7 = [(IMDPLogsCollector *)self privatizedImageSentRecorder];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = *MEMORY[0x1E699A0F0];
  v14 = @"1";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [v7 record:v9 metadata:v10];

  return v11;
}

@end