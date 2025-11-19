@interface NNMKSyncController
- (BOOL)_validateMessage:(id)a3;
- (BOOL)canSyncMailbox:(id)a3;
- (BOOL)canSyncMessage:(id)a3 forMailbox:(id)a4;
- (BOOL)doesMessageBelongToSyncedMailboxes:(id)a3;
- (BOOL)isMessage:(id)a3 fromMailbox:(id)a4;
- (BOOL)isValidMessageStatus:(unint64_t)a3 forMailbox:(id)a4;
- (NNMKDeviceRegistryHolder)delegate;
- (id)deviceRegistry;
- (id)filterMessages:(id)a3 byAlreadySynced:(BOOL)a4 byMailbox:(id)a5;
- (id)filterMessages:(id)a3 receivedBeforeDate:(id)a4;
- (id)groupMessagesByMailboxId:(id)a3;
- (id)mailboxForMessageWithId:(id)a3;
- (id)mailboxWithId:(id)a3;
- (id)mailboxesToSync;
- (id)messageIdFromWatchMessageId:(id)a3;
- (id)removeInvalidMailboxesFromMailboxSelection:(id)a3;
- (id)watchAttachmentContentIdFromContentId:(id)a3;
- (id)watchMessageIdFromMessageId:(id)a3;
- (void)groupMessagesByMailbox:(id)a3 mailboxes:(id)a4 block:(id)a5;
@end

@implementation NNMKSyncController

- (BOOL)canSyncMailbox:(id)a3
{
  v3 = a3;
  v4 = [v3 mailboxId];
  v5 = [v4 length];

  if (!v5)
  {
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKSyncController *)v6 canSyncMailbox:v3];
    }
  }

  v7 = [v3 shouldFilter] ^ 1;

  return (v5 != 0) & v7;
}

- (BOOL)_validateMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 messageId];
  if (v4)
  {
    v5 = [v3 accountId];
    if (v5)
    {
      v6 = [v3 mailboxId];
      v7 = v6 != 0;
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

- (id)filterMessages:(id)a3 byAlreadySynced:(BOOL)a4 byMailbox:(id)a5
{
  v6 = a4;
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CBEB18];
  v11 = [v8 count];
  v12 = v10;
  v13 = v9;
  v49 = [v12 arrayWithCapacity:v11];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v8;
  v14 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v52;
    *&v15 = 138543618;
    v46 = v15;
    v47 = v6;
    v48 = v9;
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
          if (v6)
          {
            v20 = [(NNMKSyncController *)self deviceRegistry];
            v21 = [v19 messageId];
            v22 = [v20 containsSyncedMessageForMessageWithId:v21];

            if (v22)
            {
              v23 = [(NNMKSyncController *)self deviceRegistry];
              v24 = [v19 messageId];
              v25 = [v23 syncedMessageForMessageWithId:v24];

              if ([v19 isThreadSpecific])
              {
                v26 = 0;
              }

              else
              {
                v26 = [v25 isThreadSpecific];
              }

              v33 = [v19 isSpecialMailboxSpecific];
              v34 = [v25 isSpecialMailboxSpecific];
              v35 = [v19 status];
              v37 = v35 != [v25 status] || v33 != v34;
              v32 = v37 | v26;
              if (((v37 | v26) & 1) == 0)
              {
                v38 = qword_28144D620;
                if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
                {
                  v39 = v38;
                  v40 = [v19 messageId];
                  *buf = 138543362;
                  v56 = v40;
                  _os_log_impl(&dword_25B19F000, v39, OS_LOG_TYPE_INFO, "Dropping message because it already exist. %{public}@", buf, 0xCu);
                }
              }

              v6 = v47;
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
            v43 = [v19 messageId];
            *buf = v46;
            v56 = v43;
            v57 = 2114;
            v58 = v48;
            _os_log_debug_impl(&dword_25B19F000, v42, OS_LOG_TYPE_DEBUG, "Dropping message because it does not belong to mailbox. Message: %{public}@, Mailbox: %{public}@", buf, 0x16u);

            v13 = v48;
            v6 = v47;
          }
        }

        else
        {
          v27 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
          {
            v28 = v27;
            v29 = [v19 messageId];
            v30 = [v19 accountId];
            v31 = [v19 mailboxId];
            *buf = 138543874;
            v56 = v29;
            v57 = 2114;
            v58 = v30;
            v59 = 2114;
            v60 = v31;
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

- (id)removeInvalidMailboxesFromMailboxSelection:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v4 = [v16 allMailboxesSyncEnabled];
  v5 = 0;
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      if (![(NNMKSyncController *)self canSyncMailbox:v7])
      {
        v8 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          v10 = [v7 mailboxId];
          *buf = 138543362;
          v18 = v10;
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

    while (v6 < [v4 count]);
  }

  if ([v5 count])
  {
    v11 = [v4 mutableCopy];
    [v11 removeObjectsAtIndexes:v5];
    v12 = [[NNMKMailboxSelection alloc] initWithMailboxes:v11];

    v13 = v16;
  }

  else
  {
    v13 = v16;
    v12 = v16;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)filterMessages:(id)a3 receivedBeforeDate:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v5;
    v8 = v5;
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
          v14 = [v13 dateReceived];
          v15 = [v14 compare:v6];

          if (v15 == -1)
          {
            v16 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
            {
              v17 = v16;
              v18 = [v13 messageId];
              v19 = [v13 dateReceived];
              *buf = 138543874;
              v28 = v6;
              v29 = 2114;
              v30 = v18;
              v31 = 2114;
              v32 = v19;
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

    v5 = v22;
  }

  else
  {
    v7 = v5;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)canSyncMessage:(id)a3 forMailbox:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NNMKSyncController *)self isMessage:v7 fromMailbox:v6];
  if ([v6 filterType] == 64)
  {
    v9 = [v7 dateReceived];

    v10 = v8 & [v9 nnmk_isToday];
  }

  else
  {
    v11 = [v7 status];

    v10 = [(NNMKSyncController *)self isValidMessageStatus:v11 forMailbox:v6]&& v8;
  }

  return v10;
}

- (BOOL)isValidMessageStatus:(unint64_t)a3 forMailbox:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = v5;
  if ((v4 & 0x600) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    if (([v5 hasFilterType:1] & 1) == 0)
    {
      if ([v6 hasCompoundFilters])
      {
        v7 = 1;
      }

      else
      {
        LODWORD(v8) = [v6 hasFilterType:4] & ((v4 & 8) != 0);
        if ([v6 hasFilterType:8])
        {
          v8 = v4 & 1 | v8;
        }

        else
        {
          v8 = v8;
        }

        if ([v6 hasFilterType:2])
        {
          v8 = (v4 & 0x40 | v8) != 0;
        }

        else
        {
          v8 = v8;
        }

        if ([v6 hasFilterType:16])
        {
          v9 = (v4 & 0x20 | v8) != 0;
        }

        else
        {
          v9 = v8;
        }

        v7 = v9;
        if ([v6 hasFilterType:32])
        {
          v7 = (v4 & 0x80 | v9) != 0;
        }
      }
    }
  }

  return v7;
}

- (BOOL)doesMessageBelongToSyncedMailboxes:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NNMKSyncController *)self deviceRegistry];
  v6 = [v5 syncEnabledMailboxes];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
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

        if ([(NNMKSyncController *)self isMessage:v4 fromMailbox:*(*(&v16 + 1) + 8 * i), v16])
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
    [(NNMKSyncController *)v12 doesMessageBelongToSyncedMailboxes:v4];
  }

  v13 = 0;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)watchMessageIdFromMessageId:(id)a3
{
  v4 = a3;
  v5 = [(NNMKSyncController *)self delegate];
  v6 = [v5 pairedDeviceSupportsMultipleMailboxes];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = [v4 nnmk_sanitizedFileNameString];
  }

  v8 = v7;

  return v8;
}

- (id)messageIdFromWatchMessageId:(id)a3
{
  v4 = a3;
  v5 = [(NNMKSyncController *)self delegate];
  v6 = [v5 pairedDeviceSupportsMultipleMailboxes];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v8 = [(NNMKSyncController *)self delegate];
    v9 = [v8 currentDeviceRegistry];
    v10 = [v9 messageIdForSanitizedMessageId:v4];

    v11 = v10;
    if (!v10)
    {
      v12 = qword_28144D620;
      v13 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR);
      v11 = v4;
      if (v13)
      {
        [(NNMKSyncController *)v4 messageIdFromWatchMessageId:v12];
        v11 = v4;
      }
    }

    v7 = v11;
  }

  return v7;
}

- (id)watchAttachmentContentIdFromContentId:(id)a3
{
  v4 = a3;
  v5 = [(NNMKSyncController *)self delegate];
  v6 = [v5 pairedDeviceSupportsMultipleMailboxes];

  v7 = v4;
  if ((v6 & 1) == 0)
  {
    v7 = [v4 nnmk_sanitizedFileNameString];
  }

  return v7;
}

- (BOOL)isMessage:(id)a3 fromMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NNMKSyncController *)self delegate];
  if (![v8 pairedDeviceSupportsMultipleMailboxes])
  {
    v9 = [v7 accountId];
    if (v9)
    {
      v10 = v9;
      v11 = [v7 mailboxId];

      if (v11)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v17 = [(NNMKSyncController *)self deviceRegistry];
    v18 = [v6 mailboxId];
    v12 = [v17 mailboxWithId:v18];

    if (v12)
    {
      v16 = [v12 type] == 1;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_13;
  }

LABEL_5:
  v12 = [v6 accountId];
  v13 = [v7 accountId];
  if ([v12 isEqualToString:v13])
  {
    v14 = [v6 mailboxId];
    v15 = [v7 mailboxId];
    v16 = [v14 isEqualToString:v15];
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
  v3 = [(NNMKSyncController *)self delegate];
  v4 = [v3 pairedDeviceSupportsMultipleMailboxes];

  if (v4)
  {
    v5 = [(NNMKSyncController *)self deviceRegistry];
    v6 = [v5 syncEnabledMailboxes];
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v7 = [(NNMKSyncController *)self mailboxWithId:@"-1"];
  v5 = v7;
  if (v7)
  {
    v11[0] = v7;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)deviceRegistry
{
  v2 = [(NNMKSyncController *)self delegate];
  v3 = [v2 currentDeviceRegistry];

  return v3;
}

- (id)groupMessagesByMailboxId:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NNMKSyncController *)self delegate];
  v7 = [v6 pairedDeviceSupportsMultipleMailboxes];

  if (!v4 || (v7 & 1) != 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v4;
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
          v15 = [v14 mailboxId];
          v16 = [v5 objectForKeyedSubscript:v15];

          if (!v16)
          {
            v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
            v17 = [v14 mailboxId];
            [v5 setObject:v16 forKeyedSubscript:v17];
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

    [v5 setObject:v4 forKeyedSubscript:@"-1"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)groupMessagesByMailbox:(id)a3 mailboxes:(id)a4 block:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v9;
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
        v17 = [v16 mailboxId];

        if (v17)
        {
          v18 = [v16 mailboxId];
          [v11 setObject:v16 forKeyedSubscript:v18];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v13);
  }

  v40 = v8;
  [(NNMKSyncController *)self groupMessagesByMailboxId:v8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v45 = v53 = 0u;
  v43 = [v45 allKeys];
  v19 = [v43 countByEnumeratingWithState:&v50 objects:v63 count:16];
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
          objc_enumerationMutation(v43);
        }

        v23 = *(*(&v50 + 1) + 8 * v22);
        v24 = [(NNMKSyncController *)self mailboxWithId:v23];
        v25 = v24;
        if (v24)
        {
          v26 = [v24 mailboxId];
          [v11 removeObjectForKey:v26];

          v27 = [v45 objectForKeyedSubscript:v23];
          v10[2](v10, v27, v25);
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
      v30 = [v43 countByEnumeratingWithState:&v50 objects:v63 count:16];
      v20 = v30;
    }

    while (v30);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v31 = [v11 allValues];
  v32 = [v31 countByEnumeratingWithState:&v46 objects:v58 count:16];
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
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v46 + 1) + 8 * j);
        v38 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
        {
          [NNMKSyncController groupMessagesByMailbox:buf mailboxes:&buf[1] block:v38];
        }

        v10[2](v10, v35, v37);
      }

      v33 = [v31 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v33);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (id)mailboxForMessageWithId:(id)a3
{
  v4 = a3;
  v5 = [(NNMKSyncController *)self deviceRegistry];
  v6 = [v5 syncedMessageForMessageWithId:v4];

  v7 = [v6 mailboxId];
  v8 = [(NNMKSyncController *)self mailboxWithId:v7];

  if (!v8)
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKSyncController *)v4 mailboxForMessageWithId:v9];
    }
  }

  return v8;
}

- (id)mailboxWithId:(id)a3
{
  v4 = a3;
  v5 = [(NNMKSyncController *)self delegate];
  if ([v5 pairedDeviceSupportsMultipleMailboxes])
  {
    v6 = [(__CFString *)v4 length];

    if (v6)
    {
      v7 = [(NNMKSyncController *)self deviceRegistry];
      v8 = v7;
      v9 = v4;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [(NNMKSyncController *)v10 mailboxWithId:v4];
  }

  v7 = [(NNMKSyncController *)self deviceRegistry];
  v8 = v7;
  v9 = @"-1";
LABEL_8:
  v11 = [v7 mailboxWithId:v9];

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