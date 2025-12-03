@interface _MFNTLMAuthenticator
- (id)responseForServerData:(id)data;
- (void)dealloc;
- (void)setAuthenticationState:(int64_t)state;
@end

@implementation _MFNTLMAuthenticator

- (void)dealloc
{
  if (self->_ntlmGeneratorRef)
  {
    NtlmGeneratorRelease();
  }

  v3.receiver = self;
  v3.super_class = _MFNTLMAuthenticator;
  [(_MFNTLMAuthenticator *)&v3 dealloc];
}

- (void)setAuthenticationState:(int64_t)state
{
  v11.receiver = self;
  v11.super_class = _MFNTLMAuthenticator;
  [(ECSASLAuthenticator *)&v11 setAuthenticationState:?];
  if (state == 1)
  {
    v5 = MFLogGeneral();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *v10 = 0;
    v6 = "start NTLM authentication";
    v7 = v5;
  }

  else
  {
    if (self->_ntlmGeneratorRef)
    {
      NtlmGeneratorRelease();
      self->_ntlmGeneratorRef = 0;
    }

    self->_ntlmError = 0;
    v8 = MFLogGeneral();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (state == 4)
    {
      if (!v9)
      {
        return;
      }

      *v10 = 0;
      v6 = "NTLM authentication succeeded";
    }

    else
    {
      if (!v9)
      {
        return;
      }

      *v10 = 0;
      v6 = "NTLM authentication failed";
    }

    v7 = v8;
  }

  _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, v6, v10, 2u);
}

- (id)responseForServerData:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_ntlmError)
  {
    if (self->_ntlmGeneratorRef)
    {
      account = [(ECSASLAuthenticator *)self account];
      domain = [(ECAuthenticatableAccount *)account domain];
      if (domain)
      {
        v7 = domain;
      }

      else
      {
        v7 = &stru_1F273A5E0;
      }

      username = [(ECAuthenticatableAccount *)account username];
      if (username)
      {
        v9 = username;
      }

      else
      {
        v9 = &stru_1F273A5E0;
      }

      [(ECAuthenticatableAccount *)account password];
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = v9;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_INFO, "NTLM - respond to server challenge; user = %@; domain = %@", buf, 0x16u);
      }

      ntlmGeneratorRef = self->_ntlmGeneratorRef;
      ClientResponse = NtlmCreateClientResponse();
    }

    else
    {
      if ([data length])
      {
        v13 = MFLogGeneral();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_INFO, "*** Unexpected server response during NTLM authentication", buf, 2u);
        }
      }

      v14 = NtlmGeneratorCreate();
      self->_ntlmError = v14;
      if (v14)
      {
        goto LABEL_19;
      }

      v17 = self->_ntlmGeneratorRef;
      ClientResponse = NtlmCreateClientRequest();
    }

    self->_ntlmError = ClientResponse;
    if (!ClientResponse)
    {
LABEL_21:
      result = 0;
      goto LABEL_22;
    }

LABEL_19:
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(_MFNTLMAuthenticator *)&self->_ntlmError responseForServerData:v15];
    }

    goto LABEL_21;
  }

  result = 0;
LABEL_22:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)responseForServerData:(int *)a1 .cold.1(int *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "*** Error %ld occurred during NTLM authentication", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end