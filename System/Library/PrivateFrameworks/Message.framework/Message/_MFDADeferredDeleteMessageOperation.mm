@interface _MFDADeferredDeleteMessageOperation
+ (id)log;
- (BOOL)translateToLocalActionWithConnection:(id)connection;
- (_MFDADeferredDeleteMessageOperation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MFDADeferredDeleteMessageOperation

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___MFDADeferredDeleteMessageOperation_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_280 != -1)
  {
    dispatch_once(&log_onceToken_280, block);
  }

  v2 = log_log_279;

  return v2;
}

- (_MFDADeferredDeleteMessageOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _MFDADeferredDeleteMessageOperation;
  v5 = [(_MFDADeferredDeleteMessageOperation *)&v9 init];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      __assert_rtn("[_MFDADeferredDeleteMessageOperation initWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 472, "[aDecoder allowsKeyedCoding] && aDecoder must allow keyed coding");
    }

    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MessageID"];
    messageID = v5->_messageID;
    v5->_messageID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[_MFDADeferredDeleteMessageOperation encodeWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 480, "[aCoder allowsKeyedCoding] && aCoder must allow keyed coding");
  }

  [coderCopy encodeObject:self->_messageID forKey:@"MessageID"];
}

- (BOOL)translateToLocalActionWithConnection:(id)connection
{
  v28[2] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v25 = 0;
  v26 = 0;
  LODWORD(lastInsertedDatabaseID) = [(_MFOfflineCacheOperation *)self databaseID:&v26 andMailbox:&v25 forMessageWithRemoteID:self->_messageID connection:connectionCopy];
  v6 = v26;
  v7 = v25;
  if (v7)
  {
    if (lastInsertedDatabaseID)
    {
      v8 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, mailbox, source_mailbox, destination_mailbox, user_initiated) VALUES (5, ?, ?, NULL, 0)"}];
      v28[0] = v7;
      v28[1] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      v24 = 0;
      v10 = [v8 executeWithIndexedBindings:v9 usingBlock:0 error:&v24];
      v11 = v24;

      if (v10)
      {
        lastInsertedDatabaseID = [connectionCopy lastInsertedDatabaseID];

        if (!lastInsertedDatabaseID)
        {
          LOBYTE(lastInsertedDatabaseID) = 1;
          goto LABEL_13;
        }

        v8 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO action_messages (action, message, remote_id, destination_message, action_phase) VALUES (?, ?, ?, NULL, 4)"}];
        v12 = [MEMORY[0x1E696AD98] numberWithLongLong:lastInsertedDatabaseID];
        v27[0] = v12;
        v27[1] = v6;
        v27[2] = self->_messageID;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
        v23 = v11;
        LOBYTE(lastInsertedDatabaseID) = [v8 executeWithIndexedBindings:v13 usingBlock:0 error:&v23];
        v14 = v23;

        if ((lastInsertedDatabaseID & 1) == 0)
        {
          [connectionCopy handleError:v14 message:@"Inserting message for delete"];
        }

        v11 = v14;
      }

      else
      {
        [connectionCopy handleError:v11 message:@"Inserting delete action"];
        LOBYTE(lastInsertedDatabaseID) = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = +[_MFDADeferredDeleteMessageOperation log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_MFDADeferredSetFlagsOperation *)&self->_messageID translateToLocalActionWithConnection:v11, v15, v16, v17, v18, v19, v20];
    }
  }

LABEL_13:

  v21 = *MEMORY[0x1E69E9840];
  return lastInsertedDatabaseID;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _MFDADeferredDeleteMessageOperation;
  v4 = [(_MFDADeferredDeleteMessageOperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ message-id %@", v4, self->_messageID];

  return v5;
}

@end