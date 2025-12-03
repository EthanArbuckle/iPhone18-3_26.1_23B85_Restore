@interface NNMKSyncController
- (BOOL)_validateMessage:(id)message;
- (BOOL)canSyncMailbox:(id)mailbox;
- (BOOL)canSyncMessage:(id)message forMailbox:(id)mailbox;
- (BOOL)doesMessageBelongToSyncedMailboxes:(id)mailboxes;
- (BOOL)isMessage:(id)message fromMailbox:(id)mailbox;
- (BOOL)isValidMessageStatus:(unint64_t)status forMailbox:(id)mailbox;
- (NNMKDeviceRegistryHolder)delegate;
- (id)deviceRegistry;
- (id)filterMessages:(id)messages byAlreadySynced:(BOOL)synced byMailbox:(id)mailbox;
- (id)filterMessages:(id)messages receivedBeforeDate:(id)date;
- (id)groupMessagesByMailboxId:(id)id;
- (id)mailboxForMessageWithId:(id)id;
- (id)mailboxWithId:(id)id;
- (id)mailboxesToSync;
- (id)messageIdFromWatchMessageId:(id)id;
- (id)removeInvalidMailboxesFromMailboxSelection:(id)selection;
- (id)watchAttachmentContentIdFromContentId:(id)id;
- (id)watchMessageIdFromMessageId:(id)id;
- (void)groupMessagesByMailbox:(id)mailbox mailboxes:(id)mailboxes block:(id)block;
@end

@implementation NNMKSyncController

- (BOOL)canSyncMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  mailboxId = [mailboxCopy mailboxId];
  v5 = [mailboxId length];

  if (!v5)
  {
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKSyncController *)v6 canSyncMailbox:mailboxCopy];
    }
  }

  v7 = [mailboxCopy shouldFilter] ^ 1;

  return (v5 != 0) & v7;
}

- (BOOL)_validateMessage:(id)message
{
  messageCopy = message;
  messageId = [messageCopy messageId];
  if (messageId)
  {
    accountId = [messageCopy accountId];
    if (accountId)
    {
      mailboxId = [messageCopy mailboxId];
      v7 = mailboxId != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)filterMessages:(id)messages byAlreadySynced:(BOOL)synced byMailbox:(id)mailbox
{
  syncedCopy = synced;
  v62 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  v10 = MEMORY[0x277CBEB18];
  v11 = [messagesCopy count];
  v12 = v10;
  v13 = mailboxCopy;
  v49 = [v12 arrayWithCapacity:v11];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = messagesCopy;
  v14 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v52;
    *&v15 = 138543618;
    v46 = v15;
    v47 = syncedCopy;
    v48 = mailboxCopy;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v51 + 1) + 8 * i);
        if ([(NNMKSyncController *)self _validateMessage:v19, v46])
        {
          if (syncedCopy)
          {
            deviceRegistry = [(NNMKSyncController *)self deviceRegistry];
            messageId = [v19 messageId];
            v22 = [deviceRegistry containsSyncedMessageForMessageWithId:messageId];

            if (v22)
            {
              deviceRegistry2 = [(NNMKSyncController *)self deviceRegistry];
              messageId2 = [v19 messageId];
              v25 = [deviceRegistry2 syncedMessageForMessageWithId:messageId2];

              if ([v19 isThreadSpecific])
              {
                isThreadSpecific = 0;
              }

              else
              {
                isThreadSpecific = [v25 isThreadSpecific];
              }

              isSpecialMailboxSpecific = [v19 isSpecialMailboxSpecific];
              isSpecialMailboxSpecific2 = [v25 isSpecialMailboxSpecific];
              status = [v19 status];
              v37 = status != [v25 status] || isSpecialMailboxSpecific != isSpecialMailboxSpecific2;
              v32 = v37 | isThreadSpecific;
              if (((v37 | isThreadSpecific) & 1) == 0)
              {
                v38 = qword_28144D620;
                if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
                {
                  v39 = v38;
                  messageId3 = [v19 messageId];
                  *buf = 138543362;
                  v56 = messageId3;
                  _os_log_impl(&dword_25B19F000, v39, OS_LOG_TYPE_INFO, "Dropping message because it already exist. %{public}@", buf, 0xCu);
                }
              }

              syncedCopy = v47;
              v13 = v48;
            }

            else
            {
              v32 = 1;
            }

            if (!v13)
            {
LABEL_32:
              if ((v32 & 1) == 0)
              {
                continue;
              }

LABEL_33:
              [v49 addObject:v19];
              continue;
            }
          }

          else
          {
            v32 = 1;
            if (!v13)
            {
              goto LABEL_32;
            }
          }

          if ((v32 & 1) == 0)
          {
            goto LABEL_32;
          }

          if ([(NNMKSyncController *)self canSyncMessage:v19 forMailbox:v13])
          {
            goto LABEL_33;
          }

          v41 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
          {
            v42 = v41;
            messageId4 = [v19 messageId];
            *buf = v46;
            v56 = messageId4;
            v57 = 2114;
            v58 = v48;
            _os_log_debug_impl(&dword_25B19F000, v42, OS_LOG_TYPE_DEBUG, "Dropping message because it does not belong to mailbox. Message: %{public}@, Mailbox: %{public}@", buf, 0x16u);

            v13 = v48;
            syncedCopy = v47;
          }
        }

        else
        {
          v27 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
          {
            v28 = v27;
            messageId5 = [v19 messageId];
            accountId = [v19 accountId];
            mailboxId = [v19 mailboxId];
            *buf = 138543874;
            v56 = messageId5;
            v57 = 2114;
            v58 = accountId;
            v59 = 2114;
            v60 = mailboxId;
            _os_log_error_impl(&dword_25B19F000, v28, OS_LOG_TYPE_ERROR, "Dropping message because it is missing identifiers. (id:%{public}@, a-id:%{public}@, ma-id:%{public}@)", buf, 0x20u);
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v16);
  }

  v44 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)removeInvalidMailboxesFromMailboxSelection:(id)selection
{
  v19 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  allMailboxesSyncEnabled = [selectionCopy allMailboxesSyncEnabled];
  v5 = 0;
  if ([allMailboxesSyncEnabled count])
  {
    v6 = 0;
    do
    {
      v7 = [allMailboxesSyncEnabled objectAtIndexedSubscript:v6];
      if (![(NNMKSyncController *)self canSyncMailbox:v7])
      {
        v8 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          mailboxId = [v7 mailboxId];
          *buf = 138543362;
          v18 = mailboxId;
          _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Received invalid mailbox from mailbox selection. Id: %{public}@", buf, 0xCu);
        }

        if (!v5)
        {
          v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
        }

        [v5 addIndex:v6];
      }

      ++v6;
    }

    while (v6 < [allMailboxesSyncEnabled count]);
  }

  if ([v5 count])
  {
    v11 = [allMailboxesSyncEnabled mutableCopy];
    [v11 removeObjectsAtIndexes:v5];
    v12 = [[NNMKMailboxSelection alloc] initWithMailboxes:v11];

    v13 = selectionCopy;
  }

  else
  {
    v13 = selectionCopy;
    v12 = selectionCopy;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)filterMessages:(id)messages receivedBeforeDate:(id)date
{
  v34 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  dateCopy = date;
  if (dateCopy)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = messagesCopy;
    v8 = messagesCopy;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          dateReceived = [v13 dateReceived];
          v15 = [dateReceived compare:dateCopy];

          if (v15 == -1)
          {
            v16 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
            {
              v17 = v16;
              messageId = [v13 messageId];
              dateReceived2 = [v13 dateReceived];
              *buf = 138543874;
              v28 = dateCopy;
              v29 = 2114;
              v30 = messageId;
              v31 = 2114;
              v32 = dateReceived2;
              _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_INFO, "Dropping message because it is older than %{public}@. Id: %{public}@, Date: %{public}@", buf, 0x20u);
            }
          }

          else
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v10);
    }

    messagesCopy = v22;
  }

  else
  {
    v7 = messagesCopy;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)canSyncMessage:(id)message forMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  messageCopy = message;
  v8 = [(NNMKSyncController *)self isMessage:messageCopy fromMailbox:mailboxCopy];
  if ([mailboxCopy filterType] == 64)
  {
    dateReceived = [messageCopy dateReceived];

    v10 = v8 & [dateReceived nnmk_isToday];
  }

  else
  {
    status = [messageCopy status];

    v10 = [(NNMKSyncController *)self isValidMessageStatus:status forMailbox:mailboxCopy]&& v8;
  }

  return v10;
}

- (BOOL)isValidMessageStatus:(unint64_t)status forMailbox:(id)mailbox
{
  statusCopy = status;
  mailboxCopy = mailbox;
  v6 = mailboxCopy;
  if ((statusCopy & 0x600) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    if (([mailboxCopy hasFilterType:1] & 1) == 0)
    {
      if ([v6 hasCompoundFilters])
      {
        v7 = 1;
      }

      else
      {
        LODWORD(v8) = [v6 hasFilterType:4] & ((statusCopy & 8) != 0);
        if ([v6 hasFilterType:8])
        {
          v8 = statusCopy & 1 | v8;
        }

        else
        {
          v8 = v8;
        }

        if ([v6 hasFilterType:2])
        {
          v8 = (statusCopy & 0x40 | v8) != 0;
        }

        else
        {
          v8 = v8;
        }

        if ([v6 hasFilterType:16])
        {
          v9 = (statusCopy & 0x20 | v8) != 0;
        }

        else
        {
          v9 = v8;
        }

        v7 = v9;
        if ([v6 hasFilterType:32])
        {
          v7 = (statusCopy & 0x80 | v9) != 0;
        }
      }
    }
  }

  return v7;
}

- (BOOL)doesMessageBelongToSyncedMailboxes:(id)mailboxes
{
  v21 = *MEMORY[0x277D85DE8];
  mailboxesCopy = mailboxes;
  deviceRegistry = [(NNMKSyncController *)self deviceRegistry];
  syncEnabledMailboxes = [deviceRegistry syncEnabledMailboxes];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = syncEnabledMailboxes;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([(NNMKSyncController *)self isMessage:mailboxesCopy fromMailbox:*(*(&v16 + 1) + 8 * i), v16])
        {

          v13 = 1;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [(NNMKSyncController *)v12 doesMessageBelongToSyncedMailboxes:mailboxesCopy];
  }

  v13 = 0;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)watchMessageIdFromMessageId:(id)id
{
  idCopy = id;
  delegate = [(NNMKSyncController *)self delegate];
  pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];

  if (pairedDeviceSupportsMultipleMailboxes)
  {
    nnmk_sanitizedFileNameString = idCopy;
  }

  else
  {
    nnmk_sanitizedFileNameString = [idCopy nnmk_sanitizedFileNameString];
  }

  v8 = nnmk_sanitizedFileNameString;

  return v8;
}

- (id)messageIdFromWatchMessageId:(id)id
{
  idCopy = id;
  delegate = [(NNMKSyncController *)self delegate];
  pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];

  if (pairedDeviceSupportsMultipleMailboxes)
  {
    v7 = idCopy;
  }

  else
  {
    delegate2 = [(NNMKSyncController *)self delegate];
    currentDeviceRegistry = [delegate2 currentDeviceRegistry];
    v10 = [currentDeviceRegistry messageIdForSanitizedMessageId:idCopy];

    v11 = v10;
    if (!v10)
    {
      v12 = qword_28144D620;
      v13 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR);
      v11 = idCopy;
      if (v13)
      {
        [(NNMKSyncController *)idCopy messageIdFromWatchMessageId:v12];
        v11 = idCopy;
      }
    }

    v7 = v11;
  }

  return v7;
}

- (id)watchAttachmentContentIdFromContentId:(id)id
{
  idCopy = id;
  delegate = [(NNMKSyncController *)self delegate];
  pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];

  nnmk_sanitizedFileNameString = idCopy;
  if ((pairedDeviceSupportsMultipleMailboxes & 1) == 0)
  {
    nnmk_sanitizedFileNameString = [idCopy nnmk_sanitizedFileNameString];
  }

  return nnmk_sanitizedFileNameString;
}

- (BOOL)isMessage:(id)message fromMailbox:(id)mailbox
{
  messageCopy = message;
  mailboxCopy = mailbox;
  delegate = [(NNMKSyncController *)self delegate];
  if (![delegate pairedDeviceSupportsMultipleMailboxes])
  {
    accountId = [mailboxCopy accountId];
    if (accountId)
    {
      v10 = accountId;
      mailboxId = [mailboxCopy mailboxId];

      if (mailboxId)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    deviceRegistry = [(NNMKSyncController *)self deviceRegistry];
    mailboxId2 = [messageCopy mailboxId];
    accountId2 = [deviceRegistry mailboxWithId:mailboxId2];

    if (accountId2)
    {
      v16 = [accountId2 type] == 1;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_13;
  }

LABEL_5:
  accountId2 = [messageCopy accountId];
  accountId3 = [mailboxCopy accountId];
  if ([accountId2 isEqualToString:accountId3])
  {
    mailboxId3 = [messageCopy mailboxId];
    mailboxId4 = [mailboxCopy mailboxId];
    v16 = [mailboxId3 isEqualToString:mailboxId4];
  }

  else
  {
    v16 = 0;
  }

LABEL_13:
  return v16;
}

- (id)mailboxesToSync
{
  v11[1] = *MEMORY[0x277D85DE8];
  delegate = [(NNMKSyncController *)self delegate];
  pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];

  if (pairedDeviceSupportsMultipleMailboxes)
  {
    deviceRegistry = [(NNMKSyncController *)self deviceRegistry];
    syncEnabledMailboxes = [deviceRegistry syncEnabledMailboxes];
LABEL_5:
    v8 = syncEnabledMailboxes;
    goto LABEL_6;
  }

  v7 = [(NNMKSyncController *)self mailboxWithId:@"-1"];
  deviceRegistry = v7;
  if (v7)
  {
    v11[0] = v7;
    syncEnabledMailboxes = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)deviceRegistry
{
  delegate = [(NNMKSyncController *)self delegate];
  currentDeviceRegistry = [delegate currentDeviceRegistry];

  return currentDeviceRegistry;
}

- (id)groupMessagesByMailboxId:(id)id
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  delegate = [(NNMKSyncController *)self delegate];
  pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];

  if (!idCopy || (pairedDeviceSupportsMultipleMailboxes & 1) != 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = idCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          mailboxId = [v14 mailboxId];
          v16 = [v5 objectForKeyedSubscript:mailboxId];

          if (!v16)
          {
            v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
            mailboxId2 = [v14 mailboxId];
            [v5 setObject:v16 forKeyedSubscript:mailboxId2];
          }

          [v16 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
    {
      [NNMKSyncController groupMessagesByMailboxId:v8];
    }

    [v5 setObject:idCopy forKeyedSubscript:@"-1"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)groupMessagesByMailbox:(id)mailbox mailboxes:(id)mailboxes block:(id)block
{
  v65 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  mailboxesCopy = mailboxes;
  blockCopy = block;
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(mailboxesCopy, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = mailboxesCopy;
  v12 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v54 + 1) + 8 * i);
        mailboxId = [v16 mailboxId];

        if (mailboxId)
        {
          mailboxId2 = [v16 mailboxId];
          [v11 setObject:v16 forKeyedSubscript:mailboxId2];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v13);
  }

  v40 = mailboxCopy;
  [(NNMKSyncController *)self groupMessagesByMailboxId:mailboxCopy];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v45 = v53 = 0u;
  allKeys = [v45 allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v51;
    do
    {
      v22 = 0;
      do
      {
        if (*v51 != v21)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v50 + 1) + 8 * v22);
        v24 = [(NNMKSyncController *)self mailboxWithId:v23];
        v25 = v24;
        if (v24)
        {
          mailboxId3 = [v24 mailboxId];
          [v11 removeObjectForKey:mailboxId3];

          v27 = [v45 objectForKeyedSubscript:v23];
          blockCopy[2](blockCopy, v27, v25);
LABEL_17:

          goto LABEL_19;
        }

        v28 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
        {
          log = v28;
          v41 = [v45 objectForKeyedSubscript:v23];
          v29 = [NNMKMessage messageIdsFromMessages:v41];
          *buf = 138543618;
          v60 = v23;
          v61 = 2114;
          v62 = v29;
          v27 = log;
          _os_log_error_impl(&dword_25B19F000, log, OS_LOG_TYPE_ERROR, "Could not find mailbox for messages. (Mailbox: %{public}@, Dropping messages: %{public}@)", buf, 0x16u);

          goto LABEL_17;
        }

LABEL_19:

        ++v22;
      }

      while (v20 != v22);
      v30 = [allKeys countByEnumeratingWithState:&v50 objects:v63 count:16];
      v20 = v30;
    }

    while (v30);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  allValues = [v11 allValues];
  v32 = [allValues countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v47;
    v35 = MEMORY[0x277CBEBF8];
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v47 != v34)
        {
          objc_enumerationMutation(allValues);
        }

        v37 = *(*(&v46 + 1) + 8 * j);
        v38 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
        {
          [NNMKSyncController groupMessagesByMailbox:buf mailboxes:&buf[1] block:v38];
        }

        blockCopy[2](blockCopy, v35, v37);
      }

      v33 = [allValues countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v33);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (id)mailboxForMessageWithId:(id)id
{
  idCopy = id;
  deviceRegistry = [(NNMKSyncController *)self deviceRegistry];
  v6 = [deviceRegistry syncedMessageForMessageWithId:idCopy];

  mailboxId = [v6 mailboxId];
  v8 = [(NNMKSyncController *)self mailboxWithId:mailboxId];

  if (!v8)
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKSyncController *)idCopy mailboxForMessageWithId:v9];
    }
  }

  return v8;
}

- (id)mailboxWithId:(id)id
{
  idCopy = id;
  delegate = [(NNMKSyncController *)self delegate];
  if ([delegate pairedDeviceSupportsMultipleMailboxes])
  {
    v6 = [(__CFString *)idCopy length];

    if (v6)
    {
      deviceRegistry = [(NNMKSyncController *)self deviceRegistry];
      v8 = deviceRegistry;
      v9 = idCopy;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [(NNMKSyncController *)v10 mailboxWithId:idCopy];
  }

  deviceRegistry = [(NNMKSyncController *)self deviceRegistry];
  v8 = deviceRegistry;
  v9 = @"-1";
LABEL_8:
  v11 = [deviceRegistry mailboxWithId:v9];

  return v11;
}

- (NNMKDeviceRegistryHolder)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)canSyncMailbox:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 mailboxId];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "It will not sync mailbox because it does not have a valid mailbox id: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)doesMessageBelongToSyncedMailboxes:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 messageId];
  v5 = [a2 mailboxId];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEBUG, "Dropping message because it does not belong to synced mailboxes. Id: %{public}@, mailboxId: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)messageIdFromWatchMessageId:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25B19F000, a2, OS_LOG_TYPE_ERROR, "Could not find message id for watch message id. Returning watch wessage id... %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)groupMessagesByMailbox:(uint8_t *)buf mailboxes:(_BYTE *)a2 block:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25B19F000, log, OS_LOG_TYPE_DEBUG, "Executing block for mailbox without messages", buf, 2u);
}

- (void)mailboxForMessageWithId:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25B19F000, a2, OS_LOG_TYPE_ERROR, "No mailbox for message id %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)mailboxWithId:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 delegate];
  v8 = 134218242;
  v9 = [v6 pairedDeviceSupportsMultipleMailboxes];
  v10 = 2114;
  v11 = a3;
  _os_log_debug_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEBUG, "Retrieving default mailbox. (Paired device supports multiple mailboxes: %lu, MailboxId: %{public}@)", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end