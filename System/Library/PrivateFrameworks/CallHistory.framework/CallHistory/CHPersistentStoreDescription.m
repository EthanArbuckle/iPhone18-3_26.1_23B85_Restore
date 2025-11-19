@interface CHPersistentStoreDescription
+ (id)persistentStoreDescriptionWithURL:(id)a3;
@end

@implementation CHPersistentStoreDescription

+ (id)persistentStoreDescriptionWithURL:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___CHPersistentStoreDescription;
  v3 = objc_msgSendSuper2(&v16, sel_persistentStoreDescriptionWithURL_, a3);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v17[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v3 setOption:v5 forKey:*MEMORY[0x1E695D3D8]];

  [v3 setValue:@"1" forPragmaNamed:@"secure_delete"];
  v6 = +[CHProcessHandle processHandle];
  if (([v6 hasAppProtectionReadEntitlement] & 1) == 0)
  {
    v7 = ch_security_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [CHPersistentStoreDescription persistentStoreDescriptionWithURL:v7];
    }
  }

  if ([v6 hasDataStoreReadWriteEntitlement])
  {
    v8 = *MEMORY[0x1E695D458];
    v9 = MEMORY[0x1E695E110];
  }

  else
  {
    v10 = [v6 hasDataStoreReadOnlyEntitlement];
    v8 = *MEMORY[0x1E695D458];
    if (!v10)
    {
      goto LABEL_10;
    }

    v9 = MEMORY[0x1E695E118];
  }

  [v3 setOption:v9 forKey:v8];
LABEL_10:
  v11 = [v3 options];
  v12 = [v11 objectForKeyedSubscript:v8];

  if (!v12)
  {
    v13 = ch_security_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [CHPersistentStoreDescription persistentStoreDescriptionWithURL:v13];
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)persistentStoreDescriptionWithURL:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = @"com.apple.appprotectiond.read.access";
  _os_log_fault_impl(&dword_1C3E90000, log, OS_LOG_TYPE_FAULT, "Call History access now requires App Protection Entitlement %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)persistentStoreDescriptionWithURL:(os_log_t)log .cold.2(os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138412546;
  v3 = @"com.apple.private.CallHistory.read";
  v4 = 2112;
  v5 = @"com.apple.private.CallHistory.read-write";
  _os_log_fault_impl(&dword_1C3E90000, log, OS_LOG_TYPE_FAULT, "Call History access requires BOOLean entitlement %@ or %@. This will be a hard error in the future.", &v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end