@interface MFEmailModelSaveService
+ (void)handleMessage:(id)a3 connectionState:(id)a4 reply:(id)a5;
@end

@implementation MFEmailModelSaveService

+ (void)handleMessage:(id)a3 connectionState:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = xpc_dictionary_get_value(v8, [_MSMailServiceArguments UTF8String]);
  if (!v10)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"MFDeliveryService.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"args"}];
  }

  v11 = _CFXPCCreateCFObjectFromXPCObject();
  v12 = [v11 objectForKey:MSSaveEmailArgumentKeyEmail];
  v13 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005ED3C;
  v17[3] = &unk_100158578;
  v14 = v8;
  v18 = v14;
  v15 = v9;
  v19 = v15;
  [v13 mf_mailMessageFromModel:v17];
}

@end