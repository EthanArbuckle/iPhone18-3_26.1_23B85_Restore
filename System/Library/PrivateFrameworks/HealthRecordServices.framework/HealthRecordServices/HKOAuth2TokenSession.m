@interface HKOAuth2TokenSession
- (BOOL)isEqual:(id)a3;
- (HKOAuth2TokenSession)init;
- (HKOAuth2TokenSession)initWithCode:(id)a3 query:(id)a4 requestedScope:(id)a5 state:(id)a6 pkceVerifier:(id)a7;
- (HKOAuth2TokenSession)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKOAuth2TokenSession)initWithCode:(id)a3 query:(id)a4 requestedScope:(id)a5 state:(id)a6 pkceVerifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HKOAuth2TokenSession;
  v17 = [(HKOAuth2TokenSession *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    code = v17->_code;
    v17->_code = v18;

    v20 = [v13 copy];
    query = v17->_query;
    v17->_query = v20;

    v22 = [v14 copy];
    requestedScope = v17->_requestedScope;
    v17->_requestedScope = v22;

    v24 = [v15 copy];
    state = v17->_state;
    v17->_state = v24;

    v26 = [v16 copy];
    pkceVerifier = v17->_pkceVerifier;
    v17->_pkceVerifier = v26;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if ([(HKOAuth2TokenSession *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(HKOAuth2TokenSession *)v6 code];
      v8 = [(HKOAuth2TokenSession *)self code];
      if (v7 != v8)
      {
        v9 = [(HKOAuth2TokenSession *)self code];
        if (!v9)
        {
          LOBYTE(v12) = 0;
          goto LABEL_55;
        }

        v3 = v9;
        v10 = [(HKOAuth2TokenSession *)v6 code];
        v11 = [(HKOAuth2TokenSession *)self code];
        v54 = v10;
        if (![v10 isEqualToString:v11])
        {
          LOBYTE(v12) = 0;
LABEL_54:

          goto LABEL_55;
        }

        v51 = v11;
      }

      v13 = [(HKOAuth2TokenSession *)v6 query];
      v14 = [(HKOAuth2TokenSession *)self query];
      v15 = v14;
      if (v13 == v14)
      {
        v18 = v14;
      }

      else
      {
        v16 = [(HKOAuth2TokenSession *)self query];
        if (!v16)
        {

          goto LABEL_43;
        }

        v49 = v16;
        v12 = [(HKOAuth2TokenSession *)v6 query];
        v17 = [(HKOAuth2TokenSession *)self query];
        if (([v12 isEqualToString:v17] & 1) == 0)
        {

          LOBYTE(v12) = 0;
          v11 = v51;
          if (v7 == v8)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v44 = v12;
        v18 = v15;
        v47 = v17;
      }

      v19 = [(HKOAuth2TokenSession *)v6 requestedScope];
      v52 = [(HKOAuth2TokenSession *)self requestedScope];
      v53 = v19;
      if (v19 == v52)
      {
        v48 = v18;
LABEL_22:
        v23 = [(HKOAuth2TokenSession *)v6 state];
        v45 = [(HKOAuth2TokenSession *)self state];
        v46 = v23;
        if (v23 == v45)
        {
          v50 = v3;
        }

        else
        {
          v12 = [(HKOAuth2TokenSession *)self state];
          if (!v12)
          {
            goto LABEL_37;
          }

          v24 = [(HKOAuth2TokenSession *)v6 state];
          v25 = [(HKOAuth2TokenSession *)self state];
          if (([v24 isEqual:v25] & 1) == 0)
          {

            LOBYTE(v12) = 0;
            v32 = v52;
            v33 = v53;
            v34 = v53 == v52;
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

          v39 = v24;
          v40 = v12;
          v50 = v3;
          v19 = v25;
        }

        v27 = [(HKOAuth2TokenSession *)v6 pkceVerifier];
        v28 = [(HKOAuth2TokenSession *)self pkceVerifier];
        LOBYTE(v12) = v27 == v28;
        if (v27 != v28)
        {
          v29 = [(HKOAuth2TokenSession *)self pkceVerifier];
          if (v29)
          {
            v37 = v19;
            v38 = v29;
            v30 = [(HKOAuth2TokenSession *)v6 pkceVerifier];
            v31 = [(HKOAuth2TokenSession *)self pkceVerifier];
            LOBYTE(v12) = [v30 isEqual:v31];

            if (v46 != v45)
            {
            }

            v32 = v52;
            v33 = v53;
            v34 = v53 == v52;
            v3 = v50;
            goto LABEL_45;
          }
        }

        if (v46 == v45)
        {

          v35 = v52;
          v3 = v50;
          v26 = v47;
          if (v53 == v52)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        v3 = v50;
LABEL_37:
        v26 = v47;

        v35 = v52;
        if (v53 == v52)
        {
LABEL_39:

          goto LABEL_49;
        }

LABEL_38:

        v35 = v52;
        goto LABEL_39;
      }

      v20 = [(HKOAuth2TokenSession *)self requestedScope];
      v21 = v18;
      if (!v20)
      {
        LOBYTE(v12) = 0;
        v26 = v47;
LABEL_47:

LABEL_50:
        if (v13 != v21)
        {
        }

LABEL_53:
        v11 = v51;
        if (v7 != v8)
        {
          goto LABEL_54;
        }

LABEL_55:

        goto LABEL_56;
      }

      v48 = v18;
      v43 = v20;
      v22 = [(HKOAuth2TokenSession *)v6 requestedScope];
      v19 = [(HKOAuth2TokenSession *)self requestedScope];
      if ([v22 isEqualToString:v19])
      {
        v41 = v19;
        v42 = v22;
        goto LABEL_22;
      }

      if (v13 != v48)
      {
      }

LABEL_43:
      LOBYTE(v12) = 0;
      goto LABEL_53;
    }

    LOBYTE(v12) = 0;
  }

LABEL_56:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HKOAuth2TokenSession *)self code];
  v4 = [v3 hash];
  v5 = [(HKOAuth2TokenSession *)self query];
  v6 = [v5 hash] ^ v4;
  v7 = [(HKOAuth2TokenSession *)self requestedScope];
  v8 = [v7 hash];
  v9 = [(HKOAuth2TokenSession *)self state];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(HKOAuth2TokenSession *)self pkceVerifier];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKOAuth2TokenSession *)self code];
  [v4 encodeObject:v5 forKey:@"code"];

  v6 = [(HKOAuth2TokenSession *)self query];
  [v4 encodeObject:v6 forKey:@"query"];

  v7 = [(HKOAuth2TokenSession *)self requestedScope];
  [v4 encodeObject:v7 forKey:@"requestedScope"];

  v8 = [(HKOAuth2TokenSession *)self state];
  [v4 encodeObject:v8 forKey:@"state"];

  v9 = [(HKOAuth2TokenSession *)self pkceVerifier];
  [v4 encodeObject:v9 forKey:@"pkceVerifier"];
}

- (HKOAuth2TokenSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"code"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"query"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedScope"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pkceVerifier"];
  if (v5 && v6 && v7 && v8)
  {
    self = [(HKOAuth2TokenSession *)self initWithCode:v5 query:v6 requestedScope:v7 state:v8 pkceVerifier:v9];
    v10 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  return v10;
}

@end