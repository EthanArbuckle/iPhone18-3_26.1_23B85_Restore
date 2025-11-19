@interface _MFOfflineCacheOperation
- (BOOL)databaseID:(id *)a3 andMailbox:(id *)a4 forMessageWithRemoteID:(id)a5 connection:(id)a6;
@end

@implementation _MFOfflineCacheOperation

- (BOOL)databaseID:(id *)a3 andMailbox:(id *)a4 forMessageWithRemoteID:(id)a5 connection:(id)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__15;
  v29 = __Block_byref_object_dispose__15;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__15;
  v23 = __Block_byref_object_dispose__15;
  v24 = 0;
  v11 = [v10 preparedStatementForQueryString:{@"SELECT ROWID, mailbox FROM messages WHERE remote_id = ? LIMIT 1"}];
  v31[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v17 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84___MFOfflineCacheOperation_databaseID_andMailbox_forMessageWithRemoteID_connection___block_invoke;
  v18[3] = &unk_1E7AA4130;
  v18[4] = &v25;
  v18[5] = &v19;
  v13 = [v11 executeWithIndexedBindings:v12 usingBlock:v18 error:&v17];
  v14 = v17;

  if ((v13 & 1) == 0)
  {
    [v10 handleError:v14 message:@"Fetching database ID and mailbox for message"];
  }

  if (a3)
  {
    *a3 = v26[5];
  }

  if (a4)
  {
    *a4 = v20[5];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

@end