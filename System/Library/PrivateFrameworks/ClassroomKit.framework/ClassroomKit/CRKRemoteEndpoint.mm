@interface CRKRemoteEndpoint
- (BOOL)isEqual:(id)equal;
- (CRKRemoteEndpoint)initWithIPAddress:(id)address port:(unsigned __int16)port;
- (NSString)stringValue;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRKRemoteEndpoint

- (CRKRemoteEndpoint)initWithIPAddress:(id)address port:(unsigned __int16)port
{
  addressCopy = address;
  v11.receiver = self;
  v11.super_class = CRKRemoteEndpoint;
  v7 = [(CRKRemoteEndpoint *)&v11 init];
  if (v7)
  {
    v8 = [addressCopy copy];
    IPAddress = v7->_IPAddress;
    v7->_IPAddress = v8;

    v7->_port = port;
  }

  return v7;
}

- (NSString)stringValue
{
  v3 = MEMORY[0x277CCACA8];
  iPAddress = [(CRKRemoteEndpoint *)self IPAddress];
  v5 = [v3 stringWithFormat:@"%@:%d", iPAddress, -[CRKRemoteEndpoint port](self, "port")];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  iPAddress = [(CRKRemoteEndpoint *)self IPAddress];
  v6 = [v3 stringWithFormat:@"<%@: %p { IPAddress = %@, port = %d }>", v4, self, iPAddress, -[CRKRemoteEndpoint port](self, "port")];

  return v6;
}

- (unint64_t)hash
{
  iPAddress = [(CRKRemoteEndpoint *)self IPAddress];
  v4 = [iPAddress hash];
  port = [(CRKRemoteEndpoint *)self port];

  return v4 ^ port;
}

- (BOOL)isEqual:(id)equal
{
  v31 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  if (equalCopy == self)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [@"IPAddress port"];
      v6 = [v5 mutableCopy];

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __crk_tokenized_properties_block_invoke_6;
      v29[3] = &unk_278DC1280;
      v7 = v6;
      v30 = v7;
      [v7 enumerateObjectsUsingBlock:v29];

      selfCopy = self;
      v9 = equalCopy;
      v10 = v7;
      if ([(CRKRemoteEndpoint *)v9 isMemberOfClass:objc_opt_class()])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v23 = v10;
          v24 = equalCopy;
          v14 = *v26;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v25 + 1) + 8 * i);
              v17 = v9;
              v18 = [(CRKRemoteEndpoint *)selfCopy valueForKey:v16];
              v19 = [(CRKRemoteEndpoint *)v17 valueForKey:v16];

              if (v18 | v19)
              {
                v20 = [v18 isEqual:v19];

                if (!v20)
                {
                  v21 = 0;
                  goto LABEL_18;
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v21 = 1;
LABEL_18:
          v10 = v23;
          equalCopy = v24;
        }

        else
        {
          v21 = 1;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

@end