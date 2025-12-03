@interface NNMKResendScheduler
- (NNMKResendSchedulerDelegate)delegate;
- (id)deviceRegistry;
- (id)messageTypeForIDSIdentifier:(id)identifier;
- (id)objectIdsForPendingIDSIdentifier:(id)identifier;
- (void)_executePendingResendsAndContentRequests;
- (void)_failPendingComposedMessages;
- (void)_resendInitialSyncWithIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval mailboxIds:(id)ids;
- (void)_resendObjectIds:(id)ids type:(id)type resendInterval:(unint64_t)interval idsIdentifier:(id)identifier;
- (void)_resendPendingAccountWithIds:(id)ids forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval;
- (void)_resendPendingMessagesWithIds:(id)ids forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval;
- (void)_resendSendingProgressForComposedMessageWithId:(id)id forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval;
- (void)_scheduleIdsIdentifierForResend:(id)resend currentResendInterval:(unint64_t)interval newResendInterval:(unint64_t)resendInterval errorCode:(int64_t)code;
- (void)deletePendingIDSMessagesForMailboxId:(id)id;
- (void)forceRetryingAllPendingIDSMessages;
- (void)handleIDSMessageFailedWithId:(id)id errorCode:(int64_t)code;
- (void)handleIDSMessageSentSuccessfullyWithId:(id)id;
- (void)registerIDSIdentifier:(id)identifier objectIds:(id)ids type:(id)type resendInterval:(unint64_t)interval;
- (void)resendObjectsForIDSIdentifier:(id)identifier;
@end

@implementation NNMKResendScheduler

- (void)registerIDSIdentifier:(id)identifier objectIds:(id)ids type:(id)type resendInterval:(unint64_t)interval
{
  identifierCopy = identifier;
  idsCopy = ids;
  typeCopy = type;
  v13 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [NNMKResendScheduler registerIDSIdentifier:identifierCopy objectIds:typeCopy type:v13 resendInterval:?];
  }

  if (![idsCopy count])
  {

    idsCopy = &unk_286C7BF40;
  }

  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry addObjectIds:idsCopy type:typeCopy resendInterval:interval forIDSIdentifierNotYetAckd:identifierCopy];
}

- (void)resendObjectsForIDSIdentifier:(id)identifier
{
  v9 = 0;
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  v8 = 0;
  v6 = [deviceRegistry objectIdsForIDSIdentifierNotYetAckd:identifierCopy type:&v8 resendInterval:&v9];
  v7 = v8;

  [(NNMKResendScheduler *)self _resendObjectIds:v6 type:v7 resendInterval:v9 idsIdentifier:identifierCopy];
}

- (void)handleIDSMessageFailedWithId:(id)id errorCode:(int64_t)code
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];

  if (deviceRegistry)
  {
    v18 = 0;
    deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
    v17 = 0;
    v9 = [deviceRegistry2 objectIdsForIDSIdentifierNotYetAckd:idCopy type:&v17 resendInterval:&v18];
    v10 = v17;

    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v20 = idCopy;
      v21 = 2114;
      v22 = v10;
      v23 = 2048;
      v24 = v18;
      v25 = 2048;
      codeCopy = code;
      _os_log_error_impl(&dword_25B19F000, v11, OS_LOG_TYPE_ERROR, "Error sending IDS Messages (IDS Identifier: %{public}@ - Object Type: %{public}@ - Resend Interval: %lu - Error code: %li).", buf, 0x2Au);
    }

    delegate = [(NNMKResendScheduler *)self delegate];
    v13 = [delegate resendScheduler:self didRequestNewResendIntervalForPreviousResendInterval:v18 errorCode:code];

    if (code == 27)
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

    delegate2 = [(NNMKResendScheduler *)self delegate];
    v15 = [delegate2 resendSchedulerShouldSendRetries:self];

    if (v15)
    {
      [(NNMKResendScheduler *)self _resendObjectIds:v9 type:v10 resendInterval:v13 idsIdentifier:idCopy];
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    [NNMKResendScheduler _scheduleIdsIdentifierForResend:"_scheduleIdsIdentifierForResend:currentResendInterval:newResendInterval:errorCode:" currentResendInterval:idCopy newResendInterval:? errorCode:?];
    goto LABEL_11;
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleIDSMessageSentSuccessfullyWithId:(id)id
{
  idCopy = id;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];

  if (deviceRegistry)
  {
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
    {
      [(NNMKResendScheduler *)idCopy handleIDSMessageSentSuccessfullyWithId:v6];
    }

    deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
    [deviceRegistry2 markIDSIdentifierAsAckd:idCopy];

    delegate = [(NNMKResendScheduler *)self delegate];
    [delegate resendScheduler:self didRequestDequeueIDSIdentifierForResend:idCopy];
  }
}

- (void)deletePendingIDSMessagesForMailboxId:(id)id
{
  v63 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v62 = idCopy;
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "Deleting pending IDS messages for mailbox. (Id: %{public}@)", buf, 0xCu);
  }

  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry beginUpdates];

  deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
  v7 = [deviceRegistry2 objectIdsForType:@"InitialSync"];

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
          deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
          [deviceRegistry3 deleteObjectId:v13 fromIDSIdentifiersNotYetAckdOfType:@"InitialSync"];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v10);
  }

  v44 = v8;

  deviceRegistry4 = [(NNMKResendScheduler *)self deviceRegistry];
  v16 = [deviceRegistry4 objectIdsForType:@"Message"];

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
        deviceRegistry5 = [(NNMKResendScheduler *)self deviceRegistry];
        v24 = [deviceRegistry5 syncedMessageForMessageWithId:v22];

        if (!v24 || ([v24 mailboxId], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", idCopy), v25, v26))
        {
          deviceRegistry6 = [(NNMKResendScheduler *)self deviceRegistry];
          [deviceRegistry6 deleteObjectId:v22 fromIDSIdentifiersNotYetAckdOfType:@"Message"];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v19);
  }

  v43 = v17;

  deviceRegistry7 = [(NNMKResendScheduler *)self deviceRegistry];
  v29 = [deviceRegistry7 objectIdsForType:@"MessageContent"];

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
        deviceRegistry8 = [(NNMKResendScheduler *)self deviceRegistry];
        v37 = [deviceRegistry8 syncedMessageForMessageWithId:v35];

        if (!v37 || ([v37 mailboxId], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", idCopy), v38, v39))
        {
          deviceRegistry9 = [(NNMKResendScheduler *)self deviceRegistry];
          [deviceRegistry9 deleteObjectId:v35 fromIDSIdentifiersNotYetAckdOfType:@"MessageContent"];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v32);
  }

  deviceRegistry10 = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry10 endUpdates];

  v42 = *MEMORY[0x277D85DE8];
}

- (void)forceRetryingAllPendingIDSMessages
{
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];

  if (deviceRegistry)
  {
    delegate = [(NNMKResendScheduler *)self delegate];
    v5 = [delegate resendSchedulerShouldSendRetries:self];

    v6 = qword_28144D620;
    if (v5)
    {
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Forcing retrying all pending ids messages", v11, 2u);
      }

      deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
      [deviceRegistry2 prepareIDSIdentifiersForResendForErrorCode:27];

      delegate2 = [(NNMKResendScheduler *)self delegate];
      deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
      datesForIDSIdentifiersScheduledToBeResent = [deviceRegistry3 datesForIDSIdentifiersScheduledToBeResent];
      [delegate2 resendScheduler:self didRequestEnqueueIDSIdentifiersForResend:datesForIDSIdentifiersScheduledToBeResent];

      [(NNMKResendScheduler *)self _executePendingResendsAndContentRequests];
      [(NNMKResendScheduler *)self _failPendingComposedMessages];
    }

    else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKResendScheduler *)v6 forceRetryingAllPendingIDSMessages];
    }
  }
}

- (id)messageTypeForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  v6 = [deviceRegistry typeForIDSIdentifierNotYetAckd:identifierCopy];

  return v6;
}

- (id)objectIdsForPendingIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  v6 = [deviceRegistry objectIdsForIDSIdentifierNotYetAckd:identifierCopy type:0 resendInterval:0];

  return v6;
}

- (id)deviceRegistry
{
  delegate = [(NNMKResendScheduler *)self delegate];
  currentDeviceRegistry = [delegate currentDeviceRegistry];

  return currentDeviceRegistry;
}

- (void)_executePendingResendsAndContentRequests
{
  v46 = *MEMORY[0x277D85DE8];
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  syncedMessageIdsResendRequested = [deviceRegistry syncedMessageIdsResendRequested];

  if ([syncedMessageIdsResendRequested count])
  {
    delegate = [(NNMKResendScheduler *)self delegate];
    [delegate resendScheduler:self didRequestRetrySendingMessageWithIds:syncedMessageIdsResendRequested];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
  syncedAccountIdsResendRequested = [deviceRegistry2 syncedAccountIdsResendRequested];

  v8 = [syncedAccountIdsResendRequested countByEnumeratingWithState:&v39 objects:v45 count:16];
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
          objc_enumerationMutation(syncedAccountIdsResendRequested);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        delegate2 = [(NNMKResendScheduler *)self delegate];
        [delegate2 resendScheduler:self didRequestRetrySendingAccountWithId:v12];
      }

      v9 = [syncedAccountIdsResendRequested countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v9);
  }

  deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
  syncedMessageIdsContentRequestedByUser = [deviceRegistry3 syncedMessageIdsContentRequestedByUser];

  if ([syncedMessageIdsContentRequestedByUser count])
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v16 = syncedMessageIdsContentRequestedByUser;
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
          delegate3 = [(NNMKResendScheduler *)self delegate];
          [delegate3 resendScheduler:self didRequestRetrySendingContentForMessageId:v21 highPriority:1];
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
    deviceRegistry4 = [(NNMKResendScheduler *)self deviceRegistry];
    v16 = [deviceRegistry4 firstSyncedMessageIdsContentNotSyncedOrRequestedByUser:20];

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
          delegate4 = [(NNMKResendScheduler *)self delegate];
          [delegate4 resendScheduler:self didRequestRetrySendingContentForMessageId:v28 highPriority:0];
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
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  pendingComposedMessageIds = [deviceRegistry pendingComposedMessageIds];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = pendingComposedMessageIds;
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
        delegate = [(NNMKResendScheduler *)self delegate];
        [delegate resendScheduler:self didRequestRetrySendingComposeMessageProgress:-1 messageId:v10 resendInterval:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry2 removePendingComposedMessages];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleIdsIdentifierForResend:(id)resend currentResendInterval:(unint64_t)interval newResendInterval:(unint64_t)resendInterval errorCode:(int64_t)code
{
  resendCopy = resend;
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:interval];
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry rescheduleIDSIdentifier:resendCopy resendInterval:resendInterval withDateToResend:v10 errorCode:code];

  delegate = [(NNMKResendScheduler *)self delegate];
  LODWORD(resendInterval) = [delegate resendSchedulerShouldSendRetries:self];

  if (resendInterval)
  {
    delegate2 = [(NNMKResendScheduler *)self delegate];
    [delegate2 resendScheduler:self didRequestEnqueueIDSIdentifierForResend:resendCopy date:v10 silent:0];
  }
}

- (void)_resendObjectIds:(id)ids type:(id)type resendInterval:(unint64_t)interval idsIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  typeCopy = type;
  identifierCopy = identifier;
  v13 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138544130;
    v23 = identifierCopy;
    v24 = 2114;
    v25 = typeCopy;
    v26 = 2114;
    v27 = idsCopy;
    v28 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "Resending IDS messages. (IDS id: %{public}@, Type: %{public}@, objects: %{public}@, resend interval: %lu)", &v22, 0x2Au);
  }

  if ([typeCopy isEqualToString:@"InitialSync"])
  {
    [(NNMKResendScheduler *)self _resendInitialSyncWithIDSIdentifier:identifierCopy newResendInterval:interval mailboxIds:idsCopy];
    goto LABEL_23;
  }

  if ([typeCopy isEqualToString:@"Message"])
  {
    [(NNMKResendScheduler *)self _resendPendingMessagesWithIds:idsCopy forIDSIdentifier:identifierCopy newResendInterval:interval];
    goto LABEL_23;
  }

  if (![typeCopy isEqualToString:@"MessageContent"])
  {
    if ([typeCopy isEqualToString:@"Account"])
    {
      [(NNMKResendScheduler *)self _resendPendingAccountWithIds:idsCopy forIDSIdentifier:identifierCopy newResendInterval:interval];
      goto LABEL_23;
    }

    if ([typeCopy isEqualToString:@"SendingProgress"])
    {
      firstObject = [idsCopy firstObject];
      [(NNMKResendScheduler *)self _resendSendingProgressForComposedMessageWithId:firstObject forIDSIdentifier:identifierCopy newResendInterval:interval];
    }

    else if ([typeCopy isEqualToString:@"MailboxSelection"])
    {
      firstObject = [(NNMKResendScheduler *)self delegate];
      [firstObject resendScheduler:self didRequestRetrySendingMailboxSelectionWithResendInterval:interval];
    }

    else if ([typeCopy isEqualToString:@"AccountIdentity"])
    {
      firstObject = [idsCopy firstObject];
      delegate = [(NNMKResendScheduler *)self delegate];
      [delegate resendScheduler:self didRequestRetrySendingAccountIdentifier:firstObject resendInterval:interval];
    }

    else
    {
      if (![typeCopy isEqualToString:@"VIPList"])
      {
        goto LABEL_23;
      }

      firstObject = [(NNMKResendScheduler *)self delegate];
      [firstObject resendScheduler:self didRequestRetrySendingVIPListWithResendInterval:interval];
    }

LABEL_22:

    goto LABEL_23;
  }

  if ([idsCopy count] == 2)
  {
    firstObject = [idsCopy objectAtIndexedSubscript:0];
    v15 = [idsCopy objectAtIndexedSubscript:1];
    bOOLValue = [v15 BOOLValue];

    [(NNMKResendScheduler *)self _resendPendingMessageContentWithId:firstObject sentBecauseUserRequested:bOOLValue idsIdentifier:identifierCopy newResendInterval:interval];
    goto LABEL_22;
  }

  v17 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKResendScheduler _resendObjectIds:identifierCopy type:v17 resendInterval:? idsIdentifier:?];
  }

LABEL_23:
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry markIDSIdentifierAsAckd:identifierCopy];

  delegate2 = [(NNMKResendScheduler *)self delegate];
  [delegate2 resendScheduler:self didRequestDequeueIDSIdentifierForResend:identifierCopy];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_resendInitialSyncWithIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval mailboxIds:(id)ids
{
  v24 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(idsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = idsCopy;
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
        deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
        v16 = [deviceRegistry mailboxWithId:v14];

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
    delegate = [(NNMKResendScheduler *)self delegate];
    [delegate resendScheduler:self didRequestRetryFullSyncForMailboxes:v8];

    self->_initialSyncResendInterval = interval;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_resendPendingMessagesWithIds:(id)ids forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval
{
  v60 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry beginUpdates];

  v43 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(idsCopy, "count")}];
  v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
  array = [MEMORY[0x277CBEB18] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = idsCopy;
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
        deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
        v16 = [deviceRegistry2 syncedMessageForMessageWithId:v14];

        if (v16)
        {
          resendRequested = [v16 resendRequested];
          v18 = qword_28144D620;
          v19 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
          if (resendRequested)
          {
            if (v19)
            {
              *buf = 138543874;
              v54 = v14;
              v55 = 2114;
              v56 = identifierCopy;
              v57 = 2048;
              intervalCopy3 = interval;
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
              v56 = identifierCopy;
              v57 = 2048;
              intervalCopy3 = interval;
              _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Resending Message (Id: %{public}@ - Last IDS Identifier: %{public}@ - New Resend Interval: %lu)...", buf, 0x20u);
            }

            if ([v16 usedNotificationPriorityForMessageSync])
            {
              dateReceived = [v16 dateReceived];
              [dateReceived timeIntervalSinceNow];
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
            [v16 setResendInterval:interval];
            deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
            [deviceRegistry3 addOrUpdateSyncedMessage:v16];

            deviceRegistry4 = [(NNMKResendScheduler *)self deviceRegistry];
            [deviceRegistry4 deleteObjectId:v14 fromIDSIdentifiersNotYetAckdOfType:@"Message"];

            [v43 addObject:v14];
          }
        }

        else
        {
          v20 = objc_alloc_init(NNMKProtoMessageDeletion);
          syncController = [(NNMKResendScheduler *)self syncController];
          v22 = [syncController watchMessageIdFromMessageId:v14];
          [(NNMKProtoMessageDeletion *)v20 setMessageId:v22];

          deviceRegistry5 = [(NNMKResendScheduler *)self deviceRegistry];
          mailboxId = [deviceRegistry5 mailboxIdForDeletedMessageId:v14];

          if (mailboxId)
          {
            goto LABEL_12;
          }

          deviceRegistry6 = [(NNMKResendScheduler *)self deviceRegistry];
          v26 = [deviceRegistry6 mailboxWithId:@"-1"];
          mailboxId = [v26 mailboxId];

          if (mailboxId)
          {
LABEL_12:
            v27 = [v45 objectForKeyedSubscript:mailboxId];
            if (!v27)
            {
              v27 = objc_alloc_init(NNMKProtoMessageDeletions);
              [v45 setObject:v27 forKeyedSubscript:mailboxId];
            }

            [(NNMKProtoMessageDeletions *)v27 addMessageDeletion:v20];
            [array addObject:v14];
            v28 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v54 = v14;
              v55 = 2114;
              v56 = identifierCopy;
              v57 = 2048;
              intervalCopy3 = interval;
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
    delegate = [(NNMKResendScheduler *)self delegate];
    [delegate resendScheduler:self didRequestRetrySendingMessageWithIds:v43];
  }

  if ([array count])
  {
    delegate2 = [(NNMKResendScheduler *)self delegate];
    [delegate2 resendScheduler:self didRequestRetrySendingMessageDeletions:v45 deletionsMessageIds:array resendInterval:interval];
  }

  deviceRegistry7 = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry7 endUpdates];

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_resendPendingAccountWithIds:(id)ids forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval
{
  v35 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry beginUpdates];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = idsCopy;
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
          v33 = identifierCopy;
          _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_DEFAULT, "Resending account (Id: %{public}@ - IDS Identifier: %{public}@)...", buf, 0x16u);
        }

        deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
        v19 = [deviceRegistry2 syncedAccountForAccountWithId:v16];

        if (v19)
        {
          [v19 setResendRequested:1];
          [v19 setResendInterval:interval];
          deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
          [deviceRegistry3 addOrUpdateSyncedAccount:v19];

          delegate = [(NNMKResendScheduler *)self delegate];
          [delegate resendScheduler:self didRequestRetrySendingAccountWithId:v16];
        }

        else
        {
          delegate = [(NNMKResendScheduler *)self delegate];
          [delegate resendScheduler:self didRequestRetrySendingDeletionForAccountWithId:v16 resendInterval:interval];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v13);
  }

  deviceRegistry4 = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry4 endUpdates];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_resendSendingProgressForComposedMessageWithId:(id)id forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  identifierCopy = identifier;
  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = idCopy;
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Resending progress for composed message (Id: %{public}@ - IDS Identifier: %{public}@)...", &v16, 0x16u);
  }

  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  v12 = [deviceRegistry progressForComposedMessageWithId:idCopy];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x7FFFFFFFLL;
  }

  delegate = [(NNMKResendScheduler *)self delegate];
  [delegate resendScheduler:self didRequestRetrySendingComposeMessageProgress:v13 messageId:idCopy resendInterval:interval];

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