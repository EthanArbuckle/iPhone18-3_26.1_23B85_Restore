@interface BRSpecialFolders
+ (id)_br_containerPathForDataSeparatedPersona;
+ (id)applicationSupportDirForCurrentPersona;
+ (id)cachesDirForCurrentPersona;
+ (id)homeDirForCurrentPersona;
+ (id)volumeUUIDForPersona:(id)persona;
+ (void)homeDirForCurrentPersona;
@end

@implementation BRSpecialFolders

+ (id)homeDirForCurrentPersona
{
  v20 = *MEMORY[0x1E69E9840];
  if (homeDirForCurrentPersona_once != -1)
  {
    +[BRSpecialFolders homeDirForCurrentPersona];
  }

  v3 = homeDirForCurrentPersona_pathByPersonaID;
  objc_sync_enter(v3);
  v13 = 0;
  v4 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:&v13];
  br_realpath = [homeDirForCurrentPersona_pathByPersonaID objectForKeyedSubscript:v4];
  if (!br_realpath)
  {
    if (v13 == 1)
    {
      _br_containerPathForDataSeparatedPersona = [self _br_containerPathForDataSeparatedPersona];
      if (!_br_containerPathForDataSeparatedPersona)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = geteuid();
      _br_containerPathForDataSeparatedPersona = getHomeDirectoryForUser(v7);
      if (!_br_containerPathForDataSeparatedPersona)
      {
        if (!v7)
        {
          v8 = brc_bread_crumbs("+[BRSpecialFolders homeDirForCurrentPersona]", 195);
          v9 = brc_default_log(1, 0);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            +[(BRSpecialFolders *)v8];
          }

          goto LABEL_13;
        }

LABEL_11:
        v8 = brc_bread_crumbs("+[BRSpecialFolders homeDirForCurrentPersona]", 197);
        v9 = brc_default_log(1, 0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v8;
          _os_log_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] No path for home directory%@", buf, 0xCu);
        }

LABEL_13:
        br_realpath = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    br_realpath = [_br_containerPathForDataSeparatedPersona br_realpath];

    [homeDirForCurrentPersona_pathByPersonaID setObject:br_realpath forKeyedSubscript:v4];
    v8 = brc_bread_crumbs("+[BRSpecialFolders homeDirForCurrentPersona]", 193);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = br_realpath;
      v18 = 2112;
      v19 = v8;
      _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Base path for persona %@ is %@%@", buf, 0x20u);
    }

    goto LABEL_14;
  }

LABEL_15:
  v10 = br_realpath;

  objc_sync_exit(v3);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)cachesDirForCurrentPersona
{
  v14 = *MEMORY[0x1E69E9840];
  if (cachesDirForCurrentPersona_once != -1)
  {
    +[BRSpecialFolders cachesDirForCurrentPersona];
  }

  v2 = cachesDirForCurrentPersona_pathByPersonaID;
  objc_sync_enter(v2);
  v11 = 0;
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:&v11];
  v4 = [cachesDirForCurrentPersona_pathByPersonaID objectForKeyedSubscript:v3];
  if (!v4)
  {
    if (v11 == 1)
    {
      v5 = +[BRSpecialFolders homeDirForCurrentPersona];
      v4 = [v5 stringByAppendingPathComponent:@"Library/Caches/com.apple.bird"];

      if (v4)
      {
LABEL_6:
        br_realpath = [v4 br_realpath];
        [cachesDirForCurrentPersona_pathByPersonaID setObject:br_realpath forKeyedSubscript:v3];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v4 = [@"com.apple.bird" br_pathRelativeToDirectory:13];
      if (v4)
      {
        goto LABEL_6;
      }
    }

    br_realpath = brc_bread_crumbs("+[BRSpecialFolders cachesDirForCurrentPersona]", 48);
    v7 = brc_default_log(1, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = br_realpath;
      _os_log_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] No path for Caches directory%@", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:
  v8 = v4;

  objc_sync_exit(v2);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t __46__BRSpecialFolders_cachesDirForCurrentPersona__block_invoke()
{
  cachesDirForCurrentPersona_pathByPersonaID = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)applicationSupportDirForCurrentPersona
{
  v23 = *MEMORY[0x1E69E9840];
  if (applicationSupportDirForCurrentPersona_once != -1)
  {
    +[BRSpecialFolders applicationSupportDirForCurrentPersona];
  }

  v16 = 0;
  v2 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:&v16];
  v3 = applicationSupportDirForCurrentPersona_pathByPersonaID;
  objc_sync_enter(v3);
  v4 = [applicationSupportDirForCurrentPersona_pathByPersonaID objectForKeyedSubscript:v2];
  if (!v4)
  {
    if (v16 == 1)
    {
      v5 = +[BRSpecialFolders homeDirForCurrentPersona];
      v6 = [v5 stringByAppendingPathComponent:@"Library/Application Support/CloudDocs"];
    }

    else
    {
      v5 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
      firstObject = [v5 firstObject];
      v6 = [firstObject stringByAppendingPathComponent:@"CloudDocs"];
    }

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v4 = [v6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([v4 length])
    {
      if (v4)
      {
        v9 = brc_bread_crumbs("+[BRSpecialFolders applicationSupportDirForCurrentPersona]", 86);
        v10 = brc_default_log(1, 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v18 = v4;
          v19 = 2112;
          v20 = v2;
          v21 = 2112;
          v22 = v9;
          _os_log_debug_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Caching directory path %@ for persona %@%@", buf, 0x20u);
        }

        br_realpath = [v4 br_realpath];
        [applicationSupportDirForCurrentPersona_pathByPersonaID setObject:br_realpath forKeyedSubscript:v2];
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
    }

    br_realpath = brc_bread_crumbs("+[BRSpecialFolders applicationSupportDirForCurrentPersona]", 89);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = br_realpath;
      _os_log_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] No path for support directory%@", buf, 0xCu);
    }

    v4 = 0;
    goto LABEL_16;
  }

LABEL_17:
  v13 = v4;

  objc_sync_exit(v3);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t __58__BRSpecialFolders_applicationSupportDirForCurrentPersona__block_invoke()
{
  applicationSupportDirForCurrentPersona_pathByPersonaID = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_br_containerPathForDataSeparatedPersona
{
  v25 = *MEMORY[0x1E69E9840];
  if (+[BRContainerCache hasDaemonicParts])
  {
    goto LABEL_3;
  }

  initUsingUserLocalDaemonTokenService = [[BRDaemonConnection alloc] initUsingUserLocalDaemonTokenService];
  newSyncTokenProxy = [initUsingUserLocalDaemonTokenService newSyncTokenProxy];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __60__BRSpecialFolders__br_containerPathForDataSeparatedPersona__block_invoke;
  v19 = &unk_1E7A14CF8;
  v20 = newSyncTokenProxy;
  v4 = newSyncTokenProxy;
  [v4 fetchContainerPathForCurrentPersonaWithReply:&v16];
  result = [v4 result];

  if (!result)
  {
LABEL_3:
    v6 = container_create_or_lookup_path_for_current_user();
    if (v6)
    {
      v7 = v6;
      result = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
      free(v7);
      if (result)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = brc_bread_crumbs("+[BRSpecialFolders _br_containerPathForDataSeparatedPersona]", 114);
      v9 = brc_default_log(1, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v22 = 1;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] container_create_or_lookup_path_for_current_user() failed with %llu%@", buf, 0x16u);
      }
    }

    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona = [mEMORY[0x1E69DF068] currentPersona];

    v12 = brc_bread_crumbs("+[BRSpecialFolders _br_containerPathForDataSeparatedPersona]", 122);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[(NSURL(BRCPathAdditions) *)currentPersona];
    }

    result = 0;
  }

LABEL_12:
  v14 = *MEMORY[0x1E69E9840];

  return result;
}

uint64_t __44__BRSpecialFolders_homeDirForCurrentPersona__block_invoke()
{
  homeDirForCurrentPersona_pathByPersonaID = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)volumeUUIDForPersona:(id)persona
{
  personaCopy = persona;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__BRSpecialFolders_volumeUUIDForPersona___block_invoke;
  v7[3] = &unk_1E7A155B8;
  v7[4] = &v8;
  v7[5] = self;
  [BRPersonaUtils performWithPersonaID:personaCopy block:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __41__BRSpecialFolders_volumeUUIDForPersona___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = brc_bread_crumbs("+[BRSpecialFolders volumeUUIDForPersona:]_block_invoke", 209);
    v3 = brc_default_log(0, 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __41__BRSpecialFolders_volumeUUIDForPersona___block_invoke_cold_1(v2, v3);
    }
  }

  else
  {
    v9 = [*(a1 + 40) homeDirForCurrentPersona];
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    v6 = [v5 fp_volumeUUID];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

+ (void)homeDirForCurrentPersona
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] No path for home directory because we're running as root%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __41__BRSpecialFolders_volumeUUIDForPersona___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to adopt persona for volumeUUIDForPersona%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end