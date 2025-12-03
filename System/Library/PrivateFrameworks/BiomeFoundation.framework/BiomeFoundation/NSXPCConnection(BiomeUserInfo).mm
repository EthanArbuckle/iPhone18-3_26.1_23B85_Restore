@interface NSXPCConnection(BiomeUserInfo)
- (id)bm_userInfo;
@end

@implementation NSXPCConnection(BiomeUserInfo)

- (id)bm_userInfo
{
  v15 = *MEMORY[0x1E69E9840];
  userInfo = [self userInfo];
  userInfo2 = [self userInfo];

  if (userInfo2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = __biome_log_for_category(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v13 = 0x2020000000;
      v14 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__NSXPCConnection_BiomeUserInfo__bm_userInfo__block_invoke;
      block[3] = &unk_1E796AC10;
      block[4] = &buf;
      if (bm_userInfo_onceToken != -1)
      {
        dispatch_once(&bm_userInfo_onceToken, block);
      }

      v5 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = objc_opt_class();
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        v7 = v6;
        _os_log_impl(&dword_1AC15D000, v4, v5, "NSXPCConnection userInfo is of class %@", &buf, 0xCu);
      }

      userInfo = 0;
    }
  }

  else
  {
    v8 = objc_opt_new();

    [self setUserInfo:v8];
    userInfo = v8;
  }

  v9 = *MEMORY[0x1E69E9840];

  return userInfo;
}

@end