@interface CPSAppSignInResponse
- (ASAuthorizationCredential)credential;
- (CPSAppSignInResponse)initWithAppleIDAuthorization:(id)authorization;
- (CPSAppSignInResponse)initWithCoder:(id)coder;
- (CPSAppSignInResponse)initWithPasswordCredential:(id)credential;
- (CPSAppSignInResponse)initWithPlatformKeyCredentialAssertion:(id)assertion;
- (CPSAppSignInResponse)initWithPlatformKeyCredentialRegistration:(id)registration;
- (CPSAppSignInResponse)initWithWebCallbackURL:(id)l;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSAppSignInResponse

- (CPSAppSignInResponse)initWithAppleIDAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  if (!authorizationCopy)
  {
    [CPSAppSignInResponse initWithAppleIDAuthorization:a2];
  }

  v7 = authorizationCopy;
  v11.receiver = self;
  v11.super_class = CPSAppSignInResponse;
  v8 = [(CPSAppSignInResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appleIDAuthorization, authorization);
  }

  return v9;
}

- (CPSAppSignInResponse)initWithPasswordCredential:(id)credential
{
  credentialCopy = credential;
  if (!credentialCopy)
  {
    [CPSAppSignInResponse initWithPasswordCredential:a2];
  }

  v7 = credentialCopy;
  v11.receiver = self;
  v11.super_class = CPSAppSignInResponse;
  v8 = [(CPSAppSignInResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_passwordCredential, credential);
  }

  return v9;
}

- (CPSAppSignInResponse)initWithWebCallbackURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [CPSAppSignInResponse initWithWebCallbackURL:a2];
  }

  v7 = lCopy;
  v11.receiver = self;
  v11.super_class = CPSAppSignInResponse;
  v8 = [(CPSAppSignInResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webCallbackURL, l);
  }

  return v9;
}

- (CPSAppSignInResponse)initWithPlatformKeyCredentialAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (!assertionCopy)
  {
    [CPSAppSignInResponse initWithPlatformKeyCredentialAssertion:a2];
  }

  v7 = assertionCopy;
  v11.receiver = self;
  v11.super_class = CPSAppSignInResponse;
  v8 = [(CPSAppSignInResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_platformKeyCredentialAssertion, assertion);
  }

  return v9;
}

- (CPSAppSignInResponse)initWithPlatformKeyCredentialRegistration:(id)registration
{
  registrationCopy = registration;
  if (!registrationCopy)
  {
    [CPSAppSignInResponse initWithPlatformKeyCredentialRegistration:a2];
  }

  v7 = registrationCopy;
  v11.receiver = self;
  v11.super_class = CPSAppSignInResponse;
  v8 = [(CPSAppSignInResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_platformKeyCredentialRegistration, registration);
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_appleIDAuthorization withName:@"appleIDAuthorization" skipIfNil:1];
  v5 = [v3 appendObject:self->_passwordCredential withName:@"passwordCredential" skipIfNil:1];
  if (self->_webCallbackURL)
  {
    v6 = CUPrintNSObjectMasked();
    [v3 appendString:v6 withName:@"webCallbackURL"];
  }

  v7 = [v3 appendObject:self->_platformKeyCredentialAssertion withName:@"platformKeyCredentialAssertion" skipIfNil:1];
  v8 = [v3 appendObject:self->_platformKeyCredentialRegistration withName:@"platformKeyCredentialRegistration" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (ASAuthorizationCredential)credential
{
  if (self->_passwordCredential)
  {
    ASPasswordCredentialClass = getASPasswordCredentialClass();
    user = [(CASPasswordCredential *)self->_passwordCredential user];
    password = [(CASPasswordCredential *)self->_passwordCredential password];
    v6 = [ASPasswordCredentialClass credentialWithUser:user password:password];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CPSAppSignInResponse)initWithCoder:(id)coder
{
  v23[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"appleIDAuthorization"];

  if (v6)
  {
    self = [(CPSAppSignInResponse *)self initWithAppleIDAuthorization:v6];
    selfCopy5 = self;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"passwordCredential"];

    if (v9)
    {
      self = [(CPSAppSignInResponse *)self initWithPasswordCredential:v9];
      selfCopy5 = self;
    }

    else
    {
      v10 = objc_opt_self();
      v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"webCallbackURL"];

      if (v11)
      {
        self = [(CPSAppSignInResponse *)self initWithWebCallbackURL:v11];
        selfCopy5 = self;
      }

      else
      {
        v12 = objc_opt_self();
        v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"platformKeyCredentialAssertion"];

        if (v13)
        {
          self = [(CPSAppSignInResponse *)self initWithPlatformKeyCredentialAssertion:v13];
          selfCopy5 = self;
        }

        else
        {
          v14 = objc_opt_self();
          v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"platformKeyCredentialRegistration"];

          if (v15)
          {
            self = [(CPSAppSignInResponse *)self initWithPlatformKeyCredentialRegistration:v15];
            selfCopy5 = self;
          }

          else
          {
            v16 = MEMORY[0x277CCA9B8];
            v17 = *MEMORY[0x277CCA050];
            v22 = *MEMORY[0x277CCA470];
            v23[0] = @"Failed to decode CPSAppSignInResponse: missing credential values";
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
            v19 = [v16 errorWithDomain:v17 code:4865 userInfo:v18];
            [coderCopy failWithError:v19];

            selfCopy5 = 0;
          }
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return selfCopy5;
}

- (void)encodeWithCoder:(id)coder
{
  appleIDAuthorization = self->_appleIDAuthorization;
  coderCopy = coder;
  [coderCopy encodeObject:appleIDAuthorization forKey:@"appleIDAuthorization"];
  [coderCopy encodeObject:self->_passwordCredential forKey:@"passwordCredential"];
  [coderCopy encodeObject:self->_webCallbackURL forKey:@"webCallbackURL"];
  [coderCopy encodeObject:self->_platformKeyCredentialAssertion forKey:@"platformKeyCredentialAssertion"];
  [coderCopy encodeObject:self->_platformKeyCredentialRegistration forKey:@"platformKeyCredentialRegistration"];
}

- (void)initWithAppleIDAuthorization:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_243D1C000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"appleIDAuthorization != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPasswordCredential:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_243D1C000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"passwordCredential != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithWebCallbackURL:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_243D1C000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"webCallbackURL != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPlatformKeyCredentialAssertion:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_243D1C000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"platformKeyCredentialAssertion != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPlatformKeyCredentialRegistration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_243D1C000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"platformKeyCredentialRegistration != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end