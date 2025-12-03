@interface MFMessageSaveService
+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error;
@end

@implementation MFMessageSaveService

+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error
{
  messageCopy = message;
  v11 = xpc_dictionary_get_value(messageCopy, [_MSMailServiceArguments UTF8String]);
  if (!v11)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MFDeliveryService.m" lineNumber:299 description:{@"Invalid parameter not satisfying: %@", @"args"}];
  }

  v12 = _CFXPCCreateCFObjectFromXPCObject();
  v13 = [v12 objectForKey:@"UniqueID"];
  v14 = [v12 objectForKey:MSSaveEmailArgumentKeyRFC822Data];
  v15 = [v12 objectForKey:MSSaveEmailArgumentKeyAutosaveIdentifier];
  if (!v14)
  {
    v16 = [NSError errorWithDomain:MSMailServiceErrorDomain code:7500 userInfo:0];
    goto LABEL_12;
  }

  if (v13)
  {
    [MailAccount accountWithUniqueId:v13];
  }

  else
  {
    +[LocalAccount localAccount];
  }
  v17 = ;
  if (!v17)
  {
    v16 = [NSError errorWithDomain:MSMailServiceErrorDomain code:7502 userInfo:0];
LABEL_12:
    v24 = v16;
    if (!error)
    {
LABEL_15:
      v25 = 0;
      goto LABEL_16;
    }

LABEL_13:
    v26 = v24;
    v25 = 0;
    *error = v24;
    goto LABEL_16;
  }

  v18 = [MFMailMessage messageWithRFC822Data:v14];
  if (!v18)
  {
    v24 = [NSError errorWithDomain:MSMailServiceErrorDomain code:7501 userInfo:0];

    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v19 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F51C;
  block[3] = &unk_1001573C0;
  v30 = v18;
  v31 = v17;
  v32 = v15;
  v20 = v17;
  v21 = v18;
  dispatch_async(v19, block);

  reply = xpc_dictionary_create_reply(messageCopy);
  xpc_dictionary_set_BOOL(reply, [MSSaveEmailResultKeySuccess UTF8String], 1);
  v23 = reply;
  *object = reply;

  v24 = 0;
  v25 = 1;
LABEL_16:

  return v25;
}

@end