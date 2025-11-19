@interface MFKeyValueStoreService
+ (BOOL)handleMessage:(id)a3 connectionState:(id)a4 replyObject:(id *)a5 error:(id *)a6;
@end

@implementation MFKeyValueStoreService

+ (BOOL)handleMessage:(id)a3 connectionState:(id)a4 replyObject:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = xpc_dictionary_get_value(v9, [_MSMailServiceArguments UTF8String]);
  if (!v10)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"MFKeyValueStoreService.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"args"}];
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
    v14 = [v13 signature];
LABEL_11:
    v16 = v14;

    goto LABEL_15;
  }

  if ([v12 isEqualToString:@"UseAccountSignatures"])
  {
    v13 = +[MFSignatures sharedInstance];
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 useAccountSignatures]);
    goto LABEL_11;
  }

  v15 = EMUserDefaultAlwaysBCCSelf;
  if ([v12 isEqualToString:EMUserDefaultAlwaysBCCSelf])
  {
    v13 = +[NSUserDefaults em_userDefaults];
    v14 = [v13 valueForKey:v15];
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
  reply = xpc_dictionary_create_reply(v9);
  if (v16)
  {
    v18 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, [MSKeyValueStoreResultValue UTF8String], v18);
  }

  v19 = reply;
  *a5 = reply;

  return 1;
}

@end