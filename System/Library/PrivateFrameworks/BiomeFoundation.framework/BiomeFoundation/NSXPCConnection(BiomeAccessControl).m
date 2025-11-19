@interface NSXPCConnection(BiomeAccessControl)
- (BMProcess)bm_process;
- (id)bm_accessControlPolicy;
- (uint64_t)bm_connectionFlags;
- (void)setBm_accessControlPolicy:()BiomeAccessControl;
- (void)setBm_connectionFlags:()BiomeAccessControl;
@end

@implementation NSXPCConnection(BiomeAccessControl)

- (id)bm_accessControlPolicy
{
  v1 = [a1 bm_userInfo];
  v2 = [v1 objectForKeyedSubscript:@"bm_accessControlPolicy"];

  return v2;
}

- (BMProcess)bm_process
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 bm_userInfo];
  v3 = [v2 objectForKeyedSubscript:@"bm_process"];

  if (v3)
  {
    goto LABEL_2;
  }

  v5 = [BMProcess alloc];
  [a1 auditToken];
  v3 = [(BMProcess *)v5 initWithAuditToken:&buf];
  v6 = [a1 bm_accessControlPolicy];

  if (!v6)
  {
    v11 = [a1 bm_userInfo];
    [v11 setObject:v3 forKeyedSubscript:@"bm_process"];

LABEL_2:
    v3 = v3;
    v4 = v3;
    goto LABEL_9;
  }

  v7 = __biome_log_for_category(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x2020000000;
  v15 = 16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__NSXPCConnection_BiomeAccessControl__bm_process__block_invoke;
  block[3] = &unk_1E796AC10;
  block[4] = &buf;
  if (bm_process_onceToken != -1)
  {
    dispatch_once(&bm_process_onceToken, block);
  }

  v8 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (os_log_type_enabled(v7, v8))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_1AC15D000, v7, v8, "Access control policy already set %@", &buf, 0xCu);
  }

  v4 = 0;
LABEL_9:

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

- (uint64_t)bm_connectionFlags
{
  v1 = [a1 bm_userInfo];
  v2 = [v1 objectForKeyedSubscript:@"bm_connectionFlags"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (void)setBm_accessControlPolicy:()BiomeAccessControl
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 bm_accessControlPolicy];
  v6 = [v5 useCase];

  if (v6)
  {
    v7 = __biome_log_for_category(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2020000000;
    v18 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__NSXPCConnection_BiomeAccessControl__setBm_accessControlPolicy___block_invoke;
    block[3] = &unk_1E796AC10;
    block[4] = &buf;
    if (setBm_accessControlPolicy__onceToken != -1)
    {
      dispatch_once(&setBm_accessControlPolicy__onceToken, block);
    }

    v8 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = a1;
    v9 = "Access control policy useCase cannot change %@";
    goto LABEL_11;
  }

  v10 = [a1 bm_process];
  v11 = [v4 process];

  if (v10 == v11)
  {
    v13 = [a1 bm_userInfo];
    [v13 setObject:v4 forKeyedSubscript:@"bm_accessControlPolicy"];

    goto LABEL_13;
  }

  v7 = __biome_log_for_category(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x2020000000;
  v18 = 16;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__NSXPCConnection_BiomeAccessControl__setBm_accessControlPolicy___block_invoke_12;
  v14[3] = &unk_1E796AC10;
  v14[4] = &buf;
  if (setBm_accessControlPolicy__onceToken_11 != -1)
  {
    dispatch_once(&setBm_accessControlPolicy__onceToken_11, v14);
  }

  v8 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (os_log_type_enabled(v7, v8))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a1;
    v9 = "Access control policy process mismatch %@";
LABEL_11:
    _os_log_impl(&dword_1AC15D000, v7, v8, v9, &buf, 0xCu);
  }

LABEL_12:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)setBm_connectionFlags:()BiomeAccessControl
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a1 bm_userInfo];
  v6 = [v5 objectForKeyedSubscript:@"bm_connectionFlags"];

  if (v6)
  {
    v7 = __biome_log_for_category(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x2020000000;
    v16 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__NSXPCConnection_BiomeAccessControl__setBm_connectionFlags___block_invoke;
    block[3] = &unk_1E796AC10;
    block[4] = &buf;
    if (setBm_connectionFlags__onceToken != -1)
    {
      dispatch_once(&setBm_connectionFlags__onceToken, block);
    }

    v8 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    if (os_log_type_enabled(v7, v8))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1AC15D000, v7, v8, "Connection flags cannot change after being set %@", &buf, 0xCu);
    }

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v10 = [a1 bm_userInfo];
    [v10 setObject:v12 forKeyedSubscript:@"bm_connectionFlags"];

    v11 = *MEMORY[0x1E69E9840];
  }
}

@end