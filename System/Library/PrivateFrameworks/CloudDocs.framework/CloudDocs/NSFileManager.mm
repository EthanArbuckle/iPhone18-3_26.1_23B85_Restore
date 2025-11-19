@interface NSFileManager
@end

@implementation NSFileManager

id __59__NSFileManager_BRAdditions__br_setPutBackInfoOnItemAtURL___block_invoke(uint64_t a1, int a2)
{
  v4 = brc_bread_crumbs("[NSFileManager(BRAdditions) br_setPutBackInfoOnItemAtURL:]_block_invoke", 81);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __59__NSFileManager_BRAdditions__br_setPutBackInfoOnItemAtURL___block_invoke_cold_1(a1, v4, v5);
  }

  if ((brc_xattr_set_string(a2, "com.apple.trash.put-back.path#PS", *(a1 + 32)) & 0x80000000) != 0 || (brc_xattr_set_string(a2, "com.apple.trash.put-back.icloud-parent-id#PS", *(a1 + 40)) & 0x80000000) != 0)
  {
    v6 = [MEMORY[0x1E696ABC0] br_errorFromErrno];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __67__NSFileManager_BRAdditions__br_trashItemAtURL_resultingURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v12 count])
  {
    v6 = [v12 objectAtIndexedSubscript:0];
    v7 = [v6 fileURL];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

void __76__NSFileManager_BRAdditions__br_putBackTrashedItemAtURL_resultingURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [v7 fileURL];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  if (v6)
  {
    v11 = brc_bread_crumbs("[NSFileManager(BRAdditions) br_putBackTrashedItemAtURL:resultingURL:error:]_block_invoke", 153);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) path];
      v14 = [v13 fp_obfuscatedPath];
      v18 = 138412802;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to untrash item at %@ - %@%@", &v18, 0x20u);
    }
  }

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v6;

  v17 = *MEMORY[0x1E69E9840];
}

id __61__NSFileManager_BRAdditions__br_setLastOpenDate_onItemAtURL___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSince1970];
  v3 = v2;
  v20 = 0;
  v21 = 0;
  v4 = [*(a1 + 40) br_physicalURL];
  v5 = [v4 path];
  v6 = [v5 br_fileSystemRepresentation];

  if (BRGetLastUsedDate(0xFFFFFFFFLL, v6, &v20))
  {
    v7 = 1;
  }

  else
  {
    v7 = v20 <= v3;
  }

  if (!v7)
  {
    v14 = brc_bread_crumbs("[NSFileManager(BRAdditions) br_setLastOpenDate:onItemAtURL:]_block_invoke", 180);
    v15 = brc_default_log(1, 0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = [*(a1 + 40) path];
    v13 = [v12 fp_obfuscatedPath];
    *buf = 138413058;
    v23 = v13;
    v24 = 2048;
    v25 = v20;
    v26 = 2048;
    v27 = v3;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Ignoring setting last open date on %@ because it's going back in time from %ld to %ld%@", buf, 0x2Au);
    goto LABEL_11;
  }

  v20 = v3;
  v21 = 0;
  v8 = [*(a1 + 40) br_physicalURL];
  v9 = [v8 path];
  UsedDate = BRSetLastUsedDate(0xFFFFFFFFLL, [v9 br_fileSystemRepresentation], &v20);

  if ((UsedDate & 0x80000000) == 0)
  {
    v14 = brc_bread_crumbs("[NSFileManager(BRAdditions) br_setLastOpenDate:onItemAtURL:]_block_invoke", 195);
    v15 = brc_default_log(1, 0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
LABEL_12:
      v17 = 0;
      goto LABEL_13;
    }

    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) path];
    v13 = [v12 fp_obfuscatedPath];
    *buf = 138412802;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_debug_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Set last used date %@ on %@%@", buf, 0x20u);
LABEL_11:

    goto LABEL_12;
  }

  v17 = [MEMORY[0x1E696ABC0] br_errorFromErrno];
  v14 = brc_bread_crumbs("[NSFileManager(BRAdditions) br_setLastOpenDate:onItemAtURL:]_block_invoke", 192);
  v15 = brc_default_log(0, 0);
  if (os_log_type_enabled(v15, 0x90u))
  {
    __61__NSFileManager_BRAdditions__br_setLastOpenDate_onItemAtURL___block_invoke_cold_1(v14, v15);
  }

LABEL_13:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id __61__NSFileManager_BRAdditions__br_setFavoriteRank_onItemAtURL___block_invoke(uint64_t a1, int a2)
{
  v3 = [*(a1 + 32) stringValue];
  v4 = brc_xattr_set_string(a2, "com.apple.favorite-rank.number#PS", v3);

  if (v4 < 0)
  {
    v5 = [MEMORY[0x1E696ABC0] br_errorFromErrno];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __59__NSFileManager_BRAdditions__br_setPutBackInfoOnItemAtURL___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = 138412802;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] setting put back info path:%@ item:%@%@", &v6, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __61__NSFileManager_BRAdditions__br_setLastOpenDate_onItemAtURL___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&dword_1AE2A9000, a2, 0x90u, "[ERROR] can't to set Spotlight last-used date xattrs %{errno}d%@", v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

@end