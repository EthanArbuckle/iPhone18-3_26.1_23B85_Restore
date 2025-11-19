@interface HKOAuth2LoginSession
+ (id)generatePKCEChallengeFromVerifier:(id)a3 algorithm:(int64_t)a4 error:(id *)a5;
+ (id)generatePKCEVerifierWithAlgorithm:(int64_t)a3;
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (HKOAuth2LoginSession)init;
- (HKOAuth2LoginSession)initWithCoder:(id)a3;
- (HKOAuth2LoginSession)initWithState:(id)a3 loginURL:(id)a4 callbackURLComponents:(id)a5 requestedScope:(id)a6 pkceVerifier:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKOAuth2LoginSession

- (HKOAuth2LoginSession)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (HKOAuth2LoginSession)initWithState:(id)a3 loginURL:(id)a4 callbackURLComponents:(id)a5 requestedScope:(id)a6 pkceVerifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HKOAuth2LoginSession;
  v17 = [(HKOAuth2LoginSession *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    state = v17->_state;
    v17->_state = v18;

    v20 = [v13 copy];
    loginURL = v17->_loginURL;
    v17->_loginURL = v20;

    v22 = [v14 copy];
    callbackURLComponents = v17->_callbackURLComponents;
    v17->_callbackURLComponents = v22;

    v24 = [v15 copy];
    requestedScope = v17->_requestedScope;
    v17->_requestedScope = v24;

    v26 = [v16 copy];
    pkceVerifier = v17->_pkceVerifier;
    v17->_pkceVerifier = v26;
  }

  return v17;
}

+ (id)generatePKCEVerifierWithAlgorithm:(int64_t)a3
{
  if ((a3 - 1) > 1)
  {
    v6 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB28] dataWithLength:32];
    if (SecRandomCopyBytes(*MEMORY[0x277CDC540], [v3 length], objc_msgSend(v3, "mutableBytes")))
    {
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_FAULT))
      {
        [HKOAuth2LoginSession generatePKCEVerifierWithAlgorithm:v4];
      }

      v5 = [MEMORY[0x277CCAD78] UUID];
      v6 = [v5 UUIDString];
    }

    else
    {
      v6 = [v3 hk_base64URLEncodedString];
    }
  }

  return v6;
}

+ (id)generatePKCEChallengeFromVerifier:(id)a3 algorithm:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  if ([v7 length])
  {
    if (a4 == 2)
    {
      v9 = [v7 dataUsingEncoding:4];
      v10 = [v9 hk_SHA256];
      v8 = [v10 hk_base64URLEncodedString];
    }

    else if (a4 == 1)
    {
      v8 = v7;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:125 format:{@"PKCE algorithm %lu not implemented", a4}];
      v8 = 0;
    }
  }

  else
  {
    v8 = &stru_2863E37A8;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    if (![(HKOAuth2LoginSession *)v7 isMemberOfClass:objc_opt_class()])
    {
      v14 = 0;
LABEL_49:

      goto LABEL_50;
    }

    state = self->_state;
    v9 = [(HKOAuth2LoginSession *)v7 state];
    if (state != v9)
    {
      v10 = [(HKOAuth2LoginSession *)v7 state];
      if (!v10)
      {
        v14 = 0;
        goto LABEL_48;
      }

      v11 = v10;
      v12 = self->_state;
      v13 = [(HKOAuth2LoginSession *)v7 state];
      if (![(NSUUID *)v12 isEqual:v13])
      {
        v14 = 0;
LABEL_47:

        goto LABEL_48;
      }

      v56 = v11;
      v55 = v13;
    }

    loginURL = self->_loginURL;
    v16 = [(HKOAuth2LoginSession *)v7 loginURL];
    if (loginURL != v16)
    {
      v17 = [(HKOAuth2LoginSession *)v7 loginURL];
      if (!v17)
      {
        goto LABEL_35;
      }

      v54 = v17;
      v18 = self->_loginURL;
      v3 = [(HKOAuth2LoginSession *)v7 loginURL];
      if (([(NSURL *)v18 isEqual:v3]& 1) == 0)
      {
        goto LABEL_34;
      }
    }

    callbackURLComponents = self->_callbackURLComponents;
    v20 = [(HKOAuth2LoginSession *)v7 callbackURLComponents];
    v53 = callbackURLComponents;
    if (callbackURLComponents == v20)
    {
      v52 = loginURL;
      v27 = v16;
LABEL_20:
      requestedScope = self->_requestedScope;
      v29 = [(HKOAuth2LoginSession *)v7 requestedScope];
      v30 = v29;
      v49 = requestedScope;
      v51 = v3;
      if (requestedScope == v29)
      {
        v47 = v29;
        v48 = v20;
        v16 = v27;
      }

      else
      {
        v31 = [(HKOAuth2LoginSession *)v7 requestedScope];
        if (!v31)
        {
          v14 = 0;
          v16 = v27;
          loginURL = v52;
          goto LABEL_37;
        }

        v45 = v31;
        v48 = v20;
        v32 = self->_requestedScope;
        v33 = [(HKOAuth2LoginSession *)v7 requestedScope];
        v34 = v32;
        v35 = v33;
        v16 = v27;
        if (![(NSString *)v34 isEqualToString:v33])
        {

          v14 = 0;
          v20 = v48;
          loginURL = v52;
          v42 = v53;
          goto LABEL_41;
        }

        v44 = v35;
        v47 = v30;
      }

      loginURL = v52;
      pkceVerifier = self->_pkceVerifier;
      v37 = [(HKOAuth2LoginSession *)v7 pkceVerifier];
      v14 = pkceVerifier == v37;
      if (pkceVerifier != v37)
      {
        v38 = [(HKOAuth2LoginSession *)v7 pkceVerifier];
        if (v38)
        {
          v39 = v38;
          v40 = self->_pkceVerifier;
          v41 = [(HKOAuth2LoginSession *)v7 pkceVerifier];
          v14 = [(NSString *)v40 isEqualToString:v41];

          if (v49 != v47)
          {
          }

          goto LABEL_39;
        }
      }

      v30 = v47;
      if (v49 == v47)
      {
LABEL_39:

        v20 = v48;
        goto LABEL_40;
      }

      v20 = v48;
LABEL_37:

LABEL_40:
      v42 = v53;
LABEL_41:
      if (v42 != v20)
      {
      }

      goto LABEL_43;
    }

    v21 = [(HKOAuth2LoginSession *)v7 callbackURLComponents];
    if (!v21)
    {
      v51 = v3;
      v14 = 0;
LABEL_43:

      if (loginURL != v16)
      {
      }

LABEL_46:
      v13 = v55;
      v11 = v56;
      if (state != v9)
      {
        goto LABEL_47;
      }

LABEL_48:

      goto LABEL_49;
    }

    v50 = v21;
    v52 = loginURL;
    v22 = v20;
    v23 = self->_callbackURLComponents;
    v24 = [(HKOAuth2LoginSession *)v7 callbackURLComponents];
    v25 = v23;
    v26 = v24;
    if (([(NSURLComponents *)v25 isEqual:v24]& 1) != 0)
    {
      v27 = v16;
      v46 = v26;
      v20 = v22;
      goto LABEL_20;
    }

    if (loginURL != v16)
    {
LABEL_34:
    }

LABEL_35:

    v14 = 0;
    goto LABEL_46;
  }

  v14 = 1;
LABEL_50:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_state hash];
  v4 = [(NSURL *)self->_loginURL hash]^ v3;
  v5 = [(NSURLComponents *)self->_callbackURLComponents hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_requestedScope hash];
  return v6 ^ [(NSString *)self->_pkceVerifier hash];
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v6 = a3;
  [v6 encodeObject:state forKey:@"state"];
  [v6 encodeObject:self->_loginURL forKey:@"loginURL"];
  v5 = [(NSURLComponents *)self->_callbackURLComponents string];
  [v6 encodeObject:v5 forKey:@"callbackURLString"];

  [v6 encodeObject:self->_requestedScope forKey:@"requestedScope"];
  [v6 encodeObject:self->_pkceVerifier forKey:@"pkceVerifier"];
}

- (HKOAuth2LoginSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loginURL"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callbackURLString"];
  v8 = [MEMORY[0x277CCACE0] componentsWithString:v7];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedScope"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pkceVerifier"];
  if (!v5 || !v6 || !v7 || !v9)
  {
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277CCA050];
    v14 = 4865;
LABEL_9:
    v15 = [v12 initWithDomain:v13 code:v14 userInfo:0];
    [v4 failWithError:v15];

    v11 = 0;
    goto LABEL_10;
  }

  if (!v8)
  {
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277CCA050];
    v14 = 4866;
    goto LABEL_9;
  }

  self = [(HKOAuth2LoginSession *)self initWithState:v5 loginURL:v6 callbackURLComponents:v8 requestedScope:v9 pkceVerifier:v10];
  v11 = self;
LABEL_10:

  return v11;
}

+ (void)generatePKCEVerifierWithAlgorithm:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_2519FE000, v1, OS_LOG_TYPE_FAULT, "HKOAuth2LoginSession.generatePKCEVerifierWithAlgorithm failed, will fall back to NSUUID. Error: %d", v4, 8u);

  v3 = *MEMORY[0x277D85DE8];
}

@end