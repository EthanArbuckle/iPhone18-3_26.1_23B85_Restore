@interface CRKRemoteEndpoint
- (BOOL)isEqual:(id)a3;
- (CRKRemoteEndpoint)initWithIPAddress:(id)a3 port:(unsigned __int16)a4;
- (NSString)stringValue;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRKRemoteEndpoint

- (CRKRemoteEndpoint)initWithIPAddress:(id)a3 port:(unsigned __int16)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CRKRemoteEndpoint;
  v7 = [(CRKRemoteEndpoint *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    IPAddress = v7->_IPAddress;
    v7->_IPAddress = v8;

    v7->_port = a4;
  }

  return v7;
}

- (NSString)stringValue
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CRKRemoteEndpoint *)self IPAddress];
  v5 = [v3 stringWithFormat:@"%@:%d", v4, -[CRKRemoteEndpoint port](self, "port")];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKRemoteEndpoint *)self IPAddress];
  v6 = [v3 stringWithFormat:@"<%@: %p { IPAddress = %@, port = %d }>", v4, self, v5, -[CRKRemoteEndpoint port](self, "port")];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CRKRemoteEndpoint *)self IPAddress];
  v4 = [v3 hash];
  v5 = [(CRKRemoteEndpoint *)self port];

  return v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 == self)
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

      v8 = self;
      v9 = v4;
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
          v24 = v4;
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
              v18 = [(CRKRemoteEndpoint *)v8 valueForKey:v16];
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
          v4 = v24;
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