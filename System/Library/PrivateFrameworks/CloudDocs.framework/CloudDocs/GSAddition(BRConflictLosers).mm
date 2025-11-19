@interface GSAddition(BRConflictLosers)
- (uint64_t)_br_markResolvedWithError:()BRConflictLosers;
- (uint64_t)br_lastEditorDeviceName;
- (uint64_t)br_lastEditorName;
- (uint64_t)br_lastEditorNameComponents;
- (uint64_t)br_markResolvedWithError:()BRConflictLosers;
- (void)br_lastEditorDeviceName;
- (void)br_lastEditorName;
- (void)br_lastEditorNameComponents;
@end

@implementation GSAddition(BRConflictLosers)

- (uint64_t)_br_markResolvedWithError:()BRConflictLosers
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696ABC0] brc_errorMethodNotImplemented:sel__br_markResolvedWithError_];
  if (v4)
  {
    v5 = brc_bread_crumbs("[GSAddition(BRConflictLosers) _br_markResolvedWithError:]", 34);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, 0x90u))
    {
      v10 = "(passed to caller)";
      v11 = 136315906;
      v12 = "[GSAddition(BRConflictLosers) _br_markResolvedWithError:]";
      v13 = 2080;
      if (!a3)
      {
        v10 = "(ignored by caller)";
      }

      v14 = v10;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_1AE2A9000, v6, 0x90u, "[ERROR] %s: %s error: %@%@", &v11, 0x2Au);
    }
  }

  if (a3)
  {
    v7 = v4;
    *a3 = v4;
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (uint64_t)br_markResolvedWithError:()BRConflictLosers
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696ABC0] brc_errorMethodNotImplemented:sel_br_markResolvedWithError_];
  if (v4)
  {
    v5 = brc_bread_crumbs("[GSAddition(BRConflictLosers) br_markResolvedWithError:]", 40);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, 0x90u))
    {
      v10 = "(passed to caller)";
      v11 = 136315906;
      v12 = "[GSAddition(BRConflictLosers) br_markResolvedWithError:]";
      v13 = 2080;
      if (!a3)
      {
        v10 = "(ignored by caller)";
      }

      v14 = v10;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_1AE2A9000, v6, 0x90u, "[ERROR] %s: %s error: %@%@", &v11, 0x2Au);
    }
  }

  if (a3)
  {
    v7 = v4;
    *a3 = v4;
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (uint64_t)br_lastEditorDeviceName
{
  v0 = brc_bread_crumbs("[GSAddition(BRConflictLosers) br_lastEditorDeviceName]", 46);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, 0x90u))
  {
    [GSAddition(BRConflictLosers) br_lastEditorDeviceName];
  }

  return 0;
}

- (uint64_t)br_lastEditorName
{
  v0 = brc_bread_crumbs("[GSAddition(BRConflictLosers) br_lastEditorName]", 52);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, 0x90u))
  {
    [GSAddition(BRConflictLosers) br_lastEditorName];
  }

  return 0;
}

- (uint64_t)br_lastEditorNameComponents
{
  v0 = brc_bread_crumbs("[GSAddition(BRConflictLosers) br_lastEditorNameComponents]", 58);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, 0x90u))
  {
    [GSAddition(BRConflictLosers) br_lastEditorNameComponents];
  }

  return 0;
}

- (void)br_lastEditorDeviceName
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = NSStringFromSelector(sel_br_lastEditorDeviceName);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_2(&dword_1AE2A9000, v1, v2, "[ERROR] method not implemented: %@%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)br_lastEditorName
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = NSStringFromSelector(sel_br_lastEditorName);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_2(&dword_1AE2A9000, v1, v2, "[ERROR] method not implemented: %@%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)br_lastEditorNameComponents
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = NSStringFromSelector(sel_br_lastEditorNameComponents);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_2(&dword_1AE2A9000, v1, v2, "[ERROR] method not implemented: %@%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

@end