@interface HKOAuth2TokenSession
- (BOOL)isEqual:(id)equal;
- (HKOAuth2TokenSession)init;
- (HKOAuth2TokenSession)initWithCode:(id)code query:(id)query requestedScope:(id)scope state:(id)state pkceVerifier:(id)verifier;
- (HKOAuth2TokenSession)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKOAuth2TokenSession

- (HKOAuth2TokenSession)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKOAuth2TokenSession)initWithCode:(id)code query:(id)query requestedScope:(id)scope state:(id)state pkceVerifier:(id)verifier
{
  codeCopy = code;
  queryCopy = query;
  scopeCopy = scope;
  stateCopy = state;
  verifierCopy = verifier;
  v29.receiver = self;
  v29.super_class = HKOAuth2TokenSession;
  v17 = [(HKOAuth2TokenSession *)&v29 init];
  if (v17)
  {
    v18 = [codeCopy copy];
    code = v17->_code;
    v17->_code = v18;

    v20 = [queryCopy copy];
    query = v17->_query;
    v17->_query = v20;

    v22 = [scopeCopy copy];
    requestedScope = v17->_requestedScope;
    v17->_requestedScope = v22;

    v24 = [stateCopy copy];
    state = v17->_state;
    v17->_state = v24;

    v26 = [verifierCopy copy];
    pkceVerifier = v17->_pkceVerifier;
    v17->_pkceVerifier = v26;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(query4) = 1;
  }

  else
  {
    if ([(HKOAuth2TokenSession *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      code = [(HKOAuth2TokenSession *)v6 code];
      code2 = [(HKOAuth2TokenSession *)self code];
      if (code != code2)
      {
        code3 = [(HKOAuth2TokenSession *)self code];
        if (!code3)
        {
          LOBYTE(query4) = 0;
          goto LABEL_55;
        }

        v3 = code3;
        code4 = [(HKOAuth2TokenSession *)v6 code];
        code5 = [(HKOAuth2TokenSession *)self code];
        v54 = code4;
        if (![code4 isEqualToString:code5])
        {
          LOBYTE(query4) = 0;
LABEL_54:

          goto LABEL_55;
        }

        v51 = code5;
      }

      query = [(HKOAuth2TokenSession *)v6 query];
      query2 = [(HKOAuth2TokenSession *)self query];
      v15 = query2;
      if (query == query2)
      {
        v18 = query2;
      }

      else
      {
        query3 = [(HKOAuth2TokenSession *)self query];
        if (!query3)
        {

          goto LABEL_43;
        }

        v49 = query3;
        query4 = [(HKOAuth2TokenSession *)v6 query];
        query5 = [(HKOAuth2TokenSession *)self query];
        if (([query4 isEqualToString:query5] & 1) == 0)
        {

          LOBYTE(query4) = 0;
          code5 = v51;
          if (code == code2)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v44 = query4;
        v18 = v15;
        v47 = query5;
      }

      requestedScope = [(HKOAuth2TokenSession *)v6 requestedScope];
      requestedScope2 = [(HKOAuth2TokenSession *)self requestedScope];
      v53 = requestedScope;
      if (requestedScope == requestedScope2)
      {
        v48 = v18;
LABEL_22:
        state = [(HKOAuth2TokenSession *)v6 state];
        state2 = [(HKOAuth2TokenSession *)self state];
        v46 = state;
        if (state == state2)
        {
          v50 = v3;
        }

        else
        {
          query4 = [(HKOAuth2TokenSession *)self state];
          if (!query4)
          {
            goto LABEL_37;
          }

          state3 = [(HKOAuth2TokenSession *)v6 state];
          state4 = [(HKOAuth2TokenSession *)self state];
          if (([state3 isEqual:state4] & 1) == 0)
          {

            LOBYTE(query4) = 0;
            v32 = requestedScope2;
            v33 = v53;
            v34 = v53 == requestedScope2;
LABEL_45:
            v26 = v47;
            if (!v34)
            {

              v21 = v48;
              goto LABEL_47;
            }

LABEL_49:
            v21 = v48;
            goto LABEL_50;
          }

          v39 = state3;
          v40 = query4;
          v50 = v3;
          requestedScope = state4;
        }

        pkceVerifier = [(HKOAuth2TokenSession *)v6 pkceVerifier];
        pkceVerifier2 = [(HKOAuth2TokenSession *)self pkceVerifier];
        LOBYTE(query4) = pkceVerifier == pkceVerifier2;
        if (pkceVerifier != pkceVerifier2)
        {
          pkceVerifier3 = [(HKOAuth2TokenSession *)self pkceVerifier];
          if (pkceVerifier3)
          {
            v37 = requestedScope;
            v38 = pkceVerifier3;
            pkceVerifier4 = [(HKOAuth2TokenSession *)v6 pkceVerifier];
            pkceVerifier5 = [(HKOAuth2TokenSession *)self pkceVerifier];
            LOBYTE(query4) = [pkceVerifier4 isEqual:pkceVerifier5];

            if (v46 != state2)
            {
            }

            v32 = requestedScope2;
            v33 = v53;
            v34 = v53 == requestedScope2;
            v3 = v50;
            goto LABEL_45;
          }
        }

        if (v46 == state2)
        {

          v35 = requestedScope2;
          v3 = v50;
          v26 = v47;
          if (v53 == requestedScope2)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        v3 = v50;
LABEL_37:
        v26 = v47;

        v35 = requestedScope2;
        if (v53 == requestedScope2)
        {
LABEL_39:

          goto LABEL_49;
        }

LABEL_38:

        v35 = requestedScope2;
        goto LABEL_39;
      }

      requestedScope3 = [(HKOAuth2TokenSession *)self requestedScope];
      v21 = v18;
      if (!requestedScope3)
      {
        LOBYTE(query4) = 0;
        v26 = v47;
LABEL_47:

LABEL_50:
        if (query != v21)
        {
        }

LABEL_53:
        code5 = v51;
        if (code != code2)
        {
          goto LABEL_54;
        }

LABEL_55:

        goto LABEL_56;
      }

      v48 = v18;
      v43 = requestedScope3;
      requestedScope4 = [(HKOAuth2TokenSession *)v6 requestedScope];
      requestedScope = [(HKOAuth2TokenSession *)self requestedScope];
      if ([requestedScope4 isEqualToString:requestedScope])
      {
        v41 = requestedScope;
        v42 = requestedScope4;
        goto LABEL_22;
      }

      if (query != v48)
      {
      }

LABEL_43:
      LOBYTE(query4) = 0;
      goto LABEL_53;
    }

    LOBYTE(query4) = 0;
  }

LABEL_56:

  return query4;
}

- (unint64_t)hash
{
  code = [(HKOAuth2TokenSession *)self code];
  v4 = [code hash];
  query = [(HKOAuth2TokenSession *)self query];
  v6 = [query hash] ^ v4;
  requestedScope = [(HKOAuth2TokenSession *)self requestedScope];
  v8 = [requestedScope hash];
  state = [(HKOAuth2TokenSession *)self state];
  v10 = v6 ^ v8 ^ [state hash];
  pkceVerifier = [(HKOAuth2TokenSession *)self pkceVerifier];
  v12 = [pkceVerifier hash];

  return v10 ^ v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  code = [(HKOAuth2TokenSession *)self code];
  [coderCopy encodeObject:code forKey:@"code"];

  query = [(HKOAuth2TokenSession *)self query];
  [coderCopy encodeObject:query forKey:@"query"];

  requestedScope = [(HKOAuth2TokenSession *)self requestedScope];
  [coderCopy encodeObject:requestedScope forKey:@"requestedScope"];

  state = [(HKOAuth2TokenSession *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  pkceVerifier = [(HKOAuth2TokenSession *)self pkceVerifier];
  [coderCopy encodeObject:pkceVerifier forKey:@"pkceVerifier"];
}

- (HKOAuth2TokenSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"code"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"query"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedScope"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pkceVerifier"];
  if (v5 && v6 && v7 && v8)
  {
    self = [(HKOAuth2TokenSession *)self initWithCode:v5 query:v6 requestedScope:v7 state:v8 pkceVerifier:v9];
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end