@interface CRRecentContactsLibrary(CloudRecentsExtensions)
- (void)recordContactEventsForHeaders:()CloudRecentsExtensions recentsDomain:;
@end

@implementation CRRecentContactsLibrary(CloudRecentsExtensions)

- (void)recordContactEventsForHeaders:()CloudRecentsExtensions recentsDomain:
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v27 = a4;
  context = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E695DFA8];
  v7 = [v5 copyAddressListForTo];
  v8 = [v6 setWithArray:v7];

  v9 = [v5 copyAddressListForCc];
  [v8 addObjectsFromArray:v9];

  v10 = [v5 copyAddressListForBcc];
  [v8 addObjectsFromArray:v10];

  v11 = [v5 copyAddressListForReplyTo];
  [v8 addObjectsFromArray:v11];

  v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v12 = [MEMORY[0x1E695DF00] date];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    v16 = *MEMORY[0x1E6998F48];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [v18 ea_uncommentedAddress];
        v20 = [v18 cnaui_copyDisplayableAddressComment];
        v21 = [MEMORY[0x1E6998FC8] recentEventForAddress:v19 displayName:v20 kind:v16 date:v12 weight:0 metadata:0 options:1];
        if (v21)
        {
          [v29 addObject:v21];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v22 = [v5 copyAddressListForSender];
  v23 = [v22 firstObject];
  v24 = [v23 ea_uncommentedAddress];

  [a1 recordContactEvents:v29 recentsDomain:v27 sendingAddress:v24 completion:0];
  objc_autoreleasePoolPop(context);
}

@end