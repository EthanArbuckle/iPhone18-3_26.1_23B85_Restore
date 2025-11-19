@interface MFEmailModelSendService
+ (void)handleMessage:(id)a3 connectionState:(id)a4 reply:(id)a5;
@end

@implementation MFEmailModelSendService

+ (void)handleMessage:(id)a3 connectionState:(id)a4 reply:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 shouldCancel])
  {
    v12 = [NSError errorWithDomain:MSMailServiceErrorDomain code:7334 userInfo:0];
    (*(v11 + 2))(v11, 0, 0, v12);
  }

  else
  {
    v12 = xpc_dictionary_get_value(v9, [_MSMailServiceArguments UTF8String]);
    if (!v12)
    {
      v20 = +[NSAssertionHandler currentHandler];
      [v20 handleFailureInMethod:a2 object:a1 file:@"MFDeliveryService.m" lineNumber:532 description:{@"Invalid parameter not satisfying: %@", @"args"}];
    }

    v13 = _CFXPCCreateCFObjectFromXPCObject();
    v14 = [v13 objectForKeyedSubscript:MSSendEmailArgumentKeyEmail];
    v15 = [v13 objectForKeyedSubscript:MSSendEmailArgumentKeyPlaySound];
    v16 = [v15 BOOLValue];

    v17 = [v13 objectForKeyedSubscript:MSSendEmailArgumentKeyHideMyEmailMessage];
    v18 = [v17 BOOLValue];

    v19 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:0];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10005FFE4;
    v21[3] = &unk_1001585A0;
    v24 = v16;
    v25 = v18;
    v22 = v9;
    v23 = v11;
    [v19 mf_mailMessageFromModel:v21];
  }
}

@end