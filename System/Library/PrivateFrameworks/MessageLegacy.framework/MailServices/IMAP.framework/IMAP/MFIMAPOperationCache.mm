@interface MFIMAPOperationCache
- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5;
- (BOOL)hasOperationsForMailbox:(id)a3;
- (MFIMAPOperationCache)initWithIMAPAccount:(id)a3;
- (unsigned)firstUidForCopyingMessages:(id)a3 fromMailbox:(id)a4 toMailbox:(id)a5;
- (unsigned)uidForAppendingMessageData:(id)a3 withFlags:(id)a4 andInternalDate:(id)a5 toMailbox:(id)a6;
- (void)_performAppendOperation:(id)a3 withContext:(id *)a4;
- (void)_performCopyOperation:(id)a3 withContext:(id *)a4;
- (void)_performCreateOperation:(id)a3 withContext:(id *)a4;
- (void)_performDeleteOperation:(id)a3 withContext:(id *)a4;
- (void)_performStoreOperation:(id)a3 withContext:(id *)a4;
- (void)_queueDeferredOperation:(id)a3;
- (void)createMailbox:(id)a3;
- (void)dealloc;
- (void)deleteMailbox:(id)a3;
- (void)performDeferredOperationsWithConnection:(id)a3;
- (void)saveChanges;
- (void)setFlags:(id)a3 andClearFlags:(id)a4 forMessages:(id)a5;
@end

@implementation MFIMAPOperationCache

- (MFIMAPOperationCache)initWithIMAPAccount:(id)a3
{
  v17.receiver = self;
  v17.super_class = MFIMAPOperationCache;
  v4 = [(MFIMAPOperationCache *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_account = a3;
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
            v11 = [v8 bytes];
            if (*(v11 + v18) != 0x7FFF || *(v11 + v18 + 2) != 255)
            {
              break;
            }

            v18 += 3;
            v13 = [MFIMAPOperation deserializedCopyFromData:v8 cursor:&v18];
            if (v13)
            {
              v14 = v13;
              v15 = [v13 lastTemporaryUid];
              [(NSMutableArray *)v5->_ops addObject:v14];

              if (v15)
              {
                v5->_lastUid = v15;
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

- (void)_queueDeferredOperation:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a3;
    [(MFIMAPOperationCache *)self mf_lock];
    if (_shouldFlattenCacheOperations != 1 || [(MFIMAPOperation *)v3 operationType]!= 3)
    {
      goto LABEL_32;
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ((MFMessageFlagsFromArray([(MFIMAPOperation *)v3 flagsToSet]) & 2) != 0)
    {
      if ([(MFIMAPOperation *)v3 usesRealUids])
      {
        [v5 addObjectsFromArray:{-[MFIMAPOperation uids](v3, "uids")}];
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = [(MFIMAPOperation *)v3 uids];
        v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
                objc_enumerationMutation(v6);
              }

              v11 = +[MFLibraryIMAPStore copyRemoteIDForTemporaryUid:](MFLibraryIMAPStore, "copyRemoteIDForTemporaryUid:", [*(*(&v22 + 1) + 8 * i) intValue]);
              [v5 addObject:v11];
            }

            v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v8);
        }
      }
    }

    if ([v5 count])
    {
      v12 = [(MFIMAPOperation *)v3 mailboxName];
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
            if ([(MFIMAPOperation *)v3 usesRealUids])
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
        v20 = [(MFIMAPOperation *)v3 usesRealUids];
        v3 = -[MFIMAPOperation initWithFlagsToSet:flagsToClear:forUids:inMailbox:]([MFIMAPOperation alloc], "initWithFlagsToSet:flagsToClear:forUids:inMailbox:", -[MFIMAPOperation flagsToSet](v3, "flagsToSet"), -[MFIMAPOperation flagsToClear](v3, "flagsToClear"), [v5 allObjects], -[MFIMAPOperation mailboxName](v3, "mailboxName"));
        [(MFIMAPOperation *)v3 setUsesRealUids:v20];
      }

      else
      {
        v3 = 0;
      }
    }

    if (v3)
    {
LABEL_32:
      [(NSMutableArray *)self->_ops addObject:v3];
      self->_opsPending = 1;
    }

    [(MFIMAPOperationCache *)self mf_unlock];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [(IMAPAccount *)self->_account acquireNetworkAssertion];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)createMailbox:(id)a3
{
  v4 = [objc_allocWithZone(MFIMAPOperation) initWithMailboxToCreate:a3];
  [(MFIMAPOperationCache *)self _queueDeferredOperation:v4];
}

- (void)deleteMailbox:(id)a3
{
  v4 = [objc_allocWithZone(MFIMAPOperation) initWithMailboxToDelete:a3];
  [(MFIMAPOperationCache *)self _queueDeferredOperation:v4];
}

- (void)setFlags:(id)a3 andClearFlags:(id)a4 forMessages:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [a5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(a5);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 hasTemporaryUid])
        {
          if (v9)
          {
            v14 = v9;
          }

          else
          {
            v14 = [MEMORY[0x277CBEB18] array];
            v9 = v14;
          }
        }

        else if (v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = [MEMORY[0x277CBEB18] array];
          v10 = v14;
        }

        [v13 uid];
        [v14 addObject:EFStringWithInt()];
        if (!v8)
        {
          v8 = [v13 mailboxName];
        }
      }

      v7 = [a5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  _setFlags(self, v8, a3, a4, v10, v9);
  v15 = *MEMORY[0x277D85DE8];
}

- (unsigned)firstUidForCopyingMessages:(id)a3 fromMailbox:(id)a4 toMailbox:(id)a5
{
  v6 = self;
  v48 = *MEMORY[0x277D85DE8];
  v7 = [-[IMAPAccount lastKnownCapabilities](self->_account "lastKnownCapabilities")];
  v8 = [MEMORY[0x277CBEB18] array];
  v30 = [(IMAPAccount *)v6->_account offlineCacheDirectoryPath];
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

  [(MFIMAPOperationCache *)v6 mf_lock];
  lastUid = v6->_lastUid;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v39 = [a3 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v39)
  {
    v40 = v6;
    v41 = lastUid;
    v12 = 0;
    v13 = 0;
    v32 = 0;
    v38 = *v44;
    v37 = *MEMORY[0x277D06FE0];
    v34 = v8;
    v35 = a4;
    v33 = v10;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v44 != v38)
        {
          objc_enumerationMutation(a3);
        }

        v16 = *(*(&v43 + 1) + 8 * v14);
        v17 = [v16 messageStore];
        v18 = [v16 hasTemporaryUid];
        v42 = 0;
        if ([(IMAPAccount *)v40->_account requiresDataForOfflineTransfersFromStore:v17])
        {
          v19 = [v17 fullBodyDataForMessage:v16 andHeaderDataIfReadilyAvailable:&v42 isComplete:0 downloadIfNecessary:0 didDownload:0];
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
            v20 = [v17 headerDataForMessage:v16 downloadIfNecessary:0];
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
            [v23 writeToFile:objc_msgSend(v30 options:"stringByAppendingPathComponent:" error:{EFStringWithInt()), 805306369, 0}];
          }

          v10 = v33;
          v8 = v34;
          a4 = v35;
        }

        else
        {
          ++v41;
        }

        v12 = v18;
        if ([v8 count] && (v13 != a4 || ((v15 ^ v18) & 1) != 0))
        {
          CopyOperation = _makeCopyOperation(v40, v8, v13, a5, v15 & 1, Mutable, v10);
          v25 = CopyOperation;
          if (CopyOperation && !v32)
          {
            v32 = [CopyOperation firstTemporaryUid];
          }

          v12 = v18;
        }

        [v16 uid];
        [v8 addObject:EFStringWithInt()];
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
        v13 = a4;
      }

      while (v39 != v14);
      v13 = a4;
      v39 = [a3 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v39);
    v6 = v40;
  }

  else
  {
    v12 = 0;
    a4 = 0;
    v32 = 0;
  }

  if ([v8 count])
  {
    v26 = _makeCopyOperation(v6, v8, a4, a5, v12, Mutable, v10);
    v27 = v26;
    if (v26 && !v32)
    {
      v32 = [v26 firstTemporaryUid];
    }
  }

  [(MFIMAPOperationCache *)v6 mf_unlock];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v32;
}

- (unsigned)uidForAppendingMessageData:(id)a3 withFlags:(id)a4 andInternalDate:(id)a5 toMailbox:(id)a6
{
  [(MFIMAPOperationCache *)self mf_lock];
  ++self->_lastUid;
  v11 = EFStringWithInt();
  if (_writeDataToPath(self, a3, v11, 1073741825) && (v12 = [objc_allocWithZone(MFIMAPOperation) initWithAppendedUid:self->_lastUid approximateSize:(objc_msgSend(a3 flags:"length") + 1023) >> 10 internalDate:a4 mailbox:{a5, a6}]) != 0)
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

- (BOOL)hasOperationsForMailbox:(id)a3
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

- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5
{
  if ([a4 responseType] == 2 && objc_msgSend(a4, "responseCode") == 10)
  {
    self->_lastUidValidity = [objc_msgSend(a4 "responseInfo")];
  }

  return a5->var0 == 24;
}

- (void)_performCreateOperation:(id)a3 withContext:(id *)a4
{
  if (([a4->var1 createMailbox:{objc_msgSend(a3, "mailboxName")}] & 1) == 0)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPOperationCache _performCreateOperation:a3 withContext:&a4->var0];
    }
  }
}

- (void)_performDeleteOperation:(id)a3 withContext:(id *)a4
{
  if (([a4->var1 deleteMailbox:{objc_msgSend(a3, "mailboxName")}] & 1) == 0)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPOperationCache _performCreateOperation:a3 withContext:&a4->var0];
    }
  }
}

- (void)_performStoreOperation:(id)a3 withContext:(id *)a4
{
  v7 = [a3 mailboxName];
  v8 = [a3 flagsToSet];
  v9 = [a3 flagsToClear];
  v10 = [a3 uids];
  if (v10 && ([a3 usesRealUids] & 1) == 0)
  {
    v10 = _convertTemporaryUids(v10, a4->var2);
  }

  if ([v10 count] && v7 && (objc_msgSend(v8, "count") || objc_msgSend(v9, "count")) && _selectMailboxIfNeeded(self, a4, v7))
  {
    if ([v8 count])
    {
      [a4->var1 storeFlags:v8 state:1 forUids:v10];
    }

    if ([v9 count])
    {
      var1 = a4->var1;

      [var1 storeFlags:v9 state:0 forUids:v10];
    }
  }
}

- (void)_performAppendOperation:(id)a3 withContext:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = [a3 uid];
  v8 = [(IMAPAccount *)self->_account _dataForTemporaryUid:v7];
  if (v7)
  {
    v9 = v8;
    if (v8)
    {
      v10 = [a3 mailboxName];
      [a3 internalDate];
      v22 = 0;
      if ([a4->var1 appendData:v9 toMailboxNamed:v10 flags:objc_msgSend(a3 dateReceived:"flags") newMessageInfo:{objc_msgSend(a3, "internalDate"), &v22}])
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
            v11 = _searchForNewUid(self, a4, v14, v10);

            if (!v11)
            {
LABEL_22:
              [-[IMAPAccount offlineCacheDirectoryPath](self->_account "offlineCacheDirectoryPath")];
              MFRemoveItemAtPath();
              goto LABEL_23;
            }

LABEL_13:
            StoreForMailboxName = _getStoreForMailboxName(self, &a4->var3, v10);
            if (StoreForMailboxName)
            {
              v17 = StoreForMailboxName;
              var4 = a4->var4;
              if (var4)
              {
                Value = CFDictionaryGetValue(var4, v10);
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

            CFDictionarySetValue(a4->var2, v7, v11);
            goto LABEL_22;
          }
        }

        goto LABEL_13;
      }

      v15 = MFLogGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_impl(&dword_258B7A000, v15, OS_LOG_TYPE_INFO, "**** Failed to append to %@", buf, 0xCu);
      }
    }
  }

LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_performCopyOperation:(id)a3 withContext:(id *)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v7 = [a3 mailboxName];
  v8 = [a3 destinationMailbox];
  if (v7)
  {
    v9 = v8;
    if (_selectMailboxIfNeeded(self, a4, v7))
    {
      v10 = [a3 sourceUids];
      if (([a3 usesRealUids] & 1) == 0)
      {
        v10 = _convertTemporaryUids(v10, a4->var2);
      }

      if (v10)
      {
        v84 = 0;
        if ([a4->var1 copyUids:v10 toMailboxNamed:v9 newMessageInfo:&v84])
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
              v20 = [a3 destinationUids];
              v21 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v20 forKeys:v10];
              while (IMAPNextUidFromSet(buffer))
              {
                v22 = IMAPNextUidFromSet(v53);
                if (!v22)
                {
                  break;
                }

                v23 = v22;
                v24 = [objc_msgSend(v21 objectForKey:{EFStringWithInt()), "intValue"}];
                [_getStoreForMailboxName(self &a4->var3];
                CFDictionarySetValue(a4->var2, v24, v23);
              }

LABEL_36:
              v40 = [(IMAPAccount *)self->_account offlineCacheDirectoryPath];
              v41 = [a3 destinationUids];
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v42 = [v41 countByEnumeratingWithState:&v49 objects:v85 count:16];
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
                      objc_enumerationMutation(v41);
                    }

                    [*(*(&v49 + 1) + 8 * i) intValue];
                    [v40 stringByAppendingPathComponent:EFStringWithInt()];
                    MFRemoveItemAtPath();
                  }

                  v43 = [v41 countByEnumeratingWithState:&v49 objects:v85 count:16];
                }

                while (v43);
              }

              goto LABEL_43;
            }
          }

          v26 = [a3 destinationUids];
          v27 = [v10 count];
          v28 = [v26 count];
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
          v47 = self;
          while (1)
          {
            v31 = [objc_msgSend(v26 objectAtIndex:{v30), "intValue"}];
            if (!v31)
            {
              goto LABEL_35;
            }

            v32 = v31;
            *buffer = 0;
            *v53 = 0;
            if (([a3 getMessageId:v53 andInternalDate:buffer forDestinationUid:v31] & 1) == 0)
            {
              goto LABEL_35;
            }

            v33 = _searchForNewUid(self, a4, *v53, v29);
            if (!v33)
            {
              goto LABEL_35;
            }

            v34 = v33;
            StoreForMailboxName = _getStoreForMailboxName(self, &a4->var3, v29);
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

            var4 = a4->var4;
            if (var4)
            {
              break;
            }

LABEL_33:
            [v36 setUid:v34 forMessageWithTemporaryUid:v32];
LABEL_34:
            CFDictionarySetValue(a4->var2, v32, v34);
            v29 = key;
            self = v47;
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

- (void)performDeferredOperationsWithConnection:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D283F8] currentMonitor];
  v29 = v5;
  v30 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  [a3 setDelegate:self];
  v36 = [v5 taskName];
  [v5 setTaskName:MFLookupLocalizedString()];
  [(MFIMAPOperationCache *)self mf_lock];
  self->_opsPending = 0;
  v6 = [(NSMutableArray *)self->_ops count];
  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v39 = v6;
    v40 = 2112;
    v41 = a3;
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
      LODWORD(v35) = [v5 acquireExclusiveAccessKey];
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

      v19 = [v16 operationType];
      if (v19 <= 2)
      {
        if (v19 == 1)
        {
          [(MFIMAPOperationCache *)self _performCreateOperation:v16 withContext:&v29];
        }

        else if (v19 == 2)
        {
          [(MFIMAPOperationCache *)self _performDeleteOperation:v16 withContext:&v29];
        }
      }

      else
      {
        switch(v19)
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

      v20 = [v16 approximateSize];
      LODWORD(v34) = v34 + v20;
      [v17 drain];
      if (([v30 isValid] & 1) == 0)
      {
        break;
      }

      if (v6 == ++v15)
      {
        v15 = v6;
        goto LABEL_35;
      }
    }

    v21 = [v16 failureCount];
    if (v21 < 2)
    {
      [v16 setFailureCount:v21 + 1];
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
  if ([v30 selectedMailbox])
  {
    [v30 unselect];
  }

  [v30 setDelegate:0];
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

  [v29 setTaskName:v36];

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