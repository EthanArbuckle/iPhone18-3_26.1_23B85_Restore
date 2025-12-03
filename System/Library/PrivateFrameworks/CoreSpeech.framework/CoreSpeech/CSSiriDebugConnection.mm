@interface CSSiriDebugConnection
+ (void)launchSiriDebugAppWithMessage:(id)message;
@end

@implementation CSSiriDebugConnection

+ (void)launchSiriDebugAppWithMessage:(id)message
{
  messageCopy = message;
  if (CSIsInternalBuild() && CSIsIPhone())
  {
    v4 = [[AFUIApplicationSiriTaskDeliverer alloc] initWithAppBundleIdentifier:@"com.apple.siri.SiriDebug"];
    v5 = [[AFSiriTaskmaster alloc] initWithTaskDeliverer:v4];
    v6 = [[AFSiriDebugUIRequest alloc] initWithMessage:messageCopy makeAppFrontmost:0];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100060504;
    v9[3] = &unk_100253C20;
    v10 = messageCopy;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000605C0;
    v7[3] = &unk_10024F538;
    v8 = v10;
    [v5 handleSiriRequest:v6 deliveryHandler:v9 completionHandler:v7];
  }
}

@end