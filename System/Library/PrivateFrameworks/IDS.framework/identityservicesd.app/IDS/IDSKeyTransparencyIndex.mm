@interface IDSKeyTransparencyIndex
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToKeyTransparencyIndex:(id)a3;
- (IDSKeyTransparencyIndex)initWithServiceIdentifier:(id)a3 accountKey:(id)a4 URI:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSKeyTransparencyIndex

- (IDSKeyTransparencyIndex)initWithServiceIdentifier:(id)a3 accountKey:(id)a4 URI:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = IDSKeyTransparencyIndex;
  v11 = [(IDSKeyTransparencyIndex *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    serviceIdentifier = v11->_serviceIdentifier;
    v11->_serviceIdentifier = v12;

    v14 = [v9 copy];
    accountKey = v11->_accountKey;
    v11->_accountKey = v14;

    objc_storeStrong(&v11->_URI, a5);
  }

  return v11;
}

- (BOOL)isEqualToKeyTransparencyIndex:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    if (v6)
    {
      v8 = [(IDSKeyTransparencyIndex *)self serviceIdentifier];
      v9 = [(IDSKeyTransparencyIndex *)v7 serviceIdentifier];
      if (v8 == v9 || (-[IDSKeyTransparencyIndex serviceIdentifier](self, "serviceIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), -[IDSKeyTransparencyIndex serviceIdentifier](v7, "serviceIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(IDSKeyTransparencyIndex *)self accountKey];
        v12 = [(IDSKeyTransparencyIndex *)v7 accountKey];
        if ([v11 isEqualToData:v12])
        {
          v13 = [(IDSKeyTransparencyIndex *)self URI];
          v14 = [(IDSKeyTransparencyIndex *)v7 URI];
          if (v13 == v14)
          {
            v10 = 1;
          }

          else
          {
            [(IDSKeyTransparencyIndex *)self URI];
            v15 = v19 = v3;
            [(IDSKeyTransparencyIndex *)v7 URI];
            v16 = v18 = v4;
            v10 = [v15 isEqual:v16];

            v4 = v18;
            v3 = v19;
          }
        }

        else
        {

          v10 = 0;
        }

        if (v8 == v9)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_16:
      goto LABEL_17;
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSKeyTransparencyIndex *)self isEqualToKeyTransparencyIndex:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(IDSKeyTransparencyIndex *)self serviceIdentifier];
  v4 = [v3 hash];
  v5 = [(IDSKeyTransparencyIndex *)self accountKey];
  v6 = [v5 hash] ^ v4;
  v7 = [(IDSKeyTransparencyIndex *)self URI];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSKeyTransparencyIndex *)self serviceIdentifier];
  v5 = [(IDSKeyTransparencyIndex *)self accountKey];
  v6 = [(IDSKeyTransparencyIndex *)self URI];
  v7 = [NSString stringWithFormat:@"<%@: %p serviceIdentifier: %@, accountKey: %@, URI: %@>", v3, self, v4, v5, v6];

  return v7;
}

@end