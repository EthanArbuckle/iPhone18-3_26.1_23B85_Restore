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
  copyAddressListForTo = [v5 copyAddressListForTo];
  v8 = [v6 setWithArray:copyAddressListForTo];

  copyAddressListForCc = [v5 copyAddressListForCc];
  [v8 addObjectsFromArray:copyAddressListForCc];

  copyAddressListForBcc = [v5 copyAddressListForBcc];
  [v8 addObjectsFromArray:copyAddressListForBcc];

  copyAddressListForReplyTo = [v5 copyAddressListForReplyTo];
  [v8 addObjectsFromArray:copyAddressListForReplyTo];

  v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  date = [MEMORY[0x1E695DF00] date];
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
        ea_uncommentedAddress = [v18 ea_uncommentedAddress];
        cnaui_copyDisplayableAddressComment = [v18 cnaui_copyDisplayableAddressComment];
        v21 = [MEMORY[0x1E6998FC8] recentEventForAddress:ea_uncommentedAddress displayName:cnaui_copyDisplayableAddressComment kind:v16 date:date weight:0 metadata:0 options:1];
        if (v21)
        {
          [v29 addObject:v21];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  copyAddressListForSender = [v5 copyAddressListForSender];
  firstObject = [copyAddressListForSender firstObject];
  ea_uncommentedAddress2 = [firstObject ea_uncommentedAddress];

  [self recordContactEvents:v29 recentsDomain:v27 sendingAddress:ea_uncommentedAddress2 completion:0];
  objc_autoreleasePoolPop(context);
}

@end