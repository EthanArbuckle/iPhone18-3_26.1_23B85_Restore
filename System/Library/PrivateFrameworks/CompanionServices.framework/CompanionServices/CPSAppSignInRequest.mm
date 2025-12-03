@interface CPSAppSignInRequest
- (CPSAppSignInRequest)initWithAppleIDRequest:(id)request passwordReqeust:(id)reqeust platformKeyCredentialAssertionOptions:(id)options platformKeyCredentialRegistrationOptions:(id)registrationOptions;
- (CPSAppSignInRequest)initWithAppleIDRequest:(id)request passwordRequest:(id)passwordRequest platformKeyCredentialAssertionOptions:(id)options platformKeyCredentialRegistrationOptions:(id)registrationOptions;
- (CPSAppSignInRequest)initWithCoder:(id)coder;
- (CPSAppSignInRequest)initWithRequests:(id)requests;
- (CPSAppSignInRequest)initWithWebRequest:(id)request;
- (id)description;
- (int64_t)authType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSAppSignInRequest

- (CPSAppSignInRequest)initWithRequests:(id)requests
{
  requestsCopy = requests;
  v10.receiver = self;
  v10.super_class = CPSAppSignInRequest;
  v5 = [(CPSAuthenticationRequest *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__CPSAppSignInRequest_initWithRequests___block_invoke;
    v8[3] = &unk_278DF1448;
    v9 = v5;
    [requestsCopy enumerateObjectsUsingBlock:v8];
  }

  return v6;
}

void __40__CPSAppSignInRequest_initWithRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = 16;
  if (!v4[2])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v6 = getASAuthorizationAppleIDRequestClass_softClass;
    v29 = getASAuthorizationAppleIDRequestClass_softClass;
    if (!getASAuthorizationAppleIDRequestClass_softClass)
    {
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __getASAuthorizationAppleIDRequestClass_block_invoke;
      v24 = &unk_278DF1470;
      v25 = &v26;
      __getASAuthorizationAppleIDRequestClass_block_invoke(&v21);
      v6 = v27[3];
    }

    v7 = v6;
    _Block_object_dispose(&v26, 8);
    if (objc_opt_isKindOfClass())
    {
      v8 = v3;
      if (!v8)
      {
        __40__CPSAppSignInRequest_initWithRequests___block_invoke_cold_1();
      }

      v9 = v8;
      v10 = objc_alloc_init(MEMORY[0x277CF01B0]);
      v11 = [v9 user];
      [v10 setUserIdentifier:v11];

      v12 = [v9 state];
      [v10 setState:v12];

      v13 = [v9 nonce];
      [v10 setNonce:v13];

      v14 = [v9 requestedScopes];
      v15 = [v14 bs_mapNoNulls:&__block_literal_global];
      [v10 setRequestedScopes:v15];

      goto LABEL_22;
    }

    v4 = *(a1 + 32);
  }

  v5 = 24;
  if (!v4[3])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v16 = getASAuthorizationPasswordRequestClass_softClass;
    v29 = getASAuthorizationPasswordRequestClass_softClass;
    if (!getASAuthorizationPasswordRequestClass_softClass)
    {
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __getASAuthorizationPasswordRequestClass_block_invoke;
      v24 = &unk_278DF1470;
      v25 = &v26;
      __getASAuthorizationPasswordRequestClass_block_invoke(&v21);
      v16 = v27[3];
    }

    v17 = v16;
    _Block_object_dispose(&v26, 8);
    if (objc_opt_isKindOfClass())
    {
      v18 = objc_alloc_init(MEMORY[0x277CF0280]);
LABEL_21:
      v10 = v18;
LABEL_22:
      v19 = *(a1 + 32);
      v20 = *(v19 + v5);
      *(v19 + v5) = v10;

      goto LABEL_23;
    }

    v4 = *(a1 + 32);
  }

  v5 = 48;
  if (!v4[6])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v3 coreCredentialAssertionOptions];
      goto LABEL_21;
    }

    v4 = *(a1 + 32);
  }

  v5 = 56;
  if (!v4[7])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v3 coreCredentialCreationOptions];
      goto LABEL_21;
    }
  }

LABEL_23:
}

- (CPSAppSignInRequest)initWithWebRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    [(CPSAppSignInRequest *)a2 initWithWebRequest:?];
  }

  v7 = requestCopy;
  v11.receiver = self;
  v11.super_class = CPSAppSignInRequest;
  v8 = [(CPSAuthenticationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webRequest, request);
  }

  return v9;
}

- (CPSAppSignInRequest)initWithAppleIDRequest:(id)request passwordRequest:(id)passwordRequest platformKeyCredentialAssertionOptions:(id)options platformKeyCredentialRegistrationOptions:(id)registrationOptions
{
  requestCopy = request;
  passwordRequestCopy = passwordRequest;
  optionsCopy = options;
  registrationOptionsCopy = registrationOptions;
  v18.receiver = self;
  v18.super_class = CPSAppSignInRequest;
  v15 = [(CPSAuthenticationRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_appleIDRequest, request);
    objc_storeStrong(&v16->_passwordRequest, passwordRequest);
    objc_storeStrong(&v16->_platformKeyCredentialAssertionOptions, options);
    objc_storeStrong(&v16->_platformKeyCredentialRegistrationOptions, registrationOptions);
  }

  return v16;
}

- (CPSAppSignInRequest)initWithAppleIDRequest:(id)request passwordReqeust:(id)reqeust platformKeyCredentialAssertionOptions:(id)options platformKeyCredentialRegistrationOptions:(id)registrationOptions
{
  requestCopy = request;
  reqeustCopy = reqeust;
  optionsCopy = options;
  registrationOptionsCopy = registrationOptions;
  v18.receiver = self;
  v18.super_class = CPSAppSignInRequest;
  v15 = [(CPSAuthenticationRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_appleIDRequest, request);
    objc_storeStrong(&v16->_passwordRequest, reqeust);
    objc_storeStrong(&v16->_platformKeyCredentialAssertionOptions, options);
    objc_storeStrong(&v16->_platformKeyCredentialRegistrationOptions, registrationOptions);
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_appleIDRequest withName:@"appleIDRequest" skipIfNil:1];
  v5 = [v3 appendObject:self->_passwordRequest withName:@"passwordRequest" skipIfNil:1];
  v6 = [v3 appendObject:self->_webRequest withName:@"webRequest" skipIfNil:1];
  v7 = [v3 appendObject:self->_platformKeyCredentialAssertionOptions withName:@"platformKeyCredentialAssertionOptions" skipIfNil:1];
  v8 = [v3 appendObject:self->_platformKeyCredentialRegistrationOptions withName:@"platformKeyCredentialRegistrationOptions" skipIfNil:1];
  v9 = [v3 appendObject:self->_customAuthenticationMethods withName:@"customAuthenticationMethods" skipIfNil:1];
  [v3 appendString:self->_overrideBundleIdentifier withName:@"overrideBundleIdentifier" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (int64_t)authType
{
  if (self->_webRequest)
  {
    return 5;
  }

  if ([(CPSAppSignInRequest *)self _isPlatformKeyOnlyRequest:v2])
  {
    return 6;
  }

  return 2;
}

- (CPSAppSignInRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = CPSAppSignInRequest;
  v5 = [(CPSAuthenticationRequest *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"appleIDRequest"];
    appleIDRequest = v5->_appleIDRequest;
    v5->_appleIDRequest = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"passwordRequest"];
    passwordRequest = v5->_passwordRequest;
    v5->_passwordRequest = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"webRequest"];
    webRequest = v5->_webRequest;
    v5->_webRequest = v13;

    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"platformKeyCredentialAssertionOptions"];
    platformKeyCredentialAssertionOptions = v5->_platformKeyCredentialAssertionOptions;
    v5->_platformKeyCredentialAssertionOptions = v16;

    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"platformKeyCredentialRegistrationOptions"];
    platformKeyCredentialRegistrationOptions = v5->_platformKeyCredentialRegistrationOptions;
    v5->_platformKeyCredentialRegistrationOptions = v19;

    v21 = objc_opt_self();
    v22 = [coderCopy decodeArrayOfObjectsOfClass:v21 forKey:@"customAuthenticationMethods"];
    customAuthenticationMethods = v5->_customAuthenticationMethods;
    v5->_customAuthenticationMethods = v22;

    v24 = objc_opt_self();
    v25 = [coderCopy decodeObjectOfClass:v24 forKey:@"overrideBundleIdentifier"];
    overrideBundleIdentifier = v5->_overrideBundleIdentifier;
    v5->_overrideBundleIdentifier = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSAppSignInRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_appleIDRequest forKey:{@"appleIDRequest", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_passwordRequest forKey:@"passwordRequest"];
  [coderCopy encodeObject:self->_webRequest forKey:@"webRequest"];
  [coderCopy encodeObject:self->_platformKeyCredentialAssertionOptions forKey:@"platformKeyCredentialAssertionOptions"];
  [coderCopy encodeObject:self->_platformKeyCredentialRegistrationOptions forKey:@"platformKeyCredentialRegistrationOptions"];
  [coderCopy encodeObject:self->_customAuthenticationMethods forKey:@"customAuthenticationMethods"];
  [coderCopy encodeObject:self->_overrideBundleIdentifier forKey:@"overrideBundleIdentifier"];
}

void __40__CPSAppSignInRequest_initWithRequests___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"inRequest"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AKAuthorizationRequest *_CPSAKAuthorizationRequestFromASAuthorizationAppleIDRequest(ASAuthorizationAppleIDRequest *__strong)"];
    *buf = 138544130;
    v4 = v1;
    v5 = 2114;
    v6 = @"CPSAppSignInRequest.m";
    v7 = 1024;
    v8 = 28;
    v9 = 2114;
    v10 = v0;
    _os_log_error_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  v2 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithWebRequest:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"webRequest != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"CPSAppSignInRequest.m";
    v16 = 1024;
    v17 = 89;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end