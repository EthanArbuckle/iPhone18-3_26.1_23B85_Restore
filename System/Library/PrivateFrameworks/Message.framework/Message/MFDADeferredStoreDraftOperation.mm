@interface MFDADeferredStoreDraftOperation
+ (id)log;
- (BOOL)translateToLocalActionWithConnection:(id)connection;
- (MFDADeferredStoreDraftOperation)initWithCoder:(id)coder;
- (MFDADeferredStoreDraftOperation)initWithMessageIDHeader:(id)header mailbox:(id)mailbox;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFDADeferredStoreDraftOperation

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MFDADeferredStoreDraftOperation_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_369 != -1)
  {
    dispatch_once(&log_onceToken_369, block);
  }

  v2 = log_log_368;

  return v2;
}

void __38__MFDADeferredStoreDraftOperation_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_368;
  log_log_368 = v1;
}

- (MFDADeferredStoreDraftOperation)initWithMessageIDHeader:(id)header mailbox:(id)mailbox
{
  headerCopy = header;
  mailboxCopy = mailbox;
  v15.receiver = self;
  v15.super_class = MFDADeferredStoreDraftOperation;
  v8 = [(MFDADeferredStoreDraftOperation *)&v15 init];
  if (v8)
  {
    v9 = [headerCopy copy];
    messageIDHeader = v8->_messageIDHeader;
    v8->_messageIDHeader = v9;

    v11 = [mailboxCopy copy];
    folderID = v8->_folderID;
    v8->_folderID = v11;

    v13 = v8;
  }

  return v8;
}

- (MFDADeferredStoreDraftOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MFDADeferredStoreDraftOperation;
  v5 = [(MFDADeferredStoreDraftOperation *)&v12 init];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      __assert_rtn("[MFDADeferredStoreDraftOperation initWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 684, "[aDecoder allowsKeyedCoding] && aDecoder must allow keyed coding");
    }

    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MessageID"];
    messageIDHeader = v5->_messageIDHeader;
    v5->_messageIDHeader = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FolderID"];
    folderID = v5->_folderID;
    v5->_folderID = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[MFDADeferredStoreDraftOperation encodeWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 693, "[aCoder allowsKeyedCoding] && aCoder must allow keyed coding");
  }

  [coderCopy encodeObject:self->_messageIDHeader forKey:@"MessageID"];
  [coderCopy encodeObject:self->_folderID forKey:@"FolderID"];
}

- (BOOL)translateToLocalActionWithConnection:(id)connection
{
  v40[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__15;
  v36 = __Block_byref_object_dispose__15;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__15;
  v30 = __Block_byref_object_dispose__15;
  v31 = 0;
  v5 = [connectionCopy preparedStatementForQueryString:{@"SELECT ROWID, mailbox FROM messages JOIN WHERE message_id = ? LIMIT 1"}];
  messageIDHeader = self->_messageIDHeader;
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:MFStringHashForMessageIDHeader()];
  v40[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v24 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __72__MFDADeferredStoreDraftOperation_translateToLocalActionWithConnection___block_invoke;
  v25[3] = &unk_1E7AA4130;
  v25[4] = &v32;
  v25[5] = &v26;
  v9 = [v5 executeWithIndexedBindings:v8 usingBlock:v25 error:&v24];
  v10 = v24;

  if (v9)
  {
    if (v27[5])
    {
      v11 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, mailbox, source_mailbox, destination_mailbox, user_initiated) VALUES (2, ?, NULL, ?, 0)"}];
      v39[0] = v27[5];
      v39[1] = v39[0];
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
      v23 = v10;
      v13 = [v11 executeWithIndexedBindings:v12 usingBlock:0 error:&v23];
      v14 = v23;

      if (!v13)
      {
        [connectionCopy handleError:v14 message:@"Inserting append action"];
        v16 = 0;
LABEL_10:

        v10 = v14;
        goto LABEL_11;
      }

      lastInsertedDatabaseID = [connectionCopy lastInsertedDatabaseID];

      v10 = v14;
    }

    else
    {
      lastInsertedDatabaseID = 0;
    }

    v11 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO action_messages (action, message, remote_id, destination_message, action_phase) VALUES (?, NULL, NULL, ?, 3)"}];
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:lastInsertedDatabaseID];
    v18 = v33[5];
    v38[0] = v17;
    v38[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v22 = v10;
    v16 = [v11 executeWithIndexedBindings:v19 usingBlock:0 error:&v22];
    v14 = v22;

    if ((v16 & 1) == 0)
    {
      [connectionCopy handleError:v14 message:@"Inserting message for append"];
    }

    goto LABEL_10;
  }

  [connectionCopy handleError:v10 message:@"Selecting message for append"];
  v16 = 0;
LABEL_11:

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

void __72__MFDADeferredStoreDraftOperation_translateToLocalActionWithConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v14 objectAtIndexedSubscript:1];
  v11 = [v10 numberValue];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  *a4 = 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MFDADeferredStoreDraftOperation;
  v4 = [(MFDADeferredStoreDraftOperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ message-id %@", v4, self->_messageIDHeader];

  return v5;
}

@end