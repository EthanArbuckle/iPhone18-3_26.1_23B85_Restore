@interface HKOAuth2LoginSession
+ (id)generatePKCEChallengeFromVerifier:(id)verifier algorithm:(int64_t)algorithm error:(id *)error;
+ (id)generatePKCEVerifierWithAlgorithm:(int64_t)algorithm;
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (HKOAuth2LoginSession)init;
- (HKOAuth2LoginSession)initWithCoder:(id)coder;
- (HKOAuth2LoginSession)initWithState:(id)state loginURL:(id)l callbackURLComponents:(id)components requestedScope:(id)scope pkceVerifier:(id)verifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKOAuth2LoginSession)initWithState:(id)state loginURL:(id)l callbackURLComponents:(id)components requestedScope:(id)scope pkceVerifier:(id)verifier
{
  stateCopy = state;
  lCopy = l;
  componentsCopy = components;
  scopeCopy = scope;
  verifierCopy = verifier;
  v29.receiver = self;
  v29.super_class = HKOAuth2LoginSession;
  v17 = [(HKOAuth2LoginSession *)&v29 init];
  if (v17)
  {
    v18 = [stateCopy copy];
    state = v17->_state;
    v17->_state = v18;

    v20 = [lCopy copy];
    loginURL = v17->_loginURL;
    v17->_loginURL = v20;

    v22 = [componentsCopy copy];
    callbackURLComponents = v17->_callbackURLComponents;
    v17->_callbackURLComponents = v22;

    v24 = [scopeCopy copy];
    requestedScope = v17->_requestedScope;
    v17->_requestedScope = v24;

    v26 = [verifierCopy copy];
    pkceVerifier = v17->_pkceVerifier;
    v17->_pkceVerifier = v26;
  }

  return v17;
}

+ (id)generatePKCEVerifierWithAlgorithm:(int64_t)algorithm
{
  if ((algorithm - 1) > 1)
  {
    uUIDString = 0;
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

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
    }

    else
    {
      uUIDString = [v3 hk_base64URLEncodedString];
    }
  }

  return uUIDString;
}

+ (id)generatePKCEChallengeFromVerifier:(id)verifier algorithm:(int64_t)algorithm error:(id *)error
{
  verifierCopy = verifier;
  if ([verifierCopy length])
  {
    if (algorithm == 2)
    {
      v9 = [verifierCopy dataUsingEncoding:4];
      hk_SHA256 = [v9 hk_SHA256];
      hk_base64URLEncodedString = [hk_SHA256 hk_base64URLEncodedString];
    }

    else if (algorithm == 1)
    {
      hk_base64URLEncodedString = verifierCopy;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:125 format:{@"PKCE algorithm %lu not implemented", algorithm}];
      hk_base64URLEncodedString = 0;
    }
  }

  else
  {
    hk_base64URLEncodedString = &stru_2863E37A8;
  }

  return hk_base64URLEncodedString;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    if (![(HKOAuth2LoginSession *)v7 isMemberOfClass:objc_opt_class()])
    {
      v14 = 0;
LABEL_49:

      goto LABEL_50;
    }

    state = self->_state;
    state = [(HKOAuth2LoginSession *)v7 state];
    if (state != state)
    {
      state2 = [(HKOAuth2LoginSession *)v7 state];
      if (!state2)
      {
        v14 = 0;
        goto LABEL_48;
      }

      v11 = state2;
      v12 = self->_state;
      state3 = [(HKOAuth2LoginSession *)v7 state];
      if (![(NSUUID *)v12 isEqual:state3])
      {
        v14 = 0;
LABEL_47:

        goto LABEL_48;
      }

      v56 = v11;
      v55 = state3;
    }

    loginURL = self->_loginURL;
    loginURL = [(HKOAuth2LoginSession *)v7 loginURL];
    if (loginURL != loginURL)
    {
      loginURL2 = [(HKOAuth2LoginSession *)v7 loginURL];
      if (!loginURL2)
      {
        goto LABEL_35;
      }

      v54 = loginURL2;
      v18 = self->_loginURL;
      loginURL3 = [(HKOAuth2LoginSession *)v7 loginURL];
      if (([(NSURL *)v18 isEqual:loginURL3]& 1) == 0)
      {
        goto LABEL_34;
      }
    }

    callbackURLComponents = self->_callbackURLComponents;
    callbackURLComponents = [(HKOAuth2LoginSession *)v7 callbackURLComponents];
    v53 = callbackURLComponents;
    if (callbackURLComponents == callbackURLComponents)
    {
      v52 = loginURL;
      v27 = loginURL;
LABEL_20:
      requestedScope = self->_requestedScope;
      requestedScope = [(HKOAuth2LoginSession *)v7 requestedScope];
      v30 = requestedScope;
      v49 = requestedScope;
      v51 = loginURL3;
      if (requestedScope == requestedScope)
      {
        v47 = requestedScope;
        v48 = callbackURLComponents;
        loginURL = v27;
      }

      else
      {
        requestedScope2 = [(HKOAuth2LoginSession *)v7 requestedScope];
        if (!requestedScope2)
        {
          v14 = 0;
          loginURL = v27;
          loginURL = v52;
          goto LABEL_37;
        }

        v45 = requestedScope2;
        v48 = callbackURLComponents;
        v32 = self->_requestedScope;
        requestedScope3 = [(HKOAuth2LoginSession *)v7 requestedScope];
        v34 = v32;
        v35 = requestedScope3;
        loginURL = v27;
        if (![(NSString *)v34 isEqualToString:requestedScope3])
        {

          v14 = 0;
          callbackURLComponents = v48;
          loginURL = v52;
          v42 = v53;
          goto LABEL_41;
        }

        v44 = v35;
        v47 = v30;
      }

      loginURL = v52;
      pkceVerifier = self->_pkceVerifier;
      pkceVerifier = [(HKOAuth2LoginSession *)v7 pkceVerifier];
      v14 = pkceVerifier == pkceVerifier;
      if (pkceVerifier != pkceVerifier)
      {
        pkceVerifier2 = [(HKOAuth2LoginSession *)v7 pkceVerifier];
        if (pkceVerifier2)
        {
          v39 = pkceVerifier2;
          v40 = self->_pkceVerifier;
          pkceVerifier3 = [(HKOAuth2LoginSession *)v7 pkceVerifier];
          v14 = [(NSString *)v40 isEqualToString:pkceVerifier3];

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

        callbackURLComponents = v48;
        goto LABEL_40;
      }

      callbackURLComponents = v48;
LABEL_37:

LABEL_40:
      v42 = v53;
LABEL_41:
      if (v42 != callbackURLComponents)
      {
      }

      goto LABEL_43;
    }

    callbackURLComponents2 = [(HKOAuth2LoginSession *)v7 callbackURLComponents];
    if (!callbackURLComponents2)
    {
      v51 = loginURL3;
      v14 = 0;
LABEL_43:

      if (loginURL != loginURL)
      {
      }

LABEL_46:
      state3 = v55;
      v11 = v56;
      if (state != state)
      {
        goto LABEL_47;
      }

LABEL_48:

      goto LABEL_49;
    }

    v50 = callbackURLComponents2;
    v52 = loginURL;
    v22 = callbackURLComponents;
    v23 = self->_callbackURLComponents;
    callbackURLComponents3 = [(HKOAuth2LoginSession *)v7 callbackURLComponents];
    v25 = v23;
    v26 = callbackURLComponents3;
    if (([(NSURLComponents *)v25 isEqual:callbackURLComponents3]& 1) != 0)
    {
      v27 = loginURL;
      v46 = v26;
      callbackURLComponents = v22;
      goto LABEL_20;
    }

    if (loginURL != loginURL)
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

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeObject:state forKey:@"state"];
  [coderCopy encodeObject:self->_loginURL forKey:@"loginURL"];
  string = [(NSURLComponents *)self->_callbackURLComponents string];
  [coderCopy encodeObject:string forKey:@"callbackURLString"];

  [coderCopy encodeObject:self->_requestedScope forKey:@"requestedScope"];
  [coderCopy encodeObject:self->_pkceVerifier forKey:@"pkceVerifier"];
}

- (HKOAuth2LoginSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loginURL"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callbackURLString"];
  v8 = [MEMORY[0x277CCACE0] componentsWithString:v7];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedScope"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pkceVerifier"];
  if (!v5 || !v6 || !v7 || !v9)
  {
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277CCA050];
    v14 = 4865;
LABEL_9:
    v15 = [v12 initWithDomain:v13 code:v14 userInfo:0];
    [coderCopy failWithError:v15];

    selfCopy = 0;
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
  selfCopy = self;
LABEL_10:

  return selfCopy;
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