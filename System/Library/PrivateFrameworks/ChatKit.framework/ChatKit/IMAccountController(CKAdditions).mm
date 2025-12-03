@interface IMAccountController(CKAdditions)
- (id)__ck_bestAccountForAddress:()CKAdditions;
- (id)__ck_bestAccountForAddresses:()CKAdditions;
- (id)__ck_bestAccountForAddresses:()CKAdditions withFallbackService:;
- (id)__ck_defaultAccountForService:()CKAdditions;
- (id)fallbackServiceForAddresses:()CKAdditions;
@end

@implementation IMAccountController(CKAdditions)

- (id)__ck_defaultAccountForService:()CKAdditions
{
  v3 = a3;
  if (CKIsRunningUITests())
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    simulatedChats = [mEMORY[0x1E69A5AF8] simulatedChats];
    firstObject = [simulatedChats firstObject];

    account = [firstObject account];
  }

  else
  {
    account = IMPreferredAccountForService();
  }

  return account;
}

- (id)__ck_bestAccountForAddresses:()CKAdditions
{
  v4 = a3;
  v5 = [self fallbackServiceForAddresses:v4];
  v6 = [self __ck_bestAccountForAddresses:v4 withFallbackService:v5];

  return v6;
}

- (id)fallbackServiceForAddresses:()CKAdditions
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 objectAtIndexedSubscript:0];
      __im_isChatBot = [v5 __im_isChatBot];

      if (__im_isChatBot)
      {
        rcsService = [MEMORY[0x1E69A5CA0] rcsService];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  rcsService = [MEMORY[0x1E69A5CA0] iMessageService];
LABEL_7:
  v8 = rcsService;

  return v8;
}

- (id)__ck_bestAccountForAddresses:()CKAdditions withFallbackService:
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (CKIsRunningUITests())
  {
    v28 = v7;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    simulatedChats = [mEMORY[0x1E69A5AF8] simulatedChats];

    obj = simulatedChats;
    v31 = [simulatedChats countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v31)
    {
      v30 = *v37;
LABEL_4:
      v10 = 0;
      while (1)
      {
        v11 = v6;
        if (*v37 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * v10);
        array = [MEMORY[0x1E695DF70] array];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        participants = [v12 participants];
        v15 = [participants countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v33;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(participants);
              }

              v19 = [*(*(&v32 + 1) + 8 * i) ID];
              v20 = IMStripFormattingFromAddress();
              [array addObject:v20];
            }

            v16 = [participants countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v16);
        }

        v6 = v11;
        if ([array isEqualToArray:v11])
        {
          break;
        }

        if (++v10 == v31)
        {
          v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (v31)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }
      }

      account = [v12 account];

      v7 = v28;
      if (account)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_17:

      v7 = v28;
    }

    mEMORY[0x1E69A5AF8]2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    simulatedChats2 = [mEMORY[0x1E69A5AF8]2 simulatedChats];
    firstObject = [simulatedChats2 firstObject];

    account = [firstObject account];
  }

  else
  {
    account = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService();
    if ([account _isUsableForSending])
    {
      goto LABEL_24;
    }

    firstObject = [MEMORY[0x1E69A5CA0] smsService];
    if (firstObject)
    {
      v25 = [self accountsForService:firstObject];
      __imFirstObject = [v25 __imFirstObject];

      account = __imFirstObject;
    }
  }

LABEL_24:

  return account;
}

- (id)__ck_bestAccountForAddress:()CKAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11[0] = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    array = [v4 arrayWithObjects:v11 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695DEC8];
    v5 = 0;
    array = [v7 array];
  }

  v8 = array;

  v9 = [self __ck_bestAccountForAddresses:v8];

  return v9;
}

@end