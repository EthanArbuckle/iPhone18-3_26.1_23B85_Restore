@interface MFLibraryIMAPStore
+ (void)setHandlerForTemporaryUidToRemoteIDMapping:(id)a3;
- (BOOL)_changedFlagsForMessage:(id)a3 fetchResponse:(id)a4 newFlags:(unint64_t *)a5;
- (BOOL)_doUidCopy:(id *)a3 toStore:(id)a4 newMessages:(id)a5;
- (BOOL)_fetchDataForMimePart:(id)a3 range:(_NSRange)a4 isComplete:(BOOL *)a5 consumer:(id)a6;
- (BOOL)_shouldContinueToPreservedUID:(unint64_t)a3;
- (BOOL)canCompact;
- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5;
- (BOOL)hasValidCacheFileForMessage:(id)a3;
- (BOOL)performOperationRequiringConnection:(BOOL)a3 withOptions:(int)a4 operation:(id)a5;
- (id)_dataForMessage:(id)a3 readHeadersOnly:(BOOL)a4;
- (id)_downloadForMessageBodyData:(id)a3;
- (id)_fetchFullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 downloadIfNecessary:(BOOL)a5 didDownload:(BOOL *)a6;
- (id)_idleConditionsObservable;
- (id)_newSearchResponseQueueForConnection:(id)a3 limit:(unsigned int)a4;
- (id)_observeChangesInIdleConditions;
- (id)_performBodyDataDownload:(id)a3 usingConnection:(id)a4 isPartial:(BOOL *)a5;
- (id)_searchArgumentsForSynchronize;
- (id)_searchFlagsForUIDs:(id)a3 usingConnection:(id)a4;
- (id)_uidsForMessages:(id)a3;
- (id)_updateLibraryForTransferedMessages:(id)a3 toDestinationMailbox:(id)a4 newMessageInfo:(id)a5 flagsToSet:(id)a6;
- (id)addMessages:(id)a3 newMessagesByOldMessage:(id)a4;
- (id)deletedMessages;
- (id)mailboxName;
- (id)messageForRemoteID:(id)a3;
- (id)messageForRemoteID:(id)a3 inMailbox:(id)a4;
- (id)messageIdRollCall:(id)a3;
- (id)moveMessages:(id)a3 toMailbox:(id)a4 markAsRead:(BOOL)a5;
- (id)newDictionaryForLocalFlags:(unint64_t)a3 serverFlags:(unint64_t)a4 existingDictionary:(id)a5;
- (id)offlineCache;
- (id)offlineCacheIfOffline;
- (id)relativePath;
- (id)remoteIDsFromUniqueRemoteIDs:(id)a3;
- (id)sequenceIdentifierForUIDs:(id)a3;
- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (id)uniqueRemoteIDsForMessages:(id)a3;
- (id)willSetFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (int64_t)fetchMessagesWithMessageIDs:(id)a3 andSetFlags:(unint64_t)a4;
- (int64_t)fetchMessagesWithRemoteIDs:(id)a3 andSetFlags:(unint64_t)a4;
- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5;
- (unint64_t)_doAppend:(id *)a3;
- (unint64_t)_fetchMessagesWithArguments:(id)a3 idRange:(id)a4 onConnection:(id)a5 synchronize:(BOOL)a6 limit:(unint64_t)a7 topUIDToCompact:(unint64_t)a8 topKnownUID:(unint64_t)a9 success:(BOOL *)a10 examinedRange:(_NSRange *)a11 fetchableUIDsFound:(unint64_t *)a12 preserveUID:(unint64_t *)a13 numFetchedUIDs:(unint64_t *)a14;
- (unint64_t)appendMessages:(id)a3 unsuccessfulOnes:(id)a4 newMessageIDs:(id)a5 newMessages:(id)a6 flagsToSet:(id)a7 customIMAPFlagsToSet:(id)a8;
- (unint64_t)fetchMessagesWithUIDs:(id)a3 connection:(id)a4 newCount:(unint64_t)a5 flagsToSet:(unint64_t)a6 queueClass:(Class)a7;
- (unint64_t)growFetchWindow;
- (unint64_t)serverMessageCount;
- (unint64_t)syncMessagesWithUIDs:(id)a3 connection:(id)a4 libraryDetails:(id)a5 flagSearchResults:(id)a6;
- (void)_fetchMessagesMatchingCriterion:(id)a3 limit:(unsigned int)a4 withOptions:(int)a5 handler:(id)a6;
- (void)_fetchServerUnreadCountWithConnection:(id)a3;
- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)_performActionsOnConnection:(id)a3 uidsToFetch:(id *)a4 uidsToSync:(id *)a5 messagesToCompact:(id *)a6 libraryDetails:(id)a7 flagSearchResults:(id)a8 shouldForce:(BOOL)a9 newUIDsToFetch:(unsigned int *)a10;
- (void)_setFlagsForMessages:(id)a3;
- (void)_setFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (void)_synchronouslySetFlags:(id)a3 clearFlags:(id)a4 forMessages:(id)a5 originalChanges:(id)a6;
- (void)_updateSelectedUID:(unint64_t *)a3;
- (void)_updateServerUnreadCount:(unint64_t)a3;
- (void)addFlagChanges:(id)a3 forMessages:(id)a4;
- (void)close;
- (void)connection:(id)a3 didBeginBodyLoad:(id)a4 section:(id)a5;
- (void)connection:(id)a3 didFinishLoadingBodyData:(id)a4 section:(id)a5;
- (void)connection:(id)a3 didLoadMoreBodyData:(id)a4 section:(id)a5;
- (void)connection:(id)a3 didReceiveResponse:(id)a4 forCommand:(id *)a5;
- (void)dealloc;
- (void)doCompact;
- (void)focusedMessageDidChange:(id)a3;
- (void)removeAllLocalMessages;
- (void)reselectMailbox;
- (void)setAdditionalFetchHeaders:(id)a3;
- (void)setAdditionalSynchronizationSearchArguments:(id)a3;
- (void)setDownloadDelegate:(id)a3;
- (void)setFlagsCancelled:(id)a3 forMessages:(id)a4;
- (void)setFlagsForAllMessagesFromDictionary:(id)a3;
- (void)setMailboxUidValidity:(unsigned int)a3;
- (void)setSequenceIdentifier:(id)a3 forUIDs:(id)a4;
- (void)setServerMessageCount:(unint64_t)a3;
- (void)updateDeletedCountWithNotDeletedCount:(unint64_t)a3;
- (void)updateServerUnreadCountClosingConnection:(BOOL)a3;
- (void)willRemoveDelegation:(id)a3;
@end

@implementation MFLibraryIMAPStore

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(EFCancelationToken *)self->_cancelationToken cancel];

  downloadCache = self->_downloadCache;
  if (downloadCache)
  {
  }

  fetchPipeline = self->_fetchPipeline;
  if (fetchPipeline)
  {
  }

  cachedConnection = self->_cachedConnection;
  if (cachedConnection)
  {
    v6 = [MEMORY[0x277D28478] invocationWithSelector:sel_checkInConnection_ target:*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) object:cachedConnection taskName:0 priority:13 canBeCancelled:0];
    [objc_msgSend(MEMORY[0x277D28420] "sharedInvocationQueue")];
  }

  v7.receiver = self;
  v7.super_class = MFLibraryIMAPStore;
  [(MFLibraryStore *)&v7 dealloc];
}

- (unint64_t)fetchMessagesWithUIDs:(id)a3 connection:(id)a4 newCount:(unint64_t)a5 flagsToSet:(unint64_t)a6 queueClass:(Class)a7
{
  v12 = objc_alloc_init(a7);
  v12[6] = self;
  v12[7] = a4;
  v12[8] = a5;
  v12[10] = self->_highestModSequence;
  v12[11] = a6;
  [a4 sendSkeletonResponsesForUIDs:a3 includeTo:1 toQueue:v12];
  [v12 flush];
  v13 = v12[9];

  return v13;
}

- (unint64_t)syncMessagesWithUIDs:(id)a3 connection:(id)a4 libraryDetails:(id)a5 flagSearchResults:(id)a6
{
  v11 = objc_alloc_init(MFSyncResponseQueue);
  v11->super._url = [(MFLibraryStore *)self URLString];
  v11->super._store = self;
  v11->super._connection = a4;
  v11->super._libraryDetails = a5;
  v11->super._shouldCompact = 0;
  v11->super._shouldFetch = 0;
  *(&v11->super._isSearching + 1) = 1;
  [a4 sendUidAndFlagResponsesForUIDs:a3 sequenceIdentifierProvider:self flagSearchResults:a6 toQueue:v11];
  [(MFBufferedQueue *)v11 flush];

  return 0;
}

- (void)_performActionsOnConnection:(id)a3 uidsToFetch:(id *)a4 uidsToSync:(id *)a5 messagesToCompact:(id *)a6 libraryDetails:(id)a7 flagSearchResults:(id)a8 shouldForce:(BOOL)a9 newUIDsToFetch:(unsigned int *)a10
{
  v29 = *MEMORY[0x277D85DE8];
  v17 = [*a4 count];
  if (!a9)
  {
    if (![*a5 count])
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v17)
  {
    v26 = self;
    if (*a10)
    {
      [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
      v18 = *a10;
    }

    else
    {
      v18 = 0;
    }

    v19 = *a4;
    v20 = objc_opt_class();
    v21 = v18;
    self = v26;
    [(MFLibraryIMAPStore *)v26 fetchMessagesWithUIDs:v19 connection:a3 newCount:v21 flagsToSet:0 queueClass:v20];
  }

  *a4 = 0;
  *a10 = 0;
  if ([*a5 count])
  {
    [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
LABEL_11:
    [(MFLibraryIMAPStore *)self syncMessagesWithUIDs:*a5 connection:a3 libraryDetails:a7 flagSearchResults:a8];
  }

LABEL_12:

  *a5 = 0;
  if (*a6 || a9)
  {
    v22 = [*a6 count];
    if (v22)
    {
      v23 = v22;
      v24 = MFLogGeneral();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v28 = v23;
        _os_log_impl(&dword_258B7A000, v24, OS_LOG_TYPE_INFO, "Compacting %lu messages during IMAP sync", buf, 0xCu);
      }

      [-[MFLibraryStore library](self "library")];
    }

    *a6 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updateSelectedUID:(unint64_t *)a3
{
  _MFLockGlobalLock();
  selectedUID = self->_selectedUID;
  if (selectedUID)
  {
    v6 = [(NSString *)selectedUID intValue];
    if (*a3 == v6)
    {
      goto LABEL_6;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *a3 = v7;
LABEL_6:

  _MFUnlockGlobalLock();
}

- (void)focusedMessageDidChange:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 mailbox];
  _MFLockGlobalLock();
  if (v4 && v5 == *(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]))
  {
    v6 = [v4 remoteID];
    if (([(NSString *)self->_selectedUID isEqual:v6]& 1) == 0)
    {

      self->_selectedUID = v6;
    }
  }

  else
  {

    self->_selectedUID = 0;
  }

  _MFUnlockGlobalLock();
}

- (id)_searchFlagsForUIDs:(id)a3 usingConnection:(id)a4
{
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [(MFLibraryStore *)self unreadCount];
  if ([a3 count] >= 2 * v8)
  {
    v9 = &unk_2869EBE28;
    v10 = 0;
  }

  else
  {
    v9 = &unk_2869EBE40;
    v10 = 1;
  }

  [v7 addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 1, v9, v10)}];
  [v7 addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 2, &unk_2869EBE58, 1)}];
  [v7 addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 16, &unk_2869EBE70, 1)}];
  [v7 addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 4, &unk_2869EBE88, 1)}];
  if ((*(self + 144) & 0x40) != 0)
  {
    [v7 addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 256, &unk_2869EBEA0, 1)}];
  }

  if ((*(self + 144) & 0x20) != 0)
  {
    [v7 addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 256, &unk_2869EBEB8, 1)}];
  }

  v11 = [a4 supportsCapability:16];
  v12 = [v7 count];
  v13 = 75 * v12;
  if ((75 * v12) <= 2)
  {
    v13 = 2;
  }

  v14 = v12 << 8;
  if (!(v12 << 8))
  {
    v14 = 2;
  }

  if (v11)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if (v15 >= [a3 count])
  {
    return 0;
  }

  return [a4 searchUIDs:a3 withFlagRequests:v7];
}

- (unint64_t)_fetchMessagesWithArguments:(id)a3 idRange:(id)a4 onConnection:(id)a5 synchronize:(BOOL)a6 limit:(unint64_t)a7 topUIDToCompact:(unint64_t)a8 topKnownUID:(unint64_t)a9 success:(BOOL *)a10 examinedRange:(_NSRange *)a11 fetchableUIDsFound:(unint64_t *)a12 preserveUID:(unint64_t *)a13 numFetchedUIDs:(unint64_t *)a14
{
  v16 = a6;
  v19 = a10;
  v118 = *MEMORY[0x277D85DE8];
  v91 = 0;
  v20 = [a5 searchIDSet:a4 forTerms:a3 success:&v91];
  v21 = MFLogGeneral();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v20 count];
    v23 = @"NO";
    if (v91)
    {
      v23 = @"YES";
    }

    *buf = 134218242;
    v95 = v22;
    v96 = 2112;
    v97 = v23;
    _os_log_impl(&dword_258B7A000, v21, OS_LOG_TYPE_INFO, "[FetchActivity] Search for recent UIDs returned %lu items (success=%@)", buf, 0x16u);
  }

  [(MFLibraryIMAPStore *)self _updateSelectedUID:a13];
  if (!v91 || (v24 = [v20 count]) == 0)
  {
    if (a11)
    {
      v26 = 0;
      *a11 = xmmword_258BBFDF0;
      if (!a10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v26 = 0;
      if (!a10)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    *v19 = v91;
    goto LABEL_12;
  }

  v25 = v24;
  if (v16)
  {
    v79 = [(MFLibraryIMAPStore *)self _searchFlagsForUIDs:v20 usingConnection:a5];
  }

  else
  {
    v79 = 0;
  }

  if (a12)
  {
    *a12 += v25;
  }

  v81 = v25;
  v74 = v16;
  v30 = [objc_msgSend(v20 objectAtIndex:{0), "unsignedIntegerValue"}];
  v31 = [objc_msgSend(v20 "lastObject")];
  v84 = a8;
  if (v31 <= a8)
  {
    v32 = a8;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - v30;
  if (a11)
  {
    a11->location = v30;
    a11->length = v33;
  }

  if (v33 + 1 > a7)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = a7;
  }

  if (v34 >= 0x100)
  {
    v35 = 256;
  }

  else
  {
    v35 = v34;
  }

  v89 = 0;
  v90 = 0;
  v78 = v35;
  v36 = [-[MFLibraryStore library](self "library")];
  v37 = [v20 count];
  v87 = 0;
  v88 = 0;
  v38 = [v36 count] - 1;
  v86 = 0;
  v85 = 0;
  v39 = MFLogGeneral();
  v83 = v30;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v76 = a4;
    v40 = v37;
    v41 = [(MFLibraryStore *)self URLString];
    v42 = [a5 selectedMailbox];
    *buf = 138415106;
    v95 = v41;
    v37 = v40;
    v96 = 2112;
    v97 = v42;
    v98 = 2112;
    v99 = v76;
    v100 = 2048;
    v101 = a7;
    v102 = 2048;
    v103 = v84;
    v104 = 2048;
    v105 = a9;
    v106 = 2048;
    v107 = v81;
    v108 = 2048;
    v109 = v30;
    v110 = 2048;
    v111 = v32;
    v112 = 2048;
    v113 = v38;
    v114 = 2048;
    v115 = v89;
    v116 = 2048;
    v117 = v90;
    _os_log_impl(&dword_258B7A000, v39, OS_LOG_TYPE_INFO, "[FetchActivity] starting UID sync for %@ (selected mailbox: %@) idRange=%@ limit=%lu topUIDToCompact=%lu topKnownUID=%lu UIDCount=%lu lowUID=%lu highUID=%lu libraryDetailsIndex=%lu libraryDetailsUIDRange=%lu:%lu", buf, 0x7Au);
  }

  if (v32 < v30)
  {
    v26 = 0;
    v43 = 0;
    v44 = a14;
    v19 = a10;
    if (a14)
    {
      goto LABEL_106;
    }

    goto LABEL_107;
  }

  v82 = 0;
  v75 = 0;
  v77 = 0;
  v45 = v37 - 1;
  do
  {
    if (v32 < v89)
    {
      LOBYTE(v73) = 0;
      [(MFLibraryIMAPStore *)self _performActionsOnConnection:a5 uidsToFetch:&v87 uidsToSync:&v86 messagesToCompact:&v88 libraryDetails:v36 flagSearchResults:v79 shouldForce:v73 newUIDsToFetch:&v85];
      v46 = [(MFLibraryStore *)self library];
      v36 = [v46 getDetailsForMessages:v78 absoluteBottom:v30 topOfDesiredRange:v89 - 1 range:&v89 fromMailbox:{-[MFLibraryStore URLString](self, "URLString")}];
      v38 = [v36 count] - 1;
    }

    v47 = [objc_msgSend(v20 objectAtIndex:{v45), "intValue"}];
    v49 = *a13 != 0x7FFFFFFFFFFFFFFFLL && v32 >= *a13;
    v50 = a7 != 0 || v49;
    if (!a7 && v49)
    {
      v51 = MFLogGeneral();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = *a13;
        *buf = 134217984;
        v95 = v52;
        _os_log_impl(&dword_258B7A000, v51, OS_LOG_TYPE_INFO, "[FetchActivity] preserving UID %lu!", buf, 0xCu);
      }
    }

    if (v32 == v47 && v50)
    {
      v30 = v83;
      if (v38 < 0)
      {
LABEL_58:
        v57 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        while (1)
        {
          v53 = [objc_msgSend(v36 objectAtIndex:{v38), "uid"}];
          if (v32 >= v53)
          {
            break;
          }

          if (!v88)
          {
            v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v54 = MFLogGeneral();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = [objc_msgSend(v36 objectAtIndex:{v38), "uid"}];
            *buf = 134217984;
            v95 = v55;
            _os_log_impl(&dword_258B7A000, v54, OS_LOG_TYPE_INFO, "[FetchActivity] Compacting %lu (1)", buf, 0xCu);
          }

          [v88 addObject:{objc_msgSend(v36, "objectAtIndex:", v38)}];
          if (v38-- < 1)
          {
            goto LABEL_58;
          }
        }

        v57 = v53;
      }

      if (v57 != v32)
      {
        if (!v87)
        {
          v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v62 = MFLogGeneral();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v95 = v32;
          _os_log_impl(&dword_258B7A000, v62, OS_LOG_TYPE_INFO, "[FetchActivity] Fetching %lu", buf, 0xCu);
        }

        v63 = [v20 objectAtIndex:v45];
        [v87 insertObject:v63 atIndex:0];
        if ([v63 intValue] > a9)
        {
          ++v85;
          ++v77;
        }

        if (a7)
        {
          --a7;
        }

        else
        {
          a7 = 0;
        }

        ++v82;
        goto LABEL_100;
      }

      v59 = [v36 objectAtIndex:v38];
      v60 = *(v59 + *MEMORY[0x277D28508]);
      if ((v60 & 0x80) != 0)
      {
        LODWORD(v61) = 1;
      }

      else
      {
        v61 = (v60 >> 20) & 1;
        if ((v60 & 0x100000) == 0 && !v74)
        {
          v30 = v83;
LABEL_99:
          --v38;
LABEL_100:
          --v45;
          goto LABEL_101;
        }
      }

      if (!v86)
      {
        v86 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v65 = MFLogGeneral();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v95 = v32;
        _os_log_debug_impl(&dword_258B7A000, v65, OS_LOG_TYPE_DEBUG, "[FetchActivity] Syncing %lu", buf, 0xCu);
      }

      v66 = [v20 objectAtIndex:v45];
      [v86 ef_insertObject:v66 usingComparator:&__block_literal_global_577 allowDuplicates:0];
      if (v61 && (v67 = -[MFLibraryStore library](self, "library"), (v68 = [v67 messageWithLibraryID:*(v59 + *MEMORY[0x277D28500]) options:0 inMailbox:0]) != 0))
      {
        v69 = v68;
        v30 = v83;
        v70 = v75;
        if (!v75)
        {
          v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v75 = v70;
        [v70 addObject:v69];
      }

      else
      {
        v30 = v83;
      }

      if (a7)
      {
        --a7;
      }

      else
      {
        a7 = 0;
      }

      ++v82;
      goto LABEL_99;
    }

    v30 = v83;
    if (v38 < 0)
    {
      v58 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v58 = [objc_msgSend(v36 objectAtIndex:{v38), "uid"}];
    }

    if (v58 == v32)
    {
      if (!v88)
      {
        v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v64 = MFLogGeneral();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v95 = v32;
        _os_log_impl(&dword_258B7A000, v64, OS_LOG_TYPE_INFO, "[FetchActivity] Compacting %lu (2)", buf, 0xCu);
      }

      [v88 addObject:{objc_msgSend(v36, "objectAtIndex:", v38--)}];
    }

LABEL_101:
    v71 = v32 - 1;
    if (!v32)
    {
      break;
    }

    --v32;
  }

  while (v71 >= v30);
  v19 = a10;
  if (v75)
  {
    v72 = *MEMORY[0x277D28320];
    v92[0] = *MEMORY[0x277D28318];
    v92[1] = v72;
    v93[0] = MEMORY[0x277CBEC28];
    v93[1] = MEMORY[0x277CBEC28];
    -[MFLibraryStore setFlagsLocallyFromDictionary:forMessages:](self, "setFlagsLocallyFromDictionary:forMessages:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2], v75);
  }

  v44 = a14;
  v26 = v82;
  v43 = v77;
  if (a14)
  {
LABEL_106:
    *v44 = v43;
  }

LABEL_107:
  LOBYTE(v73) = 1;
  [(MFLibraryIMAPStore *)self _performActionsOnConnection:a5 uidsToFetch:&v87 uidsToSync:&v86 messagesToCompact:&v88 libraryDetails:v36 flagSearchResults:v79 shouldForce:v73 newUIDsToFetch:&v85];
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_12:
  v27 = MFLogGeneral();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v95 = v26;
    _os_log_impl(&dword_258B7A000, v27, OS_LOG_TYPE_INFO, "[FetchActivity] _fetchMessagesWithArguments returns %lu", buf, 0xCu);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)updateDeletedCountWithNotDeletedCount:(unint64_t)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__MFLibraryIMAPStore_updateDeletedCountWithNotDeletedCount___block_invoke;
  v5[3] = &unk_2798B1DB8;
  v5[4] = self;
  v5[5] = a3;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v5];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", *MEMORY[0x277D28530], self, 0)}];
  *(self + 145) &= ~0x10u;
}

uint64_t __60__MFLibraryIMAPStore_updateDeletedCountWithNotDeletedCount___block_invoke(uint64_t a1, void *a2)
{
  v5 = 0;
  result = [a2 countForSearchOfIDSet:objc_msgSend(MEMORY[0x277CCACA8] forTerms:"stringWithFormat:" success:{@"%lu:*", objc_msgSend(*(*(a1 + 32) + *MEMORY[0x277D284C8]), "minID")), &unk_2869EBED0, &v5}];
  *(*(a1 + 32) + 176) = result;
  v4 = *(a1 + 40);
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1 + 32) + *MEMORY[0x277D284B8]) = *(*(a1 + 32) + 176) + v4;
  }

  return result;
}

- (BOOL)_shouldContinueToPreservedUID:(unint64_t)a3
{
  v3 = [(MFLibraryIMAPStore *)self messageForRemoteID:EFStringWithUnsignedInteger()];
  if (v3)
  {
    LOBYTE(v3) = ([v3 messageFlags] & 0x80) == 0;
  }

  return v3;
}

- (void)setAdditionalFetchHeaders:(id)a3
{
  _MFLockGlobalLock();
  additionalFetchHeaders = self->_additionalFetchHeaders;
  if (additionalFetchHeaders != a3)
  {

    self->_additionalFetchHeaders = [a3 copy];
  }

  _MFUnlockGlobalLock();
}

- (void)setAdditionalSynchronizationSearchArguments:(id)a3
{
  _MFLockGlobalLock();
  additionalSynchronizationSearchArguments = self->_additionalSynchronizationSearchArguments;
  if (additionalSynchronizationSearchArguments != a3)
  {

    self->_additionalSynchronizationSearchArguments = [a3 copy];
  }

  _MFUnlockGlobalLock();
}

- (id)_searchArgumentsForSynchronize
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"NOT", @"DELETED", 0}];
  _MFLockGlobalLock();
  if (self->_additionalSynchronizationSearchArguments)
  {
    [v3 addObjectsFromArray:?];
  }

  _MFUnlockGlobalLock();
  return v3;
}

- (unint64_t)growFetchWindow
{
  self->_highestModSequence = 0;
  self->_lastHighestModSequence = 0;
  v3.receiver = self;
  v3.super_class = MFLibraryIMAPStore;
  return [(MFLibraryStore *)&v3 growFetchWindow];
}

- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5
{
  v9 = [(MFMailMessageStore *)self mailboxUid];
  [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MFLibraryIMAPStore fetchNumMessages:? preservingUID:? options:?];
  }

  [(MFLibraryStore *)self willFetchMessages];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if ((a5 & 0x40) != 0)
  {
    v11 = 49;
  }

  else
  {
    v11 = 17;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke;
  v14[3] = &unk_2798B1DE0;
  v14[4] = self;
  v14[5] = a4;
  v14[9] = a3;
  v14[10] = a5;
  v14[6] = v9;
  v14[7] = &v19;
  v14[8] = &v15;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:v11 operation:v14];
  [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
  v12 = v20[3];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v12 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v12;
}

void __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) mailboxName];
  v66 = a2;
  v6 = [a2 selectedMailbox];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v64 = v4;
  if (v7)
  {
    goto LABEL_21;
  }

  v8 = v6;
  if ([v5 isEqualToString:v6])
  {
    goto LABEL_21;
  }

  v9 = [a2 isValid];
  v10 = MFLogGeneral();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_15:
    v14 = MFLogGeneral();
    v4 = v64;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke_cold_1(v14);
    }

    goto LABEL_17;
  }

  v13 = @"NO";
  *buf = 138413058;
  *&buf[4] = v5;
  if (v9)
  {
    v13 = @"YES";
  }

  *&buf[12] = 2112;
  *&buf[14] = v8;
  v74 = 2048;
  v75 = a2;
  v76 = 2112;
  v77 = v13;
  _os_log_error_impl(&dword_258B7A000, v10, OS_LOG_TYPE_ERROR, "[FetchActivity] store and connection mailboxes differ: store=%@ connection=%@ (%p, valid: %@)", buf, 0x2Au);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v4 = v64;
  if (([*v64 _selectMailbox:v5 withConnection:a2] & 1) == 0)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke_cold_2(v12);
    }

LABEL_17:
    v11 = 1;
    goto LABEL_18;
  }

  v11 = 0;
LABEL_18:
  if ([objc_msgSend(MEMORY[0x277D07148] "currentDevice")] && (v15 = MFLogGeneral(), os_log_type_enabled(v15, OS_LOG_TYPE_FAULT)))
  {
    __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke_cold_3(v15);
    if (v11)
    {
      goto LABEL_112;
    }
  }

  else if (v11)
  {
    goto LABEL_112;
  }

LABEL_21:
  v16 = *(a1 + 72);
  [v66 setIsFetching:1];
  [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
  v17 = MFLogGeneral();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke_cold_4(v4);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = [v18 intValue];
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v70 = v19;
  v20 = *(a1 + 32);
  v63 = *MEMORY[0x277D284B8];
  v21 = *&v20[v63];
  v65 = *(a1 + 80);
  if ((v65 & 4) == 0)
  {
    v25 = [objc_msgSend(v20 "library")];
LABEL_34:
    v67 = v25;
    goto LABEL_37;
  }

  v22 = [objc_msgSend(objc_msgSend(v20 "account")];
  if (!v22)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_34;
  }

  v23 = v22;
  v24 = [v66 getMailboxIDForUID:v22];
  if (v24)
  {
    v21 = v24 - 1;
    if (v21 < v16)
    {
      v16 = v24 - 1;
    }
  }

  else
  {
    v21 = *(*v4 + v63);
  }

  v67 = (v23 - 1);
  v25 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_37:
  v62 = v25;
  v26 = *MEMORY[0x277D284C8];
  v27 = [*(*(a1 + 32) + v26) minID];
  v28 = v16 - 1;
  if (v16 <= 1)
  {
    v28 = 1;
  }

  v29 = v21 - 1;
  if (v21 <= 1)
  {
    v29 = 1;
  }

  if (v21 <= v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  v69 = 1;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  if (v21 <= v28)
  {
    v31 = v27;
  }

  else
  {
    v31 = v21 - v28;
  }

  *buf = xmmword_258BBFDF0;
  v68 = 0;
  if ([v66 supportsCapability:18])
  {
    v32 = *v4;
    v33 = *(*v4 + 25);
    if (v33 && (v33 != v32[24] || (v72 = [v32 mailboxName], objc_msgSend(v66, "fetchStatusForMailboxes:args:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v72, 1), &unk_2869EBEE8), v32 = *v64, (v33 = *(*v64 + 25)) != 0)))
    {
      v34 = v32[24];
      v32[24] = v33;
      v4 = v64;
      if ((v65 & 4) == 0 && v33 == v34)
      {
        [v66 setIsFetching:0];
        goto LABEL_110;
      }
    }

    else
    {
      v32[24] = 0;
      v4 = v64;
    }
  }

  v60 = v21;
  v61 = v26;
  v35 = 0;
  v36 = v16;
  do
  {
    if (*(*(*(a1 + 56) + 8) + 24) >= v16 && (v70 == 0x7FFFFFFFFFFFFFFFLL || ![*v4 _shouldContinueToPreservedUID:?] || *buf <= v70) || !v30 || v35 || (v69 & 1) == 0)
    {
      break;
    }

    *v71 = 0;
    if (v31 + v30 >= *(*v4 + v63))
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu:*", v31, v59];
    }

    else
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu:%lu", v31, v31 + v30];
    }

    v38 = v16;
    v39 = [*(a1 + 32) _fetchMessagesWithArguments:objc_msgSend(*(a1 + 32) idRange:"_searchArgumentsForSynchronize") onConnection:v37 synchronize:v66 limit:(v65 & 8) == 0 topUIDToCompact:v16 - *(*(*(a1 + 56) + 8) + 24) topKnownUID:v67 success:v62 examinedRange:&v69 fetchableUIDsFound:buf preserveUID:&v68 numFetchedUIDs:{&v70, v71}];
    v40 = v39;
    if (v39 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(*(a1 + 56) + 8) + 24) += v39;
    }

    *(*(*(a1 + 64) + 8) + 24) += *v71;
    v36 *= 2;
    v41 = [*(*(a1 + 32) + v61) minID];
    v35 = v41 == v31;
    if (v41 == v31)
    {
      v4 = v64;
    }

    else
    {
      v42 = v31 - 1;
      v43 = *buf - 1;
      if (!*buf)
      {
        v43 = 0;
      }

      v44 = v67;
      if (*buf != 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = v43;
      }

      v67 = v44;
      v4 = v64;
      v45 = [*(*v64 + v61) minID];
      v46 = v36 - 1;
      if (!v36)
      {
        v46 = 1;
      }

      v47 = v31 - 2;
      if (v42 <= 1)
      {
        v47 = 1;
      }

      v49 = v42 - v46;
      v48 = v42 > v46;
      v30 = v42 <= v46 ? v47 : v46;
      v31 = v48 ? v49 : v45;
    }

    [*v4 _updateSelectedUID:&v70];
    v7 = v40 == 0x7FFFFFFFFFFFFFFFLL;
    v16 = v38;
  }

  while (!v7);
  [v66 setIsFetching:0];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v50 = (v65 >> 1) & 1;
  }

  else
  {
    v50 = 1;
  }

  if (v35)
  {
    v51 = *v4;
    if (v60 == *(*v4 + v63) && (v51[145] & 0x10) == 0)
    {
      v51[145] |= 0x10u;
      [*v4 updateDeletedCountWithNotDeletedCount:v68];
    }
  }

  if (v69 != 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = -1;
    goto LABEL_110;
  }

  if (!v50)
  {
    goto LABEL_110;
  }

  if (!(*(*(*(a1 + 56) + 8) + 24) | v65 & 4))
  {
    v57 = MFLogGeneral();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *v71 = 0;
      _os_log_impl(&dword_258B7A000, v57, OS_LOG_TYPE_INFO, "[FetchActivity] Compacting all messages", v71, 2u);
    }

    v55 = *v4;
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_109;
  }

  if (*buf && *buf != 0x7FFFFFFFFFFFFFFFLL)
  {
    v52 = v70 - 1;
    if (*buf - 1 < v70 - 1)
    {
      v52 = *buf - 1;
    }

    if (v70 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v53 = *buf - 1;
    }

    else
    {
      v53 = v52;
    }

    v54 = MFLogGeneral();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *v71 = 134217984;
      *&v71[4] = v53;
      _os_log_impl(&dword_258B7A000, v54, OS_LOG_TYPE_INFO, "[FetchActivity] Compacting messages with UIDs <= %lu", v71, 0xCu);
    }

    v55 = *v4;
    v56 = v53;
LABEL_109:
    compactMessagesToUID(v55, v56);
  }

LABEL_110:
  if ((v65 & 0x20) != 0)
  {
    [*v4 _fetchServerUnreadCountWithConnection:v66];
  }

LABEL_112:
  v58 = *MEMORY[0x277D85DE8];
}

- (void)updateServerUnreadCountClosingConnection:(BOOL)a3
{
  if (a3)
  {
    v3 = 33;
  }

  else
  {
    v3 = 1;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__MFLibraryIMAPStore_updateServerUnreadCountClosingConnection___block_invoke;
  v4[3] = &unk_2798B1E08;
  v4[4] = self;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:v3 operation:v4];
}

- (void)_fetchServerUnreadCountWithConnection:(id)a3
{
  v19 = 0;
  if ([-[MFLibraryStore library](self "library")] && (v5 = objc_msgSend(-[MFLibraryStore library](self, "library"), "minimumRemoteIDForMailbox:", -[MFLibraryStore URLString](self, "URLString")), v5 >= 2))
  {
    v6 = [a3 messageSetForRange:((v5 - 1) << 32) | 1];
    v7 = [-[MFLibraryStore mailbox](self "mailbox")];
    v8 = objc_alloc(MEMORY[0x277CBEA60]);
    if (v7)
    {
      v9 = [v8 initWithObjects:{@"UNDELETED", 0, v18}];
    }

    else
    {
      v9 = [v8 initWithObjects:{@"UNSEEN", @"UNDELETED", 0}];
    }

    v16 = v9;
    v17 = [a3 countForSearchOfUidSet:v6 forTerms:v9 success:&v19];

    if (v19 != 1)
    {
      goto LABEL_7;
    }

    v10 = self;
    v11 = v17;
  }

  else
  {
    v10 = self;
    v11 = 0;
  }

  [(MFLibraryIMAPStore *)v10 _updateServerUnreadCount:v11];
LABEL_7:
  if (([-[MFLibraryStore mailbox](self "mailbox")] & 1) == 0)
  {
    v12 = [a3 countForSearchOfUidSet:0x2869E37A0 forTerms:&unk_2869EBF00 success:&v19];
    if (v19 == 1)
    {
      v13 = v12;
      v14 = [(MFLibraryStore *)self URLString];
      if (v14)
      {
        [-[MFLibraryStore library](self "library")];
      }
    }
  }

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:*MEMORY[0x277D283B8] object:{-[MFMailMessageStore mailboxUid](self, "mailboxUid")}];
}

- (void)_updateServerUnreadCount:(unint64_t)a3
{
  v5 = [(MFLibraryStore *)self library];
  v6 = [(MFLibraryStore *)self URLString];

  [v5 setServerUnreadOnlyOnServerCount:a3 forMailbox:v6];
}

- (id)_newSearchResponseQueueForConnection:(id)a3 limit:(unsigned int)a4
{
  v7 = objc_alloc_init(MFSearchResponseQueue);
  v7->limit = a4;
  v7->super._url = [(MFLibraryStore *)self URLString];
  v7->super._store = self;
  v7->super._connection = a3;
  v7->super._shouldCompact = 0;
  v7->super._shouldFetch = 1;
  v7->super._isSearching = 1;
  return v7;
}

- (void)_fetchMessagesMatchingCriterion:(id)a3 limit:(unsigned int)a4 withOptions:(int)a5 handler:(id)a6
{
  v19[2] = *MEMORY[0x277D85DE8];
  v19[0] = a3;
  v19[1] = [MEMORY[0x277D28458] messageIsDeletedCriterion:0];
  v10 = [MEMORY[0x277D28458] andCompoundCriterionWithCriteria:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v19, 2)}];
  v11 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__MFLibraryIMAPStore__fetchMessagesMatchingCriterion_limit_withOptions_handler___block_invoke;
  v13[3] = &unk_2798B1E30;
  v13[6] = a6;
  v13[7] = &v15;
  v13[4] = v11;
  v13[5] = self;
  v14 = a4;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:a5 | 1u operation:v13];
  if ((v16[3] & 1) == 0)
  {
    (*(a6 + 2))(a6, 0x7FFFFFFFFFFFFFFFLL, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"LibraryIMAPStoreErrorDomain" code:2 userInfo:0]);
  }

  _Block_object_dispose(&v15, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __80__MFLibraryIMAPStore__fetchMessagesMatchingCriterion_limit_withOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        ArgumentsForCriterion = fetchArgumentsForCriterion(*(*(&v16 + 1) + 8 * i), 1);
        if (!ArgumentsForCriterion)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"LibraryIMAPStoreErrorDomain" code:1 userInfo:0];
          (*(*(a1 + 48) + 16))();
          *(*(*(a1 + 56) + 8) + 24) = 1;

          goto LABEL_14;
        }

        v11 = ArgumentsForCriterion;
        v12 = [*(a1 + 40) _newSearchResponseQueueForConnection:a2 limit:(*(a1 + 64) - v7)];
        [a2 sendUidResponsesForSearchArguments:v11 toQueue:v12];
        [v12 flush];
        v13 = v12[10];
        if (v13)
        {
          v7 += [*(a1 + 40) fetchMessagesWithUIDs:v13 connection:a2 newCount:0x7FFFFFFFFFFFFFFFLL flagsToSet:128 queueClass:objc_opt_class()];
        }

        [v4 addIndexes:{objc_msgSend(v12, "indexSet")}];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 48) + 16))();

  [*(a1 + 40) _fetchServerUnreadCountWithConnection:a2];
  *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
}

- (id)messageIdRollCall:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__MFLibraryIMAPStore_messageIdRollCall___block_invoke;
  v5[3] = &unk_2798B1E58;
  v5[4] = a3;
  v5[5] = &v6;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:17 operation:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __40__MFLibraryIMAPStore_messageIdRollCall___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 _uidsForMessageIDs:*(a1 + 32) excludeDeleted:1];
  if ([v4 count])
  {
    v5 = [v4 count];
    if (v5 == [*(a1 + 32) count])
    {
      result = [*(a1 + 32) copy];
    }

    else
    {
      v7 = [a2 fetchMessageIdsForUids:v4];
      result = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:{objc_msgSend(v7, "allValues")}];
    }
  }

  else
  {
    result = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __59__MFLibraryIMAPStore_fetchMessagesMatchingCriterion_limit___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

id __76__MFLibraryIMAPStore_storeSearchResultMatchingCriterion_limit_offset_error___block_invoke(id result, uint64_t a2, void *a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    result = [a3 firstIndex];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = result;
      do
      {
        [*(*(*(v5 + 5) + 8) + 40) addRemoteID:objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0] mailbox:{"numberWithUnsignedInteger:", v7), "stringValue"), objc_msgSend(*(v5 + 4), "mailboxUid")}];
        result = [a3 indexGreaterThanIndex:v7];
        v7 = result;
      }

      while (result != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  if (*(v5 + 6))
  {
    result = [a4 copy];
    **(v5 + 6) = result;
  }

  return result;
}

- (int64_t)fetchMessagesWithMessageIDs:(id)a3 andSetFlags:(unint64_t)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  if ([a3 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__MFLibraryIMAPStore_fetchMessagesWithMessageIDs_andSetFlags___block_invoke;
    v9[3] = &unk_2798B1ED0;
    v9[4] = a3;
    v9[5] = self;
    v9[6] = &v10;
    v9[7] = a4;
    [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __62__MFLibraryIMAPStore_fetchMessagesWithMessageIDs_andSetFlags___block_invoke(uint64_t a1, void *a2)
{
  result = [*(a1 + 40) fetchMessagesWithUIDs:objc_msgSend(objc_msgSend(a2 connection:"_uidsForMessageIDs:excludeDeleted:" newCount:*(a1 + 32) flagsToSet:0) queueClass:{"allObjects"), a2, 0x7FFFFFFFFFFFFFFFLL, *(a1 + 56), objc_opt_class()}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)fetchMessagesWithRemoteIDs:(id)a3 andSetFlags:(unint64_t)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  if ([a3 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__MFLibraryIMAPStore_fetchMessagesWithRemoteIDs_andSetFlags___block_invoke;
    v9[3] = &unk_2798B1EF8;
    v9[4] = self;
    v9[5] = a3;
    v9[6] = &v10;
    v9[7] = a4;
    [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:17 operation:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __61__MFLibraryIMAPStore_fetchMessagesWithRemoteIDs_andSetFlags___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) fetchMessagesWithUIDs:objc_msgSend(*(a1 + 40) connection:"allObjects") newCount:a2 flagsToSet:0x7FFFFFFFFFFFFFFFLL queueClass:{*(a1 + 56), objc_opt_class()}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)removeAllLocalMessages
{
  v3 = -[MFLibraryStore copyOfAllMessagesWithOptions:](self, "copyOfAllMessagesWithOptions:", [MEMORY[0x277D28430] defaultLoadOptions]);
  if (v3)
  {
    v4 = v3;
    [-[MFLibraryStore library](self "library")];
  }

  [(MFMailMessageStore *)self _flushAllMessageData];

  [(MFMailMessageStore *)self structureDidChange];
}

- (id)mailboxName
{
  _MFLockGlobalLock();
  v3 = self->_mailboxName;
  _MFUnlockGlobalLock();
  return v3;
}

- (void)setMailboxUidValidity:(unsigned int)a3
{
  v3 = *(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]);
  v4 = EFStringWithInt();

  [v3 setUserInfoObject:v4 forKey:@"UIDVALIDITY"];
}

- (BOOL)canCompact
{
  v6.receiver = self;
  v6.super_class = MFLibraryIMAPStore;
  v3 = [(MFLibraryStore *)&v6 canCompact];
  if (v3)
  {
    if (*(&self->super.super.super.super.isa + *MEMORY[0x277D284F0]) == 3)
    {
      v4 = *MEMORY[0x277D284C8];
      if ([*(&self->super.super.super.super.isa + v4) isOffline])
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = [*(&self->super.super.super.super.isa + v4) isOffline] ^ 1;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)doCompact
{
  v10.receiver = self;
  v10.super_class = MFLibraryIMAPStore;
  [(MFLibraryStore *)&v10 doCompact];
  v3 = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
  if (v3)
  {
    v4 = v3;
    v5 = [(MFLibraryIMAPStore *)self deletedMessages];
    v6 = [v5 count];
    if (v6)
    {
      v7 = v6 - 1;
      do
      {
        v8 = [v5 objectAtIndex:v7];
        if ([v8 hasTemporaryUid])
        {
          [v4 expungeTemporaryUid:{objc_msgSend(v8, "uid")}];
        }

        --v7;
      }

      while (v7 != -1);
    }
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__MFLibraryIMAPStore_doCompact__block_invoke;
    v9[3] = &unk_2798B1E08;
    v9[4] = self;
    [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v9];
  }
}

uint64_t __31__MFLibraryIMAPStore_doCompact__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 expunge];
  if ((result & 1) == 0)
  {
    result = [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
    if (result)
    {
      v4 = result;
      v5 = MEMORY[0x277CCACA8];
      v6 = MFLookupLocalizedString();
      v7 = [*(*(a1 + 32) + *MEMORY[0x277D284E8]) displayName];
      v8 = [v5 stringWithFormat:v6, v7, objc_msgSend(*(*(a1 + 32) + *MEMORY[0x277D284C8]), "hostname")];

      return [v4 useGenericDescription:v8];
    }
  }

  return result;
}

uint64_t __66__MFLibraryIMAPStore_deleteMessagesOlderThanNumberOfDays_compact___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(*(a1 + 32) "account")])
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [objc_msgSend(*(a1 + 32) "account")];
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v10 = 138544130;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      v16 = 2112;
      v17 = a2;
      _os_log_impl(&dword_258B7A000, v4, OS_LOG_TYPE_INFO, "IMAP Account %{public}@ deleting messages from store: %@ older than %d days using connection: %@", &v10, 0x26u);
    }
  }

  if ([*(a1 + 32) _selectMailbox:objc_msgSend(*(a1 + 32) withConnection:{"mailboxName"), a2}])
  {
    [a2 deleteMessagesOlderThanNumberOfDays:*(a1 + 48)];
  }

  if (*(a1 + 52) == 1)
  {
    [a2 close];
  }

  result = [*(a1 + 32) compactMessages:{objc_msgSend(objc_msgSend(*(a1 + 32), "library"), "messagesForMailbox:olderThanNumberOfDays:", *(a1 + 40), *(a1 + 48))}];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)setHandlerForTemporaryUidToRemoteIDMapping:(id)a3
{
  if (__remoteIDHandlerPred != -1)
  {
    +[MFLibraryIMAPStore setHandlerForTemporaryUidToRemoteIDMapping:];
  }

  if (__remoteIDHandler)
  {
    _Block_release(__remoteIDHandler);
  }

  __remoteIDHandler = _Block_copy(a3);
}

void *__50__MFLibraryIMAPStore_copyRemoteIDForTemporaryUid___block_invoke()
{
  if (__remoteIDHandler)
  {
    _Block_release(__remoteIDHandler);
  }

  result = _Block_copy(&__block_literal_global_235);
  __remoteIDHandler = result;
  return result;
}

id __50__MFLibraryIMAPStore_copyRemoteIDForTemporaryUid___block_invoke_2(uint64_t a1, unsigned int a2)
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"temp-%lu", a2];

  return v2;
}

- (BOOL)_doUidCopy:(id *)a3 toStore:(id)a4 newMessages:(id)a5
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__1;
  var2 = a3->var2;
  v42 = __Block_byref_object_dispose__1;
  v43 = var2;
  v10 = [a4 mailboxName];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__1;
  var1 = a3->var1;
  v30 = __Block_byref_object_dispose__1;
  v31 = var1;
  v12 = [(MFLibraryIMAPStore *)self _uidsForMessages:?];
  if (v33[5])
  {
    goto LABEL_3;
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3052000000;
  v25[3] = __Block_byref_object_copy__1;
  v25[4] = __Block_byref_object_dispose__1;
  v25[5] = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__MFLibraryIMAPStore__doUidCopy_toStore_newMessages___block_invoke;
  v24[3] = &unk_2798B1F68;
  v24[4] = v10;
  v24[5] = a5;
  v24[8] = &v44;
  v24[9] = v25;
  v24[10] = &v32;
  v24[11] = &v26;
  v24[12] = &v38;
  v24[6] = self;
  v24[7] = a4;
  [(MFLibraryIMAPStore *)self performBatchOperationWithUIDs:v12 requiringConnection:0 withOptions:17 operation:v24];
  _Block_object_dispose(v25, 8);
  if (v33[5])
  {
LABEL_3:
    v13 = [v27[5] count];
    v14 = [v33[5] firstUidForCopyingMessages:v27[5] fromMailbox:-[MFLibraryIMAPStore mailboxName](self toMailbox:{"mailboxName"), v10}];
    for (i = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:v13]; v13; --v13)
    {
      v16 = [objc_opt_class() copyRemoteIDForTemporaryUid:v14];
      [i addObject:v16];

      v14 = (v14 + 1);
    }

    v17 = [(MFLibraryStore *)self library];
    v18 = v27[5];
    v19 = [a4 mailboxUid];
    LOBYTE(v23) = 1;
    v20 = [v17 duplicateMessages:v18 newRemoteIDs:i forMailbox:v19 setFlags:0x100000000 clearFlags:0 messageFlagsForMessages:v39[5] createNewCacheFiles:v23];
    *(v45 + 24) = 1;
    if (a5 && v20)
    {
      [a5 addEntriesFromDictionary:v20];
    }

    [v33[5] saveChanges];
  }

  v21 = *(v45 + 24);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
  return v21;
}

uint64_t __53__MFLibraryIMAPStore__doUidCopy_toStore_newMessages___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 40))
  {
    v9 = *(*(a1 + 72) + 8) + 40;
  }

  else
  {
    v9 = 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = [a2 copyUids:a3 toMailboxNamed:*(a1 + 32) newMessageInfo:v9];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v10 = [*(a1 + 48) _updateLibraryForTransferedMessages:*(*(*(a1 + 88) + 8) + 40) toDestinationMailbox:objc_msgSend(*(a1 + 56) newMessageInfo:"mailbox") flagsToSet:{*(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 96) + 8) + 40)}];
    result = *(a1 + 40);
    if (result && v10)
    {

      return [result addEntriesFromDictionary:?];
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
    if (!a2 || (result = [a2 isValid], (result & 1) == 0))
    {
      result = [*(a1 + 48) offlineCache];
      *(*(*(a1 + 80) + 8) + 40) = result;
    }

    if (*(*(*(a1 + 80) + 8) + 40))
    {
      v12 = a5 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      *(*(*(a1 + 88) + 8) + 40) = [*(*(*(a1 + 88) + 8) + 40) subarrayWithRange:{a4, a5}];
      result = *(*(*(a1 + 96) + 8) + 40);
      if (result)
      {
        result = [result subarrayWithRange:{a4, a5}];
        *(*(*(a1 + 96) + 8) + 40) = result;
      }
    }
  }

  return result;
}

- (unint64_t)_doAppend:(id *)a3
{
  var1 = a3->var1;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = [var1 count];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v6 = [a3->var0 account];
  if (v6 == *(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CBEB38]);
    v9 = [v8 initWithCapacity:v34[3]];
    if ([a3->var0 _doUidCopy:a3 toStore:self newMessages:v9])
    {
      v10 = 1;
      a3->var4 = 1;
      v38[3] = 0;
      if (v34[3])
      {
        v11 = 0;
        v10 = 1;
        do
        {
          v12 = [var1 objectAtIndex:v11];
          v13 = [v9 objectForKey:v12];
          if (([v12 messageFlags] & 1) == 0)
          {
            ++a3->var9;
          }

          if (v13)
          {
            v14 = v28[5];
            if (!v14)
            {
              v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v28[5] = v14;
            }

            [v14 addObject:v13];
            _addIDForAppendedMessage([v13 uid], objc_msgSend(v13, "hasTemporaryUid"), a3->var7);
          }

          v11 = v38[3] + 1;
          v38[3] = v11;
        }

        while (v11 < v34[3]);
      }
    }

    else
    {
      [a3->var6 addObjectsFromArray:var1];
      v10 = 0;
    }

    v42[3] = v10;
  }

  else
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    v7 = [MEMORY[0x277D283F8] currentMonitor];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3052000000;
    v22 = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __32__MFLibraryIMAPStore__doAppend___block_invoke;
    v18[3] = &unk_2798B1F90;
    v18[8] = &v41;
    v18[9] = &v37;
    v18[4] = self;
    v18[5] = var1;
    v18[6] = v7;
    v18[7] = &v19;
    v18[10] = &v33;
    v18[11] = &v27;
    v18[12] = v25;
    v18[13] = a3;
    [(MFLibraryIMAPStore *)self performOperationRequiringConnection:0 withOptions:1 operation:v18];

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(v25, 8);
  }

  if (v28[5])
  {
    [a3->var8 addObjectsFromArray:?];
    v15 = v28[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v42[3];
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  return v16;
}

id *__32__MFLibraryIMAPStore__doAppend___block_invoke(id *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v69[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(result[7] + 1) + 40);
  if (!(a2 | v4))
  {
    result = [result[4] offlineCache];
    *(*(v3[7] + 1) + 40) = result;
    v4 = *(*(v3[7] + 1) + 40);
  }

  v5 = 1;
  if (v4)
  {
    result = [v3[4] canPerformOfflineAppend];
    if (!result)
    {
      v5 = 0;
    }
  }

  *(*(v3[8] + 1) + 24) = v5;
  *(*(v3[9] + 1) + 24) = 0;
  v6 = *(*(v3[9] + 1) + 24);
  v7 = *(*(v3[10] + 1) + 24);
  if (v6 < v7 && *(*(v3[8] + 1) + 24) == 1)
  {
    v8 = *MEMORY[0x277CBEEE8];
    v60 = *MEMORY[0x277D06FE0];
    v9 = MEMORY[0x277D284F0];
    v62 = *MEMORY[0x277CBEEE8];
    do
    {
      v66 = [v3[5] objectAtIndex:?];
      if (*(v3[4] + *v9) == 4)
      {
        [v3[6] cancel];
      }

      result = [v3[6] shouldCancel];
      if (result)
      {
        *(*(v3[8] + 1) + 24) = 2;
      }

      if (*(*(v3[8] + 1) + 24) != 1)
      {
        goto LABEL_72;
      }

      v10 = objc_alloc_init(MEMORY[0x277CCA8B0]);
      v11 = [v66 messageDataHolder];
      v12 = [v66 dateReceived];
      v13 = *(v3[13] + 2);
      v63 = v10;
      if (v13 && (v14 = [v13 objectAtIndex:*(*(v3[9] + 1) + 24)], v14 != v8) && (v15 = objc_msgSend(v14, "unsignedIntValue")) != 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = [v66 messageFlags];
      }

      v17 = MFCreateArrayForMessageFlags(v16 & 0xFFFFFFFFFFFFFFDFLL, 0);
      v18 = *(v3[13] + 3);
      if (v18)
      {
        v19 = [v18 objectAtIndex:*(*(v3[9] + 1) + 24)];
        if (v19 != v8)
        {
          v20 = v19;
          if ([v19 count])
          {
            if (!v17)
            {
              v17 = v20;
              if (v16)
              {
                goto LABEL_27;
              }

LABEL_26:
              ++*(v3[13] + 18);
              goto LABEL_27;
            }

            v21 = [v17 mutableCopy];
            [v21 addObjectsFromArray:v20];

            v17 = v21;
            v9 = MEMORY[0x277D284F0];
          }
        }
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v22 = 0;
      if (v2 && v11)
      {
        v65 = 0;
        v23 = [v2 appendData:v11 toMailboxNamed:objc_msgSend(v3[4] flags:"mailboxName") dateReceived:v17 newMessageInfo:{v12, &v65}];
        v22 = v23;
        *(v3[13] + 32) = v23;
        if (v23)
        {
          v61 = v2;
          v24 = [objc_msgSend(v65 objectForKey:{@"Source UIDS", "unsignedIntValue"}];
          v25 = [objc_msgSend(v65 objectForKey:{@"UIDVALIDITY", "unsignedIntValue"}];
          v26 = [objc_msgSend(*(v3[4] + *MEMORY[0x277D284E8]) userInfoObjectForKey:{@"UIDVALIDITY", "intValue"}];
          if (v24)
          {
            if (!v25)
            {
              goto LABEL_34;
            }

LABEL_32:
            if (!v26 || v25 == v26)
            {
LABEL_34:
              if (!v26)
              {
                [v3[4] setMailboxUidValidity:v25];
              }

              v59 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:&v66 count:1];
              v58 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{EFStringWithInt(), 0}];
              v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v28 = objc_alloc_init(_MFWholeMessageSection);
              [(_MFWholeMessageSection *)v28 setDataHolder:v11];
              v29 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v28, 0}];

              v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v29, v66, 0}];
              LOWORD(v57) = 0;
              [objc_msgSend(v3[4] "library")];
              v64 = [v27 objectForKey:v66];

              v8 = v62;
              if (v64)
              {
                v31 = *(*(v3[11] + 1) + 40);
                if (v31)
                {
                  [v31 addObject:?];
                }

                else
                {
                  *(*(v3[11] + 1) + 40) = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithObjects:&v64 count:1];
                }

                if ([*(v3[4] + *MEMORY[0x277D284C8]) cachePolicy] != 2)
                {
                  v36 = [v3[4] library];
                  v37 = [v11 data];
                  v38 = v36;
                  v8 = v62;
                  [v38 setData:v37 forMessage:v64 isPartial:0];
                }
              }
            }

            _addIDForAppendedMessage(v24, 0, *(v3[13] + 7));
LABEL_55:
            v2 = v61;
          }

          else
          {
            v32 = [objc_msgSend(v66 "headers")];
            if (!v32)
            {
              goto LABEL_55;
            }

            v33 = v3[4];
            v34 = *(v3[13] + 19);
            v69[0] = v32;
            v35 = [objc_msgSend(_uidSearchForMessageIds(v33 v34];
            if (v35)
            {
              v24 = v35;
              v8 = v62;
              if (v25)
              {
                goto LABEL_32;
              }

              goto LABEL_34;
            }

            v2 = v61;
            v8 = v62;
          }

          v9 = MEMORY[0x277D284F0];
          goto LABEL_57;
        }

        if (([v2 isValid] & 1) == 0)
        {
          if (!*(*(v3[7] + 1) + 40))
          {
            *(*(v3[7] + 1) + 40) = [v3[4] offlineCache];
          }

          if ([v3[4] canPerformOfflineAppend])
          {
            [v3[6] setError:0];
            v2 = 0;
          }

          else
          {
            v2 = 0;
            *(*(v3[8] + 1) + 24) = 0;
          }
        }
      }

LABEL_57:
      v39 = *(*(v3[7] + 1) + 40);
      if (v39 && v11 && *(*(v3[8] + 1) + 24) == 1)
      {
        v40 = [v39 uidForAppendingMessageData:objc_msgSend(v11 withFlags:"data") andInternalDate:v17 toMailbox:{v12, objc_msgSend(v3[4], "mailboxName")}];
        if (v40)
        {
          v41 = v40;
          v68 = v66;
          v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
          v43 = v3[4];
          v67 = [objc_opt_class() copyRemoteIDForTemporaryUid:v41];
          v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
          v45 = [v3[4] library];
          v46 = [v3[4] mailboxUid];
          LOBYTE(v56) = 0;
          v47 = v44;
          v9 = MEMORY[0x277D284F0];
          v48 = [v45 duplicateMessages:v42 newRemoteIDs:v47 forMailbox:v46 setFlags:v16 & 0x1BEDDF7FFFFLL | 0x100000000 clearFlags:v16 & 0x1BADDF7FFFFLL ^ 0x1BEDDF7FFFFLL messageFlagsForMessages:0 createNewCacheFiles:v56];
          v49 = [v48 objectForKey:v66];
          v65 = v49;
          v8 = v62;
          if (v49)
          {
            v50 = v49;
            v51 = *(v3[13] + 5);
            if (!v51)
            {
              v51 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:*(*(v3[10] + 1) + 24) - *(*(v3[9] + 1) + 24)];
              *(v3[13] + 5) = v51;
              v50 = v65;
            }

            [v51 addObject:v50];
            _addIDForAppendedMessage(v41, 1, *(v3[13] + 7));
            v52 = [v3[4] library];
            v53 = [v11 data];
            [v52 setData:v53 forMessage:v65 isPartial:0];
            v54 = *(*(v3[11] + 1) + 40);
            if (v54)
            {
              [v54 addObject:v65];
            }

            else
            {
              *(*(v3[11] + 1) + 40) = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithObjects:&v65 count:1];
            }

            v8 = v62;
          }

          *(*(v3[12] + 1) + 24) = 1;

          result = [v63 drain];
          goto LABEL_72;
        }

        result = [v63 drain];
        v8 = v62;
LABEL_67:
        *(*(v3[8] + 1) + 24) = 0;
        goto LABEL_72;
      }

      result = [v63 drain];
      if ((v22 & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_72:
      if (*(*(v3[8] + 1) + 24) != 1)
      {
        result = [*(v3[13] + 6) addObject:v66];
      }

      v6 = ++*(*(v3[9] + 1) + 24);
      v7 = *(*(v3[10] + 1) + 24);
    }

    while (v6 < v7 && *(*(v3[8] + 1) + 24) == 1);
  }

  while (v6 < v7)
  {
    result = [*(v3[13] + 6) addObject:{objc_msgSend(v3[5], "objectAtIndex:")}];
    v6 = ++*(*(v3[9] + 1) + 24);
    v7 = *(*(v3[10] + 1) + 24);
  }

  if (*(*(v3[12] + 1) + 24) == 1)
  {
    result = [*(*(v3[7] + 1) + 40) saveChanges];
  }

  v55 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)appendMessages:(id)a3 unsuccessfulOnes:(id)a4 newMessageIDs:(id)a5 newMessages:(id)a6 flagsToSet:(id)a7 customIMAPFlagsToSet:(id)a8
{
  v15 = [a3 count];
  if (![(MFLibraryIMAPStore *)self allowsAppend])
  {
    [a4 replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(a4, "count"), a3}];
    return 0;
  }

  if (!v15)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = 0;
  do
  {
    v18 = [objc_msgSend(a3 objectAtIndex:{v16, v26, v27, v28), "messageStore"}];
    if (v26 == v18)
    {
      v21 = 1;
    }

    else
    {
      v19 = v18;
      if (v17 >= v16)
      {
        v21 = 1;
      }

      else
      {
        *(&v26 + 1) = [a3 subarrayWithRange:{v17, v16 - v17}];
        if (a7)
        {
          v20 = [a7 subarrayWithRange:{v17, v16 - v17}];
        }

        else
        {
          v20 = 0;
        }

        *&v27 = v20;
        if (a8)
        {
          v22 = [a8 subarrayWithRange:{v17, v16 - v17}];
        }

        else
        {
          v22 = 0;
        }

        *(&v27 + 1) = v22;
        v21 = [(MFLibraryIMAPStore *)self _doAppend:&v26];
        v17 = v16;
      }

      *&v26 = v19;
    }

    ++v16;
  }

  while (v16 < v15 && v21 == 1);
  v23 = v15 - v17;
  if (v15 > v17)
  {
    if (v21 == 1)
    {
      if (v17)
      {
        *(&v26 + 1) = [a3 subarrayWithRange:{v17, v15 - v17}];
        v24 = v17;
        v15 -= v17;
      }

      else
      {
        *(&v26 + 1) = a3;
        if (a7)
        {
LABEL_27:
          *&v27 = a7;
          if (!a8 || v17)
          {
            a8 = [a8 subarrayWithRange:{v17, v23, v26}];
          }

          *(&v27 + 1) = a8;
          v21 = [(MFLibraryIMAPStore *)self _doAppend:&v26];
          *&v26 = 0;
          goto LABEL_31;
        }

        v24 = 0;
      }

      a7 = [a7 subarrayWithRange:{v24, v15, v26}];
      goto LABEL_27;
    }

    [a4 replaceObjectsInRange:objc_msgSend(a4 withObjectsFromArray:"count") range:{0, a3, v17, v15 - v17}];
  }

LABEL_31:
  if (*(&v28 + 1))
  {
  }

  return v21;
}

- (id)_updateLibraryForTransferedMessages:(id)a3 toDestinationMailbox:(id)a4 newMessageInfo:(id)a5 flagsToSet:(id)a6
{
  v91 = *MEMORY[0x277D85DE8];
  v10 = [a4 store];
  v49 = [v10 URLString];
  v11 = [objc_msgSend(a5 objectForKeyedSubscript:{@"UIDVALIDITY", "unsignedIntValue"}];
  v50 = a4;
  v12 = [objc_msgSend(a4 userInfoObjectForKey:{@"UIDVALIDITY", "intValue"}];
  v13 = [a5 objectForKey:@"Source UIDS"];
  v14 = [a5 objectForKey:@"Destination UIDS"];
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v11)
  {
    v17 = v12 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (v13)
    {
      v18 = v14 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      if (!v12)
      {
        [v10 setMailboxUidValidity:v11];
      }

      goto LABEL_38;
    }
  }

  else if (v11 == v12 && v13 != 0 && v14 != 0)
  {
LABEL_38:
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    *buffer = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *v59 = 0u;
    v34 = [(__CFString *)v13 length];
    v80 = v13;
    v83 = 0;
    v84 = v34;
    CharactersPtr = CFStringGetCharactersPtr(v13);
    CStringPtr = 0;
    v81 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v13, 0x600u);
    }

    v82 = CStringPtr;
    v85 = 0;
    v87 = 0;
    v86 = 0;
    v88 = v34;
    v89 = 0;
    v37 = [(__CFString *)v14 length];
    *&v67 = v14;
    *(&v68 + 1) = 0;
    *&v69 = v37;
    v38 = CFStringGetCharactersPtr(v14);
    v39 = 0;
    *(&v67 + 1) = v38;
    v23 = self;
    if (!v38)
    {
      v39 = CFStringGetCStringPtr(v14, 0x600u);
    }

    *&v68 = v39;
    *(&v69 + 1) = 0;
    v70 = 0uLL;
    v71 = v37;
    v40 = IMAPNextUidFromSet(buffer);
    v32 = a6;
    if (v40)
    {
      v41 = v40;
      do
      {
        if (!IMAPNextUidFromSet(v59))
        {
          break;
        }

        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __105__MFLibraryIMAPStore__updateLibraryForTransferedMessages_toDestinationMailbox_newMessageInfo_flagsToSet___block_invoke;
        v57[3] = &__block_descriptor_36_e26_B16__0__MFLibraryMessage_8l;
        v58 = v41;
        v42 = [a3 ef_firstObjectPassingTest:v57];
        if (v42)
        {
          [v15 addObject:v42];
          [v16 addObject:EFStringWithInt()];
        }

        v41 = IMAPNextUidFromSet(buffer);
      }

      while (v41);
    }

    goto LABEL_48;
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v22 = [a3 countByEnumeratingWithState:&v53 objects:v90 count:16];
  v23 = self;
  if (v22)
  {
    v24 = v22;
    v25 = *v54;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v54 != v25)
        {
          objc_enumerationMutation(a3);
        }

        v27 = [*(*(&v53 + 1) + 8 * i) messageIDHeader];
        if (v27)
        {
          [v21 addObject:v27];
        }
      }

      v24 = [a3 countByEnumeratingWithState:&v53 objects:v90 count:16];
    }

    while (v24);
  }

  v28 = _uidSearchForMessageIds(v10, [-[MFLibraryStore library](self "library")] + 1, v21);
  v29 = [v28 count];
  v30 = [a3 count];
  if (v29 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v29;
  }

  v32 = a6;
  if (v31)
  {
    for (j = 0; j != v31; ++j)
    {
      if ([objc_msgSend(v28 objectAtIndex:{j), "unsignedIntValue"}])
      {
        [v15 addObject:{objc_msgSend(a3, "objectAtIndex:", j)}];
        [v16 addObject:EFStringWithInt()];
      }
    }
  }

LABEL_48:
  v43 = [v32 count];
  if (v43 == [v15 count])
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __105__MFLibraryIMAPStore__updateLibraryForTransferedMessages_toDestinationMailbox_newMessageInfo_flagsToSet___block_invoke_2;
    v52[3] = &unk_2798B1FD8;
    v52[4] = a3;
    v52[5] = v32;
    v44 = [v15 ef_map:v52];
  }

  else
  {
    v44 = 0;
  }

  if ([v15 count])
  {
    LOBYTE(v48) = 1;
    v45 = [-[MFLibraryStore library](v23 "library")];
  }

  else
  {
    v45 = MEMORY[0x277CBEC10];
  }

  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

uint64_t __105__MFLibraryIMAPStore__updateLibraryForTransferedMessages_toDestinationMailbox_newMessageInfo_flagsToSet___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexOfObject:a2];
  v4 = *(a1 + 40);

  return [v4 objectAtIndexedSubscript:v3];
}

- (id)moveMessages:(id)a3 toMailbox:(id)a4 markAsRead:(BOOL)a5
{
  v5 = a5;
  v32[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [MFLibraryIMAPStore moveMessages:toMailbox:markAsRead:];
  }

  if (!a4)
  {
    [MFLibraryIMAPStore moveMessages:toMailbox:markAsRead:];
  }

  v10 = [a4 account];
  if (v10 == [(MFMailMessageStore *)self account])
  {
    v31 = *MEMORY[0x277D283C8];
    v32[0] = @"YES";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v15 = [(MFLibraryIMAPStore *)self _uidsForMessages:a3];
    if (v5 && [a3 count])
    {
      [(MFLibraryIMAPStore *)self setFlagsFromDictionary:v14 forMessages:a3];
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __56__MFLibraryIMAPStore_moveMessages_toMailbox_markAsRead___block_invoke;
    v26[3] = &unk_2798B2000;
    v26[4] = a3;
    v26[5] = a4;
    v26[6] = v18;
    v26[7] = self;
    v26[8] = v17;
    v26[9] = v16;
    v26[10] = &v27;
    v26[11] = a2;
    v19 = [(MFLibraryIMAPStore *)self performBatchOperationWithUIDs:v15 requiringConnection:1 withOptions:17 operation:v26];
    if (v28[3] & v19)
    {
      v20 = [v16 count];
      v21 = [objc_alloc(MEMORY[0x277D28468]) initWithResultCode:v20 != 0 failedMessages:v18 transferedMessage:v16];
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277D28468]);
      v21 = [v22 initWithResultCode:2 failedMessages:MEMORY[0x277CBEBF8] transferedMessage:MEMORY[0x277CBEBF8]];
    }

    v23 = v21;
    if ([v17 count])
    {
      [-[MFLibraryStore library](self "library")];
    }

    v24 = v23;
    _Block_object_dispose(&v27, 8);
    v25 = *MEMORY[0x277D85DE8];
    return v24;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D28468]) initWithResultCode:0 failedMessages:a3 transferedMessage:0];
    v12 = *MEMORY[0x277D85DE8];

    return v11;
  }
}

uint64_t __56__MFLibraryIMAPStore_moveMessages_toMailbox_markAsRead___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v8 = *(a1 + 32);
  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*(a1 + 32) subarrayWithRange:{a4, a5}];
  }

  result = [a2 moveUIDSet:a3 toMailboxNamed:objc_msgSend(objc_msgSend(*(a1 + 40) newMessageInfo:{"store"), "mailboxName"), &v22}];
  if (result)
  {
    if (result == 2)
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
    }

    else if (result == 1)
    {
      result = [*(a1 + 48) addObjectsFromArray:v8];
    }

    else
    {
      result = [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }
  }

  else
  {
    v10 = [*(a1 + 56) _updateLibraryForTransferedMessages:v8 toDestinationMailbox:*(a1 + 40) newMessageInfo:v22 flagsToSet:0];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    result = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (result)
    {
      v11 = result;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = [v10 objectForKeyedSubscript:v14];
          if (v15)
          {
            v16 = v15;
            [*(a1 + 64) addObject:v14];
            [*(a1 + 72) addObject:v16];
          }

          ++v13;
        }

        while (v11 != v13);
        result = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        v11 = result;
      }

      while (result);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)newDictionaryForLocalFlags:(unint64_t)a3 serverFlags:(unint64_t)a4 existingDictionary:(id)a5
{
  v7 = a3;
  if ((((a3 & 1) == 0) ^ a4))
  {
    v9 = 0;
  }

  else
  {
    v10 = *MEMORY[0x277D283C8];
    if (a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v9 = v11;
    if (a4)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [v11 setObject:v12 forKey:v10];
  }

  if (((v7 & 2) == 0) == ((a4 >> 1) & 1))
  {
    v13 = *MEMORY[0x277D283C0];
    if (!v9)
    {
      if (a5)
      {
        v14 = a5;
      }

      else
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v9 = v14;
    }

    if ((a4 & 2) != 0)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    [v9 setObject:v15 forKey:v13];
  }

  if (((v7 & 0x10) == 0) == ((a4 >> 4) & 1))
  {
    v16 = *MEMORY[0x277D28300];
    if (!v9)
    {
      if (a5)
      {
        v17 = a5;
      }

      else
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v9 = v17;
    }

    if ((a4 & 0x10) != 0)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    [v9 setObject:v18 forKey:v16];
  }

  if (((v7 & 4) == 0) == ((a4 >> 2) & 1))
  {
    v19 = *MEMORY[0x277D283D8];
    if (!v9)
    {
      if (a5)
      {
        v20 = a5;
      }

      else
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v9 = v20;
    }

    if ((a4 & 4) != 0)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    [v9 setObject:v21 forKey:v19];
  }

  v22 = *(self + 144);
  if ((v22 & 1) != 0 || (*(self + 144) & 0x20) != 0 || (*(self + 144) & 0x40) != 0)
  {
    if (((v7 & 0x100) == 0) == ((a4 >> 8) & 1))
    {
      v23 = *MEMORY[0x277D283D0];
      if (!v9)
      {
        if (a5)
        {
          v24 = a5;
        }

        else
        {
          v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v9 = v24;
      }

      if ((a4 & 0x100) != 0)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      [v9 setObject:v25 forKey:v23];
      v22 = *(self + 144);
    }

    if ((v22 & 1) != 0 && ((v7 & 0x200) == 0) == ((a4 >> 9) & 1))
    {
      v26 = *MEMORY[0x277D28328];
      if (!v9)
      {
        if (a5)
        {
          v27 = a5;
        }

        else
        {
          v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v9 = v27;
      }

      if ((a4 & 0x200) != 0)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      [v9 setObject:v28 forKey:v26];
    }
  }

  return v9;
}

- (void)_synchronouslySetFlags:(id)a3 clearFlags:(id)a4 forMessages:(id)a5 originalChanges:(id)a6
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = __Block_byref_object_copy__1;
  v41 = __Block_byref_object_dispose__1;
  v42 = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
  v22 = a3;
  v9 = MFMessageFlagsFromArray(a3);
  v10 = [a5 count];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v21 = (v9 >> 1) & 1;
    v24 = a3 == 0;
    v20 = v27;
    v13 = 500;
    do
    {
      if (v10 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v10;
      }

      v15 = objc_alloc_init(MEMORY[0x277CCA8B0]);
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = v24;
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = a4 == 0;
      v16 = a5;
      if ([a5 count] >= 0x1F5)
      {
        v16 = [a5 subarrayWithRange:{v12, v14 + v11}];
      }

      if (v38[5])
      {
        goto LABEL_10;
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v27[0] = __84__MFLibraryIMAPStore__synchronouslySetFlags_clearFlags_forMessages_originalChanges___block_invoke;
      v27[1] = &unk_2798B2028;
      v27[2] = self;
      v27[3] = v16;
      v27[4] = v22;
      v27[5] = a4;
      v28 = v21;
      v27[8] = &v29;
      v27[9] = &v37;
      v27[7] = &v33;
      v27[6] = a6;
      if (![(MFLibraryIMAPStore *)self performOperationRequiringConnection:0 withOptions:17 operation:v26])
      {
LABEL_10:
        [-[MFMailMessageStore account](self "account")];
      }

      if ([(MFLibraryIMAPStore *)self mailboxName])
      {
        v17 = v38[5];
        if (v17)
        {
          if (*(v34 + 24))
          {
            v18 = 0;
          }

          else
          {
            v18 = v22;
          }

          if (*(v30 + 24))
          {
            v19 = 0;
          }

          else
          {
            v19 = a4;
          }

          [v17 setFlags:v18 andClearFlags:v19 forMessages:v16];
          [v38[5] saveChanges];
        }
      }

      [v15 drain];
      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v33, 8);
      v12 += 500;
      v13 += 500;
      v11 -= 500;
    }

    while (v12 < v10);
  }

  _Block_object_dispose(&v37, 8);
}

id __84__MFLibraryIMAPStore__synchronouslySetFlags_clearFlags_forMessages_originalChanges___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) _uidsForMessages:*(a1 + 40)];
  v5 = *(a1 + 48);
  if (v5 && [a2 storeFlags:v5 state:1 forUids:v4])
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  v6 = *(a1 + 56);
  if (v6 && [a2 storeFlags:v6 state:0 forUids:v4])
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1 && *(a1 + 96) == 1 && [*(*(a1 + 32) + *MEMORY[0x277D284C8]) shouldExpungeMessagesOnDelete] && objc_msgSend(a2, "supportsCapability:", 3))
  {
    [a2 expungeUids:v4];
  }

  if (*(*(*(a1 + 72) + 8) + 24) != 1 || (v7 = *(*(a1 + 80) + 8), (*(v7 + 24) & 1) == 0))
  {
    if (![a2 isValid])
    {
      result = [*(a1 + 32) offlineCache];
      *(*(*(a1 + 88) + 8) + 40) = result;
      return result;
    }

    v7 = *(*(a1 + 80) + 8);
  }

  *(v7 + 24) = 1;
  *(*(*(a1 + 72) + 8) + 24) = 1;
  v8 = [*(a1 + 32) account];
  v9 = [a2 tag];
  v10 = *(a1 + 64);
  v11 = *(a1 + 40);

  return [v8 setConnectionTag:v9 forFlagChanges:v10 forMessages:v11];
}

- (void)_setFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  if ([a4 count])
  {
    v7 = 0;
    v8 = 0;
    if (_flagsToSetAndClearFromDictionary(self, a3, &v8, &v7))
    {
      [(MFLibraryIMAPStore *)self _synchronouslySetFlags:v8 clearFlags:v7 forMessages:a4 originalChanges:a3];
    }
  }
}

- (void)addFlagChanges:(id)a3 forMessages:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(a4);
          }

          [-[MFMailMessageStore account](self "account")];
        }

        while (v8 != v10);
        v8 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] array];
  [(MFLibraryIMAPStore *)self relativePath];
  [objc_msgSend(-[MFMailMessageStore account](self "account")];
  v25 = self;
  [(MFLibraryIMAPStore *)self addFlagChanges:a3 forMessages:a4];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [a4 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v8)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v32;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v32 != v12)
      {
        objc_enumerationMutation(a4);
      }

      v14 = *(*(&v31 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        if (v10)
        {
          v15 = v10;
LABEL_11:
          [v15 addObject:v14];
          continue;
        }

        v10 = [MEMORY[0x277CBEB18] arrayWithObjects:{v14, 0}];
      }

      else
      {
        if (v11)
        {
          v15 = v11;
          goto LABEL_11;
        }

        v11 = [MEMORY[0x277CBEB18] arrayWithObjects:{v14, 0}];
      }
    }

    v9 = [a4 countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v9);
LABEL_18:
  v30.receiver = v25;
  v30.super_class = MFLibraryIMAPStore;
  [v7 addObjectsFromArray:{-[MFLibraryStore setFlagsFromDictionary:forMessages:](&v30, sel_setFlagsFromDictionary_forMessages_, a3, v10)}];
  [objc_msgSend(-[MFMailMessageStore account](v25 "account")];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        v21 = [v20 messageFlags];
        v22 = MFMessageFlagsByApplyingDictionary();
        if (v22 != v21)
        {
          [v20 setMessageFlags:v22];
          [v7 addObject:v20];
        }
      }

      v17 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v17);
  }

  [(MFLibraryIMAPStore *)v25 _setFlagsFromDictionary:a3 forMessages:a4];
  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)willSetFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  [objc_msgSend(-[MFMailMessageStore account](self "account")];
  [(MFLibraryIMAPStore *)self addFlagChanges:a3 forMessages:a4];
  v9.receiver = self;
  v9.super_class = MFLibraryIMAPStore;
  v7 = [(MFLibraryStore *)&v9 setFlagsFromDictionary:a3 forMessages:a4];
  [objc_msgSend(-[MFMailMessageStore account](self "account")];
  return v7;
}

- (void)setFlagsCancelled:(id)a3 forMessages:(id)a4
{
  v6 = [(MFMailMessageStore *)self account];

  [v6 removeFlagChanges:a3 forMessages:a4];
}

- (void)setFlagsForAllMessagesFromDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = MFLibraryIMAPStore;
  [(MFLibraryStore *)&v6 setFlagsForAllMessagesFromDictionary:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__MFLibraryIMAPStore_setFlagsForAllMessagesFromDictionary___block_invoke;
  v5[3] = &unk_2798B2050;
  v5[4] = self;
  v5[5] = a3;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v5];
}

uint64_t __59__MFLibraryIMAPStore_setFlagsForAllMessagesFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) _selectMailbox:objc_msgSend(*(a1 + 32) withConnection:{"mailboxName"), a2}];
  if (result)
  {
    v5 = 0;
    v6 = 0;
    result = _flagsToSetAndClearFromDictionary(*(a1 + 32), *(a1 + 40), &v6, &v5);
    if (result)
    {
      if ([v6 count])
      {
        [a2 storeFlags:v6 state:1 forRange:0xFFFFFFFF00000001];
      }

      result = [v5 count];
      if (result)
      {
        return [a2 storeFlags:v5 state:0 forRange:0xFFFFFFFF00000001];
      }
    }
  }

  return result;
}

- (id)_dataForMessage:(id)a3 readHeadersOnly:(BOOL)a4
{
  v4 = a4;
  v7 = [a3 uid];
  if ([a3 hasTemporaryUid])
  {
    v8 = [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) _dataForTemporaryUid:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v8 = [a3 messageData];
  }

  v9 = v8;
  if (!v4 || !v8)
  {
    return v9;
  }

  v10 = [v8 mf_rangeOfRFC822HeaderData];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_258B7A000, v12, OS_LOG_TYPE_INFO, "[MFLibraryIMAPStore _dataForMessage:] bad message data", v14, 2u);
    }

    return 0;
  }

  return [v9 mf_subdataWithRange:{v10, v11}];
}

- (BOOL)_fetchDataForMimePart:(id)a3 range:(_NSRange)a4 isComplete:(BOOL *)a5 consumer:(id)a6
{
  length = a4.length;
  location = a4.location;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (([@"multipart" isEqualToString:{objc_msgSend(a3, "type")}] & 1) == 0)
  {
    [a3 range];
    v15 = v14;
    v16 = [objc_msgSend(a3 "mimeBody")];
    v17 = [a3 partNumber];
    if (v15)
    {
      if (v16)
      {
        v18 = v17;
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([&stru_2869E1DA0 isEqualToString:v18] & 1) == 0)
        {
          v19 = [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) fetchLimits];
          [a3 range];
          v26 = v20;
          v21 = [v19 fetchMinBytes];
          v22 = 0x7FFFFFFFFFFFFFFFLL;
          if (v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (location || length != v26)
            {
              if (length != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (location >= v26)
                {
                  location = v26;
                }

                v25 = [v19 fetchMinBytes];
                v23 = [v19 minBytesLeft];
                v24 = v25;
                v22 = v26 - location;
                if (length > v25)
                {
                  v24 = length;
                }

                if (v22 < v24)
                {
                  v24 = v26 - location;
                }

                if (v26 - location - v24 >= v23)
                {
                  v22 = v24;
                }
              }
            }

            else
            {
              location = 0;
            }
          }

          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __70__MFLibraryIMAPStore__fetchDataForMimePart_range_isComplete_consumer___block_invoke;
          v27[3] = &unk_2798B2078;
          v27[10] = location;
          v27[11] = v22;
          v27[4] = v16;
          v27[5] = self;
          v27[6] = v18;
          v27[7] = a6;
          v27[8] = a3;
          v27[9] = &v28;
          v27[12] = v15;
          v27[13] = a5;
          [(MFLibraryIMAPStore *)self performOperationRequiringConnection:0 withOptions:5 operation:v27];
        }
      }
    }
  }

  v12 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  return v12;
}

uint64_t __70__MFLibraryIMAPStore__fetchDataForMimePart_range_isComplete_consumer___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) uid];
  v5 = *(a1 + 88);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 40) + 160);
    v8 = *(a1 + 56);
    if (*(a1 + 96))
    {
      v9 = [v7 downloadForUid:v4 section:v6 expectedLength:4096 consumer:v8];
    }

    else
    {
      v9 = [v7 downloadForUid:v4 section:v6 length:0 consumer:v8];
    }
  }

  else
  {
    v9 = [*(*(a1 + 40) + 160) downloadForUid:v4 section:*(a1 + 48) range:*(a1 + 80) consumer:{v5, *(a1 + 56)}];
  }

  v10 = v9;
  result = _waitForDataFromDownload(*(a1 + 40), v9, v4, a2);
  *(*(*(a1 + 72) + 8) + 24) = result;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(a1 + 64) range];
    v13 = v12;
    result = [v10 bytesFetched];
    v14 = *(a1 + 104);
    if (v14)
    {
      *v14 |= *(a1 + 80) + result == v13;
    }
  }

  return result;
}

- (id)_fetchFullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 downloadIfNecessary:(BOOL)a5 didDownload:(BOOL *)a6
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __115__MFLibraryIMAPStore__fetchFullBodyDataForMessage_andHeaderDataIfReadilyAvailable_downloadIfNecessary_didDownload___block_invoke;
  v20[3] = &unk_2798B20A0;
  v20[4] = a3;
  v20[5] = self;
  v20[6] = &v21;
  v20[7] = &v27;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:5 operation:v20];
  v10 = v28;
  v11 = v28[5];
  if (v11 && (v12 = [v11 mf_rangeOfRFC822HeaderData], v14 = v13, v15 = objc_msgSend(v28[5], "length"), v10 = v28, v12 + v14 <= v15))
  {
    v17 = [v28[5] length];
    v16 = [v28[5] mf_subdataWithRange:{v12 + v14, v17 - (v12 + v14)}];
    if (v16)
    {
      v18 = [objc_alloc(MEMORY[0x277D24F30]) initWithData:v16 partial:0 incomplete:0];
      [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:a3 valueIfNotPresent:v18];

      if (a6)
      {
        *a6 = 1;
      }
    }

    v10 = v28;
    if (a4)
    {
      *a4 = [v28[5] mf_subdataWithRange:{v12, v14}];
      v10 = v28;
    }
  }

  else
  {
    v16 = 0;
  }

  if (!v10[5])
  {
    _compactMessageIfNoData(self, v22[5], a3);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  return v16;
}

void __115__MFLibraryIMAPStore__fetchFullBodyDataForMessage_andHeaderDataIfReadilyAvailable_downloadIfNecessary_didDownload___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) uid];
  v14 = objc_alloc_init(MEMORY[0x277D24EE8]);
  v5 = [MEMORY[0x277D24F20] filterWithConsumer:?];
  *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 40) + 160) downloadForUid:v4 section:&stru_2869E1DA0 length:objc_msgSend(*(a1 + 32) consumer:{"messageSize"), v5}];
  v6 = _waitForDataFromDownload(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40), v4, a2);
  v7 = [*(*(*(a1 + 48) + 8) + 40) bytesFetched];
  v8 = [*(a1 + 32) messageSize];
  if (v6)
  {
    v9 = v7 >= v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 || (v10 = v8, *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 40) + 160) downloadForUid:v4 section:&stru_2869E1DA0 range:v7 consumer:{v8, v5}], v11 = _waitForDataFromDownload(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40), v4, a2), v12 = objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "bytesFetched"), v11) && ((v13 = v12, !objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "bytesFetched")) || v13 + v7 >= v10))
  {
    *(*(*(a1 + 56) + 8) + 40) = [v14 data];
  }
}

- (id)_downloadForMessageBodyData:(id)a3
{
  v4 = [(MFIMAPDownloadCache *)self->_downloadCache downloadForMessage:a3];
  [v4 setAllowsPartialDownloads:{objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]), "allowsPartialDownloads")}];
  [v4 setFetchBodyData:1];
  return v4;
}

- (id)_performBodyDataDownload:(id)a3 usingConnection:(id)a4 isPartial:(BOOL *)a5
{
  v9 = [a3 partial];
  if (_waitForDataFromDownload(self, a3, [a3 uid], a4))
  {
    v10 = [a3 data];
    v9 = [a3 partial];
    if (!a5)
    {
      return v10;
    }

    goto LABEL_5;
  }

  v10 = 0;
  if (a5)
  {
LABEL_5:
    *a5 = v9;
  }

  return v10;
}

uint64_t __107__MFLibraryIMAPStore__fetchBodyDataForMessage_andHeaderDataIfReadilyAvailable_downloadIfNecessary_partial___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _downloadForMessageBodyData:*(a1 + 40)];
  result = [*(a1 + 32) _performBodyDataDownload:*(*(*(a1 + 48) + 8) + 40) usingConnection:a2 isPartial:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 40) = result;
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    result = [*(a1 + 32) shouldRetryEmptyBodyDownloadForMessage:*(a1 + 40)];
    if (result)
    {
      result = [*(*(*(a1 + 48) + 8) + 40) isComplete];
      if (result)
      {
        result = [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
        if (!result)
        {
          [a2 close];
          [*(a1 + 32) _selectMailbox:objc_msgSend(*(a1 + 32) withConnection:{"mailboxName"), a2}];
          *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _downloadForMessageBodyData:*(a1 + 40)];
          result = [*(a1 + 32) _performBodyDataDownload:*(*(*(a1 + 48) + 8) + 40) usingConnection:a2 isPartial:*(a1 + 64)];
          *(*(*(a1 + 56) + 8) + 40) = result;
        }
      }
    }
  }

  return result;
}

uint64_t __69__MFLibraryIMAPStore__fetchHeaderDataForMessage_downloadIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  result = [*(*(a1 + 32) + 160) downloadForMessage:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (v5)
  {
    result = _waitForDataFromDownload(*(a1 + 32), v5, *(a1 + 64), a2);
    if (result)
    {
      result = [*(*(*(a1 + 48) + 8) + 40) data];
      *(*(*(a1 + 56) + 8) + 40) = result;
    }
  }

  return result;
}

- (BOOL)performOperationRequiringConnection:(BOOL)a3 withOptions:(int)a4 operation:(id)a5
{
  v7 = a3;
  v33 = *MEMORY[0x277D85DE8];
  v9 = *(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]);
  v10 = 2 * (*(&self->super.super.super.super.isa + *MEMORY[0x277D284E0]) & 1);
  [(NSLock *)self->_cachedConnectionLock lock];
  cachedConnection = self->_cachedConnection;
  if ((a4 & 4) != 0)
  {
    if ([(MFIMAPConnection *)self->_cachedConnection mf_tryLock])
    {
      cachedConnection = self->_cachedConnection;
    }

    else
    {
      cachedConnection = 0;
    }
  }

  v12 = cachedConnection;
  [(NSLock *)self->_cachedConnectionLock unlock];
  v24 = v9;
  if ((a4 & 0x10) != 0 && cachedConnection)
  {
    [(MFIMAPConnection *)cachedConnection noop];
  }

  else if (!cachedConnection)
  {
    goto LABEL_16;
  }

  if ([(MFIMAPConnection *)cachedConnection isValid])
  {
    v13 = 1;
    goto LABEL_19;
  }

  if ((a4 & 4) != 0)
  {
    [(MFIMAPConnection *)cachedConnection mf_unlock];
  }

  [(NSLock *)self->_cachedConnectionLock lock];
  v14 = self->_cachedConnection;
  if (cachedConnection == v14)
  {

    self->_cachedConnection = 0;
  }

  [(NSLock *)self->_cachedConnectionLock unlock];
LABEL_16:
  cachedConnection = [v9 connectionForStore:self delegate:self options:v10 | a4];
  [(NSLock *)self->_cachedConnectionLock lock];
  if (!self->_cachedConnection)
  {
    self->_cachedConnection = cachedConnection;
  }

  [(NSLock *)self->_cachedConnectionLock unlock];
  v13 = 0;
LABEL_19:
  [(MFIMAPConnection *)cachedConnection setAdditionalHeadersForFetch:self->_additionalFetchHeaders];
  if (!self->_mailboxName)
  {
    v15 = [v24 _nameForMailboxUid:*(&self->super.super.super.super.isa + *MEMORY[0x277D284E8])];
    _MFLockGlobalLock();
    if (!self->_mailboxName)
    {
      self->_mailboxName = v15;
    }

    _MFUnlockGlobalLock();
  }

  if (cachedConnection)
  {
    v16 = 1;
  }

  else
  {
    v16 = !v7;
  }

  if (v16)
  {
    v17 = v13 ^ 1;
    if (!cachedConnection)
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0 && self->_mailboxName && ![(MFIMAPConnection *)cachedConnection selectedMailbox])
    {
      [(MFLibraryIMAPStore *)self _selectMailbox:self->_mailboxName withConnection:cachedConnection];
    }

    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      mailboxName = self->_mailboxName;
      *buf = 138413058;
      v26 = mailboxName;
      if (v13)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v27 = 2048;
      v28 = cachedConnection;
      v29 = 2112;
      v30 = v20;
      v31 = 1024;
      v32 = v10 | a4;
      _os_log_impl(&dword_258B7A000, v18, OS_LOG_TYPE_INFO, "[FetchActivity] performOperationRequiringConnection: mailbox=%@ connection=%p cached=%@ options=%d", buf, 0x26u);
    }

    (*(a5 + 2))(a5, cachedConnection);
    if (cachedConnection)
    {
      if ((a4 & 4) != 0)
      {
        [(MFIMAPConnection *)cachedConnection mf_unlock];
      }

      v21 = (a4 & 0x20) != 0 && [*(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]) type] != 7;
      if (cachedConnection != self->_cachedConnection || v21)
      {
        [v24 checkInConnection:cachedConnection destroy:?];
      }
    }
  }

  result = cachedConnection != 0;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void *__94__MFLibraryIMAPStore_performBatchOperationWithUIDs_requiringConnection_withOptions_operation___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = [result count];
    if (result)
    {
      v3 = result;
      v4 = 0;
      v5 = 0;
      v6 = 500;
      do
      {
        if (v3 >= v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = v3;
        }

        if (v3 > 0x1F4)
        {
          v8 = [*(a1 + 32) subarrayWithRange:{v5, v7 + v4}];
        }

        else
        {
          v8 = *(a1 + 32);
        }

        if (!v8)
        {
          __94__MFLibraryIMAPStore_performBatchOperationWithUIDs_requiringConnection_withOptions_operation___block_invoke_cold_1();
        }

        result = (*(*(a1 + 48) + 16))();
        v5 += 500;
        v6 += 500;
        v4 -= 500;
      }

      while (v5 < v3);
    }
  }

  return result;
}

- (id)remoteIDsFromUniqueRemoteIDs:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__MFLibraryIMAPStore_remoteIDsFromUniqueRemoteIDs___block_invoke;
  v5[3] = &unk_2798B1E58;
  v5[4] = a3;
  v5[5] = &v6;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:17 operation:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __51__MFLibraryIMAPStore_remoteIDsFromUniqueRemoteIDs___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = a1;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(*(*(&v15 + 1) + 8 * v8), "unsignedLongLongValue")];
        if ([v3 count])
        {
          [v3 insertObject:@"OR" atIndex:0];
          [v3 insertObject:@"X-GM-MSGID" atIndex:1];
          [v3 insertObject:v9 atIndex:2];
        }

        else
        {
          [v3 addObject:@"X-GM-MSGID"];
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = 0;
  result = [MEMORY[0x277CBEB98] setWithArray:{objc_msgSend(a2, "searchIDSet:forTerms:success:", 0, v3, &v14)}];
  *(*(*(v13 + 40) + 8) + 40) = result;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)reselectMailbox
{
  if (self->_cachedConnection)
  {
    v3 = [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) _nameForMailboxUid:*(&self->super.super.super.super.isa + *MEMORY[0x277D284E8])];
    _MFLockGlobalLock();

    self->_mailboxName = v3;
    _MFUnlockGlobalLock();

    mailboxName = self->_mailboxName;
    cachedConnection = self->_cachedConnection;

    [(MFLibraryIMAPStore *)self _selectMailbox:mailboxName withConnection:cachedConnection];
  }
}

- (void)willRemoveDelegation:(id)a3
{
  [(NSLock *)self->_cachedConnectionLock lock];
  cachedConnection = self->_cachedConnection;
  if (cachedConnection)
  {
    v5 = cachedConnection == a3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    self->_cachedConnection = 0;
    [(NSLock *)self->_cachedConnectionLock unlock];
    [a3 finishIdle];
  }

  else
  {
    cachedConnectionLock = self->_cachedConnectionLock;

    [(NSLock *)cachedConnectionLock unlock];
  }
}

- (BOOL)_changedFlagsForMessage:(id)a3 fetchResponse:(id)a4 newFlags:(unint64_t *)a5
{
  v8 = [objc_msgSend(a4 fetchResultWithType:{10), "messageFlags"}];
  v9 = [a3 messageFlags];
  v10 = 887;
  if ((*(self + 144) & 1) == 0)
  {
    v10 = 119;
  }

  v11 = v8 & 0x1BFDDF703DFLL;
  v12 = v9 & v10 & 0x357;
  if ((v8 & 0x1BFDDF703DFLL) != v12)
  {
    *a5 = v9 & ~v10 & 0xFFFFFFFFFFFF0388 | v11;
  }

  return v11 != v12;
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4 forCommand:(id *)a5
{
  v5 = a5;
  v6 = a4;
  v44 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if ([a4 responseType] == 2 && (v5->var0 | 4) == 0xD)
    {
      var2 = v5->var2;
      if (var2)
      {
        *(self + 144) &= ~1u;
        *(self + 144) &= ~0x20u;
        *(self + 144) &= ~0x40u;
        *(self + 144) &= ~2u;
        *(self + 144) &= ~4u;
        *(self + 144) &= ~8u;
        *(self + 144) &= ~0x10u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = [var2 countByEnumeratingWithState:&v30 objects:v43 count:16];
        if (v9)
        {
          v10 = v9;
          v28 = v5;
          v29 = v6;
          v11 = 0;
          v12 = *v31;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(var2);
              }

              v14 = *(*(&v30 + 1) + 8 * i);
              if ([v14 responseType] == 2)
              {
                v15 = [v14 responseInfo];
                v16 = [v14 responseCode];
                if (v16 > 8)
                {
                  if (v16 == 9)
                  {
                    self->_serverUidNext = [v15 unsignedIntValue];
                  }

                  else if (v16 == 10)
                  {
                    v11 = [v15 unsignedIntValue];
                  }
                }

                else if (v16 == 5)
                {
                  if (v15)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v17 = [v15 indexOfObject:@"\\*"];
                      v18 = *(self + 144) & 0xFE;
                      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        ++v18;
                      }

                      *(self + 144) = v18;
                      *(self + 144) = *(self + 144) & 0xDF | (32 * ([v15 indexOfObject:@"Forwarded"] != 0x7FFFFFFFFFFFFFFFLL));
                      *(self + 144) = *(self + 144) & 0xBF | (([v15 indexOfObject:@"$Forwarded"] != 0x7FFFFFFFFFFFFFFFLL) << 6);
                      *(self + 144) = *(self + 144) & 0xFD | (2 * ([v15 indexOfObject:@"Junk"] != 0x7FFFFFFFFFFFFFFFLL));
                      *(self + 144) = *(self + 144) & 0xFB | (4 * ([v15 indexOfObject:@"$Junk"] != 0x7FFFFFFFFFFFFFFFLL));
                      *(self + 144) = *(self + 144) & 0xF7 | (8 * ([v15 indexOfObject:@"NotJunk"] != 0x7FFFFFFFFFFFFFFFLL));
                      *(self + 144) = *(self + 144) & 0xEF | (16 * ([v15 indexOfObject:@"$NotJunk"] != 0x7FFFFFFFFFFFFFFFLL));
                    }
                  }
                }

                else if (v16 == 6)
                {
                  *(&self->super.super.super.super.isa + *MEMORY[0x277D284E0]) |= 1u;
                }
              }
            }

            v10 = [var2 countByEnumeratingWithState:&v30 objects:v43 count:16];
          }

          while (v10);
          v5 = v28;
          v6 = v29;
          if (v11)
          {
            v19 = [objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]) userInfoObjectForKey:{@"UIDVALIDITY", "intValue"}];
            if (v19 != v11)
            {
              v20 = v19;
              [(MFLibraryIMAPStore *)self setMailboxUidValidity:v11];
              if (v20)
              {
                [(MFMailMessageStore *)self _flushAllMessageData];
                [(MFMailMessageStore *)self structureDidChange];
                v21 = MFLogGeneral();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  mailboxName = self->_mailboxName;
                  *buf = 138412802;
                  v38 = mailboxName;
                  v39 = 2048;
                  v40 = v20;
                  v41 = 2048;
                  v42 = v11;
                  _os_log_impl(&dword_258B7A000, v21, OS_LOG_TYPE_INFO, "Forcing reload of %@ because of UIDVALIDITY change (old:%lu new:%lu)", buf, 0x20u);
                }

                v23 = [-[MFLibraryStore library](self "library")];
                if ([v23 count])
                {
                  [-[MFLibraryStore library](self "library")];
                }
              }
            }
          }
        }
      }
    }
  }

  if ([v6 isAlertResponse])
  {
    [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) handleAlertResponse:{objc_msgSend(v6, "userString")}];
  }

  if ([v6 isResponseWithCode:31])
  {
    [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) handleOverQuotaResponse:{objc_msgSend(v6, "userString")}];
  }

  if (!v5 || v5->var0 == 28)
  {
    if ([(MFLibraryIMAPStore *)self shouldUseIDLE])
    {
      if ([v6 responseType] == 9)
      {
        -[MFLibraryIMAPStore setServerMessageCount:](self, "setServerMessageCount:", [v6 number]);
        if (*(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]))
        {
          v24 = *MEMORY[0x277D28350];
          v34 = *(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]);
          v35 = v24;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v26 = [MEMORY[0x277CCAB98] defaultCenter];
          [v26 postNotificationName:*MEMORY[0x277D28348] object:*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) userInfo:v25];
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_uidsForMessages:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v11 + 1) + 8 * v8) uid];
        [v4 addObject:EFStringWithInt()];
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_idleConditionsObservable
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D28488] sharedInstance];
  v4 = [v3 lowPowerModeObservable];
  v5 = [v3 pluggedInObservable];
  v6 = [objc_msgSend(MEMORY[0x277D28480] "sharedInstance")];
  v7 = [objc_msgSend(MEMORY[0x277D28438] "sharedInstance")];
  v8 = [MEMORY[0x277D28400] sharedInstance];
  v9 = [v8 appStateObservable];
  v20[0] = v8;
  v10 = [objc_msgSend(v9 startWith:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v20, 1)), "map:", &__block_literal_global_318}];
  objc_initWeak(&location, self);
  v19[0] = v4;
  v19[1] = v10;
  v19[2] = v7;
  v19[3] = v6;
  v19[4] = v5;
  v11 = [MEMORY[0x277D07180] combineLatest:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v19, 5)}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke_2;
  v16[3] = &unk_2798B2160;
  objc_copyWeak(&v17, &location);
  v12 = [v11 map:v16];
  v13 = [objc_msgSend(objc_msgSend(v12 "distinctUntilChanged")];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isForeground];

  return [v2 numberWithBool:v3];
}

uint64_t __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke_2(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [objc_msgSend(a2 objectAtIndexedSubscript:{0), "BOOLValue"}];
  v5 = [objc_msgSend(a2 objectAtIndexedSubscript:{1), "BOOLValue"}];
  v6 = [objc_msgSend(a2 objectAtIndexedSubscript:{2), "BOOLValue"}];
  v7 = [objc_msgSend(a2 objectAtIndexedSubscript:{3), "BOOLValue"}];
  v8 = [objc_msgSend(a2 objectAtIndexedSubscript:{4), "BOOLValue"}];
  v9 = [Weak account];
  [v9 uniqueIdForPersistentConnection];
  if (PCSettingsGetStyle() == 2)
  {
    v10 = v5 & (v4 ^ 1);
  }

  else
  {
    v13 = [v9 canReceiveNewMailNotifications];
    v14 = PCSettingsGetPollInterval() == -1;
    v10 = v5 & (v4 ^ 1);
    if ((v10 & 1) == 0 && (v14 & ~v13 & 1) == 0)
    {
      if (v7 & v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v6 | v4) ^ 1;
      }
    }
  }

  v11 = MEMORY[0x277CCABB0];

  return [v11 numberWithBool:v10 & 1];
}

void __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke_3_cold_1(a2, v3);
  }
}

- (id)_observeChangesInIdleConditions
{
  objc_initWeak(&location, self);
  v3 = [(MFLibraryIMAPStore *)self _idleConditionsObservable];
  v4 = MEMORY[0x277D07188];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__MFLibraryIMAPStore__observeChangesInIdleConditions__block_invoke;
  v11 = &unk_2798B21A8;
  objc_copyWeak(&v12, &location);
  v5 = [v4 observerWithResultBlock:&v8];
  v6 = [v3 subscribe:{v5, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  return v6;
}

uint64_t __53__MFLibraryIMAPStore__observeChangesInIdleConditions__block_invoke(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [a2 BOOLValue];

  return [Weak _scheduleIdleTransition:v4];
}

- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5
{
  var0 = a5->var0;
  v9 = [a4 responseType];
  v10 = 1;
  if (v9 <= 12)
  {
    if (v9 == 9)
    {
      v10 = (var0 & 0xFFFFFFFB) == 9;
      -[MFLibraryIMAPStore setServerMessageCount:](self, "setServerMessageCount:", [a4 number]);
      goto LABEL_25;
    }

    if (v9 != 10)
    {
      goto LABEL_25;
    }

    if ([a4 number] && a5->var0 == 1)
    {
      v10 = 0;
      *(self + 145) |= 8u;
      goto LABEL_25;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_25;
  }

  switch(v9)
  {
    case 13:
      v14 = [(MFMailMessageStore *)self account];
      v15 = [a4 mailboxName];
      v16 = [v14 _mailboxUidForName:v15];
      v17 = [a4 statusEntries];
      v18 = [v17 objectForKey:0x2869E4C80];
      if (v18)
      {
        v19 = v18;
        if ([v16 URLString])
        {
          v20 = [objc_msgSend(v16 userInfoObjectForKey:{0x2869E4C80), "intValue"}];
          if (v20 != [v19 unsignedIntValue])
          {
            [v16 setUserInfoObject:EFStringWithInt() forKey:0x2869E4C80];
          }
        }
      }

      if ([v15 isEqualToString:{-[MFLibraryIMAPStore mailboxName](self, "mailboxName")}])
      {
        v21 = [v17 objectForKey:0x2869E4CE0];
        if (v21)
        {
          -[MFLibraryIMAPStore setHighestModSequence:](self, "setHighestModSequence:", [v21 unsignedLongLongValue]);
        }
      }

      goto LABEL_23;
    case 24:
      goto LABEL_15;
    case 17:
      v11 = [a4 fetchResultWithType:8];
      if (v11)
      {
        if (a5->var0 == 21)
        {
          v12 = v11;
          fetchPipeline = self->_fetchPipeline;
          if (fetchPipeline && [(MFIMAPCommandPipeline *)fetchPipeline isSending])
          {
            -[MFIMAPDownloadCache handleFetchResponse:forUid:](self->_downloadCache, "handleFetchResponse:forUid:", a4, [v12 uid]);
          }

LABEL_23:
          v10 = 1;
        }
      }

      break;
  }

LABEL_25:
  if ([a4 isAlertResponse])
  {
    [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) handleAlertResponse:{objc_msgSend(a4, "userString")}];
    return 0;
  }

  return v10;
}

- (BOOL)hasValidCacheFileForMessage:(id)a3
{
  v5 = [a3 uid];
  if (![a3 hasTemporaryUid] || !v5)
  {
    return 0;
  }

  v6 = [objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) "offlineCacheDirectoryPath")];
  v7 = [MEMORY[0x277CCAA00] defaultManager];

  return [v7 fileExistsAtPath:v6];
}

- (id)addMessages:(id)a3 newMessagesByOldMessage:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [-[MFLibraryStore library](self "library")];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = MEMORY[0x277D284F8];
    v10 = MEMORY[0x277D284D8];
    v11 = MEMORY[0x277D284D0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([v13 messageFlags] & 2) != 0)
        {
          *(&self->super.super.super.super.isa + *v10) = (*(&self->super.super.super.super.isa + *v10) + [v13 messageSize]);
          ++*(&self->super.super.super.super.isa + *v11);
        }

        if (([v13 messageFlags] & 1) == 0)
        {
          ++*(&self->super.super.super.super.isa + *v9);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(MFMailMessageStore *)self messagesWereAdded:v5];
  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)deletedMessages
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = [MEMORY[0x277D28458] criterionForMailboxURL:{-[MFLibraryStore URLString](self, "URLString")}];
  v5[1] = [MEMORY[0x277D28458] messageIsDeletedCriterion:1];
  result = [-[MFLibraryStore library](self "library")];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = MFLibraryIMAPStore;
  [MFLibraryStore _handleFlagsChangedForMessages:sel__handleFlagsChangedForMessages_flags_oldFlagsByMessage_ flags:? oldFlagsByMessage:?];
  [(MFLibraryIMAPStore *)self mf_lock];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (!v9)
  {
    [(MFLibraryIMAPStore *)self mf_unlock];
    goto LABEL_19;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v21;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(a3);
      }

      v14 = *(*(&v20 + 1) + 8 * i);
      v15 = [objc_msgSend(a5 objectForKey:{v14), "intValue"}];
      if (a4)
      {
        v16 = MFMessageFlagsByApplyingDictionary();
        if ((v15 & 2) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v16 = [v14 messageFlags];
        if ((v15 & 2) == 0)
        {
LABEL_8:
          if ((v16 & 2) == 0)
          {
            continue;
          }

          v17 = 1;
          goto LABEL_13;
        }
      }

      if ((v16 & 2) != 0)
      {
        continue;
      }

      v17 = -1;
LABEL_13:
      self->_serverDeletedCount += v17;
      v11 = 1;
    }

    v10 = [a3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  }

  while (v10);
  [(MFLibraryIMAPStore *)self mf_unlock];
  if (v11)
  {
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", *MEMORY[0x277D28530], self, 0)}];
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setFlagsForMessages:(id)a3
{
  if (a3 && [a3 count])
  {
    v5 = [a3 keyEnumerator];
    v6 = 1;
    v7 = 1;
    while ([v5 nextObject])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      v7 &= isKindOfClass ^ 1;
      v6 &= isKindOfClass;
      if ((v9 & 1) == 0)
      {
        v10 = MFLogGeneral();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_258B7A000, v10, OS_LOG_TYPE_INFO, "[MFLibraryIMAPStore _setFlagsForMessages:] flagsByMessage contains mixed message types", buf, 2u);
        }

        v11 = [a3 keyEnumerator];
        v12 = [v11 nextObject];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = 0;
          do
          {
            v16 = [a3 objectForKey:v13];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (v15)
              {
                v17 = v15;
              }

              else
              {
                v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v15 = v17;
              }
            }

            else if (v14)
            {
              v17 = v14;
            }

            else
            {
              v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v14 = v17;
            }

            [v17 setObject:v16 forKey:v13];
            v13 = [v11 nextObject];
          }

          while (v13);
          if (!v15 && v14)
          {
            v18.receiver = self;
            v18.super_class = MFLibraryIMAPStore;
            [(MFMailMessageStore *)&v18 _setFlagsForMessages:v14];
            goto LABEL_27;
          }
        }

        else
        {
          v14 = 0;
LABEL_27:
          v15 = 0;
        }

        return;
      }
    }

    if ((v6 & 1) == 0)
    {
      v20.receiver = self;
      v20.super_class = MFLibraryIMAPStore;
      [(MFMailMessageStore *)&v20 _setFlagsForMessages:a3];
    }
  }
}

- (id)offlineCache
{
  v2 = [(MFMailMessageStore *)self account];

  return [v2 offlineCache];
}

- (id)offlineCacheIfOffline
{
  v2 = [(MFMailMessageStore *)self account];

  return [v2 offlineCacheIfOffline];
}

- (void)close
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = [MEMORY[0x277D28420] sharedInvocationQueue];
    v5 = [MEMORY[0x277D28478] mf_invocationWithSelector:a2 target:self];

    [v4 addInvocation:v5];
  }

  else
  {
    [(NSLock *)self->_cachedConnectionLock lock];
    v6 = self->_cachedConnection;
    [(NSLock *)self->_cachedConnectionLock unlock];
    if (v6)
    {
      [(MFIMAPConnection *)v6 finishIdle];
    }
  }
}

- (id)messageForRemoteID:(id)a3
{
  v5 = [(MFMailMessageStore *)self mailboxUid];

  return [(MFLibraryIMAPStore *)self messageForRemoteID:a3 inMailbox:v5];
}

- (id)messageForRemoteID:(id)a3 inMailbox:(id)a4
{
  v5 = [-[MFLibraryStore library](self "library")];
  [v5 setMessageStore:self];
  return v5;
}

- (id)uniqueRemoteIDsForMessages:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [v5 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", objc_msgSend(*(*(&v19 + 1) + 8 * v8++), "uid"))}];
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__MFLibraryIMAPStore_uniqueRemoteIDsForMessages___block_invoke;
  v12[3] = &unk_2798B21D0;
  v12[4] = v5;
  v12[5] = &v13;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v12];
  v9 = v14[5];
  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __49__MFLibraryIMAPStore_uniqueRemoteIDsForMessages___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 fetchUniqueRemoteIDsForUids:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setServerMessageCount:(unint64_t)a3
{
  v5 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (v5)
  {
    v6 = [v5 unsignedIntValue];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v7 = 300;
  }

  if (v7 <= a3)
  {
    *(&self->super.super.super.super.isa + *MEMORY[0x277D284B8]) = a3;
    self->_serverDeletedCount = 0;
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D28530] object:self userInfo:0];

    [v8 postNotification:v9];
  }

  else if ((*(self + 145) & 0x10) == 0)
  {
    *(self + 145) |= 0x10u;
    *(&self->super.super.super.super.isa + *MEMORY[0x277D284B8]) = a3;
    self->_serverDeletedCount = 0;
    if (([objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")] & 1) == 0)
    {
      v10 = [MEMORY[0x277D28420] sharedInvocationQueue];
      v11 = [MEMORY[0x277D28478] mf_invocationWithSelector:sel_updateDeletedCount target:self];

      [v10 addInvocation:v11];
    }
  }
}

- (unint64_t)serverMessageCount
{
  serverDeletedCount = self->_serverDeletedCount;
  v3 = *(&self->super.super.super.super.isa + *MEMORY[0x277D284B8]);
  v4 = v3 >= serverDeletedCount;
  v5 = v3 - serverDeletedCount;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (id)relativePath
{
  result = self->_relativePath;
  if (!result)
  {
    v4 = [-[MFMailMessageStore mailboxUid](self "mailboxUid")];
    _MFLockGlobalLock();
    if (!self->_relativePath)
    {
      self->_relativePath = v4;
    }

    _MFUnlockGlobalLock();
    return self->_relativePath;
  }

  return result;
}

- (id)sequenceIdentifierForUIDs:(id)a3
{
  v5 = [(MFLibraryStore *)self library];
  v6 = [(MFLibraryStore *)self URLString];

  return [v5 sequenceIdentifierForMessagesWithRemoteIDs:a3 inMailbox:v6];
}

- (void)setSequenceIdentifier:(id)a3 forUIDs:(id)a4
{
  v7 = [(MFLibraryStore *)self library];
  v8 = [(MFLibraryStore *)self URLString];

  [v7 setSequenceIdentifier:a3 forMessagesWithRemoteIDs:a4 inMailbox:v8];
}

- (void)setDownloadDelegate:(id)a3
{
  [(MFLibraryIMAPStore *)self mf_lock];
  if (self->_downloadDelegate != a3)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      a3 = 0;
    }

    self->_downloadDelegate = a3;
  }

  [(MFLibraryIMAPStore *)self mf_unlock];
}

- (void)connection:(id)a3 didBeginBodyLoad:(id)a4 section:(id)a5
{
  downloadDelegate = self->_downloadDelegate;
  if (downloadDelegate)
  {
    currentFetchUid = self->_currentFetchUid;
    if (currentFetchUid != -1)
    {
      [downloadDelegate libraryIMAPStore:self bodyDownloadBeganForUid:currentFetchUid data:a4 section:a5];
    }
  }
}

- (void)connection:(id)a3 didLoadMoreBodyData:(id)a4 section:(id)a5
{
  downloadDelegate = self->_downloadDelegate;
  if (downloadDelegate)
  {
    currentFetchUid = self->_currentFetchUid;
    if (currentFetchUid != -1)
    {
      [downloadDelegate libraryIMAPStore:self bodyDownloadReceivedMoreDataForUid:currentFetchUid data:a4 section:a5];
    }
  }
}

- (void)connection:(id)a3 didFinishLoadingBodyData:(id)a4 section:(id)a5
{
  downloadDelegate = self->_downloadDelegate;
  if (downloadDelegate)
  {
    currentFetchUid = self->_currentFetchUid;
    if (currentFetchUid != -1)
    {
      [downloadDelegate libraryIMAPStore:self bodyDownloadCompletedForUid:currentFetchUid data:a4 section:a5];
    }
  }
}

- (void)fetchNumMessages:(void *)a1 preservingUID:options:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [objc_msgSend(a1 "account")];
  OUTLINED_FUNCTION_1_4(&dword_258B7A000, v1, v2, "%@: Connecting... starting", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke_cold_4(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [objc_msgSend(*a1 "account")];
  OUTLINED_FUNCTION_1_4(&dword_258B7A000, v1, v2, "%@: Connecting... completed", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __94__MFLibraryIMAPStore_performBatchOperationWithUIDs_requiringConnection_withOptions_operation___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_4();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *v1;
  v4 = *v0;

  return [v2 handleFailureInMethod:v3 object:v4 file:@"LibraryIMAPStore.m" lineNumber:3623 description:@"We should never pass a batchUIDs that is nil (might be interpreted as all messages)"];
}

void __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke_3_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138543362;
  v5 = [a1 ef_publicDescription];
  _os_log_error_impl(&dword_258B7A000, a2, OS_LOG_TYPE_ERROR, "#imap-idle error occurred while observing conditions for IDLE: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end