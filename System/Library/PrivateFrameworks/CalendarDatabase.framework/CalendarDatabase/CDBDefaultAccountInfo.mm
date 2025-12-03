@interface CDBDefaultAccountInfo
- (BOOL)addressIsAccountOwner:(id)owner;
- (BOOL)addressURLIsAccountOwner:(id)owner;
- (CDBDefaultAccountInfo)initWithStore:(void *)store;
@end

@implementation CDBDefaultAccountInfo

- (CDBDefaultAccountInfo)initWithStore:(void *)store
{
  v10.receiver = self;
  v10.super_class = CDBDefaultAccountInfo;
  v4 = [(CDBDefaultAccountInfo *)&v10 init];
  v5 = v4;
  if (store && v4)
  {
    v6 = CalStoreCopyCachedExternalInfo(store);
    v7 = [v6 objectForKeyedSubscript:@"ownerAddresses"];
    accountUserAddresses = v5->_accountUserAddresses;
    v5->_accountUserAddresses = v7;
  }

  return v5;
}

- (BOOL)addressIsAccountOwner:(id)owner
{
  ownerCopy = owner;
  v5 = [MEMORY[0x1E695DFF8] URLWithString:ownerCopy];
  if ([(CDBDefaultAccountInfo *)self addressURLIsAccountOwner:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = MEMORY[0x1E695DFF8];
    ownerCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", ownerCopy];
    v9 = [v7 URLWithString:ownerCopy];

    v6 = [(CDBDefaultAccountInfo *)self addressURLIsAccountOwner:v9];
  }

  return v6;
}

- (BOOL)addressURLIsAccountOwner:(id)owner
{
  v16 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  if (ownerCopy)
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

          if ([MEMORY[0x1E6992078] compareAddressURL:ownerCopy localString:{*(*(&v11 + 1) + 8 * i), v11}])
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