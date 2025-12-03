@interface _ML3MultiUserDaemonMusicLibraryResourcesManager
- (BOOL)shouldExecuteAccountChangeOperation:(id)operation reason:(id *)reason;
- (MLMediaLibraryAccountChangeObserver)accountChangeObserver;
- (NSString)currentActiveAccountDSID;
- (_ML3MultiUserDaemonMusicLibraryResourcesManager)initWithAccountInfo:(id)info accountChangeObserver:(id)observer;
- (id)_blockingCurrentActiveAccountDSID;
- (id)_libraryContainerPathForDSID:(id)d;
- (id)databasePathForDSID:(id)d;
- (id)libraryContainerPath;
- (id)musicAssetsContainerPath;
- (void)_accountStoreDidChangeNotification:(id)notification;
- (void)_notifyClients:(id)clients;
- (void)_processAccountChangeNotification;
- (void)_setupNotifications;
- (void)_tearDownNotifications;
- (void)accountChangeOperationWillStartPerformingDatabasePathChange:(id)change newDatabasePath:(id)path;
- (void)dealloc;
- (void)setCurrentActiveAccountDSID:(id)d;
@end

@implementation _ML3MultiUserDaemonMusicLibraryResourcesManager

- (MLMediaLibraryAccountChangeObserver)accountChangeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_accountChangeObserver);

  return WeakRetained;
}

- (void)accountChangeOperationWillStartPerformingDatabasePathChange:(id)change newDatabasePath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  pathCopy = path;
  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    finalDSID = [changeCopy finalDSID];
    v11 = 138543619;
    selfCopy = self;
    v13 = 2113;
    v14 = finalDSID;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - accountChangeOperationWillStartPerformingDatabasePathChange - final DSID: %{private}@", &v11, 0x16u);
  }

  finalDSID2 = [changeCopy finalDSID];
  [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self setCurrentActiveAccountDSID:finalDSID2];

  [ML3MusicLibrary setAutoupdatingSharedLibraryPath:pathCopy];
}

- (id)databasePathForDSID:(id)d
{
  v4 = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self _libraryContainerPathForDSID:d];
  v7.receiver = self;
  v7.super_class = _ML3MultiUserDaemonMusicLibraryResourcesManager;
  v5 = [(_ML3BaseMusicLibraryResourcesManager *)&v7 pathForResourceFileOrFolder:15 basePath:v4 relativeToBase:0 createParentFolderIfNecessary:1];

  return v5;
}

- (BOOL)shouldExecuteAccountChangeOperation:(id)operation reason:(id *)reason
{
  *reason = &stru_28408B690;
  operationCopy = operation;
  finalDSID = [operationCopy finalDSID];
  currentActiveAccountDSID = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self currentActiveAccountDSID];
  v9 = [finalDSID isEqualToString:currentActiveAccountDSID];

  v10 = MEMORY[0x277CCACA8];
  finalDSID2 = [operationCopy finalDSID];

  if (v9)
  {
    *reason = [v10 stringWithFormat:@"final and current dsid are identical: %@", finalDSID2];
  }

  else
  {
    currentActiveAccountDSID2 = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self currentActiveAccountDSID];
    *reason = [v10 stringWithFormat:@"final (%@) and current (%@) dsid are different", finalDSID2, currentActiveAccountDSID2];
  }

  return v9 ^ 1;
}

- (void)_notifyClients:(id)clients
{
  clientsCopy = clients;
  calloutQueue = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self calloutQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66___ML3MultiUserDaemonMusicLibraryResourcesManager__notifyClients___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = clientsCopy;
  v6 = clientsCopy;
  dispatch_sync(calloutQueue, v7);
}

- (void)_processAccountChangeNotification
{
  v28 = *MEMORY[0x277D85DE8];
  accountInfo = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self accountInfo];
  accountDSID = [accountInfo accountDSID];

  currentActiveAccountDSID = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self currentActiveAccountDSID];
  v6 = currentActiveAccountDSID;
  if (accountDSID)
  {
    v7 = [accountDSID isEqualToString:currentActiveAccountDSID];

    if (v7)
    {
      v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v18 = 138543362;
        selfCopy3 = self;
        v9 = "%{public}@ - User was logged-in and is still logged-in with the same dsid: nothing to to";
LABEL_11:
        _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEBUG, v9, &v18, 0xCu);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

LABEL_6:
    v10 = [_ML3MultiUserDaemonAccountChangeOperation alloc];
    currentActiveAccountDSID2 = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self currentActiveAccountDSID];
    accountChangeObserver = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self accountChangeObserver];
    v8 = [(_ML3MultiUserDaemonAccountChangeOperation *)v10 initWithInitialDSID:currentActiveAccountDSID2 finalDSID:accountDSID accountChangeObserver:accountChangeObserver];

    [v8 setDelegate:self];
    v13 = os_log_create("com.apple.amp.medialibrary", "MultiUser_Oversize");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      currentActiveAccountDSID3 = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self currentActiveAccountDSID];
      accountChangeOperationQueue = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self accountChangeOperationQueue];
      operations = [accountChangeOperationQueue operations];
      v18 = 138544387;
      selfCopy3 = self;
      v20 = 2113;
      v21 = currentActiveAccountDSID3;
      v22 = 2113;
      v23 = accountDSID;
      v24 = 2048;
      v25 = v8;
      v26 = 2114;
      v27 = operations;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - current dsid: %{private}@ - new dsid: %{private}@ - Enqueueing change operation=%p, all operations on queue=%{public}@", &v18, 0x34u);
    }

    accountChangeOperationQueue2 = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self accountChangeOperationQueue];
    [accountChangeOperationQueue2 addOperation:v8];

    goto LABEL_12;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138543362;
    selfCopy3 = self;
    v9 = "%{public}@ - User was logged-out and is still logged-out: nothing to to";
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_accountStoreDidChangeNotification:(id)notification
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ - Received account change notification", &v5, 0xCu);
  }

  [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self _processAccountChangeNotification];
}

- (void)_tearDownNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)_setupNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accountStoreDidChangeNotification_ name:*MEMORY[0x277CB8DB8] object:0];
}

- (id)_libraryContainerPathForDSID:(id)d
{
  v66 = *MEMORY[0x277D85DE8];
  dCopy = d;
  memset(v61, 0, sizeof(v61));
  v60 = 4001;
  CC_SHA1_Init(v61);
  v5 = dCopy;
  CC_SHA1_Update(v61, [v5 UTF8String], objc_msgSend(v5, "length"));

  memset(&v62[8], 0, 64);
  *v62 = 4001;
  CC_SHA1_Final(&v62[8], v61);
  v63[0] = *v62;
  v63[1] = *&v62[16];
  v63[2] = *&v62[32];
  v63[3] = *&v62[48];
  v64 = *&v62[64];
  if (*v62 > 3999)
  {
    if (*v62 > 4255)
    {
      if (*v62 == 4256)
      {
        v47 = v63 + 8;
        v48 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v49 = v48;
        for (i = 0; i != 64; i += 2)
        {
          v51 = *v47++;
          v52 = &v48[i];
          *v52 = MSVFastHexStringFromBytes_hexCharacters_28195[v51 >> 4];
          v52[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v51 & 0xF];
        }

        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        v19 = v49;
        v20 = 64;
      }

      else
      {
        if (*v62 != 4512)
        {
          goto LABEL_52;
        }

        v25 = v63 + 8;
        v26 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v27 = v26;
        for (j = 0; j != 128; j += 2)
        {
          v29 = *v25++;
          v30 = &v26[j];
          *v30 = MSVFastHexStringFromBytes_hexCharacters_28195[v29 >> 4];
          v30[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v29 & 0xF];
        }

        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        v19 = v27;
        v20 = 128;
      }
    }

    else if (*v62 == 4000)
    {
      v37 = v63 + 8;
      v38 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v39 = v38;
      for (k = 0; k != 32; k += 2)
      {
        v41 = *v37++;
        v42 = &v38[k];
        *v42 = MSVFastHexStringFromBytes_hexCharacters_28195[v41 >> 4];
        v42[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v41 & 0xF];
      }

      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = v39;
      v20 = 32;
    }

    else
    {
      if (*v62 != 4001)
      {
        goto LABEL_52;
      }

      v12 = v63 + 8;
      v13 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v14 = v13;
      for (m = 0; m != 40; m += 2)
      {
        v16 = *v12++;
        v17 = &v13[m];
        *v17 = MSVFastHexStringFromBytes_hexCharacters_28195[v16 >> 4];
        v17[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v16 & 0xF];
      }

      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = v14;
      v20 = 40;
    }

LABEL_47:
    v36 = [v18 initWithBytesNoCopy:v19 length:v20 encoding:4 freeWhenDone:1];
    goto LABEL_48;
  }

  if (*v62 > 2999)
  {
    if (*v62 == 3000)
    {
      LODWORD(v65[0]) = bswap32(DWORD2(v63[0]));
      v43 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v44 = 0;
      v45 = v43 + 1;
      do
      {
        v46 = *(v65 + v44);
        *(v45 - 1) = MSVFastHexStringFromBytes_hexCharacters_28195[v46 >> 4];
        *v45 = MSVFastHexStringFromBytes_hexCharacters_28195[v46 & 0xF];
        v45 += 2;
        ++v44;
      }

      while (v44 != 4);
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = v43;
      v20 = 8;
    }

    else
    {
      if (*v62 != 3001)
      {
        goto LABEL_52;
      }

      v65[0] = bswap64(*(&v63[0] + 1));
      v21 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v22 = 0;
      v23 = v21 + 1;
      do
      {
        v24 = *(v65 + v22);
        *(v23 - 1) = MSVFastHexStringFromBytes_hexCharacters_28195[v24 >> 4];
        *v23 = MSVFastHexStringFromBytes_hexCharacters_28195[v24 & 0xF];
        v23 += 2;
        ++v22;
      }

      while (v22 != 8);
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = v21;
      v20 = 16;
    }

    goto LABEL_47;
  }

  if (*v62 == 1000)
  {
    v31 = *(&v63[0] + 1);
    if (*(&v63[0] + 1))
    {
      v32 = &v66 + 1;
      quot = *(&v63[0] + 1);
      do
      {
        v34 = lldiv(quot, 10);
        quot = v34.quot;
        if (v34.rem >= 0)
        {
          LOBYTE(v35) = v34.rem;
        }

        else
        {
          v35 = -v34.rem;
        }

        *(v32 - 2) = v35 + 48;
        v11 = (v32 - 2);
        --v32;
      }

      while (v34.quot);
      if (v31 < 0)
      {
        *(v32 - 2) = 45;
        v11 = (v32 - 2);
      }

      v10 = (&v66 - v11);
      goto LABEL_37;
    }

    goto LABEL_53;
  }

  if (*v62 != 2000)
  {
LABEL_52:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [currentHandler handleFailureInFunction:v58 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v53 = &stru_28408B690;
    goto LABEL_49;
  }

  v6 = DWORD2(v63[0]);
  if (DWORD2(v63[0]))
  {
    v7 = &v66;
    do
    {
      v8 = ldiv(v6, 10);
      v6 = v8.quot;
      if (v8.rem >= 0)
      {
        LOBYTE(v9) = v8.rem;
      }

      else
      {
        v9 = -v8.rem;
      }

      *(v7 - 1) = v9 + 48;
      v7 = (v7 - 1);
    }

    while (v8.quot);
    v10 = (&v66 - v7);
    v11 = v7;
LABEL_37:
    v36 = CFStringCreateWithBytes(0, v11, v10, 0x8000100u, 0);
LABEL_48:
    v53 = v36;
    goto LABEL_49;
  }

LABEL_53:
  v53 = @"0";
LABEL_49:

  v59.receiver = self;
  v59.super_class = _ML3MultiUserDaemonMusicLibraryResourcesManager;
  libraryContainerPath = [(_ML3BaseMusicLibraryResourcesManager *)&v59 libraryContainerPath];
  v55 = [libraryContainerPath stringByAppendingPathComponent:v53];

  return v55;
}

- (void)setCurrentActiveAccountDSID:(id)d
{
  dCopy = d;
  serialQueue = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79___ML3MultiUserDaemonMusicLibraryResourcesManager_setCurrentActiveAccountDSID___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(serialQueue, v7);
}

- (NSString)currentActiveAccountDSID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__21234;
  v11 = __Block_byref_object_dispose__21235;
  v12 = 0;
  serialQueue = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75___ML3MultiUserDaemonMusicLibraryResourcesManager_currentActiveAccountDSID__block_invoke;
  v6[3] = &unk_278766080;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_blockingCurrentActiveAccountDSID
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    accountChangeOperationQueue = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self accountChangeOperationQueue];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = accountChangeOperationQueue;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ - BLOCKING - Retrieving libraryContainerPath on serial queue: %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy__21234;
  v18 = __Block_byref_object_dispose__21235;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84___ML3MultiUserDaemonMusicLibraryResourcesManager__blockingCurrentActiveAccountDSID__block_invoke;
  v11[3] = &unk_278766080;
  v11[4] = self;
  v11[5] = buf;
  v5 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v11];
  accountChangeOperationQueue2 = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self accountChangeOperationQueue];
  [accountChangeOperationQueue2 addOperation:v5];

  [v5 waitUntilFinished];
  v7 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    accountChangeOperationQueue3 = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self accountChangeOperationQueue];
    *v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = accountChangeOperationQueue3;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ - UNBLOCKED - Retrieved libraryContainerPath on serial queue: %{public}@", v12, 0x16u);
  }

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v9;
}

- (id)libraryContainerPath
{
  v11 = *MEMORY[0x277D85DE8];
  _blockingCurrentActiveAccountDSID = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self _blockingCurrentActiveAccountDSID];
  v4 = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self _libraryContainerPathForDSID:_blockingCurrentActiveAccountDSID];
  v5 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ - Retrieved libraryContainerPath %{public}@", &v7, 0x16u);
  }

  return v4;
}

- (id)musicAssetsContainerPath
{
  v78 = *MEMORY[0x277D85DE8];
  _blockingCurrentActiveAccountDSID = [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self _blockingCurrentActiveAccountDSID];
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  memset(&buf[8], 0, 32);
  *buf = 4001;
  CC_SHA1_Init(&buf[8]);
  v4 = _blockingCurrentActiveAccountDSID;
  CC_SHA1_Update(&buf[8], [v4 UTF8String], objc_msgSend(v4, "length"));

  memset(&v74[8], 0, 64);
  *v74 = 4001;
  CC_SHA1_Final(&v74[8], &buf[8]);
  v75[0] = *v74;
  v75[1] = *&v74[16];
  v75[2] = *&v74[32];
  v75[3] = *&v74[48];
  v76 = *&v74[64];
  if (*v74 > 3999)
  {
    if (*v74 > 4255)
    {
      if (*v74 == 4256)
      {
        v46 = v75 + 8;
        v47 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v48 = v47;
        for (i = 0; i != 64; i += 2)
        {
          v50 = *v46++;
          v51 = &v47[i];
          *v51 = MSVFastHexStringFromBytes_hexCharacters_28195[v50 >> 4];
          v51[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v50 & 0xF];
        }

        v17 = objc_alloc(MEMORY[0x277CCACA8]);
        v18 = v48;
        v19 = 64;
      }

      else
      {
        if (*v74 != 4512)
        {
          goto LABEL_56;
        }

        v24 = v75 + 8;
        v25 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v26 = v25;
        for (j = 0; j != 128; j += 2)
        {
          v28 = *v24++;
          v29 = &v25[j];
          *v29 = MSVFastHexStringFromBytes_hexCharacters_28195[v28 >> 4];
          v29[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v28 & 0xF];
        }

        v17 = objc_alloc(MEMORY[0x277CCACA8]);
        v18 = v26;
        v19 = 128;
      }
    }

    else if (*v74 == 4000)
    {
      v36 = v75 + 8;
      v37 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v38 = v37;
      for (k = 0; k != 32; k += 2)
      {
        v40 = *v36++;
        v41 = &v37[k];
        *v41 = MSVFastHexStringFromBytes_hexCharacters_28195[v40 >> 4];
        v41[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v40 & 0xF];
      }

      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = v38;
      v19 = 32;
    }

    else
    {
      if (*v74 != 4001)
      {
        goto LABEL_56;
      }

      v11 = v75 + 8;
      v12 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v13 = v12;
      for (m = 0; m != 40; m += 2)
      {
        v15 = *v11++;
        v16 = &v12[m];
        *v16 = MSVFastHexStringFromBytes_hexCharacters_28195[v15 >> 4];
        v16[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v15 & 0xF];
      }

      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = v13;
      v19 = 40;
    }

LABEL_47:
    v35 = [v17 initWithBytesNoCopy:v18 length:v19 encoding:4 freeWhenDone:1];
    goto LABEL_48;
  }

  if (*v74 > 2999)
  {
    if (*v74 == 3000)
    {
      LODWORD(v77[0]) = bswap32(DWORD2(v75[0]));
      v42 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v43 = 0;
      v44 = v42 + 1;
      do
      {
        v45 = *(v77 + v43);
        *(v44 - 1) = MSVFastHexStringFromBytes_hexCharacters_28195[v45 >> 4];
        *v44 = MSVFastHexStringFromBytes_hexCharacters_28195[v45 & 0xF];
        v44 += 2;
        ++v43;
      }

      while (v43 != 4);
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = v42;
      v19 = 8;
    }

    else
    {
      if (*v74 != 3001)
      {
        goto LABEL_56;
      }

      v77[0] = bswap64(*(&v75[0] + 1));
      v20 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v21 = 0;
      v22 = v20 + 1;
      do
      {
        v23 = *(v77 + v21);
        *(v22 - 1) = MSVFastHexStringFromBytes_hexCharacters_28195[v23 >> 4];
        *v22 = MSVFastHexStringFromBytes_hexCharacters_28195[v23 & 0xF];
        v22 += 2;
        ++v21;
      }

      while (v21 != 8);
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = v20;
      v19 = 16;
    }

    goto LABEL_47;
  }

  if (*v74 == 1000)
  {
    v30 = *(&v75[0] + 1);
    if (*(&v75[0] + 1))
    {
      v31 = &v78 + 1;
      quot = *(&v75[0] + 1);
      do
      {
        v33 = lldiv(quot, 10);
        quot = v33.quot;
        if (v33.rem >= 0)
        {
          LOBYTE(v34) = v33.rem;
        }

        else
        {
          v34 = -v33.rem;
        }

        *(v31 - 2) = v34 + 48;
        v10 = (v31 - 2);
        --v31;
      }

      while (v33.quot);
      if (v30 < 0)
      {
        *(v31 - 2) = 45;
        v10 = (v31 - 2);
      }

      v9 = (&v78 - v10);
      goto LABEL_37;
    }

    goto LABEL_57;
  }

  if (*v74 != 2000)
  {
LABEL_56:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [currentHandler handleFailureInFunction:v60 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v52 = &stru_28408B690;
    goto LABEL_49;
  }

  v5 = DWORD2(v75[0]);
  if (DWORD2(v75[0]))
  {
    v6 = &v78;
    do
    {
      v7 = ldiv(v5, 10);
      v5 = v7.quot;
      if (v7.rem >= 0)
      {
        LOBYTE(v8) = v7.rem;
      }

      else
      {
        v8 = -v7.rem;
      }

      *(v6 - 1) = v8 + 48;
      v6 = (v6 - 1);
    }

    while (v7.quot);
    v9 = (&v78 - v6);
    v10 = v6;
LABEL_37:
    v35 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
LABEL_48:
    v52 = v35;
    goto LABEL_49;
  }

LABEL_57:
  v52 = @"0";
LABEL_49:

  v61.receiver = self;
  v61.super_class = _ML3MultiUserDaemonMusicLibraryResourcesManager;
  musicAssetsContainerPath = [(_ML3BaseMusicLibraryResourcesManager *)&v61 musicAssetsContainerPath];
  lastPathComponent = [musicAssetsContainerPath lastPathComponent];
  v55 = [lastPathComponent isEqualToString:@"Music"];

  if ((v55 & 1) == 0)
  {
    v56 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543875;
      *&buf[4] = self;
      *&buf[12] = 2113;
      *&buf[14] = musicAssetsContainerPath;
      *&buf[22] = 2114;
      *&buf[24] = v52;
      _os_log_impl(&dword_22D2FA000, v56, OS_LOG_TYPE_FAULT, "%{public}@ - Unexpected musicAssetsContainerPath from base implementation. path=%{private}@ hashedDSID=%{public}@", buf, 0x20u);
    }
  }

  v57 = [musicAssetsContainerPath stringByAppendingPathComponent:v52];

  return v57;
}

- (void)dealloc
{
  [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)self _tearDownNotifications];
  v3.receiver = self;
  v3.super_class = _ML3MultiUserDaemonMusicLibraryResourcesManager;
  [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)&v3 dealloc];
}

- (_ML3MultiUserDaemonMusicLibraryResourcesManager)initWithAccountInfo:(id)info accountChangeObserver:(id)observer
{
  infoCopy = info;
  observerCopy = observer;
  v22.receiver = self;
  v22.super_class = _ML3MultiUserDaemonMusicLibraryResourcesManager;
  v9 = [(_ML3BaseMusicLibraryResourcesManager *)&v22 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.medialibraryd.multi-user-deamon-resources-serial-queue", 0);
    serialQueue = v9->_serialQueue;
    v9->_serialQueue = v10;

    v12 = dispatch_queue_create("com.apple.medialibraryd.multi-user-deamon-resources-callout-queue", MEMORY[0x277D85CD8]);
    calloutQueue = v9->_calloutQueue;
    v9->_calloutQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    accountChangeOperationQueue = v9->_accountChangeOperationQueue;
    v9->_accountChangeOperationQueue = v14;

    [(NSOperationQueue *)v9->_accountChangeOperationQueue setName:@"com.apple.medialibraryd.multi-user-deamon-resources-account-change-queue"];
    [(NSOperationQueue *)v9->_accountChangeOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v9->_accountChangeOperationQueue setQualityOfService:25];
    objc_storeStrong(&v9->_accountInfo, info);
    objc_storeWeak(&v9->_accountChangeObserver, observerCopy);
    accountDSID = [(_MSVAccountInformationProviding *)v9->_accountInfo accountDSID];
    v17 = [accountDSID copy];
    currentActiveAccountDSID = v9->_currentActiveAccountDSID;
    v9->_currentActiveAccountDSID = v17;

    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    accountStore = v9->_accountStore;
    v9->_accountStore = defaultStore;

    [(_ML3MultiUserDaemonMusicLibraryResourcesManager *)v9 _setupNotifications];
  }

  return v9;
}

@end