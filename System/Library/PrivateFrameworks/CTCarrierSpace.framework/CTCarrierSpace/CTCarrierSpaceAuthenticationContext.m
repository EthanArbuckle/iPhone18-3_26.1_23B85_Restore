@interface CTCarrierSpaceAuthenticationContext
- (BOOL)isEqual:(id)a3;
- (CTCarrierSpaceAuthenticationContext)init;
- (CTCarrierSpaceAuthenticationContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCarrierSpaceAuthenticationContext

- (CTCarrierSpaceAuthenticationContext)init
{
  v12.receiver = self;
  v12.super_class = CTCarrierSpaceAuthenticationContext;
  v2 = [(CTCarrierSpaceAuthenticationContext *)&v12 init];
  v3 = v2;
  if (v2)
  {
    clientID = v2->_clientID;
    v2->_clientID = 0;

    authURL = v3->_authURL;
    v3->_authURL = 0;

    tokenURL = v3->_tokenURL;
    v3->_tokenURL = 0;

    carrierName = v3->_carrierName;
    v3->_carrierName = 0;

    iccid = v3->_iccid;
    v3->_iccid = 0;

    scope = v3->_scope;
    v3->_scope = 0;

    v3->_supportsState = 0;
    sourceApplicationAccountIdentifier = v3->_sourceApplicationAccountIdentifier;
    v3->_sourceApplicationAccountIdentifier = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTCarrierSpaceAuthenticationContext *)self clientID];
  [v3 appendFormat:@" clientID=%@", v4];

  v5 = [(CTCarrierSpaceAuthenticationContext *)self authURL];
  [v3 appendFormat:@" authURL=%@", v5];

  v6 = [(CTCarrierSpaceAuthenticationContext *)self tokenURL];
  [v3 appendFormat:@" tokenURL=%@", v6];

  v7 = [(CTCarrierSpaceAuthenticationContext *)self carrierName];
  [v3 appendFormat:@" carrierName=%@", v7];

  v8 = [(CTCarrierSpaceAuthenticationContext *)self iccid];
  [v3 appendFormat:@" iccid=%@", v8];

  v9 = [(CTCarrierSpaceAuthenticationContext *)self scope];
  [v3 appendFormat:@" scope=%@", v9];

  [v3 appendFormat:@" supportsState=%d", -[CTCarrierSpaceAuthenticationContext supportsState](self, "supportsState")];
  v10 = [(CTCarrierSpaceAuthenticationContext *)self sourceApplicationAccountIdentifier];
  [v3 appendFormat:@" sourceApplicationAccountIdentifier=%@", v10];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CTCarrierSpaceAuthenticationContext *)self clientID];
      v6 = [(CTCarrierSpaceAuthenticationContext *)v4 clientID];
      if ([v5 isEqualToString:v6])
      {
        v7 = [(CTCarrierSpaceAuthenticationContext *)self authURL];
        v8 = [(CTCarrierSpaceAuthenticationContext *)v4 authURL];
        if ([v7 isEqualToString:v8])
        {
          v9 = [(CTCarrierSpaceAuthenticationContext *)self tokenURL];
          v10 = [(CTCarrierSpaceAuthenticationContext *)v4 tokenURL];
          if ([v9 isEqualToString:v10])
          {
            v11 = [(CTCarrierSpaceAuthenticationContext *)self carrierName];
            v12 = [(CTCarrierSpaceAuthenticationContext *)v4 carrierName];
            if ([v11 isEqualToString:v12])
            {
              v24 = v11;
              v13 = [(CTCarrierSpaceAuthenticationContext *)self iccid];
              [(CTCarrierSpaceAuthenticationContext *)v4 iccid];
              v23 = v25 = v13;
              if ([v13 isEqualToString:?])
              {
                v14 = [(CTCarrierSpaceAuthenticationContext *)self scope];
                v21 = [(CTCarrierSpaceAuthenticationContext *)v4 scope];
                v22 = v14;
                v15 = [v14 isEqualToString:?];
                v11 = v24;
                if (v15 && (v19 = [(CTCarrierSpaceAuthenticationContext *)self supportsState], v19 == [(CTCarrierSpaceAuthenticationContext *)v4 supportsState]))
                {
                  v20 = [(CTCarrierSpaceAuthenticationContext *)self sourceApplicationAccountIdentifier];
                  v18 = [(CTCarrierSpaceAuthenticationContext *)v4 sourceApplicationAccountIdentifier];
                  v16 = [v20 isEqualToString:v18];
                }

                else
                {
                  v16 = 0;
                }
              }

              else
              {
                v16 = 0;
                v11 = v24;
              }
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  clientID = self->_clientID;
  v5 = a3;
  [v5 encodeObject:clientID forKey:@"client_id"];
  [v5 encodeObject:self->_authURL forKey:@"auth_url"];
  [v5 encodeObject:self->_tokenURL forKey:@"token_url"];
  [v5 encodeObject:self->_carrierName forKey:@"carrier_name"];
  [v5 encodeObject:self->_iccid forKey:@"iccid"];
  [v5 encodeObject:self->_scope forKey:@"scope"];
  [v5 encodeBool:self->_supportsState forKey:@"supports_state"];
  [v5 encodeObject:self->_sourceApplicationAccountIdentifier forKey:@"account_identifier"];
}

- (CTCarrierSpaceAuthenticationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CTCarrierSpaceAuthenticationContext;
  v5 = [(CTCarrierSpaceAuthenticationContext *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"client_id"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auth_url"];
    authURL = v5->_authURL;
    v5->_authURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token_url"];
    tokenURL = v5->_tokenURL;
    v5->_tokenURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carrier_name"];
    carrierName = v5->_carrierName;
    v5->_carrierName = v12;

    v5->_supportsState = [v4 decodeBoolForKey:@"supports_state"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iccid"];
    iccid = v5->_iccid;
    v5->_iccid = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scope"];
    scope = v5->_scope;
    v5->_scope = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account_identifier"];
    sourceApplicationAccountIdentifier = v5->_sourceApplicationAccountIdentifier;
    v5->_sourceApplicationAccountIdentifier = v18;
  }

  return v5;
}

@end