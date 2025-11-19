@interface DNDBinarySettingIntentHandler
- (void)handleGetSetting:(id)a3 completion:(id)a4;
- (void)handleSetBinarySetting:(id)a3 completion:(id)a4;
@end

@implementation DNDBinarySettingIntentHandler

- (void)handleSetBinarySetting:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  v11 = [v5 toDNDIntent];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001E2C;
  v14[3] = &unk_100008200;
  v15 = v5;
  v16 = v6;
  v17 = v10;
  v12 = v5;
  v13 = v6;
  [(DNDIntentHandler *)v7 handleToggleDoNotDisturb:v11 completion:v14];
}

- (void)handleGetSetting:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
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
  v12 = [v6 settingMetadata];

  v13 = [v11 initWithSettingMetadata:v12 numericValue:0 boundedValue:0 binaryValue:v9 labeledValue:0];
  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [v10 setSettingResponseDatas:v14];

  v5[2](v5, v10);
}

@end