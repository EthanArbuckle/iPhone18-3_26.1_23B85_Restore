@interface NNMKBatchRequestHandler
- (NNMKBatchRequestHandler)init;
- (NNMKBatchRequestHandlerDelegate)delegate;
- (id)_batchedFetchResultForBatchedRequest:(id)request mailbox:(id)mailbox diff:(id)diff localSyncedMessagesByMessageId:(id)id;
- (id)_checkBatchFetchedMessagesWithMailbox:(id)mailbox messageHeadersToFetch:(id *)fetch attemptsFailed:(BOOL *)failed;
- (id)checkBatchFetchedMessages;
- (id)firstMessageIds:(unint64_t)ids fromBatchedFetchResults:(id)results;
- (void)_rescheduleFetchTimeout;
- (void)cancelFetchTimeout;
- (void)handleBatchRequest:(id)request;
- (void)handleMessageAdded:(id)added;
- (void)handleMessageDeleted:(id)deleted mailboxId:(id)id;
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

- (void)handleBatchRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy wantsBatchedResponse])
  {
    batchedRequestByMailboxId = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
    mailboxId = [requestCopy mailboxId];
    v6 = [(NNMKBatchedRequest *)batchedRequestByMailboxId objectForKeyedSubscript:mailboxId];
    if (v6)
    {
      mailboxId4 = v6;
    }

    else
    {
      mailboxId2 = [requestCopy mailboxId];

      if (!mailboxId2)
      {
LABEL_7:
        batchedRequestByMailboxId2 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
        mailboxId3 = [requestCopy mailboxId];
        v11 = [batchedRequestByMailboxId2 objectForKeyedSubscript:mailboxId3];
        [v11 setLatestFetchRequest:requestCopy];

        goto LABEL_8;
      }

      batchedRequestByMailboxId = objc_alloc_init(NNMKBatchedRequest);
      mailboxId = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
      mailboxId4 = [requestCopy mailboxId];
      [mailboxId setObject:batchedRequestByMailboxId forKeyedSubscript:mailboxId4];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)handleMessageAdded:(id)added
{
  addedCopy = added;
  batchedRequestByMailboxId = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
  mailboxId = [addedCopy mailboxId];
  v6 = [batchedRequestByMailboxId objectForKeyedSubscript:mailboxId];

  if (v6)
  {
    batchedRequestByMailboxId2 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
    mailboxId2 = [addedCopy mailboxId];
    v9 = [batchedRequestByMailboxId2 objectForKeyedSubscript:mailboxId2];
    messagesToBeSentInBatch = [v9 messagesToBeSentInBatch];
    messageId = [addedCopy messageId];
    [messagesToBeSentInBatch setObject:addedCopy forKeyedSubscript:messageId];
  }
}

- (void)handleMessageDeleted:(id)deleted mailboxId:(id)id
{
  deletedCopy = deleted;
  idCopy = id;
  batchedRequestByMailboxId = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
  v8 = [batchedRequestByMailboxId objectForKeyedSubscript:idCopy];

  if (v8)
  {
    batchedRequestByMailboxId2 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
    v10 = [batchedRequestByMailboxId2 objectForKeyedSubscript:idCopy];
    messagesToBeSentInBatch = [v10 messagesToBeSentInBatch];
    [messagesToBeSentInBatch removeObjectForKey:deletedCopy];
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
  batchedRequestByMailboxId = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
  allKeys = [batchedRequestByMailboxId allKeys];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = allKeys;
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
        syncController = [(NNMKBatchRequestHandler *)self syncController];
        v13 = [syncController mailboxWithId:v11];

        if (v13 || ([0 syncActive] & 1) != 0)
        {
          buf[0] = 0;
          v27 = 0;
          v14 = [(NNMKBatchRequestHandler *)self _checkBatchFetchedMessagesWithMailbox:v13 messageHeadersToFetch:&v27 attemptsFailed:buf];
          v15 = v27;
          if (v14)
          {
            [array2 addObject:v14];
          }

          if (buf[0] == 1)
          {
            [array addObject:v13];
          }

          if ([v15 count])
          {
            [array3 addObjectsFromArray:v15];
          }

          if (v14 || (buf[0] & 1) != 0)
          {
            batchedRequestByMailboxId2 = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
            [batchedRequestByMailboxId2 removeObjectForKey:v11];

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
  [(NNMKBatchRequestHandlerResult *)v19 setFetchResults:array2];
  [(NNMKBatchRequestHandlerResult *)v19 setMailboxesToTriggerFullSync:array];
  [(NNMKBatchRequestHandlerResult *)v19 setMissingMessageHeaderIds:array3];
  v20 = [(NNMKBatchRequestHandler *)self firstMessageIds:5 fromBatchedFetchResults:array2];
  [(NNMKBatchRequestHandlerResult *)v19 setMessageIdsForRequestingContentDownload:v20];

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_checkBatchFetchedMessagesWithMailbox:(id)mailbox messageHeadersToFetch:(id *)fetch attemptsFailed:(BOOL *)failed
{
  v94 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  batchedRequestByMailboxId = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
  mailboxId = [mailboxCopy mailboxId];
  v11 = [batchedRequestByMailboxId objectForKeyedSubscript:mailboxId];

  if (!v11)
  {
    goto LABEL_37;
  }

  failedCopy = failed;
  fetchCopy = fetch;
  v12 = MEMORY[0x277CCAAC8];
  v13 = objc_opt_class();
  latestFetchRequest = [v11 latestFetchRequest];
  currentDateForRequestingMoreMessages = [latestFetchRequest currentDateForRequestingMoreMessages];
  v16 = [v12 unarchivedObjectOfClass:v13 fromData:currentDateForRequestingMoreMessages error:0];

  if (!v16)
  {
    delegate = [(NNMKBatchRequestHandler *)self delegate];
    currentDeviceRegistry = [delegate currentDeviceRegistry];
    mailboxId2 = [mailboxCopy mailboxId];
    v16 = [currentDeviceRegistry oldestDateReceivedForMailboxId:mailboxId2];
  }

  delegate2 = [(NNMKBatchRequestHandler *)self delegate];
  currentDeviceRegistry2 = [delegate2 currentDeviceRegistry];
  mailboxId3 = [mailboxCopy mailboxId];
  v23 = [currentDeviceRegistry2 syncedMessagesKeyedByMessageIdAfterDateReceived:v16 mailboxId:mailboxId3];

  v24 = [v11 diffFromMessages:v23 maxMessagesToAdd:40];
  v82 = v23;
  v83 = mailboxCopy;
  if ([v24 trimed])
  {
    v25 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      mailboxId4 = [mailboxCopy mailboxId];
      *buf = 138543362;
      v90 = mailboxId4;
      _os_log_impl(&dword_25B19F000, v26, OS_LOG_TYPE_DEFAULT, "Too many new messages to send as a Batch Response to Watch. We're sending only 40 first new messages... %{public}@", buf, 0xCu);
    }

    messageToAddToWatch = [v24 messageToAddToWatch];
    lastObject = [messageToAddToWatch lastObject];
    dateReceived = [lastObject dateReceived];

    v31 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dateReceived requiringSecureCoding:1 error:0];
    latestFetchRequest2 = [v11 latestFetchRequest];
    [latestFetchRequest2 setCurrentDateForRequestingMoreMessages:v31];

    latestFetchRequest3 = [v11 latestFetchRequest];
    [latestFetchRequest3 setWillTrimDatabaseAfterResults:1];

    v84 = dateReceived;
  }

  else
  {
    v84 = v16;
  }

  v34 = MEMORY[0x277CBEB18];
  messageIdsToAddToWatch = [v24 messageIdsToAddToWatch];
  v36 = [v34 arrayWithCapacity:{objc_msgSend(messageIdsToAddToWatch, "count")}];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v81 = v24;
  messageIdsToAddToWatch2 = [v24 messageIdsToAddToWatch];
  v38 = [messageIdsToAddToWatch2 countByEnumeratingWithState:&v85 objects:v93 count:16];
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
          objc_enumerationMutation(messageIdsToAddToWatch2);
        }

        v42 = *(*(&v85 + 1) + 8 * i);
        messagesToBeSentInBatch = [v11 messagesToBeSentInBatch];
        v44 = [messagesToBeSentInBatch objectForKeyedSubscript:v42];

        if (!v44)
        {
          [v36 addObject:v42];
        }
      }

      v39 = [messageIdsToAddToWatch2 countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v39);
  }

  v45 = [v36 count];
  if (v45)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v48 = v47;
    lastRetryDate = [(NNMKBatchRequestHandler *)self lastRetryDate];
    [lastRetryDate timeIntervalSince1970];
    v51 = v48 - v50;

    mailboxCopy = v83;
    if (v51 >= 3600.0)
    {
      [(NNMKBatchRequestHandler *)self setRetryCountForRequestingMissingHeadersInBatchedResponse:0];
    }

    [(NNMKBatchRequestHandler *)self setRetryCountForRequestingMissingHeadersInBatchedResponse:[(NNMKBatchRequestHandler *)self retryCountForRequestingMissingHeadersInBatchedResponse]+ 1];
    date2 = [MEMORY[0x277CBEAA8] date];
    [(NNMKBatchRequestHandler *)self setLastRetryDate:date2];

    retryCountForRequestingMissingHeadersInBatchedResponse = [(NNMKBatchRequestHandler *)self retryCountForRequestingMissingHeadersInBatchedResponse];
    mailboxId6 = qword_28144D620;
    v55 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
    if (retryCountForRequestingMissingHeadersInBatchedResponse > 3)
    {
      v56 = v81;
      if (v55)
      {
        v74 = mailboxId6;
        mailboxId5 = [v83 mailboxId];
        *buf = 138543362;
        v90 = mailboxId5;
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
        v57 = mailboxId6;
        v58 = [v36 count];
        mailboxId6 = [v83 mailboxId];
        *buf = 134218242;
        v90 = v58;
        v91 = 2114;
        v92 = mailboxId6;
        _os_log_impl(&dword_25B19F000, v57, OS_LOG_TYPE_DEFAULT, "Tried to send fetch response, but there are %lu messages that we don't have full headers for. Asking MobileMail for these headers... Mailbox id: %{public}@", buf, 0x16u);
      }

      v59 = v84;
      if (fetchCopy)
      {
        v60 = v36;
        *fetchCopy = v36;
      }
    }

    v73 = v82;
  }

  else
  {
    v61 = qword_28144D620;
    mailboxCopy = v83;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v62 = v61;
      mailboxId7 = [v83 mailboxId];
      *buf = 138543362;
      v90 = mailboxId7;
      _os_log_impl(&dword_25B19F000, v62, OS_LOG_TYPE_DEFAULT, "Sending batched response back. (Mailbox id: %{public}@)", buf, 0xCu);
    }

    latestFetchRequest4 = [v11 latestFetchRequest];
    willTrimDatabaseAfterResults = [latestFetchRequest4 willTrimDatabaseAfterResults];

    v56 = v81;
    if (willTrimDatabaseAfterResults)
    {
      delegate3 = [(NNMKBatchRequestHandler *)self delegate];
      currentDeviceRegistry3 = [delegate3 currentDeviceRegistry];
      [currentDeviceRegistry3 removeSyncedMessagesBeforeDateReceived:v84 mailbox:v83];

      resendScheduler = [(NNMKBatchRequestHandler *)self resendScheduler];
      mailboxId8 = [v83 mailboxId];
      [resendScheduler deletePendingIDSMessagesForMailboxId:mailboxId8];

      delegate4 = [(NNMKBatchRequestHandler *)self delegate];
      currentDeviceRegistry4 = [delegate4 currentDeviceRegistry];
      mailboxId9 = [v83 mailboxId];
      [currentDeviceRegistry4 incrementSyncVersionForMailboxId:mailboxId9];
    }

    v73 = v82;
    mailboxId6 = [(NNMKBatchRequestHandler *)self _batchedFetchResultForBatchedRequest:v11 mailbox:v83 diff:v81 localSyncedMessagesByMessageId:v82];
    v59 = v84;
  }

  if (v45)
  {
LABEL_37:
    mailboxId6 = 0;
  }

  v76 = *MEMORY[0x277D85DE8];

  return mailboxId6;
}

- (id)_batchedFetchResultForBatchedRequest:(id)request mailbox:(id)mailbox diff:(id)diff localSyncedMessagesByMessageId:(id)id
{
  v79 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  mailboxCopy = mailbox;
  diffCopy = diff;
  idCopy = id;
  v13 = objc_alloc_init(NNMKProtoBatchedFetchResult);
  delegate = [(NNMKBatchRequestHandler *)self delegate];
  currentDeviceRegistry = [delegate currentDeviceRegistry];
  -[NNMKProtoBatchedFetchResult setFullSyncVersion:](v13, "setFullSyncVersion:", [currentDeviceRegistry fullSyncVersion]);

  v16 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v18 = [v16 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoBatchedFetchResult *)v13 setDateSynced:v18];

  latestFetchRequest = [requestCopy latestFetchRequest];
  -[NNMKProtoBatchedFetchResult setShouldTrimDatabase:](v13, "setShouldTrimDatabase:", [latestFetchRequest willTrimDatabaseAfterResults]);

  v61 = requestCopy;
  latestFetchRequest2 = [requestCopy latestFetchRequest];
  currentDateForRequestingMoreMessages = [latestFetchRequest2 currentDateForRequestingMoreMessages];
  [(NNMKProtoBatchedFetchResult *)v13 setDateForRequestingMoreMessages:currentDateForRequestingMoreMessages];

  mailboxId = [mailboxCopy mailboxId];
  [(NNMKProtoBatchedFetchResult *)v13 setMailboxId:mailboxId];

  selfCopy = self;
  delegate2 = [(NNMKBatchRequestHandler *)self delegate];
  currentDeviceRegistry2 = [delegate2 currentDeviceRegistry];
  v57 = mailboxCopy;
  mailboxId2 = [mailboxCopy mailboxId];
  -[NNMKProtoBatchedFetchResult setMailboxSyncVersion:](v13, "setMailboxSyncVersion:", [currentDeviceRegistry2 syncVersionForMailboxId:mailboxId2]);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v56 = diffCopy;
  obj = [diffCopy messageIdsToAddToWatch];
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
        messagesToBeSentInBatch = [v61 messagesToBeSentInBatch];
        v30 = [messagesToBeSentInBatch objectForKeyedSubscript:v28];

        v31 = [idCopy objectForKeyedSubscript:v28];
        [v30 setStatus:{objc_msgSend(v31, "status")}];

        delegate3 = [(NNMKBatchRequestHandler *)selfCopy delegate];
        currentDeviceRegistry3 = [delegate3 currentDeviceRegistry];
        organizeByThread = [currentDeviceRegistry3 organizeByThread];
        delegate4 = [(NNMKBatchRequestHandler *)selfCopy delegate];
        pairedDeviceSupportsMultipleMailboxes = [delegate4 pairedDeviceSupportsMultipleMailboxes];
        delegate5 = [(NNMKBatchRequestHandler *)selfCopy delegate];
        v38 = +[NNMKProtoMessage protoMessageFromMessage:organizedByThread:sanitizeMessageId:supportsStandaloneMode:](NNMKProtoMessage, "protoMessageFromMessage:organizedByThread:sanitizeMessageId:supportsStandaloneMode:", v30, organizeByThread, pairedDeviceSupportsMultipleMailboxes ^ 1u, [delegate5 pairedDeviceSupportsStandaloneMode]);

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
  messageIdsToUpdateOnWatch = [v56 messageIdsToUpdateOnWatch];
  v40 = [messageIdsToUpdateOnWatch countByEnumeratingWithState:&v68 objects:v77 count:16];
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
          objc_enumerationMutation(messageIdsToUpdateOnWatch);
        }

        v44 = *(*(&v68 + 1) + 8 * j);
        v45 = [idCopy objectForKeyedSubscript:v44];
        v46 = objc_alloc_init(NNMKProtoMessageStatusUpdate);
        [(NNMKProtoMessageStatusUpdate *)v46 setMessageId:v44];
        -[NNMKProtoMessageStatusUpdate setUpdatedStatus:](v46, "setUpdatedStatus:", [v45 status]);
        -[NNMKProtoMessageStatusUpdate setStatusVersion:](v46, "setStatusVersion:", [v45 statusVersion]);
        [(NNMKProtoBatchedFetchResult *)v13 addMessageUpdate:v46];
      }

      v41 = [messageIdsToUpdateOnWatch countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v41);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  messageIdsToDeleteFromWatch = [v56 messageIdsToDeleteFromWatch];
  v48 = [messageIdsToDeleteFromWatch countByEnumeratingWithState:&v64 objects:v76 count:16];
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
          objc_enumerationMutation(messageIdsToDeleteFromWatch);
        }

        v52 = *(*(&v64 + 1) + 8 * k);
        v53 = objc_alloc_init(NNMKProtoMessageDeletion);
        [(NNMKProtoMessageDeletion *)v53 setMessageId:v52];
        [(NNMKProtoBatchedFetchResult *)v13 addMessageDeletion:v53];
      }

      v49 = [messageIdsToDeleteFromWatch countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v49);
  }

  v54 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)firstMessageIds:(unint64_t)ids fromBatchedFetchResults:(id)results
{
  v44 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  if ([resultsCopy count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:ids + 1];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = resultsCopy;
    obj = resultsCopy;
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
          messageAdditions = [v9 messageAdditions];
          v10 = [messageAdditions countByEnumeratingWithState:&v34 objects:v42 count:16];
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
                  objc_enumerationMutation(messageAdditions);
                }

                v14 = *(*(&v34 + 1) + 8 * i);
                v15 = MEMORY[0x277CCAAC8];
                v16 = objc_opt_class();
                dateReceived = [v14 dateReceived];
                v18 = [v15 unarchivedObjectOfClass:v16 fromData:dateReceived error:0];

                messageId = [v14 messageId];
                [v7 setObject:v18 forKeyedSubscript:messageId];

                messageId2 = [v14 messageId];
                v21 = [v6 count];
                v32[0] = MEMORY[0x277D85DD0];
                v32[1] = 3221225472;
                v32[2] = __67__NNMKBatchRequestHandler_firstMessageIds_fromBatchedFetchResults___block_invoke;
                v32[3] = &unk_279935EE8;
                v33 = v7;
                v22 = [v6 indexOfObject:messageId2 inSortedRange:0 options:v21 usingComparator:{1024, v32}];

                if ([v6 count] != ids || v22 != objc_msgSend(v6, "count"))
                {
                  messageId3 = [v14 messageId];
                  [v6 insertObject:messageId3 atIndex:v22];

                  if ([v6 count] > ids)
                  {
                    [v6 removeLastObject];
                  }
                }
              }

              v11 = [messageAdditions countByEnumeratingWithState:&v34 objects:v42 count:16];
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

    resultsCopy = v26;
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
  batchedRequestByMailboxId = [(NNMKBatchRequestHandler *)self batchedRequestByMailboxId];
  [batchedRequestByMailboxId removeAllObjects];
}

- (void)cancelFetchTimeout
{
  fetchTimeoutTimer = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];

  if (fetchTimeoutTimer)
  {
    fetchTimeoutTimer2 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];
    dispatch_source_cancel(fetchTimeoutTimer2);
  }
}

- (void)_rescheduleFetchTimeout
{
  fetchTimeoutTimer = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];

  if (!fetchTimeoutTimer)
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_executionQueue);
    [(NNMKBatchRequestHandler *)self setFetchTimeoutTimer:v4];

    fetchTimeoutTimer2 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __50__NNMKBatchRequestHandler__rescheduleFetchTimeout__block_invoke;
    handler[3] = &unk_279935CB0;
    handler[4] = self;
    dispatch_source_set_event_handler(fetchTimeoutTimer2, handler);

    fetchTimeoutTimer3 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];
    dispatch_resume(fetchTimeoutTimer3);
  }

  fetchTimeoutTimer4 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];

  if (fetchTimeoutTimer4)
  {
    fetchTimeoutTimer5 = [(NNMKBatchRequestHandler *)self fetchTimeoutTimer];
    v9 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(fetchTimeoutTimer5, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
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