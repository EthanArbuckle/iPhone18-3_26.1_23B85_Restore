@interface DNDBinarySettingIntentHandler
- (void)handleGetSetting:(id)setting completion:(id)completion;
- (void)handleSetBinarySetting:(id)setting completion:(id)completion;
@end

@implementation DNDBinarySettingIntentHandler

- (void)handleSetBinarySetting:(id)setting completion:(id)completion
{
  settingCopy = setting;
  completionCopy = completion;
  v7 = objc_alloc_init(DNDIntentHandler);
  v8 = [DNDStateService serviceForClientIdentifier:@"com.apple.DoNotDisturb.Intents"];
  v9 = [v8 queryCurrentStateWithError:0];
  if ([v9 isActive])
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  toDNDIntent = [settingCopy toDNDIntent];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001E2C;
  v14[3] = &unk_100008200;
  v15 = settingCopy;
  v16 = completionCopy;
  v17 = v10;
  v12 = settingCopy;
  v13 = completionCopy;
  [(DNDIntentHandler *)v7 handleToggleDoNotDisturb:toDNDIntent completion:v14];
}

- (void)handleGetSetting:(id)setting completion:(id)completion
{
  completionCopy = completion;
  settingCopy = setting;
  v7 = [DNDStateService serviceForClientIdentifier:@"com.apple.DoNotDisturb.Intents"];
  v8 = [v7 queryCurrentStateWithError:0];
  if ([v8 isActive])
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [[INGetSettingIntentResponse alloc] initWithCode:3 userActivity:0];
  v11 = [INGetSettingResponseData alloc];
  settingMetadata = [settingCopy settingMetadata];

  v13 = [v11 initWithSettingMetadata:settingMetadata numericValue:0 boundedValue:0 binaryValue:v9 labeledValue:0];
  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [v10 setSettingResponseDatas:v14];

  completionCopy[2](completionCopy, v10);
}

@end