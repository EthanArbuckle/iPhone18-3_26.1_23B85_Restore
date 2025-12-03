@interface MFEmailModelSaveService
+ (void)handleMessage:(id)message connectionState:(id)state reply:(id)reply;
@end

@implementation MFEmailModelSaveService

+ (void)handleMessage:(id)message connectionState:(id)state reply:(id)reply
{
  messageCopy = message;
  replyCopy = reply;
  v10 = xpc_dictionary_get_value(messageCopy, [_MSMailServiceArguments UTF8String]);
  if (!v10)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MFDeliveryService.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"args"}];
  }

  v11 = _CFXPCCreateCFObjectFromXPCObject();
  v12 = [v11 objectForKey:MSSaveEmailArgumentKeyEmail];
  v13 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005ED3C;
  v17[3] = &unk_100158578;
  v14 = messageCopy;
  v18 = v14;
  v15 = replyCopy;
  v19 = v15;
  [v13 mf_mailMessageFromModel:v17];
}

@end