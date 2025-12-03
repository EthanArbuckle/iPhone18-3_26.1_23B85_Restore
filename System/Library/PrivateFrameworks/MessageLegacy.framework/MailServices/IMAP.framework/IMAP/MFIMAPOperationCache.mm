@interface MFIMAPOperationCache
- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id *)command;
- (BOOL)hasOperationsForMailbox:(id)mailbox;
- (MFIMAPOperationCache)initWithIMAPAccount:(id)account;
- (unsigned)firstUidForCopyingMessages:(id)messages fromMailbox:(id)mailbox toMailbox:(id)toMailbox;
- (unsigned)uidForAppendingMessageData:(id)data withFlags:(id)flags andInternalDate:(id)date toMailbox:(id)mailbox;
- (void)_performAppendOperation:(id)operation withContext:(id *)context;
- (void)_performCopyOperation:(id)operation withContext:(id *)context;
- (void)_performCreateOperation:(id)operation withContext:(id *)context;
- (void)_performDeleteOperation:(id)operation withContext:(id *)context;
- (void)_performStoreOperation:(id)operation withContext:(id *)context;
- (void)_queueDeferredOperation:(id)operation;
- (void)createMailbox:(id)mailbox;
- (void)dealloc;
- (void)deleteMailbox:(id)mailbox;
- (void)performDeferredOperationsWithConnection:(id)connection;
- (void)saveChanges;
- (void)setFlags:(id)flags andClearFlags:(id)clearFlags forMessages:(id)messages;
@end

@implementation MFIMAPOperationCache

- (MFIMAPOperationCache)initWithIMAPAccount:(id)account
{
  v17.receiver = self;
  v17.super_class = MFIMAPOperationCache;
  v4 = [(MFIMAPOperationCache *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_account = account;
    v4->_ops = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:10];
    v6 = [-[IMAPAccount offlineCacheDirectoryPath](v5->_account "offlineCacheDirectoryPath")];
    [(MFIMAPOperationCache *)v5 mf_lock];
    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithContentsOfFile:v6 options:1 error:0];
      if (v7)
      {
        v8 = v7;
        v18 = 0;
        v9 = [v7 length];
        if (v9 >= 4)
        {
          v10 = v9;
          do
          {
            bytes = [v8 bytes];
            if (*(bytes + v18) != 0x7FFF || *(bytes + v18 + 2) != 255)
            {
              break;
            }

            v18 += 3;
            v13 = [MFIMAPOperation deserializedCopyFromData:v8 cursor:&v18];
            if (v13)
            {
              v14 = v13;
              lastTemporaryUid = [v13 lastTemporaryUid];
              [(NSMutableArray *)v5->_ops addObject:v14];

              if (lastTemporaryUid)
              {
                v5->_lastUid = lastTemporaryUid;
              }
            }

            else
            {
              v18 = v10;
            }
          }

          while (v18 + 3 < v10);
        }

        v5->_lastSave = [(NSMutableArray *)v5->_ops count];
        v5->_opsPending = [(NSMutableArray *)v5->_ops count]!= 0;
      }
    }

    [(MFIMAPOperationCache *)v5 mf_unlock];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPOperationCache;
  [(MFIMAPOperationCache *)&v3 dealloc];
}

- (void)_queueDeferredOperation:(id)operation
{
  v27 = *MEMORY[0x277D85DE8];
  if (operation)
  {
    operationCopy = operation;
    [(MFIMAPOperationCache *)self mf_lock];
    if (_shouldFlattenCacheOperations != 1 || [(MFIMAPOperation *)operationCopy operationType]!= 3)
    {
      goto LABEL_32;
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ((MFMessageFlagsFromArray([(MFIMAPOperation *)operationCopy flagsToSet]) & 2) != 0)
    {
      if ([(MFIMAPOperation *)operationCopy usesRealUids])
      {
        [v5 addObjectsFromArray:{-[MFIMAPOperation uids](operationCopy, "uids")}];
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        uids = [(MFIMAPOperation *)operationCopy uids];
        v7 = [uids countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v23;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v23 != v9)
              {
                objc_enumerationMutation(uids);
              }

              v11 = +[MFLibraryIMAPStore copyRemoteIDForTemporaryUid:](MFLibraryIMAPStore, "copyRemoteIDForTemporaryUid:", [*(*(&v22 + 1) + 8 * i) intValue]);
              [v5 addObject:v11];
            }

            v8 = [uids countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v8);
        }
      }
    }

    if ([v5 count])
    {
      mailboxName = [(MFIMAPOperation *)operationCopy mailboxName];
      v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v14 = [(NSMutableArray *)self->_ops count];
      if (v14 - 1 >= 0)
      {
        v15 = v14;
        do
        {
          v16 = [(NSMutableArray *)self->_ops objectAtIndex:--v15];
          if ([objc_msgSend(v16 "mailboxName")] && objc_msgSend(v16, "operationType") == 4)
          {
            v17 = [v16 uid];
            if ([(MFIMAPOperation *)operationCopy usesRealUids])
            {
              v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u", v17];
            }

            else
            {
              v18 = [MFLibraryIMAPStore copyRemoteIDForTemporaryUid:v17];
            }

            v19 = v18;
            if (v18 && [v5 containsObject:v18])
            {
              [(NSMutableArray *)self->_ops removeObjectAtIndex:v15];
              self->_opsPending = [(NSMutableArray *)self->_ops count]!= 0;
              [v13 addObject:v19];
            }
          }
        }

        while (v15 > 0);
      }

      [v5 minusSet:v13];
      if ([v5 count])
      {
        usesRealUids = [(MFIMAPOperation *)operationCopy usesRealUids];
        operationCopy = -[MFIMAPOperation initWithFlagsToSet:flagsToClear:forUids:inMailbox:]([MFIMAPOperation alloc], "initWithFlagsToSet:flagsToClear:forUids:inMailbox:", -[MFIMAPOperation flagsToSet](operationCopy, "flagsToSet"), -[MFIMAPOperation flagsToClear](operationCopy, "flagsToClear"), [v5 allObjects], -[MFIMAPOperation mailboxName](operationCopy, "mailboxName"));
        [(MFIMAPOperation *)operationCopy setUsesRealUids:usesRealUids];
      }

      else
      {
        operationCopy = 0;
      }
    }

    if (operationCopy)
    {
LABEL_32:
      [(NSMutableArray *)self->_ops addObject:operationCopy];
      self->_opsPending = 1;
    }

    [(MFIMAPOperationCache *)self mf_unlock];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [(IMAPAccount *)self->_account acquireNetworkAssertion];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)createMailbox:(id)mailbox
{
  v4 = [objc_allocWithZone(MFIMAPOperation) initWithMailboxToCreate:mailbox];
  [(MFIMAPOperationCache *)self _queueDeferredOperation:v4];
}

- (void)deleteMailbox:(id)mailbox
{
  v4 = [objc_allocWithZone(MFIMAPOperation) initWithMailboxToDelete:mailbox];
  [(MFIMAPOperationCache *)self _queueDeferredOperation:v4];
}

- (void)setFlags:(id)flags andClearFlags:(id)clearFlags forMessages:(id)messages
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [messages countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    mailboxName = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(messages);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 hasTemporaryUid])
        {
          if (v9)
          {
            array = v9;
          }

          else
          {
            array = [MEMORY[0x277CBEB18] array];
            v9 = array;
          }
        }

        else if (v10)
        {
          array = v10;
        }

        else
        {
          array = [MEMORY[0x277CBEB18] array];
          v10 = array;
        }

        [v13 uid];
        [array addObject:EFStringWithInt()];
        if (!mailboxName)
        {
          mailboxName = [v13 mailboxName];
        }
      }

      v7 = [messages countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    mailboxName = 0;
    v9 = 0;
    v10 = 0;
  }

  _setFlags(self, mailboxName, flags, clearFlags, v10, v9);
  v15 = *MEMORY[0x277D85DE8];
}

- (unsigned)firstUidForCopyingMessages:(id)messages fromMailbox:(id)mailbox toMailbox:(id)toMailbox
{
  selfCopy = self;
  v48 = *MEMORY[0x277D85DE8];
  v7 = [-[IMAPAccount lastKnownCapabilities](self->_account "lastKnownCapabilities")];
  array = [MEMORY[0x277CBEB18] array];
  offlineCacheDirectoryPath = [(IMAPAccount *)selfCopy->_account offlineCacheDirectoryPath];
  if (v7)
  {
    Mutable = 0;
    v10 = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    v10 = CFArrayCreateMutable(0, 0, 0);
  }

  [(MFIMAPOperationCache *)selfCopy mf_lock];
  lastUid = selfCopy->_lastUid;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v39 = [messages countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v39)
  {
    v40 = selfCopy;
    v41 = lastUid;
    v12 = 0;
    mailboxCopy3 = 0;
    firstTemporaryUid = 0;
    v38 = *v44;
    v37 = *MEMORY[0x277D06FE0];
    v34 = array;
    mailboxCopy = mailbox;
    v33 = v10;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v44 != v38)
        {
          objc_enumerationMutation(messages);
        }

        v16 = *(*(&v43 + 1) + 8 * v14);
        messageStore = [v16 messageStore];
        hasTemporaryUid = [v16 hasTemporaryUid];
        v42 = 0;
        if ([(IMAPAccount *)v40->_account requiresDataForOfflineTransfersFromStore:messageStore])
        {
          v19 = [messageStore fullBodyDataForMessage:v16 andHeaderDataIfReadilyAvailable:&v42 isComplete:0 downloadIfNecessary:0 didDownload:0];
          v20 = v42;
          if (v19)
          {
            v21 = v42 == 0;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            v20 = [messageStore headerDataForMessage:v16 downloadIfNecessary:0];
            v42 = v20;
          }

          if (v19)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 1;
          }

          ++v41;
          if (!v22)
          {
            v23 = [v20 mutableCopyWithZone:0];
            [v23 appendData:v19];
            [v23 writeToFile:objc_msgSend(offlineCacheDirectoryPath options:"stringByAppendingPathComponent:" error:{EFStringWithInt()), 805306369, 0}];
          }

          v10 = v33;
          array = v34;
          mailbox = mailboxCopy;
        }

        else
        {
          ++v41;
        }

        v12 = hasTemporaryUid;
        if ([array count] && (mailboxCopy3 != mailbox || ((v15 ^ hasTemporaryUid) & 1) != 0))
        {
          CopyOperation = _makeCopyOperation(v40, array, mailboxCopy3, toMailbox, v15 & 1, Mutable, v10);
          v25 = CopyOperation;
          if (CopyOperation && !firstTemporaryUid)
          {
            firstTemporaryUid = [CopyOperation firstTemporaryUid];
          }

          v12 = hasTemporaryUid;
        }

        [v16 uid];
        [array addObject:EFStringWithInt()];
        if (Mutable)
        {
          CFArrayAppendValue(Mutable, [objc_msgSend(v16 "headers")]);
        }

        if (v10)
        {
          CFArrayAppendValue(v10, [v16 dateReceived]);
        }

        ++v14;
        v15 = v12;
        mailboxCopy3 = mailbox;
      }

      while (v39 != v14);
      mailboxCopy3 = mailbox;
      v39 = [messages countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v39);
    selfCopy = v40;
  }

  else
  {
    v12 = 0;
    mailbox = 0;
    firstTemporaryUid = 0;
  }

  if ([array count])
  {
    v26 = _makeCopyOperation(selfCopy, array, mailbox, toMailbox, v12, Mutable, v10);
    v27 = v26;
    if (v26 && !firstTemporaryUid)
    {
      firstTemporaryUid = [v26 firstTemporaryUid];
    }
  }

  [(MFIMAPOperationCache *)selfCopy mf_unlock];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v28 = *MEMORY[0x277D85DE8];
  return firstTemporaryUid;
}

- (unsigned)uidForAppendingMessageData:(id)data withFlags:(id)flags andInternalDate:(id)date toMailbox:(id)mailbox
{
  [(MFIMAPOperationCache *)self mf_lock];
  ++self->_lastUid;
  v11 = EFStringWithInt();
  if (_writeDataToPath(self, data, v11, 1073741825) && (v12 = [objc_allocWithZone(MFIMAPOperation) initWithAppendedUid:self->_lastUid approximateSize:(objc_msgSend(data flags:"length") + 1023) >> 10 internalDate:flags mailbox:{date, mailbox}]) != 0)
  {
    v13 = v12;
    [(MFIMAPOperationCache *)self _queueDeferredOperation:v12];
    lastUid = self->_lastUid;
  }

  else
  {
    lastUid = 0;
  }

  [(MFIMAPOperationCache *)self mf_unlock];
  return lastUid;
}

- (void)saveChanges
{
  [(MFIMAPOperationCache *)self mf_lock];
  self->_lastSave = 0;
  _saveChanges(self);

  [(MFIMAPOperationCache *)self mf_unlock];
}

- (BOOL)hasOperationsForMailbox:(id)mailbox
{
  v18 = *MEMORY[0x277D85DE8];
  [(MFIMAPOperationCache *)self mf_lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  ops = self->_ops;
  v6 = [(NSMutableArray *)ops countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(ops);
        }

        if ([objc_msgSend(*(*(&v13 + 1) + 8 * i) "mailboxName")])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)ops countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  [(MFIMAPOperationCache *)self mf_unlock];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id *)command
{
  if ([response responseType] == 2 && objc_msgSend(response, "responseCode") == 10)
  {
    self->_lastUidValidity = [objc_msgSend(response "responseInfo")];
  }

  return command->var0 == 24;
}

- (void)_performCreateOperation:(id)operation withContext:(id *)context
{
  if (([context->var1 createMailbox:{objc_msgSend(operation, "mailboxName")}] & 1) == 0)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPOperationCache _performCreateOperation:operation withContext:&context->var0];
    }
  }
}

- (void)_performDeleteOperation:(id)operation withContext:(id *)context
{
  if (([context->var1 deleteMailbox:{objc_msgSend(operation, "mailboxName")}] & 1) == 0)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPOperationCache _performCreateOperation:operation withContext:&context->var0];
    }
  }
}

- (void)_performStoreOperation:(id)operation withContext:(id *)context
{
  mailboxName = [operation mailboxName];
  flagsToSet = [operation flagsToSet];
  flagsToClear = [operation flagsToClear];
  uids = [operation uids];
  if (uids && ([operation usesRealUids] & 1) == 0)
  {
    uids = _convertTemporaryUids(uids, context->var2);
  }

  if ([uids count] && mailboxName && (objc_msgSend(flagsToSet, "count") || objc_msgSend(flagsToClear, "count")) && _selectMailboxIfNeeded(self, context, mailboxName))
  {
    if ([flagsToSet count])
    {
      [context->var1 storeFlags:flagsToSet state:1 forUids:uids];
    }

    if ([flagsToClear count])
    {
      var1 = context->var1;

      [var1 storeFlags:flagsToClear state:0 forUids:uids];
    }
  }
}

- (void)_performAppendOperation:(id)operation withContext:(id *)context
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = [operation uid];
  v8 = [(IMAPAccount *)self->_account _dataForTemporaryUid:v7];
  if (v7)
  {
    v9 = v8;
    if (v8)
    {
      mailboxName = [operation mailboxName];
      [operation internalDate];
      v22 = 0;
      if ([context->var1 appendData:v9 toMailboxNamed:mailboxName flags:objc_msgSend(operation dateReceived:"flags") newMessageInfo:{objc_msgSend(operation, "internalDate"), &v22}])
      {
        v11 = [objc_msgSend(v22 objectForKey:{@"Source UIDS", "unsignedIntValue"}];
        [v9 mf_rangeOfRFC822HeaderData];
        if (v12 && (*buf = 0uLL, v13 = *MEMORY[0x277D06FE0], ECGetNextHeaderFromDataInRange()))
        {
          [v9 bytes];
          v14 = _MFCreateStringFromHeaderBytes();
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v14 = 0;
          if (!v11)
          {
LABEL_7:
            v11 = _searchForNewUid(self, context, v14, mailboxName);

            if (!v11)
            {
LABEL_22:
              [-[IMAPAccount offlineCacheDirectoryPath](self->_account "offlineCacheDirectoryPath")];
              MFRemoveItemAtPath();
              goto LABEL_23;
            }

LABEL_13:
            StoreForMailboxName = _getStoreForMailboxName(self, &context->var3, mailboxName);
            if (StoreForMailboxName)
            {
              v17 = StoreForMailboxName;
              var4 = context->var4;
              if (var4)
              {
                Value = CFDictionaryGetValue(var4, mailboxName);
              }

              else
              {
                Value = 0;
              }

              v20 = [objc_msgSend(objc_msgSend(v17 "mailboxUid")];
              if (!Value || !v20 || Value == v20)
              {
                [v17 setUid:v11 forMessageWithTemporaryUid:v7];
              }
            }

            CFDictionarySetValue(context->var2, v7, v11);
            goto LABEL_22;
          }
        }

        goto LABEL_13;
      }

      v15 = MFLogGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = mailboxName;
        _os_log_impl(&dword_258B7A000, v15, OS_LOG_TYPE_INFO, "**** Failed to append to %@", buf, 0xCu);
      }
    }
  }

LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_performCopyOperation:(id)operation withContext:(id *)context
{
  v86 = *MEMORY[0x277D85DE8];
  mailboxName = [operation mailboxName];
  destinationMailbox = [operation destinationMailbox];
  if (mailboxName)
  {
    v9 = destinationMailbox;
    if (_selectMailboxIfNeeded(self, context, mailboxName))
    {
      sourceUids = [operation sourceUids];
      if (([operation usesRealUids] & 1) == 0)
      {
        sourceUids = _convertTemporaryUids(sourceUids, context->var2);
      }

      if (sourceUids)
      {
        v84 = 0;
        if ([context->var1 copyUids:sourceUids toMailboxNamed:v9 newMessageInfo:&v84])
        {
          key = v9;
          v11 = [v84 objectForKey:@"Source UIDS"];
          v12 = [v84 objectForKey:@"Destination UIDS"];
          if (v11)
          {
            v13 = v12;
            if (v12)
            {
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              *buffer = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              *v53 = 0u;
              v14 = [(__CFString *)v11 length];
              v74 = v11;
              v77 = 0;
              v78 = v14;
              CharactersPtr = CFStringGetCharactersPtr(v11);
              CStringPtr = 0;
              v75 = CharactersPtr;
              if (!CharactersPtr)
              {
                CStringPtr = CFStringGetCStringPtr(v11, 0x600u);
              }

              v76 = CStringPtr;
              v79 = 0;
              v80 = 0;
              v81 = 0;
              v82 = v14;
              v83 = 0;
              v17 = [(__CFString *)v13 length];
              *&v61 = v13;
              *(&v62 + 1) = 0;
              *&v63 = v17;
              v18 = CFStringGetCharactersPtr(v13);
              v19 = 0;
              *(&v61 + 1) = v18;
              if (!v18)
              {
                v19 = CFStringGetCStringPtr(v13, 0x600u);
              }

              *&v62 = v19;
              *(&v63 + 1) = 0;
              v64 = 0uLL;
              v65 = v17;
              destinationUids = [operation destinationUids];
              v21 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:destinationUids forKeys:sourceUids];
              while (IMAPNextUidFromSet(buffer))
              {
                v22 = IMAPNextUidFromSet(v53);
                if (!v22)
                {
                  break;
                }

                v23 = v22;
                v24 = [objc_msgSend(v21 objectForKey:{EFStringWithInt()), "intValue"}];
                [_getStoreForMailboxName(self &context->var3];
                CFDictionarySetValue(context->var2, v24, v23);
              }

LABEL_36:
              offlineCacheDirectoryPath = [(IMAPAccount *)self->_account offlineCacheDirectoryPath];
              destinationUids2 = [operation destinationUids];
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v42 = [destinationUids2 countByEnumeratingWithState:&v49 objects:v85 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v50;
                do
                {
                  for (i = 0; i != v43; ++i)
                  {
                    if (*v50 != v44)
                    {
                      objc_enumerationMutation(destinationUids2);
                    }

                    [*(*(&v49 + 1) + 8 * i) intValue];
                    [offlineCacheDirectoryPath stringByAppendingPathComponent:EFStringWithInt()];
                    MFRemoveItemAtPath();
                  }

                  v43 = [destinationUids2 countByEnumeratingWithState:&v49 objects:v85 count:16];
                }

                while (v43);
              }

              goto LABEL_43;
            }
          }

          destinationUids3 = [operation destinationUids];
          v27 = [sourceUids count];
          v28 = [destinationUids3 count];
          if (v27 >= v28)
          {
            v27 = v28;
          }

          v29 = key;
          if (!v27)
          {
            goto LABEL_36;
          }

          v30 = 0;
          selfCopy = self;
          while (1)
          {
            v31 = [objc_msgSend(destinationUids3 objectAtIndex:{v30), "intValue"}];
            if (!v31)
            {
              goto LABEL_35;
            }

            v32 = v31;
            *buffer = 0;
            *v53 = 0;
            if (([operation getMessageId:v53 andInternalDate:buffer forDestinationUid:v31] & 1) == 0)
            {
              goto LABEL_35;
            }

            v33 = _searchForNewUid(self, context, *v53, v29);
            if (!v33)
            {
              goto LABEL_35;
            }

            v34 = v33;
            StoreForMailboxName = _getStoreForMailboxName(self, &context->var3, v29);
            if (!StoreForMailboxName)
            {
              goto LABEL_35;
            }

            v36 = StoreForMailboxName;
            Value = [objc_msgSend(v84 objectForKey:{@"UIDVALIDITY", "unsignedIntValue"}];
            v38 = [objc_msgSend(objc_msgSend(v36 "mailboxUid")];
            if (Value)
            {
              goto LABEL_30;
            }

            var4 = context->var4;
            if (var4)
            {
              break;
            }

LABEL_33:
            [v36 setUid:v34 forMessageWithTemporaryUid:v32];
LABEL_34:
            CFDictionarySetValue(context->var2, v32, v34);
            v29 = key;
            self = selfCopy;
LABEL_35:
            if (v27 == ++v30)
            {
              goto LABEL_36;
            }
          }

          Value = CFDictionaryGetValue(var4, key);
LABEL_30:
          if (Value && v38 && Value != v38)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v25 = MFLogGeneral();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [MFIMAPOperationCache _performCopyOperation:v9 withContext:v25];
        }
      }
    }
  }

LABEL_43:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)performDeferredOperationsWithConnection:(id)connection
{
  v42 = *MEMORY[0x277D85DE8];
  currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
  v29 = currentMonitor;
  connectionCopy = connection;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  [connection setDelegate:self];
  taskName = [currentMonitor taskName];
  [currentMonitor setTaskName:MFLookupLocalizedString()];
  [(MFIMAPOperationCache *)self mf_lock];
  self->_opsPending = 0;
  v6 = [(NSMutableArray *)self->_ops count];
  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v39 = v6;
    v40 = 2112;
    connectionCopy2 = connection;
    _os_log_impl(&dword_258B7A000, v7, OS_LOG_TYPE_INFO, "replaying %lu operations with connection %@", buf, 0x16u);
  }

  HIDWORD(v34) = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  ops = self->_ops;
  v9 = [(NSMutableArray *)ops countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(ops);
        }

        v12 += [*(*(&v25 + 1) + 8 * i) approximateSize];
        HIDWORD(v34) = v12;
      }

      v11 = [(NSMutableArray *)ops countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v11);
    if (v12)
    {
      LODWORD(v35) = [currentMonitor acquireExclusiveAccessKey];
    }
  }

  LODWORD(v34) = 0;
  v15 = 0;
  if (v6)
  {
    *&v10 = 138412290;
    v24 = v10;
    while (1)
    {
      v16 = [(NSMutableArray *)self->_ops objectAtIndex:v15, v24];
      v17 = [objc_allocWithZone(MEMORY[0x277CCA8B0]) init];
      v18 = MFLogGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = v24;
        v39 = v16;
        _os_log_impl(&dword_258B7A000, v18, OS_LOG_TYPE_INFO, "replaying %@", buf, 0xCu);
      }

      operationType = [v16 operationType];
      if (operationType <= 2)
      {
        if (operationType == 1)
        {
          [(MFIMAPOperationCache *)self _performCreateOperation:v16 withContext:&v29];
        }

        else if (operationType == 2)
        {
          [(MFIMAPOperationCache *)self _performDeleteOperation:v16 withContext:&v29];
        }
      }

      else
      {
        switch(operationType)
        {
          case 3:
            [(MFIMAPOperationCache *)self _performStoreOperation:v16 withContext:&v29];
            break;
          case 4:
            [(MFIMAPOperationCache *)self _performAppendOperation:v16 withContext:&v29];
            break;
          case 5:
            [(MFIMAPOperationCache *)self _performCopyOperation:v16 withContext:&v29];
            break;
        }
      }

      approximateSize = [v16 approximateSize];
      LODWORD(v34) = v34 + approximateSize;
      [v17 drain];
      if (([connectionCopy isValid] & 1) == 0)
      {
        break;
      }

      if (v6 == ++v15)
      {
        v15 = v6;
        goto LABEL_35;
      }
    }

    failureCount = [v16 failureCount];
    if (failureCount < 2)
    {
      [v16 setFailureCount:failureCount + 1];
    }

    else
    {
      v22 = MFLogGeneral();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = v24;
        v39 = v16;
        _os_log_impl(&dword_258B7A000, v22, OS_LOG_TYPE_INFO, "removing failed operation from offline cache: %@", buf, 0xCu);
      }

      ++v15;
    }
  }

LABEL_35:
  if ([connectionCopy selectedMailbox])
  {
    [connectionCopy unselect];
  }

  [connectionCopy setDelegate:0];
  if (v15)
  {
    [(NSMutableArray *)self->_ops removeObjectsInRange:0, v15];
  }

  self->_opsPending = [(NSMutableArray *)self->_ops count]!= 0;
  self->_lastSave = 0;
  _saveChanges(self);
  [(MFIMAPOperationCache *)self mf_unlock];
  if (v35)
  {
    [v29 relinquishExclusiveAccessKey:?];
  }

  [v29 setTaskName:taskName];

  if (v32)
  {
  }

  if (v33)
  {
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_performCreateOperation:(void *)a1 withContext:(id *)a2 .cold.1(void *a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 mailboxName];
  [objc_msgSend(*a2 "error")];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(&dword_258B7A000, v3, v4, "*** Error while creating %@: %{public}@", v5, v6, v7, v8, 2u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_performCopyOperation:(uint64_t)a1 withContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_258B7A000, a2, OS_LOG_TYPE_ERROR, "*** Error while copying messages to %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end