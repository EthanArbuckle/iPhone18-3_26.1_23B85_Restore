@interface MFSMIMEConfigurationProvider
- (BOOL)encryptionIsConfigured;
- (BOOL)encryptionIsEnabledByDefault;
- (BOOL)signingEnabledByDefault;
- (BOOL)signingIsConfigured;
@end

@implementation MFSMIMEConfigurationProvider

- (BOOL)signingIsConfigured
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = +[MailAccount activeAccounts];
  v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = *v21;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v6 = [v5 emailAddresses];
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v7)
        {
          v8 = *v17;
          while (2)
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = [MFMessageKeychainManager copyAllSigningIdentitiesForAddress:*(*(&v16 + 1) + 8 * j) error:0];
              v11 = [v10 count] == 0;

              if (!v11)
              {

                v12 = 1;
                goto LABEL_19;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      v12 = 0;
    }

    while (v2);
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)signingEnabledByDefault
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = +[MailAccount activeAccounts];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [v7 emailAddresses];
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = *v15;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(v8);
              }

              if ([v7 secureCompositionSigningPolicyForAddress:*(*(&v14 + 1) + 8 * j)] > 0)
              {
                v3 = 1;
                goto LABEL_16;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }

          v3 = 0;
        }

LABEL_16:
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

- (BOOL)encryptionIsConfigured
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = +[MailAccount activeAccounts];
  v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = *v21;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v6 = [v5 emailAddresses];
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v7)
        {
          v8 = *v17;
          while (2)
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = [MFMessageKeychainManager copyAllEncryptionIdentitiesForAddress:*(*(&v16 + 1) + 8 * j) error:0];
              v11 = [v10 count] == 0;

              if (!v11)
              {

                v12 = 1;
                goto LABEL_19;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      v12 = 0;
    }

    while (v2);
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)encryptionIsEnabledByDefault
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = +[MailAccount activeAccounts];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [v7 emailAddresses];
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = *v15;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(v8);
              }

              if ([v7 secureCompositionEncryptionPolicyForAddress:*(*(&v14 + 1) + 8 * j)] > 0)
              {
                v3 = 1;
                goto LABEL_16;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }

          v3 = 0;
        }

LABEL_16:
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

@end