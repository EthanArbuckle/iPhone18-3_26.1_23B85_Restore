@interface IDSTransactionLogSyncTaskHandler
- (IDSTransactionLogSyncTaskHandler)initWithTask:(id)a3 delegate:(id)a4 queue:(id)a5;
- (IDSTransactionLogTaskHandlerDelegate)delegate;
- (id)_destinationsInMessages:(id)a3;
- (id)_groupIDsFromMessages:(id)a3;
- (id)_groupsByGroupIDFromGroups:(id)a3;
- (id)_participantsByAliasFromParticipants:(id)a3;
- (id)_transactionMessageFromTransportMessage:(id)a3 groups:(id)a4 participants:(id)a5 accountInfo:(id)a6;
- (id)_transactionMessageFromTransportMessage:(id)a3 withDecryptedPayload:(id)a4 accountInfo:(id)a5;
- (id)_transactionMessageFromTransportMessage:(id)a3 withParticipants:(id)a4 accountInfo:(id)a5;
- (void)_completeWithError:(id)a3;
- (void)_transactionMessagesFromTransportMessages:(id)a3 withParticipants:(id)a4 groups:(id)a5 accountInfo:(id)a6 completion:(id)a7;
- (void)perform;
- (void)qFetchParticipantsFromDeviceMessges:(id)a3 andGroupsFromGroupMessages:(id)a4 completion:(id)a5;
- (void)qIngestMessages:(id)a3 completion:(id)a4;
- (void)qPerformWithToken:(id)a3;
@end

@implementation IDSTransactionLogSyncTaskHandler

- (IDSTransactionLogSyncTaskHandler)initWithTask:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSTransactionLogSyncTaskHandler;
  v12 = [(IDSTransactionLogTaskHandler *)&v15 _init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 1, a3);
    objc_storeStrong(&v13->_queue, a5);
    objc_storeWeak(&v13->_delegate, v10);
  }

  return v13;
}

- (void)perform
{
  v3 = [(IDSTransactionLogSyncTaskHandler *)self queue];
  dispatch_assert_queue_V2(v3);

  v7 = _os_activity_create(&dword_1959FF000, "IDSTransactionLogSync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v7, &state);
  v4 = [(IDSTransactionLogSyncTaskHandler *)self delegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195B23470;
  v5[3] = &unk_1E7443688;
  v5[4] = self;
  [v4 persistedTokenForTaskHandler:self completion:v5];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)qPerformWithToken:(id)a3
{
  v4 = a3;
  v5 = +[IDSLogging transactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_INFO, "Fetching messages", buf, 2u);
  }

  v6 = [(IDSTransactionLogSyncTaskHandler *)self delegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B23704;
  v7[3] = &unk_1E7443700;
  v7[4] = self;
  [v6 taskHandler:self messagesFromToken:v4 completion:v7];
}

- (void)qIngestMessages:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [v15 groupID];

        if (v16)
        {
          v17 = v7;
        }

        else
        {
          v17 = v8;
        }

        [v17 addObject:v15];
        v18 = [v15 recipientAlias];

        if (v18)
        {
          v19 = [v15 recipientAlias];
          [v9 addObject:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  v20 = [(IDSTransactionLogSyncTaskHandler *)self delegate];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_195B23E84;
  v27[3] = &unk_1E74437A0;
  v27[4] = self;
  v28 = v8;
  v29 = v7;
  v30 = v10;
  v31 = v26;
  v21 = v26;
  v22 = v10;
  v23 = v7;
  v24 = v8;
  [v20 taskHandler:self accountInfoForAliases:v9 completion:v27];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)qFetchParticipantsFromDeviceMessges:(id)a3 andGroupsFromGroupMessages:(id)a4 completion:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSLogging transactionLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = [v8 count];
    *&buf[12] = 2048;
    *&buf[14] = [v9 count];
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_INFO, "Fetching participants/groups for deviceMessges {deviceMessages.count: %ld, groupMessages.count: %ld}", buf, 0x16u);
  }

  v12 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = sub_195A00854;
  v49 = sub_195A03DD0;
  v50 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = sub_195A00854;
  v45[4] = sub_195A03DD0;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_195A00854;
  v43[4] = sub_195A03DD0;
  v44 = 0;
  v13 = [(IDSTransactionLogSyncTaskHandler *)self _destinationsInMessages:v8];
  dispatch_group_enter(v12);
  v14 = [(IDSTransactionLogSyncTaskHandler *)self delegate];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_195B248D8;
  v37[3] = &unk_1E74437C8;
  v37[4] = self;
  v15 = v13;
  v38 = v15;
  v41 = buf;
  v16 = v8;
  v39 = v16;
  v42 = v43;
  v17 = v12;
  v40 = v17;
  [v14 taskHandler:self participantsWithDestinations:v15 completion:v37];

  v18 = [(IDSTransactionLogSyncTaskHandler *)self _groupIDsFromMessages:v9];
  dispatch_group_enter(v17);
  v19 = [(IDSTransactionLogSyncTaskHandler *)self delegate];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_195B24A78;
  v31[3] = &unk_1E74437C8;
  v31[4] = self;
  v20 = v18;
  v32 = v20;
  v35 = v45;
  v21 = v9;
  v33 = v21;
  v36 = v43;
  v22 = v17;
  v34 = v22;
  [v19 taskHandler:self groupsWithGroupIDs:v20 completion:v31];

  v23 = [(IDSTransactionLogSyncTaskHandler *)self queue];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_195B24C18;
  v26[3] = &unk_1E74437F0;
  v27 = v10;
  v28 = v43;
  v29 = buf;
  v30 = v45;
  v24 = v10;
  dispatch_group_notify(v22, v23, v26);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(buf, 8);
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_transactionMessagesFromTransportMessages:(id)a3 withParticipants:(id)a4 groups:(id)a5 accountInfo:(id)a6 completion:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v25 = a7;
  v15 = [(IDSTransactionLogSyncTaskHandler *)self _groupsByGroupIDFromGroups:a5];
  v26 = v13;
  v16 = [(IDSTransactionLogSyncTaskHandler *)self _participantsByAliasFromParticipants:v13];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [(IDSTransactionLogSyncTaskHandler *)self _transactionMessageFromTransportMessage:*(*(&v27 + 1) + 8 * v22) groups:v15 participants:v16 accountInfo:v14];
        if (v23)
        {
          [v17 addObject:v23];
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  v25[2](v25, v17, 0);
  v24 = *MEMORY[0x1E69E9840];
}

- (IDSTransactionLogTaskHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    sub_195B45058(a2, self);
  }

  v5 = objc_loadWeakRetained(&self->_delegate);

  return v5;
}

- (void)_completeWithError:(id)a3
{
  v4 = a3;
  v5 = [(IDSTransactionLogSyncTaskHandler *)self syncTask];
  [v5 _completeWithError:v4];
}

- (id)_destinationsInMessages:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) destination];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_groupIDsFromMessages:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) groupID];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_groupsByGroupIDFromGroups:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 groupID];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_participantsByAliasFromParticipants:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v10 aliases];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v4 setObject:v10 forKeyedSubscript:*(*(&v18 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_transactionMessageFromTransportMessage:(id)a3 groups:(id)a4 participants:(id)a5 accountInfo:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [v13 groupID];
  if (v14)
  {
    [(IDSTransactionLogSyncTaskHandler *)self _transactionMessageFromTransportMessage:v13 withGroupID:v14 groups:v10 accountInfo:v12];
  }

  else
  {
    [(IDSTransactionLogSyncTaskHandler *)self _transactionMessageFromTransportMessage:v13 withParticipants:v11 accountInfo:v12];
  }
  v15 = ;

  return v15;
}

- (id)_transactionMessageFromTransportMessage:(id)a3 withParticipants:(id)a4 accountInfo:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 destination];
  v12 = [v11 alias];
  v13 = [v10 objectForKeyedSubscript:v12];

  v14 = [v11 pushToken];
  v15 = [v13 deviceWithIdentifier:v14];

  if (v15)
  {
    v16 = [v8 encryptedPayload];
    v17 = [v9 accountIdentity];
    v18 = [v8 cypherIdentifier];
    v25 = v16;
    v26 = 0;
    v19 = [v15 verifyAndRevealData:v16 withReceipient:v17 cypherIdentifier:v18 error:&v26];
    v20 = v26;

    if (v19)
    {
      v21 = [(IDSTransactionLogSyncTaskHandler *)self _transactionMessageFromTransportMessage:v8 withDecryptedPayload:v19 accountInfo:v9];
    }

    else
    {
      v22 = +[IDSLogging transactionLog];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v20;
        _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Failed to decrypt device message {error: %{public}@}", buf, 0xCu);
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_transactionMessageFromTransportMessage:(id)a3 withDecryptedPayload:(id)a4 accountInfo:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 senderAlias];
  v11 = [v7 recipientAlias];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [v9 accountForAlias:v11];
    if (v13)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = [v7 payload];
      [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69A4DF0]];

      v16 = [v7 payload];
      v17 = [v16 objectForKeyedSubscript:@"E"];
      [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69A4DE8]];

      [v14 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69A4DD0]];
      v18 = [IDSTransactionLogDictionaryMessage alloc];
      v19 = [v13 uniqueID];
      v20 = [v7 senderAlias];
      [v13 loginID];
      v31 = v8;
      v21 = v32 = v10;
      [v9 serviceName];
      v22 = v12;
      v24 = v23 = v9;
      v25 = [(IDSTransactionLogDictionaryMessage *)v18 initWithDictionary:v14 accountUniqueID:v19 fromID:v20 loginID:v21 serviceName:v24];

      v9 = v23;
      v12 = v22;

      v8 = v31;
      v10 = v32;

      goto LABEL_16;
    }

    v28 = +[IDSLogging transactionLog];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_195B450D4(v7, v9, v28);
    }
  }

  else
  {
    v13 = +[IDSLogging transactionLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v26 = @"NO";
      *buf = 138478851;
      v34 = v10;
      if (v10)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      if (v12)
      {
        v26 = @"YES";
      }

      v35 = 2113;
      v36 = v12;
      v37 = 2113;
      v38 = v7;
      v39 = 2114;
      v40 = v27;
      v41 = 2114;
      v42 = v26;
      _os_log_error_impl(&dword_1959FF000, v13, OS_LOG_TYPE_ERROR, "Message missing sender/recipient alias {senderAlias: %{private}@, recipientAlias: %{private}@, message: %{private}@, senderAlias==nil: %{public}@, recipientAlias==nil: %{public}@}", buf, 0x34u);
    }
  }

  v25 = 0;
LABEL_16:

  v29 = *MEMORY[0x1E69E9840];

  return v25;
}

@end