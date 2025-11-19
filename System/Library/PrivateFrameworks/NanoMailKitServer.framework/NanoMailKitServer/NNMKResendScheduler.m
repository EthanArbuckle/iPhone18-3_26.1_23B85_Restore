@interface NNMKResendScheduler
- (NNMKResendSchedulerDelegate)delegate;
- (id)deviceRegistry;
- (id)messageTypeForIDSIdentifier:(id)a3;
- (id)objectIdsForPendingIDSIdentifier:(id)a3;
- (void)_executePendingResendsAndContentRequests;
- (void)_failPendingComposedMessages;
- (void)_resendInitialSyncWithIDSIdentifier:(id)a3 newResendInterval:(unint64_t)a4 mailboxIds:(id)a5;
- (void)_resendObjectIds:(id)a3 type:(id)a4 resendInterval:(unint64_t)a5 idsIdentifier:(id)a6;
- (void)_resendPendingAccountWithIds:(id)a3 forIDSIdentifier:(id)a4 newResendInterval:(unint64_t)a5;
- (void)_resendPendingMessagesWithIds:(id)a3 forIDSIdentifier:(id)a4 newResendInterval:(unint64_t)a5;
- (void)_resendSendingProgressForComposedMessageWithId:(id)a3 forIDSIdentifier:(id)a4 newResendInterval:(unint64_t)a5;
- (void)_scheduleIdsIdentifierForResend:(id)a3 currentResendInterval:(unint64_t)a4 newResendInterval:(unint64_t)a5 errorCode:(int64_t)a6;
- (void)deletePendingIDSMessagesForMailboxId:(id)a3;
- (void)forceRetryingAllPendingIDSMessages;
- (void)handleIDSMessageFailedWithId:(id)a3 errorCode:(int64_t)a4;
- (void)handleIDSMessageSentSuccessfullyWithId:(id)a3;
- (void)registerIDSIdentifier:(id)a3 objectIds:(id)a4 type:(id)a5 resendInterval:(unint64_t)a6;
- (void)resendObjectsForIDSIdentifier:(id)a3;
@end

@implementation NNMKResendScheduler

- (void)registerIDSIdentifier:(id)a3 objectIds:(id)a4 type:(id)a5 resendInterval:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [NNMKResendScheduler registerIDSIdentifier:v10 objectIds:v12 type:v13 resendInterval:?];
  }

  if (![v11 count])
  {

    v11 = &unk_286C7BF40;
  }

  v14 = [(NNMKResendScheduler *)self deviceRegistry];
  [v14 addObjectIds:v11 type:v12 resendInterval:a6 forIDSIdentifierNotYetAckd:v10];
}

- (void)resendObjectsForIDSIdentifier:(id)a3
{
  v9 = 0;
  v4 = a3;
  v5 = [(NNMKResendScheduler *)self deviceRegistry];
  v8 = 0;
  v6 = [v5 objectIdsForIDSIdentifierNotYetAckd:v4 type:&v8 resendInterval:&v9];
  v7 = v8;

  [(NNMKResendScheduler *)self _resendObjectIds:v6 type:v7 resendInterval:v9 idsIdentifier:v4];
}

- (void)handleIDSMessageFailedWithId:(id)a3 errorCode:(int64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NNMKResendScheduler *)self deviceRegistry];

  if (v7)
  {
    v18 = 0;
    v8 = [(NNMKResendScheduler *)self deviceRegistry];
    v17 = 0;
    v9 = [v8 objectIdsForIDSIdentifierNotYetAckd:v6 type:&v17 resendInterval:&v18];
    v10 = v17;

    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v20 = v6;
      v21 = 2114;
      v22 = v10;
      v23 = 2048;
      v24 = v18;
      v25 = 2048;
      v26 = a4;
      _os_log_error_impl(&dword_25B19F000, v11, OS_LOG_TYPE_ERROR, "Error sending IDS Messages (IDS Identifier: %{public}@ - Object Type: %{public}@ - Resend Interval: %lu - Error code: %li).", buf, 0x2Au);
    }

    v12 = [(NNMKResendScheduler *)self delegate];
    v13 = [v12 resendScheduler:self didRequestNewResendIntervalForPreviousResendInterval:v18 errorCode:a4];

    if (a4 == 27)
    {
      v18 = v13;
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else if (v18)
    {
      goto LABEL_10;
    }

    v14 = [(NNMKResendScheduler *)self delegate];
    v15 = [v14 resendSchedulerShouldSendRetries:self];

    if (v15)
    {
      [(NNMKResendScheduler *)self _resendObjectIds:v9 type:v10 resendInterval:v13 idsIdentifier:v6];
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    [NNMKResendScheduler _scheduleIdsIdentifierForResend:"_scheduleIdsIdentifierForResend:currentResendInterval:newResendInterval:errorCode:" currentResendInterval:v6 newResendInterval:? errorCode:?];
    goto LABEL_11;
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleIDSMessageSentSuccessfullyWithId:(id)a3
{
  v4 = a3;
  v5 = [(NNMKResendScheduler *)self deviceRegistry];

  if (v5)
  {
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
    {
      [(NNMKResendScheduler *)v4 handleIDSMessageSentSuccessfullyWithId:v6];
    }

    v7 = [(NNMKResendScheduler *)self deviceRegistry];
    [v7 markIDSIdentifierAsAckd:v4];

    v8 = [(NNMKResendScheduler *)self delegate];
    [v8 resendScheduler:self didRequestDequeueIDSIdentifierForResend:v4];
  }
}

- (void)deletePendingIDSMessagesForMailboxId:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v4 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v62 = v45;
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "Deleting pending IDS messages for mailbox. (Id: %{public}@)", buf, 0xCu);
  }

  v5 = [(NNMKResendScheduler *)self deviceRegistry];
  [v5 beginUpdates];

  v6 = [(NNMKResendScheduler *)self deviceRegistry];
  v7 = [v6 objectIdsForType:@"InitialSync"];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        if ([v13 isEqualToString:v13])
        {
          v14 = [(NNMKResendScheduler *)self deviceRegistry];
          [v14 deleteObjectId:v13 fromIDSIdentifiersNotYetAckdOfType:@"InitialSync"];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v10);
  }

  v44 = v8;

  v15 = [(NNMKResendScheduler *)self deviceRegistry];
  v16 = [v15 objectIdsForType:@"Message"];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v51;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v51 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v50 + 1) + 8 * j);
        v23 = [(NNMKResendScheduler *)self deviceRegistry];
        v24 = [v23 syncedMessageForMessageWithId:v22];

        if (!v24 || ([v24 mailboxId], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", v45), v25, v26))
        {
          v27 = [(NNMKResendScheduler *)self deviceRegistry];
          [v27 deleteObjectId:v22 fromIDSIdentifiersNotYetAckdOfType:@"Message"];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v19);
  }

  v43 = v17;

  v28 = [(NNMKResendScheduler *)self deviceRegistry];
  v29 = [v28 objectIdsForType:@"MessageContent"];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v47;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v46 + 1) + 8 * k);
        v36 = [(NNMKResendScheduler *)self deviceRegistry];
        v37 = [v36 syncedMessageForMessageWithId:v35];

        if (!v37 || ([v37 mailboxId], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", v45), v38, v39))
        {
          v40 = [(NNMKResendScheduler *)self deviceRegistry];
          [v40 deleteObjectId:v35 fromIDSIdentifiersNotYetAckdOfType:@"MessageContent"];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v32);
  }

  v41 = [(NNMKResendScheduler *)self deviceRegistry];
  [v41 endUpdates];

  v42 = *MEMORY[0x277D85DE8];
}

- (void)forceRetryingAllPendingIDSMessages
{
  v3 = [(NNMKResendScheduler *)self deviceRegistry];

  if (v3)
  {
    v4 = [(NNMKResendScheduler *)self delegate];
    v5 = [v4 resendSchedulerShouldSendRetries:self];

    v6 = qword_28144D620;
    if (v5)
    {
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Forcing retrying all pending ids messages", v11, 2u);
      }

      v7 = [(NNMKResendScheduler *)self deviceRegistry];
      [v7 prepareIDSIdentifiersForResendForErrorCode:27];

      v8 = [(NNMKResendScheduler *)self delegate];
      v9 = [(NNMKResendScheduler *)self deviceRegistry];
      v10 = [v9 datesForIDSIdentifiersScheduledToBeResent];
      [v8 resendScheduler:self didRequestEnqueueIDSIdentifiersForResend:v10];

      [(NNMKResendScheduler *)self _executePendingResendsAndContentRequests];
      [(NNMKResendScheduler *)self _failPendingComposedMessages];
    }

    else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKResendScheduler *)v6 forceRetryingAllPendingIDSMessages];
    }
  }
}

- (id)messageTypeForIDSIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NNMKResendScheduler *)self deviceRegistry];
  v6 = [v5 typeForIDSIdentifierNotYetAckd:v4];

  return v6;
}

- (id)objectIdsForPendingIDSIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NNMKResendScheduler *)self deviceRegistry];
  v6 = [v5 objectIdsForIDSIdentifierNotYetAckd:v4 type:0 resendInterval:0];

  return v6;
}

- (id)deviceRegistry
{
  v2 = [(NNMKResendScheduler *)self delegate];
  v3 = [v2 currentDeviceRegistry];

  return v3;
}

- (void)_executePendingResendsAndContentRequests
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [(NNMKResendScheduler *)self deviceRegistry];
  v4 = [v3 syncedMessageIdsResendRequested];

  if ([v4 count])
  {
    v5 = [(NNMKResendScheduler *)self delegate];
    [v5 resendScheduler:self didRequestRetrySendingMessageWithIds:v4];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [(NNMKResendScheduler *)self deviceRegistry];
  v7 = [v6 syncedAccountIdsResendRequested];

  v8 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [(NNMKResendScheduler *)self delegate];
        [v13 resendScheduler:self didRequestRetrySendingAccountWithId:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v9);
  }

  v14 = [(NNMKResendScheduler *)self deviceRegistry];
  v15 = [v14 syncedMessageIdsContentRequestedByUser];

  if ([v15 count])
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v35 + 1) + 8 * j);
          v22 = [(NNMKResendScheduler *)self delegate];
          [v22 resendScheduler:self didRequestRetrySendingContentForMessageId:v21 highPriority:1];
        }

        v18 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v33 = 0uLL;
    v34 = 0uLL;
    *(&v31 + 1) = 0;
    v32 = 0uLL;
    v23 = [(NNMKResendScheduler *)self deviceRegistry];
    v16 = [v23 firstSyncedMessageIdsContentNotSyncedOrRequestedByUser:20];

    v24 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v16);
          }

          v28 = *(*(&v31 + 1) + 8 * k);
          v29 = [(NNMKResendScheduler *)self delegate];
          [v29 resendScheduler:self didRequestRetrySendingContentForMessageId:v28 highPriority:0];
        }

        v25 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v25);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_failPendingComposedMessages
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NNMKResendScheduler *)self deviceRegistry];
  v4 = [v3 pendingComposedMessageIds];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(NNMKResendScheduler *)self delegate];
        [v11 resendScheduler:self didRequestRetrySendingComposeMessageProgress:-1 messageId:v10 resendInterval:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [(NNMKResendScheduler *)self deviceRegistry];
  [v12 removePendingComposedMessages];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleIdsIdentifierForResend:(id)a3 currentResendInterval:(unint64_t)a4 newResendInterval:(unint64_t)a5 errorCode:(int64_t)a6
{
  v14 = a3;
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a4];
  v11 = [(NNMKResendScheduler *)self deviceRegistry];
  [v11 rescheduleIDSIdentifier:v14 resendInterval:a5 withDateToResend:v10 errorCode:a6];

  v12 = [(NNMKResendScheduler *)self delegate];
  LODWORD(a5) = [v12 resendSchedulerShouldSendRetries:self];

  if (a5)
  {
    v13 = [(NNMKResendScheduler *)self delegate];
    [v13 resendScheduler:self didRequestEnqueueIDSIdentifierForResend:v14 date:v10 silent:0];
  }
}

- (void)_resendObjectIds:(id)a3 type:(id)a4 resendInterval:(unint64_t)a5 idsIdentifier:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138544130;
    v23 = v12;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v10;
    v28 = 2048;
    v29 = a5;
    _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "Resending IDS messages. (IDS id: %{public}@, Type: %{public}@, objects: %{public}@, resend interval: %lu)", &v22, 0x2Au);
  }

  if ([v11 isEqualToString:@"InitialSync"])
  {
    [(NNMKResendScheduler *)self _resendInitialSyncWithIDSIdentifier:v12 newResendInterval:a5 mailboxIds:v10];
    goto LABEL_23;
  }

  if ([v11 isEqualToString:@"Message"])
  {
    [(NNMKResendScheduler *)self _resendPendingMessagesWithIds:v10 forIDSIdentifier:v12 newResendInterval:a5];
    goto LABEL_23;
  }

  if (![v11 isEqualToString:@"MessageContent"])
  {
    if ([v11 isEqualToString:@"Account"])
    {
      [(NNMKResendScheduler *)self _resendPendingAccountWithIds:v10 forIDSIdentifier:v12 newResendInterval:a5];
      goto LABEL_23;
    }

    if ([v11 isEqualToString:@"SendingProgress"])
    {
      v14 = [v10 firstObject];
      [(NNMKResendScheduler *)self _resendSendingProgressForComposedMessageWithId:v14 forIDSIdentifier:v12 newResendInterval:a5];
    }

    else if ([v11 isEqualToString:@"MailboxSelection"])
    {
      v14 = [(NNMKResendScheduler *)self delegate];
      [v14 resendScheduler:self didRequestRetrySendingMailboxSelectionWithResendInterval:a5];
    }

    else if ([v11 isEqualToString:@"AccountIdentity"])
    {
      v14 = [v10 firstObject];
      v18 = [(NNMKResendScheduler *)self delegate];
      [v18 resendScheduler:self didRequestRetrySendingAccountIdentifier:v14 resendInterval:a5];
    }

    else
    {
      if (![v11 isEqualToString:@"VIPList"])
      {
        goto LABEL_23;
      }

      v14 = [(NNMKResendScheduler *)self delegate];
      [v14 resendScheduler:self didRequestRetrySendingVIPListWithResendInterval:a5];
    }

LABEL_22:

    goto LABEL_23;
  }

  if ([v10 count] == 2)
  {
    v14 = [v10 objectAtIndexedSubscript:0];
    v15 = [v10 objectAtIndexedSubscript:1];
    v16 = [v15 BOOLValue];

    [(NNMKResendScheduler *)self _resendPendingMessageContentWithId:v14 sentBecauseUserRequested:v16 idsIdentifier:v12 newResendInterval:a5];
    goto LABEL_22;
  }

  v17 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKResendScheduler _resendObjectIds:v12 type:v17 resendInterval:? idsIdentifier:?];
  }

LABEL_23:
  v19 = [(NNMKResendScheduler *)self deviceRegistry];
  [v19 markIDSIdentifierAsAckd:v12];

  v20 = [(NNMKResendScheduler *)self delegate];
  [v20 resendScheduler:self didRequestDequeueIDSIdentifierForResend:v12];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_resendInitialSyncWithIDSIdentifier:(id)a3 newResendInterval:(unint64_t)a4 mailboxIds:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [(NNMKResendScheduler *)self deviceRegistry];
        v16 = [v15 mailboxWithId:v14];

        if (v16)
        {
          [v8 addObject:v16];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v17 = [(NNMKResendScheduler *)self delegate];
    [v17 resendScheduler:self didRequestRetryFullSyncForMailboxes:v8];

    self->_initialSyncResendInterval = a4;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_resendPendingMessagesWithIds:(id)a3 forIDSIdentifier:(id)a4 newResendInterval:(unint64_t)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v46 = a4;
  v8 = [(NNMKResendScheduler *)self deviceRegistry];
  [v8 beginUpdates];

  v43 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = [MEMORY[0x277CBEB18] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v50;
    *&v10 = 138543362;
    v42 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v49 + 1) + 8 * v13);
        v15 = [(NNMKResendScheduler *)self deviceRegistry];
        v16 = [v15 syncedMessageForMessageWithId:v14];

        if (v16)
        {
          v17 = [v16 resendRequested];
          v18 = qword_28144D620;
          v19 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            if (v19)
            {
              *buf = 138543874;
              v54 = v14;
              v55 = 2114;
              v56 = v46;
              v57 = 2048;
              v58 = a5;
              _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Requested to resend message but a resend has already been requested. Ignoring. (Id: %{public}@ - Last IDS Identifier: %{public}@ - New Resend Interval: %lu)...", buf, 0x20u);
            }
          }

          else
          {
            if (v19)
            {
              *buf = 138543874;
              v54 = v14;
              v55 = 2114;
              v56 = v46;
              v57 = 2048;
              v58 = a5;
              _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Resending Message (Id: %{public}@ - Last IDS Identifier: %{public}@ - New Resend Interval: %lu)...", buf, 0x20u);
            }

            if ([v16 usedNotificationPriorityForMessageSync])
            {
              v29 = [v16 dateReceived];
              [v29 timeIntervalSinceNow];
              v31 = -v30;
              v32 = *&kIntervalBeforeDowngradingMessagesToDefaultPriority;

              if (v32 < v31)
              {
                v33 = qword_28144D620;
                if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  v54 = kIntervalBeforeDowngradingMessagesToDefaultPriority;
                  v55 = 2114;
                  v56 = v14;
                  _os_log_impl(&dword_25B19F000, v33, OS_LOG_TYPE_DEFAULT, "Message is older than %.0f seconds. Downgrading to Default Priority (Id: %{public}@).", buf, 0x16u);
                }

                [v16 setUsedNotificationPriorityForMessageSync:0];
              }
            }

            [v16 setResendRequested:1];
            [v16 setResendInterval:a5];
            v34 = [(NNMKResendScheduler *)self deviceRegistry];
            [v34 addOrUpdateSyncedMessage:v16];

            v35 = [(NNMKResendScheduler *)self deviceRegistry];
            [v35 deleteObjectId:v14 fromIDSIdentifiersNotYetAckdOfType:@"Message"];

            [v43 addObject:v14];
          }
        }

        else
        {
          v20 = objc_alloc_init(NNMKProtoMessageDeletion);
          v21 = [(NNMKResendScheduler *)self syncController];
          v22 = [v21 watchMessageIdFromMessageId:v14];
          [(NNMKProtoMessageDeletion *)v20 setMessageId:v22];

          v23 = [(NNMKResendScheduler *)self deviceRegistry];
          v24 = [v23 mailboxIdForDeletedMessageId:v14];

          if (v24)
          {
            goto LABEL_12;
          }

          v25 = [(NNMKResendScheduler *)self deviceRegistry];
          v26 = [v25 mailboxWithId:@"-1"];
          v24 = [v26 mailboxId];

          if (v24)
          {
LABEL_12:
            v27 = [v45 objectForKeyedSubscript:v24];
            if (!v27)
            {
              v27 = objc_alloc_init(NNMKProtoMessageDeletions);
              [v45 setObject:v27 forKeyedSubscript:v24];
            }

            [(NNMKProtoMessageDeletions *)v27 addMessageDeletion:v20];
            [v44 addObject:v14];
            v28 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v54 = v14;
              v55 = 2114;
              v56 = v46;
              v57 = 2048;
              v58 = a5;
              _os_log_impl(&dword_25B19F000, v28, OS_LOG_TYPE_DEFAULT, "Resending Message Deletion (Id: %{public}@ - Last IDS Identifier: %{public}@ - New Resend Interval: %lu)...", buf, 0x20u);
            }
          }

          else
          {
            v36 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
            {
              *buf = v42;
              v54 = v14;
              _os_log_error_impl(&dword_25B19F000, v36, OS_LOG_TYPE_ERROR, "Could not find mailbox for deleted message with id %{public}@", buf, 0xCu);
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v37 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
      v11 = v37;
    }

    while (v37);
  }

  if ([v43 count])
  {
    v38 = [(NNMKResendScheduler *)self delegate];
    [v38 resendScheduler:self didRequestRetrySendingMessageWithIds:v43];
  }

  if ([v44 count])
  {
    v39 = [(NNMKResendScheduler *)self delegate];
    [v39 resendScheduler:self didRequestRetrySendingMessageDeletions:v45 deletionsMessageIds:v44 resendInterval:a5];
  }

  v40 = [(NNMKResendScheduler *)self deviceRegistry];
  [v40 endUpdates];

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_resendPendingAccountWithIds:(id)a3 forIDSIdentifier:(id)a4 newResendInterval:(unint64_t)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v25 = a4;
  v9 = [(NNMKResendScheduler *)self deviceRegistry];
  [v9 beginUpdates];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v27;
    *&v12 = 138543618;
    v24 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v26 + 1) + 8 * v15);
        v17 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v24;
          v31 = v16;
          v32 = 2114;
          v33 = v25;
          _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_DEFAULT, "Resending account (Id: %{public}@ - IDS Identifier: %{public}@)...", buf, 0x16u);
        }

        v18 = [(NNMKResendScheduler *)self deviceRegistry];
        v19 = [v18 syncedAccountForAccountWithId:v16];

        if (v19)
        {
          [v19 setResendRequested:1];
          [v19 setResendInterval:a5];
          v20 = [(NNMKResendScheduler *)self deviceRegistry];
          [v20 addOrUpdateSyncedAccount:v19];

          v21 = [(NNMKResendScheduler *)self delegate];
          [v21 resendScheduler:self didRequestRetrySendingAccountWithId:v16];
        }

        else
        {
          v21 = [(NNMKResendScheduler *)self delegate];
          [v21 resendScheduler:self didRequestRetrySendingDeletionForAccountWithId:v16 resendInterval:a5];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v13);
  }

  v22 = [(NNMKResendScheduler *)self deviceRegistry];
  [v22 endUpdates];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_resendSendingProgressForComposedMessageWithId:(id)a3 forIDSIdentifier:(id)a4 newResendInterval:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Resending progress for composed message (Id: %{public}@ - IDS Identifier: %{public}@)...", &v16, 0x16u);
  }

  v11 = [(NNMKResendScheduler *)self deviceRegistry];
  v12 = [v11 progressForComposedMessageWithId:v8];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x7FFFFFFFLL;
  }

  v14 = [(NNMKResendScheduler *)self delegate];
  [v14 resendScheduler:self didRequestRetrySendingComposeMessageProgress:v13 messageId:v8 resendInterval:a5];

  v15 = *MEMORY[0x277D85DE8];
}

- (NNMKResendSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)registerIDSIdentifier:(os_log_t)log objectIds:type:resendInterval:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_25B19F000, log, OS_LOG_TYPE_DEBUG, "IDS message sent. (IDS Identifier: %{public}@, Type:%{public}@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)handleIDSMessageSentSuccessfullyWithId:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_25B19F000, a2, OS_LOG_TYPE_DEBUG, "IDS Message Sent Successfully (IDS Identifier: %{public}@).", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_resendObjectIds:(uint64_t)a1 type:(NSObject *)a2 resendInterval:idsIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25B19F000, a2, OS_LOG_TYPE_ERROR, "Error re-sending content, as object IDs were corrupt (IDS Identifier: %{public}@).", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end