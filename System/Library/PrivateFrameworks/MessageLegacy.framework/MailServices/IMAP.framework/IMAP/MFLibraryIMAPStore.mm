@interface MFLibraryIMAPStore
+ (void)setHandlerForTemporaryUidToRemoteIDMapping:(id)mapping;
- (BOOL)_changedFlagsForMessage:(id)message fetchResponse:(id)response newFlags:(unint64_t *)flags;
- (BOOL)_doUidCopy:(id *)copy toStore:(id)store newMessages:(id)messages;
- (BOOL)_fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer;
- (BOOL)_shouldContinueToPreservedUID:(unint64_t)d;
- (BOOL)canCompact;
- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id *)command;
- (BOOL)hasValidCacheFileForMessage:(id)message;
- (BOOL)performOperationRequiringConnection:(BOOL)connection withOptions:(int)options operation:(id)operation;
- (id)_dataForMessage:(id)message readHeadersOnly:(BOOL)only;
- (id)_downloadForMessageBodyData:(id)data;
- (id)_fetchFullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (id)_idleConditionsObservable;
- (id)_newSearchResponseQueueForConnection:(id)connection limit:(unsigned int)limit;
- (id)_observeChangesInIdleConditions;
- (id)_performBodyDataDownload:(id)download usingConnection:(id)connection isPartial:(BOOL *)partial;
- (id)_searchArgumentsForSynchronize;
- (id)_searchFlagsForUIDs:(id)ds usingConnection:(id)connection;
- (id)_uidsForMessages:(id)messages;
- (id)_updateLibraryForTransferedMessages:(id)messages toDestinationMailbox:(id)mailbox newMessageInfo:(id)info flagsToSet:(id)set;
- (id)addMessages:(id)messages newMessagesByOldMessage:(id)message;
- (id)deletedMessages;
- (id)mailboxName;
- (id)messageForRemoteID:(id)d;
- (id)messageForRemoteID:(id)d inMailbox:(id)mailbox;
- (id)messageIdRollCall:(id)call;
- (id)moveMessages:(id)messages toMailbox:(id)mailbox markAsRead:(BOOL)read;
- (id)newDictionaryForLocalFlags:(unint64_t)flags serverFlags:(unint64_t)serverFlags existingDictionary:(id)dictionary;
- (id)offlineCache;
- (id)offlineCacheIfOffline;
- (id)relativePath;
- (id)remoteIDsFromUniqueRemoteIDs:(id)ds;
- (id)sequenceIdentifierForUIDs:(id)ds;
- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages;
- (id)uniqueRemoteIDsForMessages:(id)messages;
- (id)willSetFlagsFromDictionary:(id)dictionary forMessages:(id)messages;
- (int64_t)fetchMessagesWithMessageIDs:(id)ds andSetFlags:(unint64_t)flags;
- (int64_t)fetchMessagesWithRemoteIDs:(id)ds andSetFlags:(unint64_t)flags;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (unint64_t)_doAppend:(id *)append;
- (unint64_t)_fetchMessagesWithArguments:(id)arguments idRange:(id)range onConnection:(id)connection synchronize:(BOOL)synchronize limit:(unint64_t)limit topUIDToCompact:(unint64_t)compact topKnownUID:(unint64_t)d success:(BOOL *)self0 examinedRange:(_NSRange *)self1 fetchableUIDsFound:(unint64_t *)self2 preserveUID:(unint64_t *)self3 numFetchedUIDs:(unint64_t *)self4;
- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set customIMAPFlagsToSet:(id)toSet;
- (unint64_t)fetchMessagesWithUIDs:(id)ds connection:(id)connection newCount:(unint64_t)count flagsToSet:(unint64_t)set queueClass:(Class)class;
- (unint64_t)growFetchWindow;
- (unint64_t)serverMessageCount;
- (unint64_t)syncMessagesWithUIDs:(id)ds connection:(id)connection libraryDetails:(id)details flagSearchResults:(id)results;
- (void)_fetchMessagesMatchingCriterion:(id)criterion limit:(unsigned int)limit withOptions:(int)options handler:(id)handler;
- (void)_fetchServerUnreadCountWithConnection:(id)connection;
- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)_performActionsOnConnection:(id)connection uidsToFetch:(id *)fetch uidsToSync:(id *)sync messagesToCompact:(id *)compact libraryDetails:(id)details flagSearchResults:(id)results shouldForce:(BOOL)force newUIDsToFetch:(unsigned int *)self0;
- (void)_setFlagsForMessages:(id)messages;
- (void)_setFlagsFromDictionary:(id)dictionary forMessages:(id)messages;
- (void)_synchronouslySetFlags:(id)flags clearFlags:(id)clearFlags forMessages:(id)messages originalChanges:(id)changes;
- (void)_updateSelectedUID:(unint64_t *)d;
- (void)_updateServerUnreadCount:(unint64_t)count;
- (void)addFlagChanges:(id)changes forMessages:(id)messages;
- (void)close;
- (void)connection:(id)connection didBeginBodyLoad:(id)load section:(id)section;
- (void)connection:(id)connection didFinishLoadingBodyData:(id)data section:(id)section;
- (void)connection:(id)connection didLoadMoreBodyData:(id)data section:(id)section;
- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id *)command;
- (void)dealloc;
- (void)doCompact;
- (void)focusedMessageDidChange:(id)change;
- (void)removeAllLocalMessages;
- (void)reselectMailbox;
- (void)setAdditionalFetchHeaders:(id)headers;
- (void)setAdditionalSynchronizationSearchArguments:(id)arguments;
- (void)setDownloadDelegate:(id)delegate;
- (void)setFlagsCancelled:(id)cancelled forMessages:(id)messages;
- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary;
- (void)setMailboxUidValidity:(unsigned int)validity;
- (void)setSequenceIdentifier:(id)identifier forUIDs:(id)ds;
- (void)setServerMessageCount:(unint64_t)count;
- (void)updateDeletedCountWithNotDeletedCount:(unint64_t)count;
- (void)updateServerUnreadCountClosingConnection:(BOOL)connection;
- (void)willRemoveDelegation:(id)delegation;
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

- (unint64_t)fetchMessagesWithUIDs:(id)ds connection:(id)connection newCount:(unint64_t)count flagsToSet:(unint64_t)set queueClass:(Class)class
{
  v12 = objc_alloc_init(class);
  v12[6] = self;
  v12[7] = connection;
  v12[8] = count;
  v12[10] = self->_highestModSequence;
  v12[11] = set;
  [connection sendSkeletonResponsesForUIDs:ds includeTo:1 toQueue:v12];
  [v12 flush];
  v13 = v12[9];

  return v13;
}

- (unint64_t)syncMessagesWithUIDs:(id)ds connection:(id)connection libraryDetails:(id)details flagSearchResults:(id)results
{
  v11 = objc_alloc_init(MFSyncResponseQueue);
  v11->super._url = [(MFLibraryStore *)self URLString];
  v11->super._store = self;
  v11->super._connection = connection;
  v11->super._libraryDetails = details;
  v11->super._shouldCompact = 0;
  v11->super._shouldFetch = 0;
  *(&v11->super._isSearching + 1) = 1;
  [connection sendUidAndFlagResponsesForUIDs:ds sequenceIdentifierProvider:self flagSearchResults:results toQueue:v11];
  [(MFBufferedQueue *)v11 flush];

  return 0;
}

- (void)_performActionsOnConnection:(id)connection uidsToFetch:(id *)fetch uidsToSync:(id *)sync messagesToCompact:(id *)compact libraryDetails:(id)details flagSearchResults:(id)results shouldForce:(BOOL)force newUIDsToFetch:(unsigned int *)self0
{
  v29 = *MEMORY[0x277D85DE8];
  v17 = [*fetch count];
  if (!force)
  {
    if (![*sync count])
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v17)
  {
    selfCopy = self;
    if (*toFetch)
    {
      [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
      v18 = *toFetch;
    }

    else
    {
      v18 = 0;
    }

    v19 = *fetch;
    v20 = objc_opt_class();
    v21 = v18;
    self = selfCopy;
    [(MFLibraryIMAPStore *)selfCopy fetchMessagesWithUIDs:v19 connection:connection newCount:v21 flagsToSet:0 queueClass:v20];
  }

  *fetch = 0;
  *toFetch = 0;
  if ([*sync count])
  {
    [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
LABEL_11:
    [(MFLibraryIMAPStore *)self syncMessagesWithUIDs:*sync connection:connection libraryDetails:details flagSearchResults:results];
  }

LABEL_12:

  *sync = 0;
  if (*compact || force)
  {
    v22 = [*compact count];
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

    *compact = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updateSelectedUID:(unint64_t *)d
{
  _MFLockGlobalLock();
  selectedUID = self->_selectedUID;
  if (selectedUID)
  {
    intValue = [(NSString *)selectedUID intValue];
    if (*d == intValue)
    {
      goto LABEL_6;
    }

    v7 = intValue;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *d = v7;
LABEL_6:

  _MFUnlockGlobalLock();
}

- (void)focusedMessageDidChange:(id)change
{
  object = [change object];
  mailbox = [object mailbox];
  _MFLockGlobalLock();
  if (object && mailbox == *(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]))
  {
    remoteID = [object remoteID];
    if (([(NSString *)self->_selectedUID isEqual:remoteID]& 1) == 0)
    {

      self->_selectedUID = remoteID;
    }
  }

  else
  {

    self->_selectedUID = 0;
  }

  _MFUnlockGlobalLock();
}

- (id)_searchFlagsForUIDs:(id)ds usingConnection:(id)connection
{
  array = [MEMORY[0x277CBEB18] array];
  unreadCount = [(MFLibraryStore *)self unreadCount];
  if ([ds count] >= 2 * unreadCount)
  {
    v9 = &unk_2869EBE28;
    v10 = 0;
  }

  else
  {
    v9 = &unk_2869EBE40;
    v10 = 1;
  }

  [array addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 1, v9, v10)}];
  [array addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 2, &unk_2869EBE58, 1)}];
  [array addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 16, &unk_2869EBE70, 1)}];
  [array addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 4, &unk_2869EBE88, 1)}];
  if ((*(self + 144) & 0x40) != 0)
  {
    [array addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 256, &unk_2869EBEA0, 1)}];
  }

  if ((*(self + 144) & 0x20) != 0)
  {
    [array addObject:{+[MFIMAPConnectionFlagSearchRequest requestWithMask:searchTerms:positiveMatch:](MFIMAPConnectionFlagSearchRequest, "requestWithMask:searchTerms:positiveMatch:", 256, &unk_2869EBEB8, 1)}];
  }

  v11 = [connection supportsCapability:16];
  v12 = [array count];
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

  if (v15 >= [ds count])
  {
    return 0;
  }

  return [connection searchUIDs:ds withFlagRequests:array];
}

- (unint64_t)_fetchMessagesWithArguments:(id)arguments idRange:(id)range onConnection:(id)connection synchronize:(BOOL)synchronize limit:(unint64_t)limit topUIDToCompact:(unint64_t)compact topKnownUID:(unint64_t)d success:(BOOL *)self0 examinedRange:(_NSRange *)self1 fetchableUIDsFound:(unint64_t *)self2 preserveUID:(unint64_t *)self3 numFetchedUIDs:(unint64_t *)self4
{
  synchronizeCopy = synchronize;
  successCopy3 = success;
  v118 = *MEMORY[0x277D85DE8];
  v91 = 0;
  v20 = [connection searchIDSet:range forTerms:arguments success:&v91];
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

  [(MFLibraryIMAPStore *)self _updateSelectedUID:iD];
  if (!v91 || (v24 = [v20 count]) == 0)
  {
    if (examinedRange)
    {
      v26 = 0;
      *examinedRange = xmmword_258BBFDF0;
      if (!success)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v26 = 0;
      if (!success)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    *successCopy3 = v91;
    goto LABEL_12;
  }

  v25 = v24;
  if (synchronizeCopy)
  {
    v79 = [(MFLibraryIMAPStore *)self _searchFlagsForUIDs:v20 usingConnection:connection];
  }

  else
  {
    v79 = 0;
  }

  if (found)
  {
    *found += v25;
  }

  v81 = v25;
  v74 = synchronizeCopy;
  v30 = [objc_msgSend(v20 objectAtIndex:{0), "unsignedIntegerValue"}];
  v31 = [objc_msgSend(v20 "lastObject")];
  compactCopy = compact;
  if (v31 <= compact)
  {
    compactCopy2 = compact;
  }

  else
  {
    compactCopy2 = v31;
  }

  v33 = compactCopy2 - v30;
  if (examinedRange)
  {
    examinedRange->location = v30;
    examinedRange->length = v33;
  }

  if (v33 + 1 > limit)
  {
    limitCopy = v33 + 1;
  }

  else
  {
    limitCopy = limit;
  }

  if (limitCopy >= 0x100)
  {
    v35 = 256;
  }

  else
  {
    v35 = limitCopy;
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
    rangeCopy = range;
    v40 = v37;
    uRLString = [(MFLibraryStore *)self URLString];
    selectedMailbox = [connection selectedMailbox];
    *buf = 138415106;
    v95 = uRLString;
    v37 = v40;
    v96 = 2112;
    v97 = selectedMailbox;
    v98 = 2112;
    v99 = rangeCopy;
    v100 = 2048;
    limitCopy2 = limit;
    v102 = 2048;
    v103 = compactCopy;
    v104 = 2048;
    dCopy = d;
    v106 = 2048;
    v107 = v81;
    v108 = 2048;
    v109 = v30;
    v110 = 2048;
    v111 = compactCopy2;
    v112 = 2048;
    v113 = v38;
    v114 = 2048;
    v115 = v89;
    v116 = 2048;
    v117 = v90;
    _os_log_impl(&dword_258B7A000, v39, OS_LOG_TYPE_INFO, "[FetchActivity] starting UID sync for %@ (selected mailbox: %@) idRange=%@ limit=%lu topUIDToCompact=%lu topKnownUID=%lu UIDCount=%lu lowUID=%lu highUID=%lu libraryDetailsIndex=%lu libraryDetailsUIDRange=%lu:%lu", buf, 0x7Au);
  }

  if (compactCopy2 < v30)
  {
    v26 = 0;
    v43 = 0;
    dsCopy2 = ds;
    successCopy3 = success;
    if (ds)
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
    if (compactCopy2 < v89)
    {
      LOBYTE(v73) = 0;
      [(MFLibraryIMAPStore *)self _performActionsOnConnection:connection uidsToFetch:&v87 uidsToSync:&v86 messagesToCompact:&v88 libraryDetails:v36 flagSearchResults:v79 shouldForce:v73 newUIDsToFetch:&v85];
      library = [(MFLibraryStore *)self library];
      v36 = [library getDetailsForMessages:v78 absoluteBottom:v30 topOfDesiredRange:v89 - 1 range:&v89 fromMailbox:{-[MFLibraryStore URLString](self, "URLString")}];
      v38 = [v36 count] - 1;
    }

    v47 = [objc_msgSend(v20 objectAtIndex:{v45), "intValue"}];
    v49 = *iD != 0x7FFFFFFFFFFFFFFFLL && compactCopy2 >= *iD;
    v50 = limit != 0 || v49;
    if (!limit && v49)
    {
      v51 = MFLogGeneral();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = *iD;
        *buf = 134217984;
        v95 = v52;
        _os_log_impl(&dword_258B7A000, v51, OS_LOG_TYPE_INFO, "[FetchActivity] preserving UID %lu!", buf, 0xCu);
      }
    }

    if (compactCopy2 == v47 && v50)
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
          if (compactCopy2 >= v53)
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

      if (v57 != compactCopy2)
      {
        if (!v87)
        {
          v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v62 = MFLogGeneral();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v95 = compactCopy2;
          _os_log_impl(&dword_258B7A000, v62, OS_LOG_TYPE_INFO, "[FetchActivity] Fetching %lu", buf, 0xCu);
        }

        v63 = [v20 objectAtIndex:v45];
        [v87 insertObject:v63 atIndex:0];
        if ([v63 intValue] > d)
        {
          ++v85;
          ++v77;
        }

        if (limit)
        {
          --limit;
        }

        else
        {
          limit = 0;
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
        v95 = compactCopy2;
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

      if (limit)
      {
        --limit;
      }

      else
      {
        limit = 0;
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

    if (v58 == compactCopy2)
    {
      if (!v88)
      {
        v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v64 = MFLogGeneral();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v95 = compactCopy2;
        _os_log_impl(&dword_258B7A000, v64, OS_LOG_TYPE_INFO, "[FetchActivity] Compacting %lu (2)", buf, 0xCu);
      }

      [v88 addObject:{objc_msgSend(v36, "objectAtIndex:", v38--)}];
    }

LABEL_101:
    v71 = compactCopy2 - 1;
    if (!compactCopy2)
    {
      break;
    }

    --compactCopy2;
  }

  while (v71 >= v30);
  successCopy3 = success;
  if (v75)
  {
    v72 = *MEMORY[0x277D28320];
    v92[0] = *MEMORY[0x277D28318];
    v92[1] = v72;
    v93[0] = MEMORY[0x277CBEC28];
    v93[1] = MEMORY[0x277CBEC28];
    -[MFLibraryStore setFlagsLocallyFromDictionary:forMessages:](self, "setFlagsLocallyFromDictionary:forMessages:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2], v75);
  }

  dsCopy2 = ds;
  v26 = v82;
  v43 = v77;
  if (ds)
  {
LABEL_106:
    *dsCopy2 = v43;
  }

LABEL_107:
  LOBYTE(v73) = 1;
  [(MFLibraryIMAPStore *)self _performActionsOnConnection:connection uidsToFetch:&v87 uidsToSync:&v86 messagesToCompact:&v88 libraryDetails:v36 flagSearchResults:v79 shouldForce:v73 newUIDsToFetch:&v85];
  if (successCopy3)
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

- (void)updateDeletedCountWithNotDeletedCount:(unint64_t)count
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__MFLibraryIMAPStore_updateDeletedCountWithNotDeletedCount___block_invoke;
  v5[3] = &unk_2798B1DB8;
  v5[4] = self;
  v5[5] = count;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v5];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", *MEMORY[0x277D28530], self, 0)}];
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

- (BOOL)_shouldContinueToPreservedUID:(unint64_t)d
{
  v3 = [(MFLibraryIMAPStore *)self messageForRemoteID:EFStringWithUnsignedInteger()];
  if (v3)
  {
    LOBYTE(v3) = ([v3 messageFlags] & 0x80) == 0;
  }

  return v3;
}

- (void)setAdditionalFetchHeaders:(id)headers
{
  _MFLockGlobalLock();
  additionalFetchHeaders = self->_additionalFetchHeaders;
  if (additionalFetchHeaders != headers)
  {

    self->_additionalFetchHeaders = [headers copy];
  }

  _MFUnlockGlobalLock();
}

- (void)setAdditionalSynchronizationSearchArguments:(id)arguments
{
  _MFLockGlobalLock();
  additionalSynchronizationSearchArguments = self->_additionalSynchronizationSearchArguments;
  if (additionalSynchronizationSearchArguments != arguments)
  {

    self->_additionalSynchronizationSearchArguments = [arguments copy];
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

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
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
  if ((options & 0x40) != 0)
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
  v14[5] = d;
  v14[9] = messages;
  v14[10] = options;
  v14[6] = mailboxUid;
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

- (void)updateServerUnreadCountClosingConnection:(BOOL)connection
{
  if (connection)
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

- (void)_fetchServerUnreadCountWithConnection:(id)connection
{
  v19 = 0;
  if ([-[MFLibraryStore library](self "library")] && (v5 = objc_msgSend(-[MFLibraryStore library](self, "library"), "minimumRemoteIDForMailbox:", -[MFLibraryStore URLString](self, "URLString")), v5 >= 2))
  {
    v6 = [connection messageSetForRange:((v5 - 1) << 32) | 1];
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
    v17 = [connection countForSearchOfUidSet:v6 forTerms:v9 success:&v19];

    if (v19 != 1)
    {
      goto LABEL_7;
    }

    selfCopy2 = self;
    v11 = v17;
  }

  else
  {
    selfCopy2 = self;
    v11 = 0;
  }

  [(MFLibraryIMAPStore *)selfCopy2 _updateServerUnreadCount:v11];
LABEL_7:
  if (([-[MFLibraryStore mailbox](self "mailbox")] & 1) == 0)
  {
    v12 = [connection countForSearchOfUidSet:0x2869E37A0 forTerms:&unk_2869EBF00 success:&v19];
    if (v19 == 1)
    {
      v13 = v12;
      uRLString = [(MFLibraryStore *)self URLString];
      if (uRLString)
      {
        [-[MFLibraryStore library](self "library")];
      }
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D283B8] object:{-[MFMailMessageStore mailboxUid](self, "mailboxUid")}];
}

- (void)_updateServerUnreadCount:(unint64_t)count
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];

  [library setServerUnreadOnlyOnServerCount:count forMailbox:uRLString];
}

- (id)_newSearchResponseQueueForConnection:(id)connection limit:(unsigned int)limit
{
  v7 = objc_alloc_init(MFSearchResponseQueue);
  v7->limit = limit;
  v7->super._url = [(MFLibraryStore *)self URLString];
  v7->super._store = self;
  v7->super._connection = connection;
  v7->super._shouldCompact = 0;
  v7->super._shouldFetch = 1;
  v7->super._isSearching = 1;
  return v7;
}

- (void)_fetchMessagesMatchingCriterion:(id)criterion limit:(unsigned int)limit withOptions:(int)options handler:(id)handler
{
  v19[2] = *MEMORY[0x277D85DE8];
  v19[0] = criterion;
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
  v13[6] = handler;
  v13[7] = &v15;
  v13[4] = v11;
  v13[5] = self;
  limitCopy = limit;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:options | 1u operation:v13];
  if ((v16[3] & 1) == 0)
  {
    (*(handler + 2))(handler, 0x7FFFFFFFFFFFFFFFLL, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"LibraryIMAPStoreErrorDomain" code:2 userInfo:0]);
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

- (id)messageIdRollCall:(id)call
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
  v5[4] = call;
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

- (int64_t)fetchMessagesWithMessageIDs:(id)ds andSetFlags:(unint64_t)flags
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  if ([ds count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__MFLibraryIMAPStore_fetchMessagesWithMessageIDs_andSetFlags___block_invoke;
    v9[3] = &unk_2798B1ED0;
    v9[4] = ds;
    v9[5] = self;
    v9[6] = &v10;
    v9[7] = flags;
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

- (int64_t)fetchMessagesWithRemoteIDs:(id)ds andSetFlags:(unint64_t)flags
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  if ([ds count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__MFLibraryIMAPStore_fetchMessagesWithRemoteIDs_andSetFlags___block_invoke;
    v9[3] = &unk_2798B1EF8;
    v9[4] = self;
    v9[5] = ds;
    v9[6] = &v10;
    v9[7] = flags;
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

- (void)setMailboxUidValidity:(unsigned int)validity
{
  v3 = *(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]);
  v4 = EFStringWithInt();

  [v3 setUserInfoObject:v4 forKey:@"UIDVALIDITY"];
}

- (BOOL)canCompact
{
  v6.receiver = self;
  v6.super_class = MFLibraryIMAPStore;
  canCompact = [(MFLibraryStore *)&v6 canCompact];
  if (canCompact)
  {
    if (*(&self->super.super.super.super.isa + *MEMORY[0x277D284F0]) == 3)
    {
      v4 = *MEMORY[0x277D284C8];
      if ([*(&self->super.super.super.super.isa + v4) isOffline])
      {
        LOBYTE(canCompact) = 1;
      }

      else
      {
        LOBYTE(canCompact) = [*(&self->super.super.super.super.isa + v4) isOffline] ^ 1;
      }
    }

    else
    {
      LOBYTE(canCompact) = 0;
    }
  }

  return canCompact;
}

- (void)doCompact
{
  v10.receiver = self;
  v10.super_class = MFLibraryIMAPStore;
  [(MFLibraryStore *)&v10 doCompact];
  offlineCacheIfOffline = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
  if (offlineCacheIfOffline)
  {
    v4 = offlineCacheIfOffline;
    deletedMessages = [(MFLibraryIMAPStore *)self deletedMessages];
    v6 = [deletedMessages count];
    if (v6)
    {
      v7 = v6 - 1;
      do
      {
        v8 = [deletedMessages objectAtIndex:v7];
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

+ (void)setHandlerForTemporaryUidToRemoteIDMapping:(id)mapping
{
  if (__remoteIDHandlerPred != -1)
  {
    +[MFLibraryIMAPStore setHandlerForTemporaryUidToRemoteIDMapping:];
  }

  if (__remoteIDHandler)
  {
    _Block_release(__remoteIDHandler);
  }

  __remoteIDHandler = _Block_copy(mapping);
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

- (BOOL)_doUidCopy:(id *)copy toStore:(id)store newMessages:(id)messages
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__1;
  var2 = copy->var2;
  v42 = __Block_byref_object_dispose__1;
  v43 = var2;
  mailboxName = [store mailboxName];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  offlineCacheIfOffline = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__1;
  var1 = copy->var1;
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
  v24[4] = mailboxName;
  v24[5] = messages;
  v24[8] = &v44;
  v24[9] = v25;
  v24[10] = &v32;
  v24[11] = &v26;
  v24[12] = &v38;
  v24[6] = self;
  v24[7] = store;
  [(MFLibraryIMAPStore *)self performBatchOperationWithUIDs:v12 requiringConnection:0 withOptions:17 operation:v24];
  _Block_object_dispose(v25, 8);
  if (v33[5])
  {
LABEL_3:
    v13 = [v27[5] count];
    v14 = [v33[5] firstUidForCopyingMessages:v27[5] fromMailbox:-[MFLibraryIMAPStore mailboxName](self toMailbox:{"mailboxName"), mailboxName}];
    for (i = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:v13]; v13; --v13)
    {
      v16 = [objc_opt_class() copyRemoteIDForTemporaryUid:v14];
      [i addObject:v16];

      v14 = (v14 + 1);
    }

    library = [(MFLibraryStore *)self library];
    v18 = v27[5];
    mailboxUid = [store mailboxUid];
    LOBYTE(v23) = 1;
    v20 = [library duplicateMessages:v18 newRemoteIDs:i forMailbox:mailboxUid setFlags:0x100000000 clearFlags:0 messageFlagsForMessages:v39[5] createNewCacheFiles:v23];
    *(v45 + 24) = 1;
    if (messages && v20)
    {
      [messages addEntriesFromDictionary:v20];
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

- (unint64_t)_doAppend:(id *)append
{
  var1 = append->var1;
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
  account = [append->var0 account];
  if (account == *(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CBEB38]);
    v9 = [v8 initWithCapacity:v34[3]];
    if ([append->var0 _doUidCopy:append toStore:self newMessages:v9])
    {
      v10 = 1;
      append->var4 = 1;
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
            ++append->var9;
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
            _addIDForAppendedMessage([v13 uid], objc_msgSend(v13, "hasTemporaryUid"), append->var7);
          }

          v11 = v38[3] + 1;
          v38[3] = v11;
        }

        while (v11 < v34[3]);
      }
    }

    else
    {
      [append->var6 addObjectsFromArray:var1];
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
    currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3052000000;
    v22 = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    offlineCacheIfOffline = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __32__MFLibraryIMAPStore__doAppend___block_invoke;
    v18[3] = &unk_2798B1F90;
    v18[8] = &v41;
    v18[9] = &v37;
    v18[4] = self;
    v18[5] = var1;
    v18[6] = currentMonitor;
    v18[7] = &v19;
    v18[10] = &v33;
    v18[11] = &v27;
    v18[12] = v25;
    v18[13] = append;
    [(MFLibraryIMAPStore *)self performOperationRequiringConnection:0 withOptions:1 operation:v18];

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(v25, 8);
  }

  if (v28[5])
  {
    [append->var8 addObjectsFromArray:?];
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

- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set customIMAPFlagsToSet:(id)toSet
{
  v15 = [messages count];
  if (![(MFLibraryIMAPStore *)self allowsAppend])
  {
    [ones replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(ones, "count"), messages}];
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
  onesCopy = ones;
  dsCopy = ds;
  newMessagesCopy = newMessages;
  v32 = 0;
  do
  {
    v18 = [objc_msgSend(messages objectAtIndex:{v16, v26, v27, v28), "messageStore"}];
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
        *(&v26 + 1) = [messages subarrayWithRange:{v17, v16 - v17}];
        if (set)
        {
          v20 = [set subarrayWithRange:{v17, v16 - v17}];
        }

        else
        {
          v20 = 0;
        }

        *&v27 = v20;
        if (toSet)
        {
          v22 = [toSet subarrayWithRange:{v17, v16 - v17}];
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
        *(&v26 + 1) = [messages subarrayWithRange:{v17, v15 - v17}];
        v24 = v17;
        v15 -= v17;
      }

      else
      {
        *(&v26 + 1) = messages;
        if (set)
        {
LABEL_27:
          *&v27 = set;
          if (!toSet || v17)
          {
            toSet = [toSet subarrayWithRange:{v17, v23, v26}];
          }

          *(&v27 + 1) = toSet;
          v21 = [(MFLibraryIMAPStore *)self _doAppend:&v26];
          *&v26 = 0;
          goto LABEL_31;
        }

        v24 = 0;
      }

      set = [set subarrayWithRange:{v24, v15, v26}];
      goto LABEL_27;
    }

    [ones replaceObjectsInRange:objc_msgSend(ones withObjectsFromArray:"count") range:{0, messages, v17, v15 - v17}];
  }

LABEL_31:
  if (*(&v28 + 1))
  {
  }

  return v21;
}

- (id)_updateLibraryForTransferedMessages:(id)messages toDestinationMailbox:(id)mailbox newMessageInfo:(id)info flagsToSet:(id)set
{
  v91 = *MEMORY[0x277D85DE8];
  store = [mailbox store];
  uRLString = [store URLString];
  v11 = [objc_msgSend(info objectForKeyedSubscript:{@"UIDVALIDITY", "unsignedIntValue"}];
  mailboxCopy = mailbox;
  v12 = [objc_msgSend(mailbox userInfoObjectForKey:{@"UIDVALIDITY", "intValue"}];
  v13 = [info objectForKey:@"Source UIDS"];
  v14 = [info objectForKey:@"Destination UIDS"];
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
        [store setMailboxUidValidity:v11];
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
    selfCopy2 = self;
    if (!v38)
    {
      v39 = CFStringGetCStringPtr(v14, 0x600u);
    }

    *&v68 = v39;
    *(&v69 + 1) = 0;
    v70 = 0uLL;
    v71 = v37;
    v40 = IMAPNextUidFromSet(buffer);
    setCopy2 = set;
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
        v42 = [messages ef_firstObjectPassingTest:v57];
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
  v22 = [messages countByEnumeratingWithState:&v53 objects:v90 count:16];
  selfCopy2 = self;
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
          objc_enumerationMutation(messages);
        }

        messageIDHeader = [*(*(&v53 + 1) + 8 * i) messageIDHeader];
        if (messageIDHeader)
        {
          [v21 addObject:messageIDHeader];
        }
      }

      v24 = [messages countByEnumeratingWithState:&v53 objects:v90 count:16];
    }

    while (v24);
  }

  v28 = _uidSearchForMessageIds(store, [-[MFLibraryStore library](self "library")] + 1, v21);
  v29 = [v28 count];
  v30 = [messages count];
  if (v29 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v29;
  }

  setCopy2 = set;
  if (v31)
  {
    for (j = 0; j != v31; ++j)
    {
      if ([objc_msgSend(v28 objectAtIndex:{j), "unsignedIntValue"}])
      {
        [v15 addObject:{objc_msgSend(messages, "objectAtIndex:", j)}];
        [v16 addObject:EFStringWithInt()];
      }
    }
  }

LABEL_48:
  v43 = [setCopy2 count];
  if (v43 == [v15 count])
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __105__MFLibraryIMAPStore__updateLibraryForTransferedMessages_toDestinationMailbox_newMessageInfo_flagsToSet___block_invoke_2;
    v52[3] = &unk_2798B1FD8;
    v52[4] = messages;
    v52[5] = setCopy2;
    v44 = [v15 ef_map:v52];
  }

  else
  {
    v44 = 0;
  }

  if ([v15 count])
  {
    LOBYTE(v48) = 1;
    v45 = [-[MFLibraryStore library](selfCopy2 "library")];
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

- (id)moveMessages:(id)messages toMailbox:(id)mailbox markAsRead:(BOOL)read
{
  readCopy = read;
  v32[1] = *MEMORY[0x277D85DE8];
  if (!messages)
  {
    [MFLibraryIMAPStore moveMessages:toMailbox:markAsRead:];
  }

  if (!mailbox)
  {
    [MFLibraryIMAPStore moveMessages:toMailbox:markAsRead:];
  }

  account = [mailbox account];
  if (account == [(MFMailMessageStore *)self account])
  {
    v31 = *MEMORY[0x277D283C8];
    v32[0] = @"YES";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v15 = [(MFLibraryIMAPStore *)self _uidsForMessages:messages];
    if (readCopy && [messages count])
    {
      [(MFLibraryIMAPStore *)self setFlagsFromDictionary:v14 forMessages:messages];
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
    v26[4] = messages;
    v26[5] = mailbox;
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
    v11 = [objc_alloc(MEMORY[0x277D28468]) initWithResultCode:0 failedMessages:messages transferedMessage:0];
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

- (id)newDictionaryForLocalFlags:(unint64_t)flags serverFlags:(unint64_t)serverFlags existingDictionary:(id)dictionary
{
  flagsCopy = flags;
  if ((((flags & 1) == 0) ^ serverFlags))
  {
    v9 = 0;
  }

  else
  {
    v10 = *MEMORY[0x277D283C8];
    if (dictionary)
    {
      dictionaryCopy = dictionary;
    }

    else
    {
      dictionaryCopy = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v9 = dictionaryCopy;
    if (serverFlags)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [dictionaryCopy setObject:v12 forKey:v10];
  }

  if (((flagsCopy & 2) == 0) == ((serverFlags >> 1) & 1))
  {
    v13 = *MEMORY[0x277D283C0];
    if (!v9)
    {
      if (dictionary)
      {
        dictionaryCopy2 = dictionary;
      }

      else
      {
        dictionaryCopy2 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v9 = dictionaryCopy2;
    }

    if ((serverFlags & 2) != 0)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    [v9 setObject:v15 forKey:v13];
  }

  if (((flagsCopy & 0x10) == 0) == ((serverFlags >> 4) & 1))
  {
    v16 = *MEMORY[0x277D28300];
    if (!v9)
    {
      if (dictionary)
      {
        dictionaryCopy3 = dictionary;
      }

      else
      {
        dictionaryCopy3 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v9 = dictionaryCopy3;
    }

    if ((serverFlags & 0x10) != 0)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    [v9 setObject:v18 forKey:v16];
  }

  if (((flagsCopy & 4) == 0) == ((serverFlags >> 2) & 1))
  {
    v19 = *MEMORY[0x277D283D8];
    if (!v9)
    {
      if (dictionary)
      {
        dictionaryCopy4 = dictionary;
      }

      else
      {
        dictionaryCopy4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v9 = dictionaryCopy4;
    }

    if ((serverFlags & 4) != 0)
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
    if (((flagsCopy & 0x100) == 0) == ((serverFlags >> 8) & 1))
    {
      v23 = *MEMORY[0x277D283D0];
      if (!v9)
      {
        if (dictionary)
        {
          dictionaryCopy5 = dictionary;
        }

        else
        {
          dictionaryCopy5 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v9 = dictionaryCopy5;
      }

      if ((serverFlags & 0x100) != 0)
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

    if ((v22 & 1) != 0 && ((flagsCopy & 0x200) == 0) == ((serverFlags >> 9) & 1))
    {
      v26 = *MEMORY[0x277D28328];
      if (!v9)
      {
        if (dictionary)
        {
          dictionaryCopy6 = dictionary;
        }

        else
        {
          dictionaryCopy6 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v9 = dictionaryCopy6;
      }

      if ((serverFlags & 0x200) != 0)
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

- (void)_synchronouslySetFlags:(id)flags clearFlags:(id)clearFlags forMessages:(id)messages originalChanges:(id)changes
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = __Block_byref_object_copy__1;
  v41 = __Block_byref_object_dispose__1;
  offlineCacheIfOffline = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
  flagsCopy = flags;
  v9 = MFMessageFlagsFromArray(flags);
  v10 = [messages count];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v21 = (v9 >> 1) & 1;
    v24 = flags == 0;
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
      v32 = clearFlags == 0;
      messagesCopy = messages;
      if ([messages count] >= 0x1F5)
      {
        messagesCopy = [messages subarrayWithRange:{v12, v14 + v11}];
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
      v27[3] = messagesCopy;
      v27[4] = flagsCopy;
      v27[5] = clearFlags;
      v28 = v21;
      v27[8] = &v29;
      v27[9] = &v37;
      v27[7] = &v33;
      v27[6] = changes;
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
            v18 = flagsCopy;
          }

          if (*(v30 + 24))
          {
            clearFlagsCopy = 0;
          }

          else
          {
            clearFlagsCopy = clearFlags;
          }

          [v17 setFlags:v18 andClearFlags:clearFlagsCopy forMessages:messagesCopy];
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

- (void)_setFlagsFromDictionary:(id)dictionary forMessages:(id)messages
{
  if ([messages count])
  {
    v7 = 0;
    v8 = 0;
    if (_flagsToSetAndClearFromDictionary(self, dictionary, &v8, &v7))
    {
      [(MFLibraryIMAPStore *)self _synchronouslySetFlags:v8 clearFlags:v7 forMessages:messages originalChanges:dictionary];
    }
  }
}

- (void)addFlagChanges:(id)changes forMessages:(id)messages
{
  v17 = *MEMORY[0x277D85DE8];
  if (changes)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [messages countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(messages);
          }

          [-[MFMailMessageStore account](self "account")];
        }

        while (v8 != v10);
        v8 = [messages countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages
{
  v37 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  [(MFLibraryIMAPStore *)self relativePath];
  [objc_msgSend(-[MFMailMessageStore account](self "account")];
  selfCopy = self;
  [(MFLibraryIMAPStore *)self addFlagChanges:dictionary forMessages:messages];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [messages countByEnumeratingWithState:&v31 objects:v36 count:16];
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
        objc_enumerationMutation(messages);
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

    v9 = [messages countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v9);
LABEL_18:
  v30.receiver = selfCopy;
  v30.super_class = MFLibraryIMAPStore;
  [array addObjectsFromArray:{-[MFLibraryStore setFlagsFromDictionary:forMessages:](&v30, sel_setFlagsFromDictionary_forMessages_, dictionary, v10)}];
  [objc_msgSend(-[MFMailMessageStore account](selfCopy "account")];
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
        messageFlags = [v20 messageFlags];
        v22 = MFMessageFlagsByApplyingDictionary();
        if (v22 != messageFlags)
        {
          [v20 setMessageFlags:v22];
          [array addObject:v20];
        }
      }

      v17 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v17);
  }

  [(MFLibraryIMAPStore *)selfCopy _setFlagsFromDictionary:dictionary forMessages:messages];
  v23 = *MEMORY[0x277D85DE8];
  return array;
}

- (id)willSetFlagsFromDictionary:(id)dictionary forMessages:(id)messages
{
  [objc_msgSend(-[MFMailMessageStore account](self "account")];
  [(MFLibraryIMAPStore *)self addFlagChanges:dictionary forMessages:messages];
  v9.receiver = self;
  v9.super_class = MFLibraryIMAPStore;
  v7 = [(MFLibraryStore *)&v9 setFlagsFromDictionary:dictionary forMessages:messages];
  [objc_msgSend(-[MFMailMessageStore account](self "account")];
  return v7;
}

- (void)setFlagsCancelled:(id)cancelled forMessages:(id)messages
{
  account = [(MFMailMessageStore *)self account];

  [account removeFlagChanges:cancelled forMessages:messages];
}

- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = MFLibraryIMAPStore;
  [(MFLibraryStore *)&v6 setFlagsForAllMessagesFromDictionary:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__MFLibraryIMAPStore_setFlagsForAllMessagesFromDictionary___block_invoke;
  v5[3] = &unk_2798B2050;
  v5[4] = self;
  v5[5] = dictionary;
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

- (id)_dataForMessage:(id)message readHeadersOnly:(BOOL)only
{
  onlyCopy = only;
  v7 = [message uid];
  if ([message hasTemporaryUid])
  {
    messageData = [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) _dataForTemporaryUid:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    messageData = [message messageData];
  }

  v9 = messageData;
  if (!onlyCopy || !messageData)
  {
    return v9;
  }

  mf_rangeOfRFC822HeaderData = [messageData mf_rangeOfRFC822HeaderData];
  if (mf_rangeOfRFC822HeaderData == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_258B7A000, v12, OS_LOG_TYPE_INFO, "[MFLibraryIMAPStore _dataForMessage:] bad message data", v14, 2u);
    }

    return 0;
  }

  return [v9 mf_subdataWithRange:{mf_rangeOfRFC822HeaderData, v11}];
}

- (BOOL)_fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer
{
  length = range.length;
  location = range.location;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (([@"multipart" isEqualToString:{objc_msgSend(part, "type")}] & 1) == 0)
  {
    [part range];
    v15 = v14;
    v16 = [objc_msgSend(part "mimeBody")];
    partNumber = [part partNumber];
    if (v15)
    {
      if (v16)
      {
        v18 = partNumber;
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([&stru_2869E1DA0 isEqualToString:v18] & 1) == 0)
        {
          fetchLimits = [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) fetchLimits];
          [part range];
          v26 = v20;
          fetchMinBytes = [fetchLimits fetchMinBytes];
          v22 = 0x7FFFFFFFFFFFFFFFLL;
          if (fetchMinBytes != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (location || length != v26)
            {
              if (length != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (location >= v26)
                {
                  location = v26;
                }

                fetchMinBytes2 = [fetchLimits fetchMinBytes];
                minBytesLeft = [fetchLimits minBytesLeft];
                v24 = fetchMinBytes2;
                v22 = v26 - location;
                if (length > fetchMinBytes2)
                {
                  v24 = length;
                }

                if (v22 < v24)
                {
                  v24 = v26 - location;
                }

                if (v26 - location - v24 >= minBytesLeft)
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
          v27[7] = consumer;
          v27[8] = part;
          v27[9] = &v28;
          v27[12] = v15;
          v27[13] = complete;
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

- (id)_fetchFullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
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
  v20[4] = message;
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
      [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:v18];

      if (download)
      {
        *download = 1;
      }
    }

    v10 = v28;
    if (available)
    {
      *available = [v28[5] mf_subdataWithRange:{v12, v14}];
      v10 = v28;
    }
  }

  else
  {
    v16 = 0;
  }

  if (!v10[5])
  {
    _compactMessageIfNoData(self, v22[5], message);
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

- (id)_downloadForMessageBodyData:(id)data
{
  v4 = [(MFIMAPDownloadCache *)self->_downloadCache downloadForMessage:data];
  [v4 setAllowsPartialDownloads:{objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]), "allowsPartialDownloads")}];
  [v4 setFetchBodyData:1];
  return v4;
}

- (id)_performBodyDataDownload:(id)download usingConnection:(id)connection isPartial:(BOOL *)partial
{
  partial = [download partial];
  if (_waitForDataFromDownload(self, download, [download uid], connection))
  {
    data = [download data];
    partial = [download partial];
    if (!partial)
    {
      return data;
    }

    goto LABEL_5;
  }

  data = 0;
  if (partial)
  {
LABEL_5:
    *partial = partial;
  }

  return data;
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

- (BOOL)performOperationRequiringConnection:(BOOL)connection withOptions:(int)options operation:(id)operation
{
  connectionCopy = connection;
  v33 = *MEMORY[0x277D85DE8];
  v9 = *(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]);
  v10 = 2 * (*(&self->super.super.super.super.isa + *MEMORY[0x277D284E0]) & 1);
  [(NSLock *)self->_cachedConnectionLock lock];
  cachedConnection = self->_cachedConnection;
  if ((options & 4) != 0)
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
  if ((options & 0x10) != 0 && cachedConnection)
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

  if ((options & 4) != 0)
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
  cachedConnection = [v9 connectionForStore:self delegate:self options:v10 | options];
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
    v16 = !connectionCopy;
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
      v32 = v10 | options;
      _os_log_impl(&dword_258B7A000, v18, OS_LOG_TYPE_INFO, "[FetchActivity] performOperationRequiringConnection: mailbox=%@ connection=%p cached=%@ options=%d", buf, 0x26u);
    }

    (*(operation + 2))(operation, cachedConnection);
    if (cachedConnection)
    {
      if ((options & 4) != 0)
      {
        [(MFIMAPConnection *)cachedConnection mf_unlock];
      }

      v21 = (options & 0x20) != 0 && [*(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]) type] != 7;
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

- (id)remoteIDsFromUniqueRemoteIDs:(id)ds
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
  v5[4] = ds;
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

- (void)willRemoveDelegation:(id)delegation
{
  [(NSLock *)self->_cachedConnectionLock lock];
  cachedConnection = self->_cachedConnection;
  if (cachedConnection)
  {
    v5 = cachedConnection == delegation;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    self->_cachedConnection = 0;
    [(NSLock *)self->_cachedConnectionLock unlock];
    [delegation finishIdle];
  }

  else
  {
    cachedConnectionLock = self->_cachedConnectionLock;

    [(NSLock *)cachedConnectionLock unlock];
  }
}

- (BOOL)_changedFlagsForMessage:(id)message fetchResponse:(id)response newFlags:(unint64_t *)flags
{
  v8 = [objc_msgSend(response fetchResultWithType:{10), "messageFlags"}];
  messageFlags = [message messageFlags];
  v10 = 887;
  if ((*(self + 144) & 1) == 0)
  {
    v10 = 119;
  }

  v11 = v8 & 0x1BFDDF703DFLL;
  v12 = messageFlags & v10 & 0x357;
  if ((v8 & 0x1BFDDF703DFLL) != v12)
  {
    *flags = messageFlags & ~v10 & 0xFFFFFFFFFFFF0388 | v11;
  }

  return v11 != v12;
}

- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id *)command
{
  commandCopy = command;
  responseCopy = response;
  v44 = *MEMORY[0x277D85DE8];
  if (command)
  {
    if ([response responseType] == 2 && (commandCopy->var0 | 4) == 0xD)
    {
      var2 = commandCopy->var2;
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
          v28 = commandCopy;
          v29 = responseCopy;
          unsignedIntValue = 0;
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
                responseInfo = [v14 responseInfo];
                responseCode = [v14 responseCode];
                if (responseCode > 8)
                {
                  if (responseCode == 9)
                  {
                    self->_serverUidNext = [responseInfo unsignedIntValue];
                  }

                  else if (responseCode == 10)
                  {
                    unsignedIntValue = [responseInfo unsignedIntValue];
                  }
                }

                else if (responseCode == 5)
                {
                  if (responseInfo)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v17 = [responseInfo indexOfObject:@"\\*"];
                      v18 = *(self + 144) & 0xFE;
                      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        ++v18;
                      }

                      *(self + 144) = v18;
                      *(self + 144) = *(self + 144) & 0xDF | (32 * ([responseInfo indexOfObject:@"Forwarded"] != 0x7FFFFFFFFFFFFFFFLL));
                      *(self + 144) = *(self + 144) & 0xBF | (([responseInfo indexOfObject:@"$Forwarded"] != 0x7FFFFFFFFFFFFFFFLL) << 6);
                      *(self + 144) = *(self + 144) & 0xFD | (2 * ([responseInfo indexOfObject:@"Junk"] != 0x7FFFFFFFFFFFFFFFLL));
                      *(self + 144) = *(self + 144) & 0xFB | (4 * ([responseInfo indexOfObject:@"$Junk"] != 0x7FFFFFFFFFFFFFFFLL));
                      *(self + 144) = *(self + 144) & 0xF7 | (8 * ([responseInfo indexOfObject:@"NotJunk"] != 0x7FFFFFFFFFFFFFFFLL));
                      *(self + 144) = *(self + 144) & 0xEF | (16 * ([responseInfo indexOfObject:@"$NotJunk"] != 0x7FFFFFFFFFFFFFFFLL));
                    }
                  }
                }

                else if (responseCode == 6)
                {
                  *(&self->super.super.super.super.isa + *MEMORY[0x277D284E0]) |= 1u;
                }
              }
            }

            v10 = [var2 countByEnumeratingWithState:&v30 objects:v43 count:16];
          }

          while (v10);
          commandCopy = v28;
          responseCopy = v29;
          if (unsignedIntValue)
          {
            v19 = [objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]) userInfoObjectForKey:{@"UIDVALIDITY", "intValue"}];
            if (v19 != unsignedIntValue)
            {
              v20 = v19;
              [(MFLibraryIMAPStore *)self setMailboxUidValidity:unsignedIntValue];
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
                  v42 = unsignedIntValue;
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

  if ([responseCopy isAlertResponse])
  {
    [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) handleAlertResponse:{objc_msgSend(responseCopy, "userString")}];
  }

  if ([responseCopy isResponseWithCode:31])
  {
    [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) handleOverQuotaResponse:{objc_msgSend(responseCopy, "userString")}];
  }

  if (!commandCopy || commandCopy->var0 == 28)
  {
    if ([(MFLibraryIMAPStore *)self shouldUseIDLE])
    {
      if ([responseCopy responseType] == 9)
      {
        -[MFLibraryIMAPStore setServerMessageCount:](self, "setServerMessageCount:", [responseCopy number]);
        if (*(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]))
        {
          v24 = *MEMORY[0x277D28350];
          v34 = *(&self->super.super.super.super.isa + *MEMORY[0x277D284E8]);
          v35 = v24;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:*MEMORY[0x277D28348] object:*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) userInfo:v25];
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_uidsForMessages:(id)messages
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messages, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [messages countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(messages);
        }

        [*(*(&v11 + 1) + 8 * v8) uid];
        [v4 addObject:EFStringWithInt()];
        ++v8;
      }

      while (v6 != v8);
      v6 = [messages countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_idleConditionsObservable
{
  v20[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D28488] = [MEMORY[0x277D28488] sharedInstance];
  lowPowerModeObservable = [mEMORY[0x277D28488] lowPowerModeObservable];
  pluggedInObservable = [mEMORY[0x277D28488] pluggedInObservable];
  v6 = [objc_msgSend(MEMORY[0x277D28480] "sharedInstance")];
  v7 = [objc_msgSend(MEMORY[0x277D28438] "sharedInstance")];
  mEMORY[0x277D28400] = [MEMORY[0x277D28400] sharedInstance];
  appStateObservable = [mEMORY[0x277D28400] appStateObservable];
  v20[0] = mEMORY[0x277D28400];
  v10 = [objc_msgSend(appStateObservable startWith:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v20, 1)), "map:", &__block_literal_global_318}];
  objc_initWeak(&location, self);
  v19[0] = lowPowerModeObservable;
  v19[1] = v10;
  v19[2] = v7;
  v19[3] = v6;
  v19[4] = pluggedInObservable;
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
  _idleConditionsObservable = [(MFLibraryIMAPStore *)self _idleConditionsObservable];
  v4 = MEMORY[0x277D07188];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__MFLibraryIMAPStore__observeChangesInIdleConditions__block_invoke;
  v11 = &unk_2798B21A8;
  objc_copyWeak(&v12, &location);
  v5 = [v4 observerWithResultBlock:&v8];
  v6 = [_idleConditionsObservable subscribe:{v5, v8, v9, v10, v11}];
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

- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id *)command
{
  var0 = command->var0;
  responseType = [response responseType];
  v10 = 1;
  if (responseType <= 12)
  {
    if (responseType == 9)
    {
      v10 = (var0 & 0xFFFFFFFB) == 9;
      -[MFLibraryIMAPStore setServerMessageCount:](self, "setServerMessageCount:", [response number]);
      goto LABEL_25;
    }

    if (responseType != 10)
    {
      goto LABEL_25;
    }

    if ([response number] && command->var0 == 1)
    {
      v10 = 0;
      *(self + 145) |= 8u;
      goto LABEL_25;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_25;
  }

  switch(responseType)
  {
    case 13:
      account = [(MFMailMessageStore *)self account];
      mailboxName = [response mailboxName];
      v16 = [account _mailboxUidForName:mailboxName];
      statusEntries = [response statusEntries];
      v18 = [statusEntries objectForKey:0x2869E4C80];
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

      if ([mailboxName isEqualToString:{-[MFLibraryIMAPStore mailboxName](self, "mailboxName")}])
      {
        v21 = [statusEntries objectForKey:0x2869E4CE0];
        if (v21)
        {
          -[MFLibraryIMAPStore setHighestModSequence:](self, "setHighestModSequence:", [v21 unsignedLongLongValue]);
        }
      }

      goto LABEL_23;
    case 24:
      goto LABEL_15;
    case 17:
      v11 = [response fetchResultWithType:8];
      if (v11)
      {
        if (command->var0 == 21)
        {
          v12 = v11;
          fetchPipeline = self->_fetchPipeline;
          if (fetchPipeline && [(MFIMAPCommandPipeline *)fetchPipeline isSending])
          {
            -[MFIMAPDownloadCache handleFetchResponse:forUid:](self->_downloadCache, "handleFetchResponse:forUid:", response, [v12 uid]);
          }

LABEL_23:
          v10 = 1;
        }
      }

      break;
  }

LABEL_25:
  if ([response isAlertResponse])
  {
    [*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) handleAlertResponse:{objc_msgSend(response, "userString")}];
    return 0;
  }

  return v10;
}

- (BOOL)hasValidCacheFileForMessage:(id)message
{
  v5 = [message uid];
  if (![message hasTemporaryUid] || !v5)
  {
    return 0;
  }

  v6 = [objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x277D284C8]) "offlineCacheDirectoryPath")];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];

  return [defaultManager fileExistsAtPath:v6];
}

- (id)addMessages:(id)messages newMessagesByOldMessage:(id)message
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

- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
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
  v9 = [messages countByEnumeratingWithState:&v20 objects:v25 count:16];
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
        objc_enumerationMutation(messages);
      }

      v14 = *(*(&v20 + 1) + 8 * i);
      v15 = [objc_msgSend(message objectForKey:{v14), "intValue"}];
      if (flags)
      {
        messageFlags = MFMessageFlagsByApplyingDictionary();
        if ((v15 & 2) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        messageFlags = [v14 messageFlags];
        if ((v15 & 2) == 0)
        {
LABEL_8:
          if ((messageFlags & 2) == 0)
          {
            continue;
          }

          v17 = 1;
          goto LABEL_13;
        }
      }

      if ((messageFlags & 2) != 0)
      {
        continue;
      }

      v17 = -1;
LABEL_13:
      self->_serverDeletedCount += v17;
      v11 = 1;
    }

    v10 = [messages countByEnumeratingWithState:&v20 objects:v25 count:16];
  }

  while (v10);
  [(MFLibraryIMAPStore *)self mf_unlock];
  if (v11)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", *MEMORY[0x277D28530], self, 0)}];
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setFlagsForMessages:(id)messages
{
  if (messages && [messages count])
  {
    keyEnumerator = [messages keyEnumerator];
    v6 = 1;
    v7 = 1;
    while ([keyEnumerator nextObject])
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

        keyEnumerator2 = [messages keyEnumerator];
        nextObject = [keyEnumerator2 nextObject];
        if (nextObject)
        {
          nextObject2 = nextObject;
          v14 = 0;
          v15 = 0;
          do
          {
            v16 = [messages objectForKey:nextObject2];
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

            [v17 setObject:v16 forKey:nextObject2];
            nextObject2 = [keyEnumerator2 nextObject];
          }

          while (nextObject2);
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
      [(MFMailMessageStore *)&v20 _setFlagsForMessages:messages];
    }
  }
}

- (id)offlineCache
{
  account = [(MFMailMessageStore *)self account];

  return [account offlineCache];
}

- (id)offlineCacheIfOffline
{
  account = [(MFMailMessageStore *)self account];

  return [account offlineCacheIfOffline];
}

- (void)close
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    mEMORY[0x277D28420] = [MEMORY[0x277D28420] sharedInvocationQueue];
    v5 = [MEMORY[0x277D28478] mf_invocationWithSelector:a2 target:self];

    [mEMORY[0x277D28420] addInvocation:v5];
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

- (id)messageForRemoteID:(id)d
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [(MFLibraryIMAPStore *)self messageForRemoteID:d inMailbox:mailboxUid];
}

- (id)messageForRemoteID:(id)d inMailbox:(id)mailbox
{
  v5 = [-[MFLibraryStore library](self "library")];
  [v5 setMessageStore:self];
  return v5;
}

- (id)uniqueRemoteIDsForMessages:(id)messages
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [messages countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(messages);
        }

        [v5 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", objc_msgSend(*(*(&v19 + 1) + 8 * v8++), "uid"))}];
      }

      while (v6 != v8);
      v6 = [messages countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)setServerMessageCount:(unint64_t)count
{
  v5 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (v5)
  {
    unsignedIntValue = [v5 unsignedIntValue];
    if (unsignedIntValue)
    {
      v7 = unsignedIntValue;
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

  if (v7 <= count)
  {
    *(&self->super.super.super.super.isa + *MEMORY[0x277D284B8]) = count;
    self->_serverDeletedCount = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D28530] object:self userInfo:0];

    [defaultCenter postNotification:v9];
  }

  else if ((*(self + 145) & 0x10) == 0)
  {
    *(self + 145) |= 0x10u;
    *(&self->super.super.super.super.isa + *MEMORY[0x277D284B8]) = count;
    self->_serverDeletedCount = 0;
    if (([objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")] & 1) == 0)
    {
      mEMORY[0x277D28420] = [MEMORY[0x277D28420] sharedInvocationQueue];
      v11 = [MEMORY[0x277D28478] mf_invocationWithSelector:sel_updateDeletedCount target:self];

      [mEMORY[0x277D28420] addInvocation:v11];
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

- (id)sequenceIdentifierForUIDs:(id)ds
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];

  return [library sequenceIdentifierForMessagesWithRemoteIDs:ds inMailbox:uRLString];
}

- (void)setSequenceIdentifier:(id)identifier forUIDs:(id)ds
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];

  [library setSequenceIdentifier:identifier forMessagesWithRemoteIDs:ds inMailbox:uRLString];
}

- (void)setDownloadDelegate:(id)delegate
{
  [(MFLibraryIMAPStore *)self mf_lock];
  if (self->_downloadDelegate != delegate)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      delegate = 0;
    }

    self->_downloadDelegate = delegate;
  }

  [(MFLibraryIMAPStore *)self mf_unlock];
}

- (void)connection:(id)connection didBeginBodyLoad:(id)load section:(id)section
{
  downloadDelegate = self->_downloadDelegate;
  if (downloadDelegate)
  {
    currentFetchUid = self->_currentFetchUid;
    if (currentFetchUid != -1)
    {
      [downloadDelegate libraryIMAPStore:self bodyDownloadBeganForUid:currentFetchUid data:load section:section];
    }
  }
}

- (void)connection:(id)connection didLoadMoreBodyData:(id)data section:(id)section
{
  downloadDelegate = self->_downloadDelegate;
  if (downloadDelegate)
  {
    currentFetchUid = self->_currentFetchUid;
    if (currentFetchUid != -1)
    {
      [downloadDelegate libraryIMAPStore:self bodyDownloadReceivedMoreDataForUid:currentFetchUid data:data section:section];
    }
  }
}

- (void)connection:(id)connection didFinishLoadingBodyData:(id)data section:(id)section
{
  downloadDelegate = self->_downloadDelegate;
  if (downloadDelegate)
  {
    currentFetchUid = self->_currentFetchUid;
    if (currentFetchUid != -1)
    {
      [downloadDelegate libraryIMAPStore:self bodyDownloadCompletedForUid:currentFetchUid data:data section:section];
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