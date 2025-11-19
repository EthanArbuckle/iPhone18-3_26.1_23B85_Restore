@interface MCMClientFactory
- (MCMClientCodeSignInfoCache)clientCodeSignInfoCache;
- (MCMClientFactory)initWithUserIdentityCache:(id)a3 clientCodeSignInfoCache:(id)a4 clientIdentityCache:(id)a5;
- (MCMClientIdentityCache)clientIdentityCache;
- (MCMUserIdentityCache)userIdentityCache;
- (id)_clientIdentityWithClientMessageContext:(id)a3 error:(id *)a4;
- (id)_codeSignInfoWithClient:(container_client *)a3 CDHash:(id)a4 identifier:(id)a5 teamIdentifier:(id)a6 error:(id *)a7;
- (id)_proxiedClientIdentityFromMessage:(id)a3 proximateClient:(id)a4 error:(id *)a5;
- (id)clientIdentityWithClient:(container_client *)a3 proximateClient:(id)a4 error:(id *)a5;
- (id)clientIdentityWithClientMessageContext:(id)a3 xpcMessage:(id)a4 error:(id *)a5;
@end

@implementation MCMClientFactory

- (MCMClientIdentityCache)clientIdentityCache
{
  result = self->_clientIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMClientCodeSignInfoCache)clientCodeSignInfoCache
{
  result = self->_clientCodeSignInfoCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_codeSignInfoWithClient:(container_client *)a3 CDHash:(id)a4 identifier:(id)a5 teamIdentifier:(id)a6 error:(id *)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v38 = 0u;
  v39 = 0u;
  container_client_get_audit_token();
  *buf = 0u;
  v37 = 0u;
  codesign_status = container_audit_token_get_codesign_status();
  pid = container_client_get_pid();
  if ((codesign_status & 1) == 0)
  {
    v15 = [[MCMError alloc] initWithErrorType:98 category:3];
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Client pid [%d] is not signed or has died.", buf, 8u);
    }

    goto LABEL_17;
  }

  v17 = container_client_copy_entitlement();
  if (!v17 || (v18 = _CFXPCCreateCFObjectFromXPCObject()) == 0)
  {
    if ((container_client_is_alive() & 1) == 0)
    {
      v15 = [[MCMError alloc] initWithErrorType:98 category:3];
      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = pid;
        _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "Client pid [%d] has died, failed to fetch entitlements.", buf, 8u);
      }

LABEL_17:
      v24 = 0;
      v18 = 0;
      v29 = 0;
      if (!a7)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    v18 = MEMORY[0x1E695E0F8];
  }

  v35 = v12;
  v19 = v10;

  v20 = [MCMEntitlements alloc];
  v21 = containermanager_copy_global_configuration();
  v22 = [v21 staticConfig];
  v23 = [v22 containerConfigMap];
  v24 = [(MCMEntitlements *)v20 initWithEntitlements:v18 clientIdentifier:v11 containerConfigMap:v23];

  v25 = container_log_handle_for_category();
  v26 = v25;
  if (v24)
  {
    v10 = v19;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_debug_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_DEBUG, "Generating new codesign info blob for [%@]", buf, 0xCu);
    }

    v27 = [MCMClientCodeSignInfo alloc];
    v28 = v19;
    v12 = v35;
    v29 = [(MCMClientCodeSignInfo *)v27 initWithCDHash:v28 entitlements:v24 identifier:v11 teamIdentifier:v35 status:codesign_status];
    v15 = 0;
    if (!a7)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (!v29)
    {
      v31 = v15;
      *a7 = v15;
    }

    goto LABEL_20;
  }

  v10 = v19;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = pid;
    _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Could not initialize entitlements for pid [%d]", buf, 8u);
  }

  v15 = [[MCMError alloc] initWithErrorType:97 category:3];
  v24 = 0;
  v29 = 0;
  v12 = v35;
  if (a7)
  {
    goto LABEL_18;
  }

LABEL_20:
  v32 = v29;

  v33 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)clientIdentityWithClient:(container_client *)a3 proximateClient:(id)a4 error:(id *)a5
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v69 = 0u;
  v70 = 0u;
  container_client_get_audit_token();
  is_test_client = container_client_is_test_client();
  euid = container_client_get_euid();
  pid = container_client_get_pid();
  platform = container_client_get_platform();
  v56 = v7;
  if (!container_client_is_signed())
  {
    v21 = [[MCMError alloc] initWithErrorType:98 category:3];
    v22 = container_log_handle_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Client pid [%d] is not signed or has died.", buf, 8u);
    }

    goto LABEL_20;
  }

  v66 = 0;
  *buf = v69;
  *&buf[16] = v70;
  v12 = container_audit_token_copy_codesign_hash();
  __s = v12;
  if (!v12)
  {
    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *&buf[8] = *(&v69 + 1);
      *&buf[16] = v70;
      *buf = 67109120;
      *&buf[4] = container_audit_token_get_pid();
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Failed to get codesign hash for pid %d", buf, 8u);
    }

    v21 = [[MCMError alloc] initWithErrorType:97 category:3];
LABEL_20:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v17 = 0;
    v15 = 0;
    v28 = 0;
    v20 = 0;
    v29 = 0;
    goto LABEL_21;
  }

  v54 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:v66];
  free(__s);
  memset_s(&__s, 8uLL, 0, 8uLL);
  codesign_identifier = container_client_get_codesign_identifier();
  if (!codesign_identifier || ([MEMORY[0x1E696AEC0] stringWithUTF8String:codesign_identifier], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Could not get client identifier for pid [%d]", buf, 8u);
    }

    v21 = [[MCMError alloc] initWithErrorType:97 category:3];
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v17 = 0;
    v15 = 0;
    goto LABEL_41;
  }

  v15 = v14;
  v53 = platform;
  codesign_team_identifier = container_client_get_codesign_team_identifier();
  if (codesign_team_identifier)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:codesign_team_identifier];
    if (is_test_client)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    if (is_test_client)
    {
LABEL_7:
      if (v7)
      {
        v18 = containermanager_copy_global_configuration();
        if ([v18 isInternalImage])
        {
          v19 = [v7 isAllowedToTest];

          if (v19)
          {
            v52 = pid;
            v64 = 0;
            v20 = [(MCMClientFactory *)self _codeSignInfoWithClient:a3 CDHash:v54 identifier:v15 teamIdentifier:v17 error:&v64];
            v21 = v64;
            goto LABEL_25;
          }
        }

        else
        {
        }

        v37 = container_log_handle_for_category();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_ERROR, "Cannot use a test client.", buf, 2u);
        }

        v36 = +[MCMError notEntitled];
      }

      else
      {
        v35 = container_log_handle_for_category();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Cannot use a test client without a proximate client.", buf, 2u);
        }

        v36 = [[MCMError alloc] initWithErrorType:38 category:3];
      }

      v21 = v36;
LABEL_40:
      v24 = 0;
      v25 = 0;
      v26 = 0;
LABEL_41:
      v20 = 0;
      goto LABEL_42;
    }
  }

  v52 = pid;
  v31 = [(MCMClientFactory *)self clientCodeSignInfoCache];
  v62 = a3;
  v63 = 0;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __67__MCMClientFactory_clientIdentityWithClient_proximateClient_error___block_invoke;
  v58[3] = &unk_1E86B0010;
  v58[4] = self;
  v59 = v54;
  v60 = v15;
  v61 = v17;
  v20 = [v31 codeSignInfoForCDHash:v59 identifier:v60 error:&v63 generator:v58];
  v21 = v63;

LABEL_25:
  if (!v20)
  {
    v34 = container_log_handle_for_category();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1DF2C3000, v34, OS_LOG_TYPE_ERROR, "Could not generate codesign info from xpc connection; error = %@", buf, 0xCu);
    }

    goto LABEL_40;
  }

  is_sandboxed = container_client_is_sandboxed();
  v32 = [(MCMClientFactory *)self userIdentityCache];
  v57 = v21;
  v26 = [v32 userIdentityForClient:a3 error:&v57];
  v33 = v57;

  if (v26)
  {
    v50 = v33;
    bzero(v67, 0x401uLL);
    *buf = v69;
    *&buf[16] = v70;
    if (sandbox_container_path_for_audit_token())
    {
      v25 = 0;
    }

    else
    {
      v25 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v67 isDirectory:1 relativeToURL:0];
    }

    v43 = [MCMPOSIXUser posixUserWithUID:euid];
    if (v43)
    {
      v24 = v43;
      v44 = container_log_handle_for_category();
      v28 = v54;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v47 = [v26 shortDescription];
        *buf = 138412546;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v47;
        _os_log_debug_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_DEBUG, "Generating new client identity for [%@/%@]", buf, 0x16u);

        v28 = v54;
      }

      v45 = [MCMClientIdentity alloc];
      *buf = v69;
      *&buf[16] = v70;
      LOWORD(v49) = is_test_client;
      LOBYTE(v48) = is_sandboxed;
      v29 = [(MCMClientIdentity *)v45 initWithPOSIXUser:v24 POSIXPID:v52 platform:v53 userIdentity:v26 proximateClient:v56 auditToken:buf codeSignInfo:v20 sandboxed:v48 sandboxContainerURL:v25 testClient:v49 kernel:?];
      v21 = v50;
LABEL_21:
      v30 = a5;
      if (!a5)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v21 = [[MCMError alloc] initWithErrorType:75 category:3];

    v46 = container_log_handle_for_category();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = euid;
      *&buf[8] = 1024;
      *&buf[10] = v52;
      _os_log_error_impl(&dword_1DF2C3000, v46, OS_LOG_TYPE_ERROR, "Could not generate user details for euid %u from pid %d", buf, 0xEu);
    }

    v24 = 0;
  }

  else
  {
    v42 = container_log_handle_for_category();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *&buf[4] = v52;
      *&buf[8] = 2112;
      *&buf[10] = v33;
      _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Could not compute user identity for client %d; error = %@", buf, 0x12u);
    }

    v24 = 0;
    v21 = v33;
    v25 = 0;
    v26 = 0;
  }

LABEL_42:
  v29 = 0;
  v28 = v54;
  v30 = a5;
  if (!a5)
  {
    goto LABEL_45;
  }

LABEL_43:
  if (!v29)
  {
    v38 = v21;
    *v30 = v21;
  }

LABEL_45:
  v39 = v29;

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

uint64_t __67__MCMClientFactory_clientIdentityWithClient_proximateClient_error___block_invoke(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];

  return [v4 _codeSignInfoWithClient:v3 CDHash:v5 identifier:v6 teamIdentifier:v7 error:a2];
}

- (MCMClientFactory)initWithUserIdentityCache:(id)a3 clientCodeSignInfoCache:(id)a4 clientIdentityCache:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MCMClientFactory;
  v12 = [(MCMClientFactory *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userIdentityCache, a3);
    objc_storeStrong(&v13->_clientCodeSignInfoCache, a4);
    objc_storeStrong(&v13->_clientIdentityCache, a5);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_clientIdentityWithClientMessageContext:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  v22 = 1;
  v25 = 0u;
  v26 = 0u;
  if (v6)
  {
    [v6 auditToken];
  }

  v8 = [v7 personaUniqueString];
  *buf = v25;
  v24 = v26;
  v9 = container_audit_token_copy_codesign_identifier();
  __s = v9;
  if (v9)
  {
    v10 = v9;
    if (!strncmp("com.apple.installd", v9, 0x13uLL))
    {
      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Ignoring client persona because it is identified as installd; persona was = [%@]", buf, 0xCu);
      }

      v8 = 0;
    }

    free(v10);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  [v8 UTF8String];
  *buf = v25;
  v24 = v26;
  v12 = container_client_create_from_audit_token();
  if (v12)
  {
    v20 = 0;
    v13 = [(MCMClientFactory *)self clientIdentityWithClient:v12 proximateClient:0 error:&v20];
    v14 = v20;
  }

  else
  {
    v15 = [MCMError alloc];
    v14 = [(MCMError *)v15 initWithErrorType:v22 category:2];
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Could not generate client object from xpc connection; error = %@", buf, 0xCu);
    }

    v13 = 0;
  }

  container_free_client();
  if (a4 && !v13)
  {
    v17 = v14;
    *a4 = v14;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_proxiedClientIdentityFromMessage:(id)a3 proximateClient:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = xpc_dictionary_get_dictionary(a3, "ProxyForClient");
  if (!v9)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v32 = 1;
  v10 = container_client_copy_decoded_from_xpc_object();
  if (!v10)
  {
    v16 = [[MCMError alloc] initWithErrorType:v32 category:3];
    v17 = container_log_handle_for_category();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

LABEL_14:
      v21 = 0;
      if (!a5)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    *buf = 136315138;
    *&buf[4] = container_get_error_description();
    v18 = "Invalid proxied client, error = %s";
    v19 = v17;
    v20 = 12;
LABEL_28:
    _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    goto LABEL_13;
  }

  v11 = v10;
  if (!container_client_is_test_client())
  {
    goto LABEL_6;
  }

  v12 = containermanager_copy_global_configuration();
  if (![v12 isInternalImage])
  {

    goto LABEL_12;
  }

  v13 = [v8 isAllowedToTest];

  if ((v13 & 1) == 0)
  {
LABEL_12:
    v16 = +[MCMError notEntitled];
    v17 = container_log_handle_for_category();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v18 = "Not allowed to proxy a test client";
    v19 = v17;
    v20 = 2;
    goto LABEL_28;
  }

LABEL_6:
  *buf = 0u;
  v36 = 0u;
  container_client_get_audit_token();
  persona_unique_string = container_client_get_persona_unique_string();
  if (persona_unique_string)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
  }

  else
  {
    v15 = 0;
  }

  if (container_client_is_test_client())
  {
    v31 = 0;
    v21 = [(MCMClientFactory *)self clientIdentityWithClient:v11 proximateClient:v8 error:&v31];
    v16 = v31;
  }

  else
  {
    v26 = [(MCMClientFactory *)self clientIdentityCache];
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      memset(v34, 0, sizeof(v34));
    }

    v29 = v11;
    v30 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __81__MCMClientFactory_XPC___proxiedClientIdentityFromMessage_proximateClient_error___block_invoke;
    v27[3] = &unk_1E86B0060;
    v27[4] = self;
    v28 = v8;
    v33[0] = *buf;
    v33[1] = v36;
    v21 = [v26 clientIdentityWithAuditToken:v33 proximateAuditToken:v34 personaUniqueString:v15 error:&v30 generator:v27];
    v16 = v30;
  }

  container_free_client();

  if (a5)
  {
LABEL_15:
    if (!v21)
    {
      v22 = v16;
      *a5 = v16;
    }
  }

LABEL_17:
  v23 = v21;

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t __81__MCMClientFactory_XPC___proxiedClientIdentityFromMessage_proximateClient_error___block_invoke(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1[6];
  v4 = a1[4];
  v5 = a1[5];

  return [v4 clientIdentityWithClient:v3 proximateClient:v5 error:a2];
}

- (id)clientIdentityWithClientMessageContext:(id)a3 xpcMessage:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(MCMClientFactory *)self clientIdentityCache];
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    *buf = 0u;
    v33 = 0u;
  }

  v11 = [v8 personaUniqueString];
  v30 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __81__MCMClientFactory_XPC__clientIdentityWithClientMessageContext_xpcMessage_error___block_invoke;
  v28[3] = &unk_1E86B0038;
  v28[4] = self;
  v12 = v8;
  v29 = v12;
  memset(v31, 0, sizeof(v31));
  v13 = [v10 clientIdentityWithAuditToken:buf proximateAuditToken:v31 personaUniqueString:v11 error:&v30 generator:v28];
  v14 = v30;

  if (!v13)
  {
    v15 = 0;
    v17 = 0;
    if (!a5)
    {
LABEL_17:
      v19 = 0;
      goto LABEL_18;
    }

LABEL_10:
    v18 = v14;
    v19 = 0;
    *a5 = v14;
LABEL_18:
    v16 = v14;
    goto LABEL_19;
  }

  v27 = v14;
  v15 = [(MCMClientFactory *)self _proxiedClientIdentityFromMessage:v9 proximateClient:v13 error:&v27];
  v16 = v27;

  if (!v15 && v16)
  {
    v15 = 0;
    v17 = 0;
    v14 = v16;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v20 = [v13 codeSignInfo];
  v17 = [v20 entitlements];

  v21 = v13;
  if (v15)
  {
    v22 = [v17 proxyAllowed];
    v21 = v15;
    if ((v22 & 1) == 0)
    {
      v14 = +[MCMError notEntitled];

      v23 = container_log_handle_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Not entitled to proxy", buf, 2u);
      }

      if (!a5)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  v19 = v21;
LABEL_19:
  v24 = v19;

  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __81__MCMClientFactory_XPC__clientIdentityWithClientMessageContext_xpcMessage_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _clientIdentityWithClientMessageContext:v4 error:a2];
}

@end