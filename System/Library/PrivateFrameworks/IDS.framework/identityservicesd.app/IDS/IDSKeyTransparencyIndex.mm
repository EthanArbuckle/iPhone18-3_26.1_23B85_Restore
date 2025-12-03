@interface IDSKeyTransparencyIndex
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToKeyTransparencyIndex:(id)index;
- (IDSKeyTransparencyIndex)initWithServiceIdentifier:(id)identifier accountKey:(id)key URI:(id)i;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSKeyTransparencyIndex

- (IDSKeyTransparencyIndex)initWithServiceIdentifier:(id)identifier accountKey:(id)key URI:(id)i
{
  identifierCopy = identifier;
  keyCopy = key;
  iCopy = i;
  v17.receiver = self;
  v17.super_class = IDSKeyTransparencyIndex;
  v11 = [(IDSKeyTransparencyIndex *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    serviceIdentifier = v11->_serviceIdentifier;
    v11->_serviceIdentifier = v12;

    v14 = [keyCopy copy];
    accountKey = v11->_accountKey;
    v11->_accountKey = v14;

    objc_storeStrong(&v11->_URI, i);
  }

  return v11;
}

- (BOOL)isEqualToKeyTransparencyIndex:(id)index
{
  indexCopy = index;
  v7 = indexCopy;
  if (self == indexCopy)
  {
    v10 = 1;
  }

  else
  {
    if (indexCopy)
    {
      serviceIdentifier = [(IDSKeyTransparencyIndex *)self serviceIdentifier];
      serviceIdentifier2 = [(IDSKeyTransparencyIndex *)v7 serviceIdentifier];
      if (serviceIdentifier == serviceIdentifier2 || (-[IDSKeyTransparencyIndex serviceIdentifier](self, "serviceIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), -[IDSKeyTransparencyIndex serviceIdentifier](v7, "serviceIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        accountKey = [(IDSKeyTransparencyIndex *)self accountKey];
        accountKey2 = [(IDSKeyTransparencyIndex *)v7 accountKey];
        if ([accountKey isEqualToData:accountKey2])
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

        if (serviceIdentifier == serviceIdentifier2)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSKeyTransparencyIndex *)self isEqualToKeyTransparencyIndex:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  serviceIdentifier = [(IDSKeyTransparencyIndex *)self serviceIdentifier];
  v4 = [serviceIdentifier hash];
  accountKey = [(IDSKeyTransparencyIndex *)self accountKey];
  v6 = [accountKey hash] ^ v4;
  v7 = [(IDSKeyTransparencyIndex *)self URI];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = objc_opt_class();
  serviceIdentifier = [(IDSKeyTransparencyIndex *)self serviceIdentifier];
  accountKey = [(IDSKeyTransparencyIndex *)self accountKey];
  v6 = [(IDSKeyTransparencyIndex *)self URI];
  v7 = [NSString stringWithFormat:@"<%@: %p serviceIdentifier: %@, accountKey: %@, URI: %@>", v3, self, serviceIdentifier, accountKey, v6];

  return v7;
}

@end