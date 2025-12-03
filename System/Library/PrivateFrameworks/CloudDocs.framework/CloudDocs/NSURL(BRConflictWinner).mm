@interface NSURL(BRConflictWinner)
- (id)br_lastEditorName;
- (uint64_t)br_addFakeConflictLoserFromItemAtURL:()BRConflictWinner lastEditorDeviceName:error:;
@end

@implementation NSURL(BRConflictWinner)

- (id)br_lastEditorName
{
  br_lastEditorNameComponents = [self br_lastEditorNameComponents];
  br_formattedName = [br_lastEditorNameComponents br_formattedName];

  return br_formattedName;
}

- (uint64_t)br_addFakeConflictLoserFromItemAtURL:()BRConflictWinner lastEditorDeviceName:error:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696ABC0] brc_errorMethodNotImplemented:sel_br_addFakeConflictLoserFromItemAtURL_lastEditorDeviceName_error_];
  if (v6)
  {
    v7 = brc_bread_crumbs("[NSURL(BRConflictWinner) br_addFakeConflictLoserFromItemAtURL:lastEditorDeviceName:error:]", 93);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v12 = "(passed to caller)";
      v13 = 136315906;
      v14 = "[NSURL(BRConflictWinner) br_addFakeConflictLoserFromItemAtURL:lastEditorDeviceName:error:]";
      v15 = 2080;
      if (!a5)
      {
        v12 = "(ignored by caller)";
      }

      v16 = v12;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] %s: %s error: %@%@", &v13, 0x2Au);
    }
  }

  if (a5)
  {
    v9 = v6;
    *a5 = v6;
  }

  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

@end