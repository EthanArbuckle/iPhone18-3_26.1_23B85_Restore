@interface MFEmailModelSendService
+ (void)handleMessage:(id)message connectionState:(id)state reply:(id)reply;
@end

@implementation MFEmailModelSendService

+ (void)handleMessage:(id)message connectionState:(id)state reply:(id)reply
{
  messageCopy = message;
  stateCopy = state;
  replyCopy = reply;
  if ([stateCopy shouldCancel])
  {
    v12 = [NSError errorWithDomain:MSMailServiceErrorDomain code:7334 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, 0, v12);
  }

  else
  {
    v12 = xpc_dictionary_get_value(messageCopy, [_MSMailServiceArguments UTF8String]);
    if (!v12)
    {
      v20 = +[NSAssertionHandler currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"MFDeliveryService.m" lineNumber:532 description:{@"Invalid parameter not satisfying: %@", @"args"}];
    }

    v13 = _CFXPCCreateCFObjectFromXPCObject();
    v14 = [v13 objectForKeyedSubscript:MSSendEmailArgumentKeyEmail];
    v15 = [v13 objectForKeyedSubscript:MSSendEmailArgumentKeyPlaySound];
    bOOLValue = [v15 BOOLValue];

    v17 = [v13 objectForKeyedSubscript:MSSendEmailArgumentKeyHideMyEmailMessage];
    bOOLValue2 = [v17 BOOLValue];

    v19 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:0];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10005FFE4;
    v21[3] = &unk_1001585A0;
    v24 = bOOLValue;
    v25 = bOOLValue2;
    v22 = messageCopy;
    v23 = replyCopy;
    [v19 mf_mailMessageFromModel:v21];
  }
}

@end