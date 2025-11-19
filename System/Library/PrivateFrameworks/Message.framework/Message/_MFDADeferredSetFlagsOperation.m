@interface _MFDADeferredSetFlagsOperation
+ (id)log;
- (BOOL)translateToLocalActionWithConnection:(id)a3;
- (_MFDADeferredSetFlagsOperation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MFDADeferredSetFlagsOperation

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37___MFDADeferredSetFlagsOperation_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_223 != -1)
  {
    dispatch_once(&log_onceToken_223, block);
  }

  v2 = log_log_222;

  return v2;
}

- (_MFDADeferredSetFlagsOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MFDADeferredSetFlagsOperation;
  v5 = [(_MFDADeferredSetFlagsOperation *)&v9 init];
  if (v5)
  {
    if (([v4 allowsKeyedCoding] & 1) == 0)
    {
      __assert_rtn("[_MFDADeferredSetFlagsOperation initWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 374, "[aDecoder allowsKeyedCoding] && aDecoder must allow keyed coding");
    }

    v5->_onFlags = [v4 decodeInt64ForKey:@"OnFlags"];
    v5->_offFlags = [v4 decodeInt64ForKey:@"OffFlags"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MessageID"];
    messageID = v5->_messageID;
    v5->_messageID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[_MFDADeferredSetFlagsOperation encodeWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 384, "[aCoder allowsKeyedCoding] && aCoder must allow keyed coding");
  }

  [v4 encodeInt64:self->_onFlags forKey:@"OnFlags"];
  [v4 encodeInt64:self->_offFlags forKey:@"OffFlags"];
  [v4 encodeObject:self->_messageID forKey:@"MessageID"];
}

- (BOOL)translateToLocalActionWithConnection:(id)a3
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  onFlags = self->_onFlags;
  offFlags = self->_offFlags;
  v42 = 0;
  v43 = 0;
  v7 = [(_MFOfflineCacheOperation *)self databaseID:&v43 andMailbox:&v42 forMessageWithRemoteID:self->_messageID connection:v4];
  v36 = v43;
  v37 = v42;
  if (!v37)
  {
    v11 = +[_MFDADeferredSetFlagsOperation log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_MFDADeferredSetFlagsOperation *)&self->_messageID translateToLocalActionWithConnection:v11, v16, v17, v18, v19, v20, v21];
    }

    goto LABEL_20;
  }

  if (v7)
  {
    v8 = [v4 preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, mailbox, source_mailbox, destination_mailbox, user_initiated) VALUES (3, ?, NULL, NULL, 0)"}];
    v47[0] = v37;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    v41 = 0;
    v10 = [v8 executeWithIndexedBindings:v9 usingBlock:0 error:&v41];
    v11 = v41;

    if (v10)
    {
      v35 = [v4 lastInsertedDatabaseID];

      if (onFlags & 1 | offFlags & 1)
      {
        v34 = [v4 preparedStatementForQueryString:{@"INSERT INTO action_flags (action, flag_type, flag_value) VALUES (?, 1, ?)"}];
        v33 = [MEMORY[0x1E696AD98] numberWithLongLong:v35];
        v46[0] = v33;
        v12 = [MEMORY[0x1E696AD98] numberWithBool:onFlags & 1];
        v46[1] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
        v40 = v11;
        v14 = [v34 executeWithIndexedBindings:v13 usingBlock:0 error:&v40];
        v15 = v40;

        if ((v14 & 1) == 0)
        {
          v8 = v34;
          [v4 handleError:v15 message:@"Inserting read flag change"];
          LOBYTE(v7) = 0;
          v11 = v15;
          goto LABEL_19;
        }

        if (!((onFlags >> 1) & 1 | (offFlags >> 1) & 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v15 = v11;
        if (((onFlags | offFlags) & 2) == 0)
        {
LABEL_15:
          v28 = [v4 preparedStatementForQueryString:{@"INSERT INTO action_messages (action, message, remote_id, destination_message, action_phase) VALUES (?, ?, ?, NULL, 0)"}];
          v29 = [MEMORY[0x1E696AD98] numberWithLongLong:v35];
          v44[0] = v29;
          v44[1] = v36;
          v44[2] = self->_messageID;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
          v38 = v15;
          LOBYTE(v7) = [v28 executeWithIndexedBindings:v30 usingBlock:0 error:&v38];
          v11 = v38;

          if ((v7 & 1) == 0)
          {
            [v4 handleError:v11 message:@"Inserting message for flag change"];
          }

          v8 = v28;
          goto LABEL_19;
        }
      }

      v22 = [v4 preparedStatementForQueryString:{@"INSERT INTO action_flags (action, flag_type, flag_value) VALUES (?, 4, ?)"}];
      v23 = [MEMORY[0x1E696AD98] numberWithLongLong:v35];
      v45[0] = v23;
      v24 = [MEMORY[0x1E696AD98] numberWithBool:(onFlags >> 1) & 1];
      v45[1] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      v26 = v23;
      v39 = v15;
      v27 = v22;
      LODWORD(v22) = [v22 executeWithIndexedBindings:v25 usingBlock:0 error:&v39];
      v11 = v39;

      if (v22)
      {

        v15 = v11;
        goto LABEL_15;
      }

      v8 = v27;
      [v4 handleError:v11 message:@"Inserting flagged flag change"];
    }

    else
    {
      [v4 handleError:v11 message:@"Inserting flag change action"];
    }

    LOBYTE(v7) = 0;
LABEL_19:

LABEL_20:
  }

  v31 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MFDADeferredSetFlagsOperation;
  v4 = [(_MFDADeferredSetFlagsOperation *)&v8 description];
  onFlags = self->_onFlags;
  v6 = [v3 stringWithFormat:@"%@ message-id %@, on-flags %llu, off-flags %llu", v4, self->_messageID, onFlags, self->_offFlags];

  return v6;
}

- (void)translateToLocalActionWithConnection:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, a2, a3, "DAMessageID: %@ and corresponding mailboxNumber not found.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end