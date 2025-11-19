@interface MFAccountFactory_iOS
- (id)accountWithIdentifier:(id)a3;
- (id)accountWithSystemAccount:(id)a3;
@end

@implementation MFAccountFactory_iOS

- (id)accountWithIdentifier:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = 0;
  v4 = [MailAccount activeAccountsWithError:&v23];
  v5 = v23;
  v18 = [v4 mutableCopy];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v18;
    v6 = 0;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 identifier];
          v13 = [v12 isEqualToString:v3];

          if (v13)
          {
            v14 = v11;

            v6 = v14;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v8);
    }
  }

  v15 = v6;

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)accountWithSystemAccount:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(MFAccountFactory_iOS *)self accountWithIdentifier:v4];

  return v5;
}

@end