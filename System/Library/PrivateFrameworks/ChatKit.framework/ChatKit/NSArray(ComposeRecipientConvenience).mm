@interface NSArray(ComposeRecipientConvenience)
- (id)composeRecipientAddresses;
- (id)composeRecipientHandles;
- (id)composeRecipientNormalizedAddresses;
@end

@implementation NSArray(ComposeRecipientConvenience)

- (id)composeRecipientHandles
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v3 = [a1 composeRecipientAddresses];
  v4 = [MEMORY[0x1E69A5A80] sharedInstance];
  v16 = v3;
  v5 = [v4 __ck_bestAccountForAddresses:v3];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 handle];
          if (v12)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v13 = [v11 rawAddress];
          if (v13)
          {
            v14 = IMStripFormattingFromAddress();
            v12 = [v5 imHandleWithID:v14];
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
LABEL_13:
            [v2 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v2;
}

- (id)composeRecipientAddresses
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a1;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v8 = [v7 children];
          v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v17;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v17 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [*(*(&v16 + 1) + 8 * j) rawAddress];
                if (v13)
                {
                  [v2 addObject:v13];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v10);
          }
        }

        else
        {
          v8 = [v7 rawAddress];
          if (v8)
          {
            [v2 addObject:v8];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  return v2;
}

- (id)composeRecipientNormalizedAddresses
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v3 = MEMORY[0x193AF4FE0](1);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 address];
          if (v10)
          {
            if ([v9 isPhone])
            {
              v11 = CFPhoneNumberCreate();
              if (v11)
              {
                v12 = v11;
                v13 = CFPhoneNumberCopyUnformattedInternationalRepresentation();
                v14 = v13;
                if (v13)
                {
                  v15 = v13;
                }

                else
                {
                  v15 = v10;
                }

                [v2 addObject:v15];
                CFRelease(v12);
              }
            }

            else
            {
              [v2 addObject:v10];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v2;
}

@end