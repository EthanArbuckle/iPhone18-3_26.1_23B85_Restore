@interface MFDAMessageStore
- (BOOL)_fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer;
- (BOOL)canFetchSearchResults;
- (BOOL)messageCanBeTriaged:(id)triaged;
- (BOOL)replayFlagChange:(id)change forRemoteIDs:(id)ds error:(id *)error completed:(BOOL *)completed;
- (BOOL)shouldDownloadBodyDataForMessage:(id)message;
- (id)_downloadHeadersForMessages:(id)messages;
- (id)bestAlternativeForPart:(id)part;
- (id)defaultAlternativeForPart:(id)part;
- (id)fetchBodyDataForRemoteID:(id)d;
- (id)folderIDForFetching;
- (id)loadMeetingDataForMessage:(id)message;
- (id)loadMeetingExternalIDForMessage:(id)message;
- (id)loadMeetingMetadataForMessage:(id)message;
- (id)messageForRemoteID:(id)d;
- (id)messageForRemoteID:(id)d inMailbox:(id)mailbox;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (void)_remoteIDsMatchingSearchText:(id)text predicate:(id)predicate limit:(unsigned int)limit offset:(id)offset filterByDate:(BOOL)date handler:(id)handler;
@end

@implementation MFDAMessageStore

- (id)folderIDForFetching
{
  v3 = +[MFActivityMonitor currentMonitor];
  mailbox = [(MFLibraryStore *)self mailbox];
  [v3 setMailbox:mailbox];

  mailbox2 = [(MFLibraryStore *)self mailbox];
  folderID = [mailbox2 folderID];
  if (!folderID)
  {
    account = [(MFLibraryStore *)self account];
    [account fetchMailboxListImplicit];

    folderID = [mailbox2 folderID];
  }

  return folderID;
}

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  optionsCopy = options;
  dCopy = d;
  [(MFLibraryStore *)self willFetchMessages];
  folderIDForFetching = [(MFDAMessageStore *)self folderIDForFetching];
  if (!folderIDForFetching)
  {
    account = [(MFLibraryStore *)self account];
    finishedInitialMailboxListLoad = [account finishedInitialMailboxListLoad];

    numNewMessages_low = finishedInitialMailboxListLoad << 63 >> 63;
    if ((optionsCopy & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  mailbox = [(MFLibraryStore *)self mailbox];
  v11 = objc_alloc_init(_MFDAMSUpdateConsumer);
  objc_storeStrong(&v11->super.store, self);
  objc_storeStrong(&v11->super.mailbox, mailbox);
  v12 = +[MFActivityMonitor currentMonitor];
  [(_MFDAMSBasicConsumer *)v11 setMonitor:v12];

  library = [(MFLibraryStore *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFDAMessageStore fetchNumMessages:preservingUID:options:]", "MFDAMessageStore.m", 257, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  library2 = [(MFLibraryStore *)self library];
  library = v11->super.library;
  v11->super.library = library2;

  v16 = [[_MFDAMessageStoreGetUpdatesRequest alloc] initRequestForBodyFormat:0 withBodySizeLimit:500 isUserRequested:optionsCopy & 1];
  account2 = [(MFLibraryStore *)self account];
  [account2 addRequest:v16 consumer:v11 mailbox:mailbox];

  if (![(MFBufferedQueue *)v11 isEmpty])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:264 description:@"update consumer queue should be empty at this point."];
  }

  error = [(_MFDAMSBasicConsumer *)v11 error];

  if (error)
  {
    v19 = +[MFActivityMonitor currentMonitor];
    error2 = [(_MFDAMSBasicConsumer *)v11 error];
    [v19 setError:error2];

    numNewMessages_low = -1;
  }

  else
  {
    numNewMessages_low = SLODWORD(v11->super.numNewMessages);
  }

  if ((optionsCopy & 2) != 0)
  {
LABEL_11:
    serverSearchResults = [(MFLibraryStore *)self serverSearchResults];
    [(MFLibraryStore *)self compactMessages:serverSearchResults];
  }

LABEL_12:
  v25 = +[MFActivityMonitor currentMonitor];
  [v25 reset];

  return numNewMessages_low;
}

- (void)_remoteIDsMatchingSearchText:(id)text predicate:(id)predicate limit:(unsigned int)limit offset:(id)offset filterByDate:(BOOL)date handler:(id)handler
{
  dateCopy = date;
  v74 = *MEMORY[0x1E69E9840];
  textCopy = text;
  predicateCopy = predicate;
  offsetCopy = offset;
  handlerCopy = handler;
  folderIDForFetching = [(MFDAMessageStore *)self folderIDForFetching];
  v14 = MFLogGeneral();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v69 = textCopy;
    v70 = 2112;
    v71 = predicateCopy;
    _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, "About to process remote ids matching searchtext:%@ predicate: %@", buf, 0x16u);
  }

  if (folderIDForFetching)
  {
    mailbox = [(MFLibraryStore *)self mailbox];
    v15 = objc_alloc_init(_MFDAMSSearchResponseConsumer);
    objc_storeStrong(&v15->super.store, self);
    objc_storeStrong(&v15->super.mailbox, mailbox);
    v16 = +[MFActivityMonitor currentMonitor];
    [(_MFDAMSBasicConsumer *)v15 setMonitor:v16];

    library = [(MFLibraryStore *)self library];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MFDAMessageStore _remoteIDsMatchingSearchText:predicate:limit:offset:filterByDate:handler:]", "MFDAMessageStore.m", 313, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
    }

    library2 = [(MFLibraryStore *)self library];
    library = v15->super.library;
    v15->super.library = library2;

    v15->totalCount = 0;
    if (offsetCopy)
    {
      v20 = offsetCopy;
      goto LABEL_15;
    }

    if (dateCopy)
    {
      dateOfOldestNonIndexedNonSearchResultMessage = [(MFLibraryStore *)self dateOfOldestNonIndexedNonSearchResultMessage];
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      v27 = [dateOfOldestNonIndexedNonSearchResultMessage isEqualToDate:distantFuture];

      if (!v27)
      {
        v20 = dateOfOldestNonIndexedNonSearchResultMessage;
LABEL_15:
        [(_MFDAMSSearchResponseConsumer *)v15 setLatestDateToAdd:v20];
        v28 = MFUserAgent();
        [v28 networkActivityStarted:self];

        if ([(MFDAMessageStore *)self backedByVirtualAllSearchMailbox])
        {

          folderIDForFetching = 0;
        }

        v64 = v20;
        if (v15->super.numNewMessages >= limit)
        {
          v41 = 100;
        }

        else
        {
          v29 = 0;
          limitCopy = limit;
          do
          {
            error = [(_MFDAMSBasicConsumer *)v15 error];
            v32 = error == 0;

            if (!v32)
            {
              break;
            }

            v33 = [MEMORY[0x1E69998B8] mailboxSearchQueryWithSearchString:textCopy predicate:predicateCopy consumer:v15];
            [v33 setBodyType:1];
            [v33 setCollectionID:folderIDForFetching];
            [v33 setMIMESupport:0];
            [v33 setRange:{v29, 100}];
            [v33 setTruncationSize:500];
            [v33 setPriorToDate:v20];
            [v33 setDeepTraversal:1];
            account = [(MFLibraryStore *)self account];
            accountConduit = [account accountConduit];

            [accountConduit performSearchQuery:v33];
            v36 = +[MFActivityMonitor currentMonitor];
            while (1)
            {
              v37 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:1.0];
              if ([(_MFDAMSSearchResponseConsumer *)v15 waitUntilDoneBeforeDate:v37])
              {
                break;
              }

              if ([v36 shouldCancel])
              {
                [accountConduit cancelSearchQuery:v33];
                [(_MFDAMSSearchResponseConsumer *)v15 waitUntilDone];
                v39 = 0;
                goto LABEL_27;
              }
            }

            error2 = [(_MFDAMSBasicConsumer *)v15 error];
            v20 = v64;
            if (error2)
            {

              v39 = 1;
              goto LABEL_28;
            }

            if (v29 + 100 >= v15->totalCount)
            {
              v39 = 1;
            }

            else
            {
              [(_MFDAMSSearchResponseConsumer *)v15 resetDoneCondition];
              v39 = 0;
              v29 += 100;
            }

LABEL_27:
            v20 = v64;
LABEL_28:

            v40 = v15->super.numNewMessages >= limitCopy ? 1 : v39;
          }

          while ((v40 & 1) == 0);
          v41 = v29 + 100;
        }

        v42 = MFUserAgent();
        [v42 networkActivityEnded:self];

        if (![(MFBufferedQueue *)v15 isEmpty])
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:377 description:@"update consumer queue should be empty at this point."];
        }

        error3 = [(_MFDAMSBasicConsumer *)v15 error];

        if (!error3)
        {
          goto LABEL_60;
        }

        error4 = [(_MFDAMSBasicConsumer *)v15 error];
        domain = [error4 domain];
        v46 = [domain isEqualToString:*MEMORY[0x1E6999880]];

        error5 = [(_MFDAMSBasicConsumer *)v15 error];
        code = [error5 code];

        v49 = code == 78 ? v46 : 0;
        if (v49)
        {
          goto LABEL_60;
        }

        if (code == 29)
        {
          v50 = v46;
        }

        else
        {
          v50 = 0;
        }

        if (v50 == 1)
        {
          v51 = MFLogGeneral();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            [MFDAMessageStore _remoteIDsMatchingSearchText:predicateCopy predicate:v51 limit:? offset:? filterByDate:? handler:?];
          }
        }

        else
        {
          if (code == 30)
          {
            v52 = v46;
          }

          else
          {
            v52 = 0;
          }

          if (v52 != 1)
          {
LABEL_58:
            error6 = [(_MFDAMSBasicConsumer *)v15 error];
            if (error6)
            {
              v54 = +[MFActivityMonitor currentMonitor];
              error7 = [(_MFDAMSBasicConsumer *)v15 error];
              [v54 setError:error7];

              searchResult = 0;
              numNewMessages = -1;
LABEL_64:

              goto LABEL_65;
            }

LABEL_60:
            searchResult = [(_MFDAMSSearchResponseConsumer *)v15 searchResult];
            numNewMessages = v15->super.numNewMessages;
            if (numNewMessages < v41)
            {
              v56 = MFLogGeneral();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                v57 = objc_opt_class();
                *buf = 138412802;
                v69 = v57;
                v70 = 2048;
                v71 = numNewMessages;
                v72 = 2048;
                v73 = v41;
                _os_log_impl(&dword_1B0389000, v56, OS_LOG_TYPE_INFO, "%@ Seems like the server exhausted the search results (%ld of %lu), un-setting a continue offset", buf, 0x20u);
              }

              [(MFRemoteSearchResults *)searchResult setContinueOffset:0];
            }

            goto LABEL_64;
          }

          v51 = MFLogGeneral();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            [MFDAMessageStore _remoteIDsMatchingSearchText:v51 predicate:? limit:? offset:? filterByDate:? handler:?];
          }
        }

        goto LABEL_58;
      }
    }

    v20 = 0;
    goto LABEL_15;
  }

  account2 = [(MFLibraryStore *)self account];
  finishedInitialMailboxListLoad = [account2 finishedInitialMailboxListLoad];

  if (finishedInitialMailboxListLoad)
  {
    searchResult = 0;
    folderIDForFetching = 0;
    numNewMessages = -1;
  }

  else
  {
    numNewMessages = 0;
    folderIDForFetching = 0;
    searchResult = objc_alloc_init(MFRemoteSearchResults);
  }

LABEL_65:
  handlerCopy[2](handlerCopy, numNewMessages, searchResult);

  v58 = *MEMORY[0x1E69E9840];
}

- (BOOL)replayFlagChange:(id)change forRemoteIDs:(id)ds error:(id *)error completed:(BOOL *)completed
{
  v76 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  dsCopy = ds;
  v8 = DALoggingwithCategory();
  completedCopy = completed;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = changeCopy;
    *&buf[12] = 2112;
    *&buf[14] = dsCopy;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_INFO, "Replaying flag change %@ for remote ids: %@", buf, 0x16u);
  }

  if (error)
  {
    *error = 0;
  }

  mailbox = [(MFLibraryStore *)self mailbox];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v75 = 1;
  v51 = mailbox;
  folderID = [mailbox folderID];

  if (!folderID)
  {
    p_super = DALoggingwithCategory();
    v18 = 1;
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_53;
    }

    ef_publicDescription = [v51 ef_publicDescription];
    *v71 = 138412290;
    v72 = ef_publicDescription;
    v20 = p_super;
    _os_log_impl(&dword_1B0389000, p_super, OS_LOG_TYPE_INFO, "No folder ID for mailbox: %@", v71, 0xCu);

LABEL_52:
    p_super = v20;
    goto LABEL_53;
  }

  account = [(MFLibraryStore *)self account];
  supportsMessageFlagging = [account supportsMessageFlagging];

  readChanged = [changeCopy readChanged];
  if (readChanged)
  {
    read = [changeCopy read];
    v15 = read ^ 1;
    v16 = read;
    if (!supportsMessageFlagging)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    if (!supportsMessageFlagging)
    {
      goto LABEL_17;
    }
  }

  if ([changeCopy flaggedChanged])
  {
    if ([changeCopy flagged])
    {
      v16 |= 2uLL;
    }

    else
    {
      v15 |= 2uLL;
    }

    readChanged = 1;
  }

LABEL_17:
  deleted = [changeCopy deleted];
  if (((readChanged | deleted) & 1) == 0)
  {
    p_super = DALoggingwithCategory();
    v18 = 1;
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_53;
    }

    ef_publicDescription2 = [changeCopy ef_publicDescription];
    *v71 = 138412290;
    v72 = ef_publicDescription2;
    v20 = p_super;
    _os_log_impl(&dword_1B0389000, p_super, OS_LOG_TYPE_INFO, "No request needed for flag change: %@", v71, 0xCu);

    goto LABEL_52;
  }

  v55 = objc_alloc_init(_MFDAMSUpdateConsumer);
  objc_storeStrong(&v55->super.store, self);
  objc_storeStrong(&v55->super.mailbox, v51);
  v21 = +[MFActivityMonitor currentMonitor];
  [(_MFDAMSBasicConsumer *)v55 setMonitor:v21];

  library = [(MFLibraryStore *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFDAMessageStore replayFlagChange:forRemoteIDs:error:completed:]", "MFDAMessageStore.m", 502, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  library2 = [(MFLibraryStore *)self library];
  library = v55->super.library;
  v55->super.library = library2;

  if (readChanged)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v54 = dsCopy;
    v26 = [v54 countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v26)
    {
      v27 = *v67;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v67 != v27)
          {
            objc_enumerationMutation(v54);
          }

          v29 = [(DAMailboxSetFlagsRequest *)[_MFDAMessageStoreSetFlagsRequest alloc] initRequestWithSetFlags:v16 unsetFlags:v15 message:*(*(&v66 + 1) + 8 * i)];
          v30 = [MEMORY[0x1E699B848] pairWithFirst:v29 second:v55];
          [v25 addObject:v30];
        }

        v26 = [v54 countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v26);
    }

    if ([v25 count])
    {
      v31 = DALoggingwithCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *v71 = 138412290;
        v72 = v25;
        _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_INFO, "Adding flag change requests: %@", v71, 0xCu);
      }

      *(*&buf[8] + 24) = 0;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __66__MFDAMessageStore_replayFlagChange_forRemoteIDs_error_completed___block_invoke;
      v63[3] = &unk_1E7AA53F8;
      v65 = buf;
      v63[4] = self;
      v64 = v51;
      [v25 ef_enumerateObjectsInBatchesOfSize:100 block:v63];
    }
  }

  if (deleted)
  {
    v32 = v55;
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v34 = dsCopy;
    v35 = [v34 countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v35)
    {
      v36 = *v60;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v60 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = [(DAMailboxDeleteMessageRequest *)[_MFDAMessageStoreDeleteRequest alloc] initRequestWithMessageID:*(*(&v59 + 1) + 8 * j)];
          v39 = [MEMORY[0x1E699B848] pairWithFirst:v38 second:v32];
          [v33 addObject:v39];

          v32 = v55;
        }

        v35 = [v34 countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v35);
    }

    if ([v33 count])
    {
      v40 = DALoggingwithCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *v71 = 138412290;
        v72 = v33;
        _os_log_impl(&dword_1B0389000, v40, OS_LOG_TYPE_INFO, "Adding delete requests: %@", v71, 0xCu);
      }

      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __66__MFDAMessageStore_replayFlagChange_forRemoteIDs_error_completed___block_invoke_39;
      v56[3] = &unk_1E7AA53F8;
      v58 = buf;
      v56[4] = self;
      v57 = v51;
      [v33 ef_enumerateObjectsInBatchesOfSize:100 block:v56];
    }
  }

  if (![(MFBufferedQueue *)v55 isEmpty])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:541 description:@"update consumer queue should be empty at this point."];
  }

  p_super = &v55->super.super.super;
  error = v55->super.error;
  v18 = error == 0;
  if (error && error)
  {
    v18 = 0;
    *error = error;
    p_super = &v55->super.super.super;
  }

LABEL_53:

  if (completedCopy)
  {
    *completedCopy = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);

  v43 = *MEMORY[0x1E69E9840];
  return v18;
}

void __66__MFDAMessageStore_replayFlagChange_forRemoteIDs_error_completed___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) account];
  *(*(*(a1 + 48) + 8) + 24) = [v5 addRequests:v6 mailbox:*(a1 + 40) combine:1];

  *a3 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
}

void __66__MFDAMessageStore_replayFlagChange_forRemoteIDs_error_completed___block_invoke_39(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) account];
  *(*(*(a1 + 48) + 8) + 24) = [v5 addRequests:v6 mailbox:*(a1 + 40) combine:1];

  *a3 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
}

- (id)messageForRemoteID:(id)d
{
  dCopy = d;
  mailbox = [(MFLibraryStore *)self mailbox];
  v6 = [(MFDAMessageStore *)self messageForRemoteID:dCopy inMailbox:mailbox];

  return v6;
}

- (id)messageForRemoteID:(id)d inMailbox:(id)mailbox
{
  dCopy = d;
  mailboxCopy = mailbox;
  library = [(MFLibraryStore *)self library];
  uRLString = [mailboxCopy URLString];
  v10 = [library messageWithRemoteID:dCopy inRemoteMailbox:uRLString];

  [v10 setMessageStore:self];

  return v10;
}

- (BOOL)shouldDownloadBodyDataForMessage:(id)message
{
  messageCopy = message;
  if (([messageCopy messageFlags] & 0x80) != 0)
  {
    isMessageContentsLocallyAvailable = 1;
  }

  else
  {
    isMessageContentsLocallyAvailable = [messageCopy isMessageContentsLocallyAvailable];
  }

  return isMessageContentsLocallyAvailable ^ 1;
}

- (id)loadMeetingExternalIDForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:596 description:{@"should only have LibraryMessages in %s", "-[MFDAMessageStore loadMeetingExternalIDForMessage:]"}];
  }

  v6 = [(MFMailMessageLibrary *)self->super._library loadMeetingExternalIDForMessage:messageCopy];

  return v6;
}

- (id)loadMeetingDataForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:601 description:{@"should only have LibraryMessages in %s", "-[MFDAMessageStore loadMeetingDataForMessage:]"}];
  }

  v6 = [(MFMailMessageLibrary *)self->super._library loadMeetingDataForMessage:messageCopy];

  return v6;
}

- (id)loadMeetingMetadataForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:606 description:{@"should only have LibraryMessages in %s", "-[MFDAMessageStore loadMeetingMetadataForMessage:]"}];
  }

  v6 = [(MFMailMessageLibrary *)self->super._library loadMeetingMetadataForMessage:messageCopy];

  return v6;
}

- (id)fetchBodyDataForRemoteID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = DALoggingwithCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = dCopy;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, "Fetching body data for remote id: %@", &v15, 0xCu);
  }

  v6 = objc_alloc_init(MFDAMessageContentConsumer);
  [(MFDAMessageContentConsumer *)v6 setRequestedFormat:1];
  v7 = objc_alloc_init(_MFDAMessageBodyFetchConsumer);
  [(_MFDAMessageBodyFetchConsumer *)v7 setStreamConsumer:v6];
  v8 = [(DAMailboxFetchMessageRequest *)[_MFDAMessageStoreFetchUsingRemoteIDRequest alloc] initRequestForBodyFormat:1 withMessageID:dCopy withBodySizeLimit:0xFFFFFFFFLL];
  account = [(MFLibraryStore *)self account];
  mailbox = [(MFLibraryStore *)self mailbox];
  [account addRequest:v8 consumer:v7 mailbox:mailbox];

  if ([(_MFDAMessageBodyFetchConsumer *)v7 succeeded])
  {
    data = [(_MFDAMessageBodyFetchConsumer *)v7 data];
  }

  else
  {
    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = dCopy;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_ERROR, "failed to download body for message %@", &v15, 0xCu);
    }

    data = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return data;
}

- (id)_downloadHeadersForMessages:(id)messages
{
  v42 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v4 = DALoggingwithCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Downloading headers for messages", buf, 2u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mailbox = [(MFLibraryStore *)self mailbox];
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = messagesCopy;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v5)
  {
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [_MFDAMessageStoreFetchHeadersRequest alloc];
        remoteID = [v8 remoteID];
        v11 = [(DAMailboxFetchMessageRequest *)v9 initRequestForBodyFormat:0xFFFFFFFFLL withMessageID:remoteID withBodySizeLimit:0xFFFFFFFFLL];

        objc_storeStrong(v11 + 5, self);
        objc_storeStrong(v11 + 6, v8);
        v12 = objc_alloc_init(_MFDAMessageHeaderFetchConsumer);
        [(_MFDAMessageHeaderFetchConsumer *)v12 setStore:self];
        v13 = [MEMORY[0x1E699B848] pairWithFirst:v11 second:v12];
        [v30 addObject:v13];
        [v32 addObject:v11];
        [v31 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v5);
  }

  account = [(MFLibraryStore *)self account];
  [account addRequests:v30 mailbox:mailbox];

  for (j = 0; [v32 count] > j; ++j)
  {
    v16 = [v32 objectAtIndexedSubscript:j];
    v17 = [v31 objectAtIndexedSubscript:j];
    v18 = v16[6];
    error = [v17 error];

    if (error)
    {
      data = MFLogGeneral();
      if (os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
      {
        remoteID2 = [v18 remoteID];
        error2 = [v17 error];
        *buf = 138412546;
        v38 = remoteID2;
        v39 = 2112;
        v40 = error2;
        _os_log_impl(&dword_1B0389000, data, OS_LOG_TYPE_DEFAULT, "#Warning Error while fetching headers for message %@: %@", buf, 0x16u);
      }
    }

    else
    {
      data = [v17 data];
      if (data)
      {
        v23 = -[MFMessageHeaders initWithHeaderData:encoding:]([MFLocalizedMessageHeaders alloc], "initWithHeaderData:encoding:", data, [v18 preferredEncoding]);
        [dictionary setObject:v23 forKeyedSubscript:v18];
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)_fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer
{
  v68 = *MEMORY[0x1E69E9840];
  partCopy = part;
  consumerCopy = consumer;
  v10 = +[MFActivityMonitor currentMonitor];
  partNumber = [partCopy partNumber];
  v12 = [partNumber isEqual:@"2"];

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    partNumber2 = [partCopy partNumber];
    v13 = [partNumber2 isEqual:@"1.1"];
  }

  mailbox = [(MFLibraryStore *)self mailbox];
  folderID = [mailbox folderID];
  if (!folderID)
  {
    fetchSucceeded = 1;
    goto LABEL_34;
  }

  library = [(MFLibraryStore *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFDAMessageStore _fetchDataForMimePart:range:isComplete:consumer:]", "MFDAMessageStore.m", 972, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  v61 = v10;
  if (v13)
  {
    v17 = objc_alloc_init(MFDAMessageContentConsumer);
    [(MFDAMessageContentConsumer *)v17 setRequestedFormat:v12];
    if (([message messageFlags] & 0x80) != 0)
    {
      [(MFDAMessageStore *)self _fetchBodyDataForSearchResult:message folderID:folderID format:v12 streamConsumer:v17];
      first = bOOLValue = 0;
    }

    else
    {
      v18 = [(MFDAMessageStore *)self _fetchBodyDataForNormalMessage:message format:v12 part:partCopy streamConsumer:v17];
      first = [v18 first];
      second = [v18 second];
      bOOLValue = [second BOOLValue];
    }

    [consumerCopy appendData:first];
    if (!(bOOLValue & 1 | ((v12 & 1) == 0)))
    {
      mf_rangeOfRFC822HeaderData = [first mf_rangeOfRFC822HeaderData];
      v33 = v32;
      v34 = mf_rangeOfRFC822HeaderData + v32;
      if (mf_rangeOfRFC822HeaderData + v32 <= [first length])
      {
        v35 = [first mf_subdataWithRange:{mf_rangeOfRFC822HeaderData, v33}];
        v36 = [objc_alloc(MEMORY[0x1E69AD6F8]) initWithHeaderData:v35 encoding:134217984];
        [(MFMailMessageLibrary *)self->super._library updateThreadingInfoForMessage:message fromHeaders:v36];
        v37 = [first mf_subdataWithRange:{v34, objc_msgSend(first, "length") - v34}];
        library2 = [(MFLibraryStore *)self library];
        [library2 processRemoteContentFromHeaderData:v35 bodyData:v37 forMessage:message];
      }
    }

    fetchSucceeded = 1;
  }

  else
  {
    contentID = [partCopy contentID];

    if (!contentID)
    {
      v39 = MFLogGeneral();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = partCopy;
        _os_log_impl(&dword_1B0389000, v39, OS_LOG_TYPE_DEFAULT, "#Warning don't know how to fetch data for mime part %@", buf, 0xCu);
      }

      fetchSucceeded = 1;
      goto LABEL_33;
    }

    v24 = [[_MFDAMessageFetchAttachmentConsumer alloc] initWithActivityMonitor:v10];
    [partCopy range];
    [(_MFDAMessageFetchAttachmentConsumer *)v24 setExpectedLength:v25];
    v26 = objc_alloc(MEMORY[0x1E6999848]);
    contentID2 = [partCopy contentID];
    messageID = [message messageID];
    v56 = [v26 initWithAttachmentName:contentID2 andMessageServerID:messageID];

    contentTransferEncoding = [partCopy contentTransferEncoding];

    if (contentTransferEncoding)
    {
      v30 = consumerCopy;
      v60 = 0;
    }

    else
    {
      v60 = objc_alloc_init(MEMORY[0x1E69AD698]);
      expectedLength = [(_MFDAMessageFetchAttachmentConsumer *)v24 expectedLength];
      v58 = [objc_alloc(MEMORY[0x1E69AD750]) initWithConsumer:v60 expectedSize:expectedLength];
      progressBlock = [consumerCopy progressBlock];
      [v58 setProgressBlock:progressBlock];

      [consumerCopy setProgressBlock:0];
      v30 = v58;
    }

    [(_MFDAMessageFetchAttachmentConsumer *)v24 setProgressFilter:v30, v56];
    v59 = v30;
    account = [(MFLibraryStore *)self account];
    accountConduit = [account accountConduit];
    v44 = [accountConduit performFetchAttachmentRequest:v57 consumer:v24];

    while (1)
    {
      v45 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
      v46 = [(MFDAMailAccountConsumer *)v24 waitUntilDoneBeforeDate:v45];

      if (v46)
      {
        break;
      }

      v47 = +[MFActivityMonitor currentMonitor];
      shouldCancel = [v47 shouldCancel];

      if (shouldCancel)
      {
        accountConduit2 = [(MailAccount *)self->super._account accountConduit];
        [accountConduit2 cancelTaskWithID:v44];

        [(MFDAMailAccountConsumer *)v24 waitUntilDone];
        break;
      }
    }

    fetchSucceeded = [(_MFDAMessageFetchAttachmentConsumer *)v24 fetchSucceeded];
    if (!contentTransferEncoding)
    {
      [v59 done];
      if ([(_MFDAMessageFetchAttachmentConsumer *)v24 dataWasBase64])
      {
        data2 = [objc_alloc(MEMORY[0x1E69AD678]) initWithConsumer:consumerCopy];
        data = [v60 data];
        [data2 appendData:data];

        [data2 done];
      }

      else
      {
        data2 = [v60 data];
        [consumerCopy appendData:data2];
      }
    }

    v52 = +[MFActivityMonitor currentMonitor];
    v53 = +[MFNetworkController sharedInstance];
    [v52 recordTransportType:{objc_msgSend(v53, "transportType")}];
  }

  v10 = v61;
LABEL_33:

LABEL_34:
  if (complete)
  {
    *complete = fetchSucceeded;
  }

  v54 = *MEMORY[0x1E69E9840];
  return fetchSucceeded;
}

- (id)defaultAlternativeForPart:(id)part
{
  partCopy = part;
  v5 = [(MFDAMessageStore *)self decryptedTopLevelPartForPart:partCopy];

  type = [v5 type];
  LODWORD(partCopy) = [type isEqualToString:@"multipart"];

  if (partCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v12.receiver = self;
    v12.super_class = MFDAMessageStore;
    v8 = [(MFDAMessageStore *)&v12 defaultAlternativeForPart:v5];
    v9 = [v8 copyBodyDataToOffset:1 resultOffset:0 downloadIfNecessary:0];
    if (!v9)
    {
      v10 = [v5 alternativeAtIndex:0];

      v8 = v10;
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)bestAlternativeForPart:(id)part
{
  partCopy = part;
  v13.receiver = self;
  v13.super_class = MFDAMessageStore;
  v5 = [(MFDAMessageStore *)&v13 bestAlternativeForPart:partCopy];
  partNumber = [v5 partNumber];
  if ([partNumber isEqualToString:@"2"])
  {
    isGenerated = [v5 isGenerated];

    if (isGenerated)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v5 copyBodyDataToOffset:1 resultOffset:0 downloadIfNecessary:0];
      v10 = v9;
      if (v9 && ![v9 length])
      {
        v11 = [partCopy alternativeAtIndex:0];

        v5 = v11;
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  else
  {
  }

  return v5;
}

- (BOOL)canFetchSearchResults
{
  v11 = *MEMORY[0x1E69E9840];
  account = [(MFLibraryStore *)self account];
  supportsServerSearch = [account supportsServerSearch];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"No";
    if (supportsServerSearch != 2)
    {
      v5 = @"Yes";
    }

    v8[0] = 67240450;
    v8[1] = supportsServerSearch;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Account search capability: %{public}u. canFetchSearchResults: %{public}@", v8, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return supportsServerSearch != 2;
}

- (BOOL)messageCanBeTriaged:(id)triaged
{
  triagedCopy = triaged;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [triagedCopy isSearchResultWithBogusRemoteId] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_remoteIDsMatchingSearchText:(uint64_t)a1 predicate:(NSObject *)a2 limit:offset:filterByDate:handler:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Invalid search returned for predicate: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end