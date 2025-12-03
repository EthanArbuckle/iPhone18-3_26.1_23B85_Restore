@interface MFMailboxPushStateService
+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error;
@end

@implementation MFMailboxPushStateService

+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error
{
  original = message;
  v10 = xpc_dictionary_get_value(original, [_MSMailServiceArguments UTF8String]);
  if (!v10)
  {
    v27 = +[NSAssertionHandler currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MFAccountsService.m" lineNumber:262 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];
  }

  v28 = xpc_dictionary_get_value(v10, [MSAccountsArgumentAccountUniqueIdentifiers UTF8String]);
  v11 = _CFXPCCreateCFObjectFromXPCObject();
  v12 = [v11 objectAtIndex:0];
  v13 = xpc_dictionary_get_value(v10, [MSAccountsArgumentMailboxRelativePath UTF8String]);
  v14 = _CFXPCCreateCFObjectFromXPCObject();

  v15 = xpc_dictionary_get_value(v10, [MSAccountsArgumentMailboxPushState UTF8String]);
  objectCopy = object;
  v17 = _CFXPCCreateCFObjectFromXPCObject();

  v18 = [MailAccount accountWithUniqueId:v12];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 mailboxUidForRelativePath:v14 create:0];
    if (v20)
    {
      if ([v17 BOOLValue])
      {
        v21 = [NSSet setWithObject:v20];
        [v19 changePushedMailboxUidsAdded:v21 deleted:0];
      }

      else
      {
        v21 = [NSSet setWithObject:v20];
        [v19 changePushedMailboxUidsAdded:0 deleted:v21];
      }

      v22 = 0;
    }

    else
    {
      v22 = [NSError errorWithDomain:MSAccountsErrorDomain code:1003 userInfo:0];
    }

    if (v22)
    {
      goto LABEL_13;
    }

LABEL_8:
    reply = xpc_dictionary_create_reply(original);
    xpc_dictionary_set_BOOL(reply, [MSAccountsResultSuccess UTF8String], 1);
    v24 = reply;
    *objectCopy = reply;

    goto LABEL_15;
  }

  v22 = [NSError errorWithDomain:MSAccountsErrorDomain code:1001 userInfo:0];
  if (!v22)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (error)
  {
    v25 = v22;
    *error = v22;
  }

LABEL_15:

  return v22 == 0;
}

@end