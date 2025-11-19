@interface NNMKBatchRequestHandler
- (NNMKBatchRequestHandler)init;
- (NNMKBatchRequestHandlerDelegate)delegate;
- (id)_batchedFetchResultForBatchedRequest:(id)a3 mailbox:(id)a4 diff:(id)a5 localSyncedMessagesByMessageId:(id)a6;
- (id)_checkBatchFetchedMessagesWithMailbox:(id)a3 messageHeadersToFetch:(id *)a4 attemptsFailed:(BOOL *)a5;
- (id)checkBatchFetchedMessages;
- (id)firstMessageIds:(unint64_t)a3 fromBatchedFetchResults:(id)a4;
- (void)_rescheduleFetchTimeout;
- (void)cancelFetchTimeout;
- (void)handleBatchRequest:(id)a3;
- (void)handleMessageAdded:(id)a3;
- (void)handleMessageDeleted:(id)a3 mailboxId:(id)a4;
- (void)reset;
- (void)startFetchTimeout;
@end

@implementation NNMKBatchRequestHandler

- (NNMKBatchRequestHandler)init
{
  v6.receiver = self;
  v6.super_class = NNMKBatchRequestHandler;
  v2 = [(NNMKBatchRequestHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    batchedRequestByMailboxId = v2->_batchedRequestByMailboxId;
    v2->_batchedRequestByMailboxId = v3;
  }

  return v2;
}

- (void)handleBatchRequest:(id)a3
{
  v12 = a3;
  if ([v12 wantsBatchedResponse])
  {
    v4 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
    v5 = [v12 mailboxId];
    v6 = [(NNMKBatchedRequest *)v4 objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = [v12 mailboxId];

      if (!v8)
      {
LABEL_7:
        v9 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
        v10 = [v12 mailboxId];
        v11 = [v9 objectForKeyedSubscript:v10];
        [v11 setLatestFetchRequest:v12];

        goto LABEL_8;
      }

      v4 = objc_alloc_init(NNMKBatchedRequest);
      v5 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
      v7 = [v12 mailboxId];
      [v5 setObject:v4 forKeyedSubscript:v7];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)handleMessageAdded:(id)a3
{
  v12 = a3;
  v4 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
  v5 = [v12 mailboxId];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
    v8 = [v12 mailboxId];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v9 messagesToBeSentInBatch];
    v11 = [v12 messageId];
    [v10 setObject:v12 forKeyedSubscript:v11];
  }
}

- (void)handleMessageDeleted:(id)a3 mailboxId:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
    v10 = [v9 objectForKeyedSubscript:v6];
    v11 = [v10 messagesToBeSentInBatch];
    [v11 removeObjectForKey:v12];
  }
}

- (void)startFetchTimeout
{
  v3 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "Scheduling time out for #FETCH #BATCHED_RESPONSE.", v4, 2u);
  }

  [(NNMKBatchRequestHandler *)self _rescheduleFetchTimeout];
}

- (id)checkBatchFetchedMessages
{
  v35 = *MEMORY[0x277D85DE8];
  [(NNMKBatchRequestHandler *)self cancelFetchTimeout];
  v3 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
  v4 = [v3 allKeys];

  v24 = [MEMORY[0x277CBEB18] array];
  v26 = [MEMORY[0x277CBEB18] array];
  v25 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v29;
    *&v7 = 138543362;
    v23 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = [(NNMKBatchRequestHandler *)self syncController];
        v13 = [v12 mailboxWithId:v11];

        if (v13 || ([0 syncActive] & 1) != 0)
        {
          buf[0] = 0;
          v27 = 0;
          v14 = [(NNMKBatchRequestHandler *)self _checkBatchFetchedMessagesWithMailbox:v13 messageHeadersToFetch:&v27 attemptsFailed:buf];
          v15 = v27;
          if (v14)
          {
            [v26 addObject:v14];
          }

          if (buf[0] == 1)
          {
            [v24 addObject:v13];
          }

          if ([v15 count])
          {
            [v25 addObjectsFromArray:v15];
          }

          if (v14 || (buf[0] & 1) != 0)
          {
            v16 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
            [v16 removeObjectForKey:v11];

            [(NNMKBatchRequestHandler *)self setRetryCountForRequestingMissingHeadersInBatchedResponse:0];
            [(NNMKBatchRequestHandler *)self setLastRetryDate:0];
          }
        }

        else
        {
          v17 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v23;
            v33 = v11;
            _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring mailbox for fetch response because it does not exist or is inactive, %{public}@", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v18 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
      v8 = v18;
    }

    while (v18);
  }

  v19 = objc_alloc_init(NNMKBatchRequestHandlerResult);
  [(NNMKBatchRequestHandlerResult *)v19 setFetchResults:v26];
  [(NNMKBatchRequestHandlerResult *)v19 setMailboxesToTriggerFullSync:v24];
  [(NNMKBatchRequestHandlerResult *)v19 setMissingMessageHeaderIds:v25];
  v20 = [(NNMKBatchRequestHandler *)self firstMessageIds:5 fromBatchedFetchResults:v26];
  [(NNMKBatchRequestHandlerResult *)v19 setMessageIdsForRequestingContentDownload:v20];

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_checkBatchFetchedMessagesWithMailbox:(id)a3 messageHeadersToFetch:(id *)a4 attemptsFailed:(BOOL *)a5
{
  v94 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
  v10 = [v8 mailboxId];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    goto LABEL_37;
  }

  v78 = a5;
  v80 = a4;
  v12 = MEMORY[0x277CCAAC8];
  v13 = objc_opt_class();
  v14 = [v11 latestFetchRequest];
  v15 = [v14 currentDateForRequestingMoreMessages];
  v16 = [v12 unarchivedObjectOfClass:v13 fromData:v15 error:0];

  if (!v16)
  {
    v17 = [(NNMKBatchRequestHandler *)self delegate];
    v18 = [v17 currentDeviceRegistry];
    v19 = [v8 mailboxId];
    v16 = [v18 oldestDateReceivedForMailboxId:v19];
  }

  v20 = [(NNMKBatchRequestHandler *)self delegate];
  v21 = [v20 currentDeviceRegistry];
  v22 = [v8 mailboxId];
  v23 = [v21 syncedMessagesKeyedByMessageIdAfterDateReceived:v16 mailboxId:v22];

  v24 = [v11 diffFromMessages:v23 maxMessagesToAdd:40];
  v82 = v23;
  v83 = v8;
  if ([v24 trimed])
  {
    v25 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = [v8 mailboxId];
      *buf = 138543362;
      v90 = v27;
      _os_log_impl(&dword_25B19F000, v26, OS_LOG_TYPE_DEFAULT, "Too many new messages to send as a Batch Response to Watch. We're sending only 40 first new messages... %{public}@", buf, 0xCu);
    }

    v28 = [v24 messageToAddToWatch];
    v29 = [v28 lastObject];
    v30 = [v29 dateReceived];

    v31 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v30 requiringSecureCoding:1 error:0];
    v32 = [v11 latestFetchRequest];
    [v32 setCurrentDateForRequestingMoreMessages:v31];

    v33 = [v11 latestFetchRequest];
    [v33 setWillTrimDatabaseAfterResults:1];

    v84 = v30;
  }

  else
  {
    v84 = v16;
  }

  v34 = MEMORY[0x277CBEB18];
  v35 = [v24 messageIdsToAddToWatch];
  v36 = [v34 arrayWithCapacity:{objc_msgSend(v35, "count")}];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v81 = v24;
  v37 = [v24 messageIdsToAddToWatch];
  v38 = [v37 countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v86;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v86 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v85 + 1) + 8 * i);
        v43 = [v11 messagesToBeSentInBatch];
        v44 = [v43 objectForKeyedSubscript:v42];

        if (!v44)
        {
          [v36 addObject:v42];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v39);
  }

  v45 = [v36 count];
  if (v45)
  {
    v46 = [MEMORY[0x277CBEAA8] date];
    [v46 timeIntervalSince1970];
    v48 = v47;
    v49 = [(NNMKBatchRequestHandler *)self lastRetryDate];
    [v49 timeIntervalSince1970];
    v51 = v48 - v50;

    v8 = v83;
    if (v51 >= 3600.0)
    {
      [(NNMKBatchRequestHandler *)self setRetryCountForRequestingMissingHeadersInBatchedResponse:0];
    }

    [(NNMKBatchRequestHandler *)self setRetryCountForRequestingMissingHeadersInBatchedResponse:[(NNMKBatchRequestHandler *)self retryCountForRequestingMissingHeadersInBatchedResponse]+ 1];
    v52 = [MEMORY[0x277CBEAA8] date];
    [(NNMKBatchRequestHandler *)self setLastRetryDate:v52];

    v53 = [(NNMKBatchRequestHandler *)self retryCountForRequestingMissingHeadersInBatchedResponse];
    v54 = qword_28144D620;
    v55 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
    if (v53 > 3)
    {
      v56 = v81;
      if (v55)
      {
        v74 = v54;
        v75 = [v83 mailboxId];
        *buf = 138543362;
        v90 = v75;
        _os_log_impl(&dword_25B19F000, v74, OS_LOG_TYPE_DEFAULT, "Exceed attempts to request headers for messages missing it. We're triggering a full sync, so watch gets in sync with companion. Mailbox Id: %{public}@", buf, 0xCu);
      }

      v59 = v84;
      if (v79)
      {
        *v79 = 1;
      }
    }

    else
    {
      v56 = v81;
      if (v55)
      {
        v57 = v54;
        v58 = [v36 count];
        v54 = [v83 mailboxId];
        *buf = 134218242;
        v90 = v58;
        v91 = 2114;
        v92 = v54;
        _os_log_impl(&dword_25B19F000, v57, OS_LOG_TYPE_DEFAULT, "Tried to send fetch response, but there are %lu messages that we don't have full headers for. Asking MobileMail for these headers... Mailbox id: %{public}@", buf, 0x16u);
      }

      v59 = v84;
      if (v80)
      {
        v60 = v36;
        *v80 = v36;
      }
    }

    v73 = v82;
  }

  else
  {
    v61 = qword_28144D620;
    v8 = v83;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v62 = v61;
      v63 = [v83 mailboxId];
      *buf = 138543362;
      v90 = v63;
      _os_log_impl(&dword_25B19F000, v62, OS_LOG_TYPE_DEFAULT, "Sending batched response back. (Mailbox id: %{public}@)", buf, 0xCu);
    }

    v64 = [v11 latestFetchRequest];
    v65 = [v64 willTrimDatabaseAfterResults];

    v56 = v81;
    if (v65)
    {
      v66 = [(NNMKBatchRequestHandler *)self delegate];
      v67 = [v66 currentDeviceRegistry];
      [v67 removeSyncedMessagesBeforeDateReceived:v84 mailbox:v83];

      v68 = [(NNMKBatchRequestHandler *)self resendScheduler];
      v69 = [v83 mailboxId];
      [v68 deletePendingIDSMessagesForMailboxId:v69];

      v70 = [(NNMKBatchRequestHandler *)self delegate];
      v71 = [v70 currentDeviceRegistry];
      v72 = [v83 mailboxId];
      [v71 incrementSyncVersionForMailboxId:v72];
    }

    v73 = v82;
    v54 = [(NNMKBatchRequestHandler *)self _batchedFetchResultForBatchedRequest:v11 mailbox:v83 diff:v81 localSyncedMessagesByMessageId:v82];
    v59 = v84;
  }

  if (v45)
  {
LABEL_37:
    v54 = 0;
  }

  v76 = *MEMORY[0x277D85DE8];

  return v54;
}

- (id)_batchedFetchResultForBatchedRequest:(id)a3 mailbox:(id)a4 diff:(id)a5 localSyncedMessagesByMessageId:(id)a6
{
  v79 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v63 = a6;
  v13 = objc_alloc_init(NNMKProtoBatchedFetchResult);
  v14 = [(NNMKBatchRequestHandler *)self delegate];
  v15 = [v14 currentDeviceRegistry];
  -[NNMKProtoBatchedFetchResult setFullSyncVersion:](v13, "setFullSyncVersion:", [v15 fullSyncVersion]);

  v16 = MEMORY[0x277CCAAB0];
  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];
  [(NNMKProtoBatchedFetchResult *)v13 setDateSynced:v18];

  v19 = [v10 latestFetchRequest];
  -[NNMKProtoBatchedFetchResult setShouldTrimDatabase:](v13, "setShouldTrimDatabase:", [v19 willTrimDatabaseAfterResults]);

  v61 = v10;
  v20 = [v10 latestFetchRequest];
  v21 = [v20 currentDateForRequestingMoreMessages];
  [(NNMKProtoBatchedFetchResult *)v13 setDateForRequestingMoreMessages:v21];

  v22 = [v11 mailboxId];
  [(NNMKProtoBatchedFetchResult *)v13 setMailboxId:v22];

  v60 = self;
  v23 = [(NNMKBatchRequestHandler *)self delegate];
  v24 = [v23 currentDeviceRegistry];
  v57 = v11;
  v25 = [v11 mailboxId];
  -[NNMKProtoBatchedFetchResult setMailboxSyncVersion:](v13, "setMailboxSyncVersion:", [v24 syncVersionForMailboxId:v25]);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v56 = v12;
  obj = [v12 messageIdsToAddToWatch];
  v62 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
  if (v62)
  {
    v59 = *v73;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        v27 = v13;
        if (*v73 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v72 + 1) + 8 * i);
        v29 = [v61 messagesToBeSentInBatch];
        v30 = [v29 objectForKeyedSubscript:v28];

        v31 = [v63 objectForKeyedSubscript:v28];
        [v30 setStatus:{objc_msgSend(v31, "status")}];

        v32 = [(NNMKBatchRequestHandler *)v60 delegate];
        v33 = [v32 currentDeviceRegistry];
        v34 = [v33 organizeByThread];
        v35 = [(NNMKBatchRequestHandler *)v60 delegate];
        v36 = [v35 pairedDeviceSupportsMultipleMailboxes];
        v37 = [(NNMKBatchRequestHandler *)v60 delegate];
        v38 = +[NNMKProtoMessage protoMessageFromMessage:organizedByThread:sanitizeMessageId:supportsStandaloneMode:](NNMKProtoMessage, "protoMessageFromMessage:organizedByThread:sanitizeMessageId:supportsStandaloneMode:", v30, v34, v36 ^ 1u, [v37 pairedDeviceSupportsStandaloneMode]);

        v13 = v27;
        [(NNMKProtoBatchedFetchResult *)v27 addMessageAddition:v38];
      }

      v62 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
    }

    while (v62);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v39 = [v56 messageIdsToUpdateOnWatch];
  v40 = [v39 countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v69;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v69 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v68 + 1) + 8 * j);
        v45 = [v63 objectForKeyedSubscript:v44];
        v46 = objc_alloc_init(NNMKProtoMessageStatusUpdate);
        [(NNMKProtoMessageStatusUpdate *)v46 setMessageId:v44];
        -[NNMKProtoMessageStatusUpdate setUpdatedStatus:](v46, "setUpdatedStatus:", [v45 status]);
        -[NNMKProtoMessageStatusUpdate setStatusVersion:](v46, "setStatusVersion:", [v45 statusVersion]);
        [(NNMKProtoBatchedFetchResult *)v13 addMessageUpdate:v46];
      }

      v41 = [v39 countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v41);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v47 = [v56 messageIdsToDeleteFromWatch];
  v48 = [v47 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v65;
    do
    {
      for (k = 0; k != v49; ++k)
      {
        if (*v65 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v64 + 1) + 8 * k);
        v53 = objc_alloc_init(NNMKProtoMessageDeletion);
        [(NNMKProtoMessageDeletion *)v53 setMessageId:v52];
        [(NNMKProtoBatchedFetchResult *)v13 addMessageDeletion:v53];
      }

      v49 = [v47 countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v49);
  }

  v54 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)firstMessageIds:(unint64_t)a3 fromBatchedFetchResults:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3 + 1];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = v5;
    obj = v5;
    v29 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v29)
    {
      v28 = *v39;
      do
      {
        v8 = 0;
        do
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v8;
          v9 = *(*(&v38 + 1) + 8 * v8);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v31 = [v9 messageAdditions];
          v10 = [v31 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v35;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v35 != v12)
                {
                  objc_enumerationMutation(v31);
                }

                v14 = *(*(&v34 + 1) + 8 * i);
                v15 = MEMORY[0x277CCAAC8];
                v16 = objc_opt_class();
                v17 = [v14 dateReceived];
                v18 = [v15 unarchivedObjectOfClass:v16 fromData:v17 error:0];

                v19 = [v14 messageId];
                [v7 setObject:v18 forKeyedSubscript:v19];

                v20 = [v14 messageId];
                v21 = [v6 count];
                v32[0] = MEMORY[0x277D85DD0];
                v32[1] = 3221225472;
                v32[2] = __67__NNMKBatchRequestHandler_firstMessageIds_fromBatchedFetchResults___block_invoke;
                v32[3] = &unk_279935EE8;
                v33 = v7;
                v22 = [v6 indexOfObject:v20 inSortedRange:0 options:v21 usingComparator:{1024, v32}];

                if ([v6 count] != a3 || v22 != objc_msgSend(v6, "count"))
                {
                  v23 = [v14 messageId];
                  [v6 insertObject:v23 atIndex:v22];

                  if ([v6 count] > a3)
                  {
                    [v6 removeLastObject];
                  }
                }
              }

              v11 = [v31 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v11);
          }

          v8 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v29);
    }

    v5 = v26;
  }

  else
  {
    v6 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __67__NNMKBatchRequestHandler_firstMessageIds_fromBatchedFetchResults___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:a3];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (void)reset
{
  v2 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
  [v2 removeAllObjects];
}

- (void)cancelFetchTimeout
{
  v3 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];

  if (v3)
  {
    v4 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];
    dispatch_source_cancel(v4);
  }
}

- (void)_rescheduleFetchTimeout
{
  v3 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];

  if (!v3)
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_executionQueue);
    [(NNMKBatchRequestHandler *)self setFetchTimeoutTimer:v4];

    v5 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __50__NNMKBatchRequestHandler__rescheduleFetchTimeout__block_invoke;
    handler[3] = &unk_279935CB0;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);

    v6 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];
    dispatch_resume(v6);
  }

  v7 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];

  if (v7)
  {
    v8 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];
    v9 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

void __50__NNMKBatchRequestHandler__rescheduleFetchTimeout__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 batchRequestHandlerDidTimeoutFetchRequest:*(a1 + 32)];
}

- (NNMKBatchRequestHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end