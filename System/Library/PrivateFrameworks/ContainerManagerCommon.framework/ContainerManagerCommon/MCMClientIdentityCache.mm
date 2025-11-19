@interface MCMClientIdentityCache
- (MCMCache)cache;
- (MCMClientIdentityCache)init;
- (id)clientIdentityWithAuditToken:(id *)a3 proximateAuditToken:(id *)a4 personaUniqueString:(id)a5 error:(id *)a6 generator:(id)a7;
- (void)flush;
@end

@implementation MCMClientIdentityCache

- (MCMCache)cache
{
  result = self->_cache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)clientIdentityWithAuditToken:(id *)a3 proximateAuditToken:(id *)a4 personaUniqueString:(id)a5 error:(id *)a6 generator:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = a5;
  v14 = [MCMClientIdentityIndex alloc];
  v15 = *&a3->var0[4];
  *buf = *a3->var0;
  v33 = v15;
  v16 = *&a4->var0[4];
  v31[0] = *a4->var0;
  v31[1] = v16;
  v17 = [(MCMClientIdentityIndex *)v14 initWithAuditToken:buf proximateAuditToken:v31 personaUniqueString:v13];

  if (v17)
  {
    v18 = [(MCMClientIdentityCache *)self cache];
    v19 = [v18 objectForKey:v17];

    if (v19)
    {
      v20 = 0;
LABEL_13:
      v23 = 0;
      goto LABEL_14;
    }

    v30 = 0;
    v19 = v12[2](v12, &v30);
    v20 = v30;
    if (v19)
    {
      v23 = [v19 clientIdentityByChangingCached:1];
      if (v23)
      {
        v24 = [(MCMClientIdentityCache *)self cache];
        [v24 setObject:v23 forKey:v17];
      }

      goto LABEL_14;
    }
  }

  else
  {
    v20 = [[MCMError alloc] initWithErrorType:73 category:3];
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = *&a3->var0[4];
      *buf = *a3->var0;
      v33 = v28;
      pid = container_audit_token_get_pid();
      *buf = 67109120;
      *&buf[4] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Could not generate client identity index for pid %d", buf, 8u);
    }
  }

  if (!a6)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v22 = v20;
  v19 = 0;
  v23 = 0;
  *a6 = v20;
LABEL_14:
  v25 = v19;

  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)flush
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = [(MCMClientIdentityCache *)self cache];
  [v3 removeAllObjects];
  v2 = *MEMORY[0x1E69E9840];
}

- (MCMClientIdentityCache)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMClientIdentityCache;
  v2 = [(MCMClientIdentityCache *)&v7 init];
  if (v2)
  {
    v3 = [[MCMLRUCache alloc] initWithName:@"perPersonaClients" maxCount:30];
    cache = v2->_cache;
    v2->_cache = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

@end