@interface MFAccountsRemovalService
+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error;
+ (void)_deleteAccount:(id)account;
@end

@implementation MFAccountsRemovalService

+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error
{
  messageCopy = message;
  stateCopy = state;
  xdict = xpc_dictionary_get_value(messageCopy, [_MSMailServiceArguments UTF8String]);
  if (!xdict)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"MFAccountsService.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];
  }

  v29 = xpc_dictionary_get_value(xdict, [MSAccountsArgumentAccountUniqueIdentifiers UTF8String]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = _CFXPCCreateCFObjectFromXPCObject();
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  objectCopy = object;
  v13 = 0;
  if (v12)
  {
    v14 = *v32;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [MailAccount accountWithUniqueId:v16];
        if (v17)
        {
          [self _deleteAccount:v17];
        }

        else
        {
          if (!v13)
          {
            v13 = +[NSMutableArray array];
          }

          [v13 addObject:v16];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }

  if ([v13 count] && (+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", MSAccountsErrorDomain, 1001, 0), v18 = objc_claimAutoreleasedReturnValue(), (v19 = v18) != 0))
  {
    if (error)
    {
      v20 = v18;
      v21 = 0;
      *error = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    xpc_dictionary_set_BOOL(reply, [MSAccountsResultSuccess UTF8String], 1);
    v23 = reply;
    *objectCopy = reply;

    v19 = 0;
    v21 = 1;
  }

  return v21;
}

+ (void)_deleteAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v7 = accountCopy;
    identifier = [accountCopy identifier];
    v5 = +[MailPersistentStorage sharedStorage];
    [v5 removeAllDataBelongingToAccount:v7];

    [v7 invalidateAndDelete];
    if (identifier)
    {
      v6 = objc_alloc_init(TLToneManager);
      [v6 setCurrentToneIdentifier:0 forAlertType:5 topic:identifier];
    }

    accountCopy = v7;
  }
}

@end