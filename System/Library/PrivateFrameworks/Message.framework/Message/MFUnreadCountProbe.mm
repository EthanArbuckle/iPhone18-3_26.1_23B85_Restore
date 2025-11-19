@interface MFUnreadCountProbe
+ (BOOL)addProbeWithConnection:(id)a3;
@end

@implementation MFUnreadCountProbe

+ (BOOL)addProbeWithConnection:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v5 = MFLogGeneral();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = [v4 sqlDB];
    sqlite3_create_function(v7, "probe_message_update", -1, 1, a1, probeMessageUpdate, 0, 0);
    sqlite3_create_function(v7, "probe_message_add", -1, 1, a1, probeMessageAdd, 0, 0);
    sqlite3_create_function(v7, "probe_message_delete", -1, 1, a1, probeMessageDelete, 0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__MFUnreadCountProbe_addProbeWithConnection___block_invoke;
    v10[3] = &unk_1E7AA3E00;
    v10[4] = &v11;
    v10[5] = v7;
    [v4 performWithOptions:3 transactionError:0 block:v10];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __45__MFUnreadCountProbe_addProbeWithConnection___block_invoke(uint64_t a1)
{
  v2 = 0;
  v13[3] = *MEMORY[0x1E69E9840];
  v13[0] = "CREATE TEMPORARY TRIGGER probe_message_update AFTER UPDATE OF flags ON messages BEGIN SELECT probe_message_update(OLD.ROWID, OLD.flags, NEW.flags, NEW.message_id, NEW.mailbox); END";
  v13[1] = "CREATE TEMPORARY TRIGGER probe_message_add AFTER INSERT ON messages BEGIN SELECT probe_message_add(NEW.ROWID, NEW.flags, NEW.message_id, NEW.mailbox); END";
  v13[2] = "CREATE TEMPORARY TRIGGER probe_message_delete AFTER DELETE ON messages BEGIN SELECT probe_message_delete(OLD.ROWID, OLD.flags, OLD.message_id, OLD.mailbox); END";
  while ((*(*(*(a1 + 32) + 8) + 24) & 1) != 0)
  {
    v3 = sqlite3_exec(*(a1 + 40), v13[v2], 0, 0, 0);
    *(*(*(a1 + 32) + 8) + 24) = v3 == 0;
    if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
    {
      v4 = MFLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = sqlite3_errmsg(*(a1 + 40));
        *buf = 67109378;
        v10 = v3;
        v11 = 2080;
        v12 = v5;
        _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "#Warning Error %d: %s", buf, 0x12u);
      }
    }

    if (++v2 == 3)
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      goto LABEL_10;
    }
  }

  v6 = 0;
LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

@end