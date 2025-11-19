@interface CHUISWidgetRequestLaunchAction
- (CHUISWidgetRequestLaunchAction)initWithLaunchRequest:(id)a3 responder:(id)a4;
- (id)launchRequest;
@end

@implementation CHUISWidgetRequestLaunchAction

- (CHUISWidgetRequestLaunchAction)initWithLaunchRequest:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setObject:v6 forSetting:1];
  v9 = [v8 copy];
  v12.receiver = self;
  v12.super_class = CHUISWidgetRequestLaunchAction;
  v10 = [(CHUISWidgetRequestLaunchAction *)&v12 initWithInfo:v9 responder:v7];

  return v10;
}

- (id)launchRequest
{
  v2 = [(CHUISWidgetRequestLaunchAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end