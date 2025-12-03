@interface MFKeyValueStoreService
+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error;
@end

@implementation MFKeyValueStoreService

+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error
{
  messageCopy = message;
  v10 = xpc_dictionary_get_value(messageCopy, [_MSMailServiceArguments UTF8String]);
  if (!v10)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MFKeyValueStoreService.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"args"}];
  }

  v11 = _CFXPCCreateCFObjectFromXPCObject();
  v12 = [v11 objectForKey:MSKeyValueStoreArgumentKey];
  if (!v12)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  if ([v12 isEqualToString:@"SignatureKey"])
  {
    v13 = +[MFSignatures sharedInstance];
    signature = [v13 signature];
LABEL_11:
    v16 = signature;

    goto LABEL_15;
  }

  if ([v12 isEqualToString:@"UseAccountSignatures"])
  {
    v13 = +[MFSignatures sharedInstance];
    signature = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 useAccountSignatures]);
    goto LABEL_11;
  }

  v15 = EMUserDefaultAlwaysBCCSelf;
  if ([v12 isEqualToString:EMUserDefaultAlwaysBCCSelf])
  {
    v13 = +[NSUserDefaults em_userDefaults];
    signature = [v13 valueForKey:v15];
    goto LABEL_11;
  }

  if ([v12 isEqualToString:EMUserDefaultLinesOfPreviewKey])
  {
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[NSUserDefaults em_linesOfPreview]);
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

LABEL_15:
  reply = xpc_dictionary_create_reply(messageCopy);
  if (v16)
  {
    v18 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, [MSKeyValueStoreResultValue UTF8String], v18);
  }

  v19 = reply;
  *object = reply;

  return 1;
}

@end