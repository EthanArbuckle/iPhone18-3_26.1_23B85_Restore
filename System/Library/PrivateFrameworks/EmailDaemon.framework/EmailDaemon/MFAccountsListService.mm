@interface MFAccountsListService
+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error;
@end

@implementation MFAccountsListService

+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error
{
  original = message;
  xdict = xpc_dictionary_get_value(original, [_MSMailServiceArguments UTF8String]);
  if (!xdict)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"MFAccountsService.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];
  }

  v26 = xpc_dictionary_get_value(xdict, [MSAccountsArgumentKeys UTF8String]);
  v28 = _CFXPCCreateCFObjectFromXPCObject();
  string = xpc_dictionary_get_string(xdict, [MSAccountsArgumentBundleID UTF8String]);
  if (string)
  {
    v29 = [NSString stringWithUTF8String:string];
  }

  else
  {
    v29 = 0;
  }

  v10 = xpc_dictionary_get_value(xdict, [MSAccountsArgumentSourceAccountManagement UTF8String]);
  v30 = _CFXPCCreateCFObjectFromXPCObject();

  v11 = +[MCProfileConnection sharedConnection];
  v12 = [v11 filteredMailSheetAccountsForBundleID:v29 sourceAccountManagement:{objc_msgSend(v30, "intValue")}];

  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
  v14 = [(_MFResultsGenerator *)[MFAccountResultsGenerator alloc] initWithKeys:v28];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(MFAccountResultsGenerator *)v14 setAccount:v19];
          results = [(_MFResultsGenerator *)v14 results];
          [v13 addObject:results];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v16);
  }

  reply = xpc_dictionary_create_reply(original);
  v22 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(reply, [MSAccountsResultAccounts UTF8String], v22);
  v23 = reply;
  *object = reply;

  return 1;
}

@end