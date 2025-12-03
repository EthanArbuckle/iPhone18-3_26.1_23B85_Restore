@interface CTCarrierSpaceAuthenticationContext
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceAuthenticationContext)init;
- (CTCarrierSpaceAuthenticationContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  clientID = [(CTCarrierSpaceAuthenticationContext *)self clientID];
  [v3 appendFormat:@" clientID=%@", clientID];

  authURL = [(CTCarrierSpaceAuthenticationContext *)self authURL];
  [v3 appendFormat:@" authURL=%@", authURL];

  tokenURL = [(CTCarrierSpaceAuthenticationContext *)self tokenURL];
  [v3 appendFormat:@" tokenURL=%@", tokenURL];

  carrierName = [(CTCarrierSpaceAuthenticationContext *)self carrierName];
  [v3 appendFormat:@" carrierName=%@", carrierName];

  iccid = [(CTCarrierSpaceAuthenticationContext *)self iccid];
  [v3 appendFormat:@" iccid=%@", iccid];

  scope = [(CTCarrierSpaceAuthenticationContext *)self scope];
  [v3 appendFormat:@" scope=%@", scope];

  [v3 appendFormat:@" supportsState=%d", -[CTCarrierSpaceAuthenticationContext supportsState](self, "supportsState")];
  sourceApplicationAccountIdentifier = [(CTCarrierSpaceAuthenticationContext *)self sourceApplicationAccountIdentifier];
  [v3 appendFormat:@" sourceApplicationAccountIdentifier=%@", sourceApplicationAccountIdentifier];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      clientID = [(CTCarrierSpaceAuthenticationContext *)self clientID];
      clientID2 = [(CTCarrierSpaceAuthenticationContext *)equalCopy clientID];
      if ([clientID isEqualToString:clientID2])
      {
        authURL = [(CTCarrierSpaceAuthenticationContext *)self authURL];
        authURL2 = [(CTCarrierSpaceAuthenticationContext *)equalCopy authURL];
        if ([authURL isEqualToString:authURL2])
        {
          tokenURL = [(CTCarrierSpaceAuthenticationContext *)self tokenURL];
          tokenURL2 = [(CTCarrierSpaceAuthenticationContext *)equalCopy tokenURL];
          if ([tokenURL isEqualToString:tokenURL2])
          {
            carrierName = [(CTCarrierSpaceAuthenticationContext *)self carrierName];
            carrierName2 = [(CTCarrierSpaceAuthenticationContext *)equalCopy carrierName];
            if ([carrierName isEqualToString:carrierName2])
            {
              v24 = carrierName;
              iccid = [(CTCarrierSpaceAuthenticationContext *)self iccid];
              [(CTCarrierSpaceAuthenticationContext *)equalCopy iccid];
              v23 = v25 = iccid;
              if ([iccid isEqualToString:?])
              {
                scope = [(CTCarrierSpaceAuthenticationContext *)self scope];
                scope2 = [(CTCarrierSpaceAuthenticationContext *)equalCopy scope];
                v22 = scope;
                v15 = [scope isEqualToString:?];
                carrierName = v24;
                if (v15 && (v19 = [(CTCarrierSpaceAuthenticationContext *)self supportsState], v19 == [(CTCarrierSpaceAuthenticationContext *)equalCopy supportsState]))
                {
                  sourceApplicationAccountIdentifier = [(CTCarrierSpaceAuthenticationContext *)self sourceApplicationAccountIdentifier];
                  sourceApplicationAccountIdentifier2 = [(CTCarrierSpaceAuthenticationContext *)equalCopy sourceApplicationAccountIdentifier];
                  v16 = [sourceApplicationAccountIdentifier isEqualToString:sourceApplicationAccountIdentifier2];
                }

                else
                {
                  v16 = 0;
                }
              }

              else
              {
                v16 = 0;
                carrierName = v24;
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

- (void)encodeWithCoder:(id)coder
{
  clientID = self->_clientID;
  coderCopy = coder;
  [coderCopy encodeObject:clientID forKey:@"client_id"];
  [coderCopy encodeObject:self->_authURL forKey:@"auth_url"];
  [coderCopy encodeObject:self->_tokenURL forKey:@"token_url"];
  [coderCopy encodeObject:self->_carrierName forKey:@"carrier_name"];
  [coderCopy encodeObject:self->_iccid forKey:@"iccid"];
  [coderCopy encodeObject:self->_scope forKey:@"scope"];
  [coderCopy encodeBool:self->_supportsState forKey:@"supports_state"];
  [coderCopy encodeObject:self->_sourceApplicationAccountIdentifier forKey:@"account_identifier"];
}

- (CTCarrierSpaceAuthenticationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CTCarrierSpaceAuthenticationContext;
  v5 = [(CTCarrierSpaceAuthenticationContext *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"client_id"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auth_url"];
    authURL = v5->_authURL;
    v5->_authURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token_url"];
    tokenURL = v5->_tokenURL;
    v5->_tokenURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carrier_name"];
    carrierName = v5->_carrierName;
    v5->_carrierName = v12;

    v5->_supportsState = [coderCopy decodeBoolForKey:@"supports_state"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iccid"];
    iccid = v5->_iccid;
    v5->_iccid = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scope"];
    scope = v5->_scope;
    v5->_scope = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account_identifier"];
    sourceApplicationAccountIdentifier = v5->_sourceApplicationAccountIdentifier;
    v5->_sourceApplicationAccountIdentifier = v18;
  }

  return v5;
}

@end