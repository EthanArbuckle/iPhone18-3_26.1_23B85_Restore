@interface CDBDefaultAccountInfo
- (BOOL)addressIsAccountOwner:(id)a3;
- (BOOL)addressURLIsAccountOwner:(id)a3;
- (CDBDefaultAccountInfo)initWithStore:(void *)a3;
@end

@implementation CDBDefaultAccountInfo

- (CDBDefaultAccountInfo)initWithStore:(void *)a3
{
  v10.receiver = self;
  v10.super_class = CDBDefaultAccountInfo;
  v4 = [(CDBDefaultAccountInfo *)&v10 init];
  v5 = v4;
  if (a3 && v4)
  {
    v6 = CalStoreCopyCachedExternalInfo(a3);
    v7 = [v6 objectForKeyedSubscript:@"ownerAddresses"];
    accountUserAddresses = v5->_accountUserAddresses;
    v5->_accountUserAddresses = v7;
  }

  return v5;
}

- (BOOL)addressIsAccountOwner:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  if ([(CDBDefaultAccountInfo *)self addressURLIsAccountOwner:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", v4];
    v9 = [v7 URLWithString:v8];

    v6 = [(CDBDefaultAccountInfo *)self addressURLIsAccountOwner:v9];
  }

  return v6;
}

- (BOOL)addressURLIsAccountOwner:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_accountUserAddresses;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([MEMORY[0x1E6992078] compareAddressURL:v4 localString:{*(*(&v11 + 1) + 8 * i), v11}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

@end