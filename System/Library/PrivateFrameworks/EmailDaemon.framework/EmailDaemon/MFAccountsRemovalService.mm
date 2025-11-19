@interface MFAccountsRemovalService
+ (BOOL)handleMessage:(id)a3 connectionState:(id)a4 replyObject:(id *)a5 error:(id *)a6;
+ (void)_deleteAccount:(id)a3;
@end

@implementation MFAccountsRemovalService

+ (BOOL)handleMessage:(id)a3 connectionState:(id)a4 replyObject:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v28 = a4;
  xdict = xpc_dictionary_get_value(v10, [_MSMailServiceArguments UTF8String]);
  if (!xdict)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"MFAccountsService.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];
  }

  v29 = xpc_dictionary_get_value(xdict, [MSAccountsArgumentAccountUniqueIdentifiers UTF8String]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = _CFXPCCreateCFObjectFromXPCObject();
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  v26 = a5;
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
          [a1 _deleteAccount:v17];
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
    if (a6)
    {
      v20 = v18;
      v21 = 0;
      *a6 = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(v10);
    xpc_dictionary_set_BOOL(reply, [MSAccountsResultSuccess UTF8String], 1);
    v23 = reply;
    *v26 = reply;

    v19 = 0;
    v21 = 1;
  }

  return v21;
}

+ (void)_deleteAccount:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v7 = v3;
    v4 = [v3 identifier];
    v5 = +[MailPersistentStorage sharedStorage];
    [v5 removeAllDataBelongingToAccount:v7];

    [v7 invalidateAndDelete];
    if (v4)
    {
      v6 = objc_alloc_init(TLToneManager);
      [v6 setCurrentToneIdentifier:0 forAlertType:5 topic:v4];
    }

    v3 = v7;
  }
}

@end