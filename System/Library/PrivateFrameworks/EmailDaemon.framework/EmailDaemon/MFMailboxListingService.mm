@interface MFMailboxListingService
+ (BOOL)handleMessage:(id)a3 connectionState:(id)a4 replyObject:(id *)a5 error:(id *)a6;
@end

@implementation MFMailboxListingService

+ (BOOL)handleMessage:(id)a3 connectionState:(id)a4 replyObject:(id *)a5 error:(id *)a6
{
  original = a3;
  v10 = xpc_dictionary_get_value(original, [_MSMailServiceArguments UTF8String]);
  if (!v10)
  {
    v32 = +[NSAssertionHandler currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"MFAccountsService.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];
  }

  v11 = xpc_dictionary_get_value(v10, [MSAccountsArgumentAccountUniqueIdentifiers UTF8String]);
  v34 = _CFXPCCreateCFObjectFromXPCObject();
  v38 = [v34 objectAtIndex:0];
  v12 = xpc_dictionary_get_value(v10, [MSAccountsArgumentKeys UTF8String]);
  v33 = a5;

  v35 = v12;
  v36 = _CFXPCCreateCFObjectFromXPCObject();
  v13 = [MailAccount accountWithUniqueId:v38];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 allMailboxUidsSortedWithSpecialsAtTopIncludingLocals:0];
    v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
    v17 = [(_MFResultsGenerator *)[MFMailboxResultsGenerator alloc] initWithKeys:v36];
    v18 = [v14 pushedMailboxUids];
    [(MFMailboxResultsGenerator *)v17 setPushedMailboxUids:v18];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = v15;
    v20 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v20)
    {
      v21 = *v40;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(MFMailboxResultsGenerator *)v17 setMailboxUid:*(*(&v39 + 1) + 8 * i)];
          v23 = [(_MFResultsGenerator *)v17 results];
          [v16 addObject:v23];
        }

        v20 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v20);
    }

    goto LABEL_12;
  }

  v30 = [NSError errorWithDomain:MSAccountsErrorDomain code:1001 userInfo:0];
  v27 = v30;
  if (!v30)
  {
    v16 = 0;
LABEL_12:
    reply = xpc_dictionary_create_reply(original);
    v25 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, [MSAccountsResultMailboxes UTF8String], v25);
    v26 = reply;
    *v33 = reply;

    v27 = 0;
    v28 = 1;
    goto LABEL_13;
  }

  if (a6)
  {
    v31 = v30;
    v28 = 0;
    *a6 = v27;
  }

  else
  {
    v28 = 0;
  }

LABEL_13:

  return v28;
}

@end