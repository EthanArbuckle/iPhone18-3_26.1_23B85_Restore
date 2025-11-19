@interface MFDAMessageStore
- (BOOL)_fetchDataForMimePart:(id)a3 range:(_NSRange)a4 isComplete:(BOOL *)a5 consumer:(id)a6;
- (BOOL)canFetchSearchResults;
- (BOOL)messageCanBeTriaged:(id)a3;
- (BOOL)replayFlagChange:(id)a3 forRemoteIDs:(id)a4 error:(id *)a5 completed:(BOOL *)a6;
- (BOOL)shouldDownloadBodyDataForMessage:(id)a3;
- (id)_downloadHeadersForMessages:(id)a3;
- (id)bestAlternativeForPart:(id)a3;
- (id)defaultAlternativeForPart:(id)a3;
- (id)fetchBodyDataForRemoteID:(id)a3;
- (id)folderIDForFetching;
- (id)loadMeetingDataForMessage:(id)a3;
- (id)loadMeetingExternalIDForMessage:(id)a3;
- (id)loadMeetingMetadataForMessage:(id)a3;
- (id)messageForRemoteID:(id)a3;
- (id)messageForRemoteID:(id)a3 inMailbox:(id)a4;
- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5;
- (void)_remoteIDsMatchingSearchText:(id)a3 predicate:(id)a4 limit:(unsigned int)a5 offset:(id)a6 filterByDate:(BOOL)a7 handler:(id)a8;
@end

@implementation MFDAMessageStore

- (id)folderIDForFetching
{
  v3 = +[MFActivityMonitor currentMonitor];
  v4 = [(MFLibraryStore *)self mailbox];
  [v3 setMailbox:v4];

  v5 = [(MFLibraryStore *)self mailbox];
  v6 = [v5 folderID];
  if (!v6)
  {
    v7 = [(MFLibraryStore *)self account];
    [v7 fetchMailboxListImplicit];

    v6 = [v5 folderID];
  }

  return v6;
}

- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v8 = a4;
  [(MFLibraryStore *)self willFetchMessages];
  v9 = [(MFDAMessageStore *)self folderIDForFetching];
  if (!v9)
  {
    v22 = [(MFLibraryStore *)self account];
    v23 = [v22 finishedInitialMailboxListLoad];

    numNewMessages_low = v23 << 63 >> 63;
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = [(MFLibraryStore *)self mailbox];
  v11 = objc_alloc_init(_MFDAMSUpdateConsumer);
  objc_storeStrong(&v11->super.store, self);
  objc_storeStrong(&v11->super.mailbox, v10);
  v12 = +[MFActivityMonitor currentMonitor];
  [(_MFDAMSBasicConsumer *)v11 setMonitor:v12];

  v13 = [(MFLibraryStore *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFDAMessageStore fetchNumMessages:preservingUID:options:]", "MFDAMessageStore.m", 257, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  v14 = [(MFLibraryStore *)self library];
  library = v11->super.library;
  v11->super.library = v14;

  v16 = [[_MFDAMessageStoreGetUpdatesRequest alloc] initRequestForBodyFormat:0 withBodySizeLimit:500 isUserRequested:v5 & 1];
  v17 = [(MFLibraryStore *)self account];
  [v17 addRequest:v16 consumer:v11 mailbox:v10];

  if (![(MFBufferedQueue *)v11 isEmpty])
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:264 description:@"update consumer queue should be empty at this point."];
  }

  v18 = [(_MFDAMSBasicConsumer *)v11 error];

  if (v18)
  {
    v19 = +[MFActivityMonitor currentMonitor];
    v20 = [(_MFDAMSBasicConsumer *)v11 error];
    [v19 setError:v20];

    numNewMessages_low = -1;
  }

  else
  {
    numNewMessages_low = SLODWORD(v11->super.numNewMessages);
  }

  if ((v5 & 2) != 0)
  {
LABEL_11:
    v24 = [(MFLibraryStore *)self serverSearchResults];
    [(MFLibraryStore *)self compactMessages:v24];
  }

LABEL_12:
  v25 = +[MFActivityMonitor currentMonitor];
  [v25 reset];

  return numNewMessages_low;
}

- (void)_remoteIDsMatchingSearchText:(id)a3 predicate:(id)a4 limit:(unsigned int)a5 offset:(id)a6 filterByDate:(BOOL)a7 handler:(id)a8
{
  v9 = a7;
  v74 = *MEMORY[0x1E69E9840];
  v65 = a3;
  v66 = a4;
  v62 = a6;
  v63 = a8;
  v67 = [(MFDAMessageStore *)self folderIDForFetching];
  v14 = MFLogGeneral();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v69 = v65;
    v70 = 2112;
    v71 = v66;
    _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, "About to process remote ids matching searchtext:%@ predicate: %@", buf, 0x16u);
  }

  if (v67)
  {
    v61 = [(MFLibraryStore *)self mailbox];
    v15 = objc_alloc_init(_MFDAMSSearchResponseConsumer);
    objc_storeStrong(&v15->super.store, self);
    objc_storeStrong(&v15->super.mailbox, v61);
    v16 = +[MFActivityMonitor currentMonitor];
    [(_MFDAMSBasicConsumer *)v15 setMonitor:v16];

    v17 = [(MFLibraryStore *)self library];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MFDAMessageStore _remoteIDsMatchingSearchText:predicate:limit:offset:filterByDate:handler:]", "MFDAMessageStore.m", 313, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
    }

    v18 = [(MFLibraryStore *)self library];
    library = v15->super.library;
    v15->super.library = v18;

    v15->totalCount = 0;
    if (v62)
    {
      v20 = v62;
      goto LABEL_15;
    }

    if (v9)
    {
      v25 = [(MFLibraryStore *)self dateOfOldestNonIndexedNonSearchResultMessage];
      v26 = [MEMORY[0x1E695DF00] distantFuture];
      v27 = [v25 isEqualToDate:v26];

      if (!v27)
      {
        v20 = v25;
LABEL_15:
        [(_MFDAMSSearchResponseConsumer *)v15 setLatestDateToAdd:v20];
        v28 = MFUserAgent();
        [v28 networkActivityStarted:self];

        if ([(MFDAMessageStore *)self backedByVirtualAllSearchMailbox])
        {

          v67 = 0;
        }

        v64 = v20;
        if (v15->super.numNewMessages >= a5)
        {
          v41 = 100;
        }

        else
        {
          v29 = 0;
          v30 = a5;
          do
          {
            v31 = [(_MFDAMSBasicConsumer *)v15 error];
            v32 = v31 == 0;

            if (!v32)
            {
              break;
            }

            v33 = [MEMORY[0x1E69998B8] mailboxSearchQueryWithSearchString:v65 predicate:v66 consumer:v15];
            [v33 setBodyType:1];
            [v33 setCollectionID:v67];
            [v33 setMIMESupport:0];
            [v33 setRange:{v29, 100}];
            [v33 setTruncationSize:500];
            [v33 setPriorToDate:v20];
            [v33 setDeepTraversal:1];
            v34 = [(MFLibraryStore *)self account];
            v35 = [v34 accountConduit];

            [v35 performSearchQuery:v33];
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
                [v35 cancelSearchQuery:v33];
                [(_MFDAMSSearchResponseConsumer *)v15 waitUntilDone];
                v39 = 0;
                goto LABEL_27;
              }
            }

            v38 = [(_MFDAMSBasicConsumer *)v15 error];
            v20 = v64;
            if (v38)
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

            v40 = v15->super.numNewMessages >= v30 ? 1 : v39;
          }

          while ((v40 & 1) == 0);
          v41 = v29 + 100;
        }

        v42 = MFUserAgent();
        [v42 networkActivityEnded:self];

        if (![(MFBufferedQueue *)v15 isEmpty])
        {
          v59 = [MEMORY[0x1E696AAA8] currentHandler];
          [v59 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:377 description:@"update consumer queue should be empty at this point."];
        }

        v43 = [(_MFDAMSBasicConsumer *)v15 error];

        if (!v43)
        {
          goto LABEL_60;
        }

        v44 = [(_MFDAMSBasicConsumer *)v15 error];
        v45 = [v44 domain];
        v46 = [v45 isEqualToString:*MEMORY[0x1E6999880]];

        v47 = [(_MFDAMSBasicConsumer *)v15 error];
        v48 = [v47 code];

        v49 = v48 == 78 ? v46 : 0;
        if (v49)
        {
          goto LABEL_60;
        }

        if (v48 == 29)
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
            [MFDAMessageStore _remoteIDsMatchingSearchText:v66 predicate:v51 limit:? offset:? filterByDate:? handler:?];
          }
        }

        else
        {
          if (v48 == 30)
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
            v53 = [(_MFDAMSBasicConsumer *)v15 error];
            if (v53)
            {
              v54 = +[MFActivityMonitor currentMonitor];
              v55 = [(_MFDAMSBasicConsumer *)v15 error];
              [v54 setError:v55];

              v23 = 0;
              numNewMessages = -1;
LABEL_64:

              goto LABEL_65;
            }

LABEL_60:
            v23 = [(_MFDAMSSearchResponseConsumer *)v15 searchResult];
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

              [(MFRemoteSearchResults *)v23 setContinueOffset:0];
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

  v21 = [(MFLibraryStore *)self account];
  v22 = [v21 finishedInitialMailboxListLoad];

  if (v22)
  {
    v23 = 0;
    v67 = 0;
    numNewMessages = -1;
  }

  else
  {
    numNewMessages = 0;
    v67 = 0;
    v23 = objc_alloc_init(MFRemoteSearchResults);
  }

LABEL_65:
  v63[2](v63, numNewMessages, v23);

  v58 = *MEMORY[0x1E69E9840];
}

- (BOOL)replayFlagChange:(id)a3 forRemoteIDs:(id)a4 error:(id *)a5 completed:(BOOL *)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v50 = a4;
  v8 = DALoggingwithCategory();
  v48 = a6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v53;
    *&buf[12] = 2112;
    *&buf[14] = v50;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_INFO, "Replaying flag change %@ for remote ids: %@", buf, 0x16u);
  }

  if (a5)
  {
    *a5 = 0;
  }

  v9 = [(MFLibraryStore *)self mailbox];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v75 = 1;
  v51 = v9;
  v10 = [v9 folderID];

  if (!v10)
  {
    p_super = DALoggingwithCategory();
    v18 = 1;
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_53;
    }

    v19 = [v51 ef_publicDescription];
    *v71 = 138412290;
    v72 = v19;
    v20 = p_super;
    _os_log_impl(&dword_1B0389000, p_super, OS_LOG_TYPE_INFO, "No folder ID for mailbox: %@", v71, 0xCu);

LABEL_52:
    p_super = v20;
    goto LABEL_53;
  }

  v11 = [(MFLibraryStore *)self account];
  v12 = [v11 supportsMessageFlagging];

  v13 = [v53 readChanged];
  if (v13)
  {
    v14 = [v53 read];
    v15 = v14 ^ 1;
    v16 = v14;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if ([v53 flaggedChanged])
  {
    if ([v53 flagged])
    {
      v16 |= 2uLL;
    }

    else
    {
      v15 |= 2uLL;
    }

    v13 = 1;
  }

LABEL_17:
  v46 = [v53 deleted];
  if (((v13 | v46) & 1) == 0)
  {
    p_super = DALoggingwithCategory();
    v18 = 1;
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_53;
    }

    v42 = [v53 ef_publicDescription];
    *v71 = 138412290;
    v72 = v42;
    v20 = p_super;
    _os_log_impl(&dword_1B0389000, p_super, OS_LOG_TYPE_INFO, "No request needed for flag change: %@", v71, 0xCu);

    goto LABEL_52;
  }

  v55 = objc_alloc_init(_MFDAMSUpdateConsumer);
  objc_storeStrong(&v55->super.store, self);
  objc_storeStrong(&v55->super.mailbox, v51);
  v21 = +[MFActivityMonitor currentMonitor];
  [(_MFDAMSBasicConsumer *)v55 setMonitor:v21];

  v22 = [(MFLibraryStore *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFDAMessageStore replayFlagChange:forRemoteIDs:error:completed:]", "MFDAMessageStore.m", 502, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  v23 = [(MFLibraryStore *)self library];
  library = v55->super.library;
  v55->super.library = v23;

  if (v13)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v54 = v50;
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

  if (v46)
  {
    v32 = v55;
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v34 = v50;
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
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:541 description:@"update consumer queue should be empty at this point."];
  }

  p_super = &v55->super.super.super;
  error = v55->super.error;
  v18 = error == 0;
  if (a5 && error)
  {
    v18 = 0;
    *a5 = error;
    p_super = &v55->super.super.super;
  }

LABEL_53:

  if (v48)
  {
    *v48 = *(*&buf[8] + 24);
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

- (id)messageForRemoteID:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryStore *)self mailbox];
  v6 = [(MFDAMessageStore *)self messageForRemoteID:v4 inMailbox:v5];

  return v6;
}

- (id)messageForRemoteID:(id)a3 inMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFLibraryStore *)self library];
  v9 = [v7 URLString];
  v10 = [v8 messageWithRemoteID:v6 inRemoteMailbox:v9];

  [v10 setMessageStore:self];

  return v10;
}

- (BOOL)shouldDownloadBodyDataForMessage:(id)a3
{
  v3 = a3;
  if (([v3 messageFlags] & 0x80) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isMessageContentsLocallyAvailable];
  }

  return v4 ^ 1;
}

- (id)loadMeetingExternalIDForMessage:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:596 description:{@"should only have LibraryMessages in %s", "-[MFDAMessageStore loadMeetingExternalIDForMessage:]"}];
  }

  v6 = [(MFMailMessageLibrary *)self->super._library loadMeetingExternalIDForMessage:v5];

  return v6;
}

- (id)loadMeetingDataForMessage:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:601 description:{@"should only have LibraryMessages in %s", "-[MFDAMessageStore loadMeetingDataForMessage:]"}];
  }

  v6 = [(MFMailMessageLibrary *)self->super._library loadMeetingDataForMessage:v5];

  return v6;
}

- (id)loadMeetingMetadataForMessage:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:606 description:{@"should only have LibraryMessages in %s", "-[MFDAMessageStore loadMeetingMetadataForMessage:]"}];
  }

  v6 = [(MFMailMessageLibrary *)self->super._library loadMeetingMetadataForMessage:v5];

  return v6;
}

- (id)fetchBodyDataForRemoteID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = DALoggingwithCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, "Fetching body data for remote id: %@", &v15, 0xCu);
  }

  v6 = objc_alloc_init(MFDAMessageContentConsumer);
  [(MFDAMessageContentConsumer *)v6 setRequestedFormat:1];
  v7 = objc_alloc_init(_MFDAMessageBodyFetchConsumer);
  [(_MFDAMessageBodyFetchConsumer *)v7 setStreamConsumer:v6];
  v8 = [(DAMailboxFetchMessageRequest *)[_MFDAMessageStoreFetchUsingRemoteIDRequest alloc] initRequestForBodyFormat:1 withMessageID:v4 withBodySizeLimit:0xFFFFFFFFLL];
  v9 = [(MFLibraryStore *)self account];
  v10 = [(MFLibraryStore *)self mailbox];
  [v9 addRequest:v8 consumer:v7 mailbox:v10];

  if ([(_MFDAMessageBodyFetchConsumer *)v7 succeeded])
  {
    v11 = [(_MFDAMessageBodyFetchConsumer *)v7 data];
  }

  else
  {
    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_ERROR, "failed to download body for message %@", &v15, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_downloadHeadersForMessages:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v4 = DALoggingwithCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Downloading headers for messages", buf, 2u);
  }

  v28 = [MEMORY[0x1E695DF90] dictionary];
  v27 = [(MFLibraryStore *)self mailbox];
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v26;
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
        v10 = [v8 remoteID];
        v11 = [(DAMailboxFetchMessageRequest *)v9 initRequestForBodyFormat:0xFFFFFFFFLL withMessageID:v10 withBodySizeLimit:0xFFFFFFFFLL];

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

  v14 = [(MFLibraryStore *)self account];
  [v14 addRequests:v30 mailbox:v27];

  for (j = 0; [v32 count] > j; ++j)
  {
    v16 = [v32 objectAtIndexedSubscript:j];
    v17 = [v31 objectAtIndexedSubscript:j];
    v18 = v16[6];
    v19 = [v17 error];

    if (v19)
    {
      v20 = MFLogGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v18 remoteID];
        v22 = [v17 error];
        *buf = 138412546;
        v38 = v21;
        v39 = 2112;
        v40 = v22;
        _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "#Warning Error while fetching headers for message %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v20 = [v17 data];
      if (v20)
      {
        v23 = -[MFMessageHeaders initWithHeaderData:encoding:]([MFLocalizedMessageHeaders alloc], "initWithHeaderData:encoding:", v20, [v18 preferredEncoding]);
        [v28 setObject:v23 forKeyedSubscript:v18];
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v28;
}

- (BOOL)_fetchDataForMimePart:(id)a3 range:(_NSRange)a4 isComplete:(BOOL *)a5 consumer:(id)a6
{
  v68 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v65 = a6;
  v10 = +[MFActivityMonitor currentMonitor];
  v11 = [v9 partNumber];
  v12 = [v11 isEqual:@"2"];

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v14 = [v9 partNumber];
    v13 = [v14 isEqual:@"1.1"];
  }

  v62 = [(MFLibraryStore *)self mailbox];
  v63 = [v62 folderID];
  if (!v63)
  {
    v22 = 1;
    goto LABEL_34;
  }

  v15 = [(MFLibraryStore *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFDAMessageStore _fetchDataForMimePart:range:isComplete:consumer:]", "MFDAMessageStore.m", 972, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  v16 = [v9 mimeBody];
  v64 = [v16 message];

  v61 = v10;
  if (v13)
  {
    v17 = objc_alloc_init(MFDAMessageContentConsumer);
    [(MFDAMessageContentConsumer *)v17 setRequestedFormat:v12];
    if (([v64 messageFlags] & 0x80) != 0)
    {
      [(MFDAMessageStore *)self _fetchBodyDataForSearchResult:v64 folderID:v63 format:v12 streamConsumer:v17];
      v19 = v21 = 0;
    }

    else
    {
      v18 = [(MFDAMessageStore *)self _fetchBodyDataForNormalMessage:v64 format:v12 part:v9 streamConsumer:v17];
      v19 = [v18 first];
      v20 = [v18 second];
      v21 = [v20 BOOLValue];
    }

    [v65 appendData:v19];
    if (!(v21 & 1 | ((v12 & 1) == 0)))
    {
      v31 = [v19 mf_rangeOfRFC822HeaderData];
      v33 = v32;
      v34 = v31 + v32;
      if (v31 + v32 <= [v19 length])
      {
        v35 = [v19 mf_subdataWithRange:{v31, v33}];
        v36 = [objc_alloc(MEMORY[0x1E69AD6F8]) initWithHeaderData:v35 encoding:134217984];
        [(MFMailMessageLibrary *)self->super._library updateThreadingInfoForMessage:v64 fromHeaders:v36];
        v37 = [v19 mf_subdataWithRange:{v34, objc_msgSend(v19, "length") - v34}];
        v38 = [(MFLibraryStore *)self library];
        [v38 processRemoteContentFromHeaderData:v35 bodyData:v37 forMessage:v64];
      }
    }

    v22 = 1;
  }

  else
  {
    v23 = [v9 contentID];

    if (!v23)
    {
      v39 = MFLogGeneral();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = v9;
        _os_log_impl(&dword_1B0389000, v39, OS_LOG_TYPE_DEFAULT, "#Warning don't know how to fetch data for mime part %@", buf, 0xCu);
      }

      v22 = 1;
      goto LABEL_33;
    }

    v24 = [[_MFDAMessageFetchAttachmentConsumer alloc] initWithActivityMonitor:v10];
    [v9 range];
    [(_MFDAMessageFetchAttachmentConsumer *)v24 setExpectedLength:v25];
    v26 = objc_alloc(MEMORY[0x1E6999848]);
    v27 = [v9 contentID];
    v28 = [v64 messageID];
    v56 = [v26 initWithAttachmentName:v27 andMessageServerID:v28];

    v29 = [v9 contentTransferEncoding];

    if (v29)
    {
      v30 = v65;
      v60 = 0;
    }

    else
    {
      v60 = objc_alloc_init(MEMORY[0x1E69AD698]);
      v40 = [(_MFDAMessageFetchAttachmentConsumer *)v24 expectedLength];
      v58 = [objc_alloc(MEMORY[0x1E69AD750]) initWithConsumer:v60 expectedSize:v40];
      v41 = [v65 progressBlock];
      [v58 setProgressBlock:v41];

      [v65 setProgressBlock:0];
      v30 = v58;
    }

    [(_MFDAMessageFetchAttachmentConsumer *)v24 setProgressFilter:v30, v56];
    v59 = v30;
    v42 = [(MFLibraryStore *)self account];
    v43 = [v42 accountConduit];
    v44 = [v43 performFetchAttachmentRequest:v57 consumer:v24];

    while (1)
    {
      v45 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
      v46 = [(MFDAMailAccountConsumer *)v24 waitUntilDoneBeforeDate:v45];

      if (v46)
      {
        break;
      }

      v47 = +[MFActivityMonitor currentMonitor];
      v48 = [v47 shouldCancel];

      if (v48)
      {
        v49 = [(MailAccount *)self->super._account accountConduit];
        [v49 cancelTaskWithID:v44];

        [(MFDAMailAccountConsumer *)v24 waitUntilDone];
        break;
      }
    }

    v22 = [(_MFDAMessageFetchAttachmentConsumer *)v24 fetchSucceeded];
    if (!v29)
    {
      [v59 done];
      if ([(_MFDAMessageFetchAttachmentConsumer *)v24 dataWasBase64])
      {
        v50 = [objc_alloc(MEMORY[0x1E69AD678]) initWithConsumer:v65];
        v51 = [v60 data];
        [v50 appendData:v51];

        [v50 done];
      }

      else
      {
        v50 = [v60 data];
        [v65 appendData:v50];
      }
    }

    v52 = +[MFActivityMonitor currentMonitor];
    v53 = +[MFNetworkController sharedInstance];
    [v52 recordTransportType:{objc_msgSend(v53, "transportType")}];
  }

  v10 = v61;
LABEL_33:

LABEL_34:
  if (a5)
  {
    *a5 = v22;
  }

  v54 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)defaultAlternativeForPart:(id)a3
{
  v4 = a3;
  v5 = [(MFDAMessageStore *)self decryptedTopLevelPartForPart:v4];

  v6 = [v5 type];
  LODWORD(v4) = [v6 isEqualToString:@"multipart"];

  if (v4)
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

- (id)bestAlternativeForPart:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MFDAMessageStore;
  v5 = [(MFDAMessageStore *)&v13 bestAlternativeForPart:v4];
  v6 = [v5 partNumber];
  if ([v6 isEqualToString:@"2"])
  {
    v7 = [v5 isGenerated];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v5 copyBodyDataToOffset:1 resultOffset:0 downloadIfNecessary:0];
      v10 = v9;
      if (v9 && ![v9 length])
      {
        v11 = [v4 alternativeAtIndex:0];

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
  v2 = [(MFLibraryStore *)self account];
  v3 = [v2 supportsServerSearch];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"No";
    if (v3 != 2)
    {
      v5 = @"Yes";
    }

    v8[0] = 67240450;
    v8[1] = v3;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Account search capability: %{public}u. canFetchSearchResults: %{public}@", v8, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3 != 2;
}

- (BOOL)messageCanBeTriaged:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isSearchResultWithBogusRemoteId] ^ 1;
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