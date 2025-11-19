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
    v4 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v5 = [v4 simulatedChats];
    v6 = [v5 firstObject];

    v7 = [v6 account];
  }

  else
  {
    v7 = IMPreferredAccountForService();
  }

  return v7;
}

- (id)__ck_bestAccountForAddresses:()CKAdditions
{
  v4 = a3;
  v5 = [a1 fallbackServiceForAddresses:v4];
  v6 = [a1 __ck_bestAccountForAddresses:v4 withFallbackService:v5];

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
      v6 = [v5 __im_isChatBot];

      if (v6)
      {
        v7 = [MEMORY[0x1E69A5CA0] rcsService];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v7 = [MEMORY[0x1E69A5CA0] iMessageService];
LABEL_7:
  v8 = v7;

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
    v8 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v9 = [v8 simulatedChats];

    obj = v9;
    v31 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
        v13 = [MEMORY[0x1E695DF70] array];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = [v12 participants];
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v32 + 1) + 8 * i) ID];
              v20 = IMStripFormattingFromAddress();
              [v13 addObject:v20];
            }

            v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v16);
        }

        v6 = v11;
        if ([v13 isEqualToArray:v11])
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

      v21 = [v12 account];

      v7 = v28;
      if (v21)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_17:

      v7 = v28;
    }

    v22 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v23 = [v22 simulatedChats];
    v24 = [v23 firstObject];

    v21 = [v24 account];
  }

  else
  {
    v21 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService();
    if ([v21 _isUsableForSending])
    {
      goto LABEL_24;
    }

    v24 = [MEMORY[0x1E69A5CA0] smsService];
    if (v24)
    {
      v25 = [a1 accountsForService:v24];
      v26 = [v25 __imFirstObject];

      v21 = v26;
    }
  }

LABEL_24:

  return v21;
}

- (id)__ck_bestAccountForAddress:()CKAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11[0] = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:v11 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695DEC8];
    v5 = 0;
    v6 = [v7 array];
  }

  v8 = v6;

  v9 = [a1 __ck_bestAccountForAddresses:v8];

  return v9;
}

@end