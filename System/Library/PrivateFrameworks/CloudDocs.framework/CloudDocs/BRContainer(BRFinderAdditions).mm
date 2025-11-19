@interface BRContainer(BRFinderAdditions)
@end

@implementation BRContainer(BRFinderAdditions)

+ (void)containerInRepositoryURL:()BRFinderAdditions createIfMissing:error:.cold.1(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696ABC0] brc_errorAppLibraryNotFound:a1];
  if (v3)
  {
    v4 = brc_bread_crumbs("+[BRContainer(BRFinderAdditions) containerInRepositoryURL:createIfMissing:error:]", 1482);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, 0x90u))
    {
      v8 = "(passed to caller)";
      v9 = 136315906;
      v10 = "+[BRContainer(BRFinderAdditions) containerInRepositoryURL:createIfMissing:error:]";
      v11 = 2080;
      if (!a2)
      {
        v8 = "(ignored by caller)";
      }

      v12 = v8;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&dword_1AE2A9000, v5, 0x90u, "[ERROR] %s: %s error: %@%@", &v9, 0x2Au);
    }
  }

  if (a2)
  {
    v6 = v3;
    *a2 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end