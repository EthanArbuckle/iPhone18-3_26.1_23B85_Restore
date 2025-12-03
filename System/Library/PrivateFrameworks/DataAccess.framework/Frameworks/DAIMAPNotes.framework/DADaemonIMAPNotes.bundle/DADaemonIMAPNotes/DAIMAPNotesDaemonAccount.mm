@interface DAIMAPNotesDaemonAccount
+ (BOOL)shouldCreateAccountForBackingAccountInfo:(id)info;
+ (void)_setMailHacks;
- (DAIMAPNotesDaemonAccount)initWithBackingAccountInfo:(id)info;
- (id)_copyNotesStoreFromDAFolder:(id)folder withNoteContext:(id)context;
- (id)defaultNotesFolder;
- (id)localNotesAccountInContext:(id)context;
- (id)notesFolders;
- (id)notesFoldersByFolderId;
- (void)_consumerQueueWrapper:(id)wrapper failedToRetrieveFolderListWithStatus:(int64_t)status error:(id)error;
- (void)_consumerQueueWrapperSuccessfullyRetrievedFolderList:(id)list;
- (void)_noteInvocationFinishedOnMainThread;
- (void)_reallySyncNotesFolderListWithConsumerQueueWrapper:(id)wrapper;
- (void)_syncNotesFolderListInLockWithConsumer:(id)consumer queue:(id)queue;
- (void)addNoteNeedingBodyDownload:(id)download;
- (void)dealloc;
- (void)deviceDidWake;
- (void)deviceWillSleep;
- (void)shutDownAndCallCallback:(id)callback;
- (void)syncNotesFolderListWithConsumer:(id)consumer queue:(id)queue;
- (void)synchronizeNotesFolder:(id)folder noteContext:(id)context previousTag:(id)tag actions:(id)actions changeSet:(id)set notesToDeleteAfterSync:(id)sync isInitialUberSync:(BOOL)uberSync isResyncAfterConnectionFailed:(BOOL)self0 moreLocalChangesAvailable:(BOOL)self1 consumer:(id)self2;
@end

@implementation DAIMAPNotesDaemonAccount

+ (void)_setMailHacks
{
  if (qword_22230 != -1)
  {
    sub_FA84();
  }
}

+ (BOOL)shouldCreateAccountForBackingAccountInfo:(id)info
{
  infoCopy = info;
  v5 = _os_feature_enabled_impl();
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  v8 = os_log_type_enabled(v6, v7);
  if (v5)
  {
    if (v8)
    {
      v11 = 138412546;
      v12 = infoCopy;
      v13 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v6, v7, "Not creating an agent for account info %@ (%{public}@) because new IMAP syncing is enabled", &v11, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    if (v8)
    {
      v11 = 138412546;
      v12 = infoCopy;
      v13 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v6, v7, "Not creating an agent for account info %@ (%{public}@) because it is a migrated iCloud account", &v11, 0x16u);
    }

    v9 = [NoteAccountObject shouldDataAccessCreateAccountForACAccount:infoCopy];
  }

  return v9;
}

- (DAIMAPNotesDaemonAccount)initWithBackingAccountInfo:(id)info
{
  infoCopy = info;
  +[DAIMAPNotesDaemonAccount _setMailHacks];
  v43.receiver = self;
  v43.super_class = DAIMAPNotesDaemonAccount;
  v5 = [(DAIMAPNotesDaemonAccount *)&v43 initWithBackingAccountInfo:infoCopy];
  if (!v5)
  {
    goto LABEL_20;
  }

  parentAccount = [infoCopy parentAccount];
  v7 = parentAccount;
  v38 = infoCopy;
  if (parentAccount)
  {
    v8 = parentAccount;
  }

  else
  {
    v8 = infoCopy;
  }

  v9 = v8;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = v9;
  childAccounts = [v9 childAccounts];
  v11 = [childAccounts countByEnumeratingWithState:&v39 objects:v50 count:16];
  v12 = kAccountDataclassMail;
  if (v11)
  {
    v13 = v11;
    v14 = *v40;
LABEL_7:
    v15 = 0;
    while (1)
    {
      if (*v40 != v14)
      {
        objc_enumerationMutation(childAccounts);
      }

      v16 = *(*(&v39 + 1) + 8 * v15);
      accountType = [v16 accountType];
      syncableDataclasses = [accountType syncableDataclasses];
      v19 = [syncableDataclasses containsObject:v12];

      if (v19)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [childAccounts countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v13)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v20 = v16;

    if (!v20)
    {
      goto LABEL_16;
    }

    v21 = v37;
    infoCopy = v38;
    goto LABEL_19;
  }

LABEL_13:

LABEL_16:
  v21 = v37;
  accountType2 = [v37 accountType];
  syncableDataclasses2 = [accountType2 syncableDataclasses];
  v24 = [syncableDataclasses2 containsObject:v12];

  infoCopy = v38;
  if (v24)
  {
    v25 = v37;
    if (v25)
    {
      v20 = v25;
LABEL_19:
      identifier = [v20 identifier];
      v27 = [MailAccount accountWithUniqueId:identifier];
      [(DAIMAPNotesDaemonAccount *)v5 setImapMailAccount:v27];

      v28 = [[IMAPNotesLibrary alloc] initWithPath:0];
      [(IMAPAccount *)v5->_imapMailAccount setLibrary:v28];
      [(IMAPNotesLibrary *)v28 setAccount:v5->_imapMailAccount];
      [(IMAPNotesLibrary *)v28 setNotesAccount:v5];
      v29 = [[MFAttachmentLibraryManager alloc] initWithPrimaryLibrary:v28];
      attachmentManager = v5->_attachmentManager;
      v5->_attachmentManager = v29;

      v31 = objc_opt_new();
      [(DAIMAPNotesDaemonAccount *)v5 setNotesNeedingBodyDownload:v31];

LABEL_20:
      v32 = v5;
      goto LABEL_24;
    }
  }

  v33 = DALoggingwithCategory();
  v34 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v33, v34))
  {
    childAccounts2 = [v37 childAccounts];
    *buf = 138412802;
    v45 = v5;
    v46 = 2112;
    v47 = v37;
    v48 = 2112;
    v49 = childAccounts2;
    _os_log_impl(&dword_0, v33, v34, "Couldn't find an imap account associated with account %@.  Parent %@.  Peers %@.", buf, 0x20u);
  }

  v32 = 0;
LABEL_24:

  return v32;
}

- (void)dealloc
{
  [(DAIMAPNotesDaemonAccount *)self _setSpinning:0];
  fullyShutDownCallback = self->_fullyShutDownCallback;
  if (fullyShutDownCallback)
  {
    v4 = objc_retainBlock(fullyShutDownCallback);
    v5 = self->_fullyShutDownCallback;
    self->_fullyShutDownCallback = 0;

    v4[2](v4);
  }

  v6.receiver = self;
  v6.super_class = DAIMAPNotesDaemonAccount;
  [(DAIMAPNotesDaemonAccount *)&v6 dealloc];
}

- (void)deviceWillSleep
{
  imapMailAccount = [(DAIMAPNotesDaemonAccount *)self imapMailAccount];
  [imapMailAccount systemWillSleep];

  v4.receiver = self;
  v4.super_class = DAIMAPNotesDaemonAccount;
  [(DAIMAPNotesDaemonAccount *)&v4 deviceWillSleep];
}

- (void)deviceDidWake
{
  imapMailAccount = [(DAIMAPNotesDaemonAccount *)self imapMailAccount];
  [imapMailAccount systemDidWake];

  v4.receiver = self;
  v4.super_class = DAIMAPNotesDaemonAccount;
  [(DAIMAPNotesDaemonAccount *)&v4 deviceDidWake];
}

- (id)localNotesAccountInContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  accountID = [(DAIMAPNotesDaemonAccount *)selfCopy accountID];
  newlyAddedAccount = [contextCopy accountForAccountId:accountID];

  v9 = newlyAddedAccount == 0;
  if (!newlyAddedAccount)
  {
    backingAccountInfo = [(DAIMAPNotesDaemonAccount *)selfCopy backingAccountInfo];
    v11 = [NoteAccountObject shouldDataAccessCreateAccountForACAccount:backingAccountInfo];

    if (v11)
    {
      v12 = DALoggingwithCategory();
      v13 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v12, v13))
      {
        accountID2 = [(DAIMAPNotesDaemonAccount *)selfCopy accountID];
        *buf = 138543362;
        v39 = accountID2;
        _os_log_impl(&dword_0, v12, v13, "Creating IMAPNotes account in db for account id %{public}@", buf, 0xCu);
      }

      newlyAddedAccount = [contextCopy newlyAddedAccount];
    }

    else
    {
      newlyAddedAccount = 0;
    }
  }

  accountIdentifier = [newlyAddedAccount accountIdentifier];
  accountID3 = [(DAIMAPNotesDaemonAccount *)selfCopy accountID];
  v17 = [accountIdentifier isEqualToString:accountID3];

  if ((v17 & 1) == 0)
  {
    accountID4 = [(DAIMAPNotesDaemonAccount *)selfCopy accountID];
    [newlyAddedAccount setAccountIdentifier:accountID4];

    v9 = 1;
  }

  name = [newlyAddedAccount name];
  accountDescription = [(DAIMAPNotesDaemonAccount *)selfCopy accountDescription];
  v21 = [name isEqualToString:accountDescription];

  if ((v21 & 1) == 0)
  {
    accountDescription2 = [(DAIMAPNotesDaemonAccount *)selfCopy accountDescription];
    [newlyAddedAccount setName:accountDescription2];

    v9 = 1;
  }

  if ([newlyAddedAccount accountType] != &dword_0 + 1)
  {
    v9 = 1;
    [newlyAddedAccount setAccountType:1];
  }

  v23 = [NSBundle bundleForClass:objc_opt_class()];
  v24 = [v23 pathForResource:@"IMAPNotesConstraints" ofType:@"plist"];
  pathToConstraintsPlist = [newlyAddedAccount pathToConstraintsPlist];
  v26 = [v24 isEqualToString:pathToConstraintsPlist];

  if (v26)
  {
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    [newlyAddedAccount setPathToConstraintsPlist:v24];
  }

  stores = [newlyAddedAccount stores];
  v28 = [stores count] == 0;

  if (!v28)
  {
    v37 = 0;
    v29 = [contextCopy save:&v37];
    v30 = v37;
    if ((v29 & 1) == 0)
    {
      v31 = DALoggingwithCategory();
      v32 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v31, v32))
      {
        dAExtendedDescription = [v30 DAExtendedDescription];
        *buf = 138412290;
        v39 = dAExtendedDescription;
        _os_log_impl(&dword_0, v31, v32, "Failed to save: %@", buf, 0xCu);
      }

      if ([NoteContext databaseIsCorrupt:v30])
      {
        v34 = DALoggingwithCategory();
        if (os_log_type_enabled(v34, v32))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v34, v32, "Notes database was corrupted! This is a fatal error, so let's try that again.", buf, 2u);
        }

        v35 = +[NSAssertionHandler currentHandler];
        [v35 handleFailureInMethod:a2 object:selfCopy file:@"DAIMAPNotesDaemonAccount.m" lineNumber:214 description:{@"Notes db was corrupted.  Crashing the daemon to get a second chance at it (err %@)", v30}];
      }
    }
  }

LABEL_26:

  objc_sync_exit(selfCopy);

  return newlyAddedAccount;
}

- (id)_copyNotesStoreFromDAFolder:(id)folder withNoteContext:(id)context
{
  folderCopy = folder;
  contextCopy = context;
  v8 = [(DAIMAPNotesDaemonAccount *)self localNotesAccountInContext:contextCopy];
  if (v8)
  {
    newlyAddedStore = [contextCopy newlyAddedStore];
    folderID = [folderCopy folderID];
    [newlyAddedStore setExternalIdentifier:folderID];

    [newlyAddedStore setAccount:v8];
    folderName = [folderCopy folderName];
    [newlyAddedStore setName:folderName];

    if ([folderCopy isDefault])
    {
      [v8 setDefaultStore:newlyAddedStore];
    }
  }

  else
  {
    newlyAddedStore = 0;
  }

  return newlyAddedStore;
}

- (void)_reallySyncNotesFolderListWithConsumerQueueWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  selfCopy = self;
  backingAccountInfo = [(DAIMAPNotesDaemonAccount *)self backingAccountInfo];
  v5 = [NoteAccountObject shouldDataAccessCreateAccountForACAccount:backingAccountInfo];

  if (v5)
  {
    if ([(DAIMAPNotesDaemonAccount *)selfCopy isShuttingDown])
    {
      v6 = DALoggingwithCategory();
      v7 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, v7, "Not syncing folder list, we're on our way out", buf, 2u);
      }

      [(DAIMAPNotesDaemonAccount *)selfCopy _setSpinning:0];
      [(DAIMAPNotesDaemonAccount *)selfCopy _consumerQueueWrapper:wrapperCopy failedToRetrieveFolderListWithStatus:-1 error:0];
    }

    v8 = DALoggingwithCategory();
    type = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, type))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, type, "Gonna grab our mailbox list now", buf, 2u);
    }

    [(DAIMAPNotesDaemonAccount *)selfCopy _setSpinning:1];
    v9 = objc_opt_new();
    imapMailAccount = [(DAIMAPNotesDaemonAccount *)selfCopy imapMailAccount];
    library = [imapMailAccount library];
    [library setNoteContext:v9];
    v86 = v9;

    imapMailAccount2 = [(DAIMAPNotesDaemonAccount *)selfCopy imapMailAccount];
    rootMailboxUid = [imapMailAccount2 rootMailboxUid];

    imapMailAccount3 = [(DAIMAPNotesDaemonAccount *)selfCopy imapMailAccount];
    [imapMailAccount3 getMailboxListWithConnection:0];

    v15 = +[MFActivityMonitor currentMonitor];
    error = [v15 error];

    if (error)
    {
      v16 = DALoggingwithCategory();
      v17 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v16, v17))
      {
        *buf = 138412290;
        v107 = error;
        _os_log_impl(&dword_0, v16, v17, "Monitor gave error %@", buf, 0xCu);
      }

      [(DAIMAPNotesDaemonAccount *)selfCopy _setSpinning:0];
      [(DAIMAPNotesDaemonAccount *)selfCopy _consumerQueueWrapper:wrapperCopy failedToRetrieveFolderListWithStatus:14 error:error];
LABEL_66:
      v75 = dataaccess_get_global_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_642C;
      block[3] = &unk_1C588;
      block[4] = selfCopy;
      dispatch_async(v75, block);

      v76 = DALoggingwithCategory();
      if (os_log_type_enabled(v76, type))
      {
        daFoldersByFolderId = [(DAIMAPNotesDaemonAccount *)selfCopy daFoldersByFolderId];
        *buf = 138412290;
        v107 = daFoldersByFolderId;
        _os_log_impl(&dword_0, v76, type, "Done, found folders of %@", buf, 0xCu);
      }

      imapMailAccount4 = [(DAIMAPNotesDaemonAccount *)selfCopy imapMailAccount];
      library2 = [imapMailAccount4 library];
      [library2 setNoteContext:0];

      [(DAIMAPNotesDaemonAccount *)selfCopy _noteInvocationFinished];
      goto LABEL_69;
    }

    v20 = DALoggingwithCategory();
    if (os_log_type_enabled(v20, type))
    {
      imapMailAccount5 = [(DAIMAPNotesDaemonAccount *)selfCopy imapMailAccount];
      allMailboxUids = [imapMailAccount5 allMailboxUids];
      *buf = 138412290;
      v107 = allMailboxUids;
      _os_log_impl(&dword_0, v20, type, "Folders from account are %@", buf, 0xCu);
    }

    v23 = selfCopy;
    objc_sync_enter(v23);
    obj = v23;
    v24 = objc_opt_new();
    [(DAIMAPNotesDaemonAccount *)v23 setDaFoldersByFolderId:v24];

    imapMailAccount6 = [(DAIMAPNotesDaemonAccount *)v23 imapMailAccount];
    v26 = [imapMailAccount6 mailboxUidForRelativePath:@"Notes" create:0];

    if (v26)
    {
      goto LABEL_21;
    }

    v27 = DALoggingwithCategory();
    if (os_log_type_enabled(v27, type))
    {
      *buf = 138412290;
      v107 = obj;
      _os_log_impl(&dword_0, v27, type, "No Notes folder exists for account %@.  Creating one on the server", buf, 0xCu);
    }

    imapMailAccount7 = [(DAIMAPNotesDaemonAccount *)obj imapMailAccount];
    v26 = [imapMailAccount7 mailboxUidForRelativePath:@"Notes" create:1];

    if (v26)
    {
LABEL_21:
      v85 = v26;
      v29 = [(DAIMAPNotesDaemonAccount *)obj _copyDAFolderFromMailboxUid:v26 isDefault:1];
      daFoldersByFolderId2 = [(DAIMAPNotesDaemonAccount *)obj daFoldersByFolderId];
      folderID = [v29 folderID];
      [daFoldersByFolderId2 setObject:v29 forKeyedSubscript:folderID];

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      depthFirstEnumerator = [v85 depthFirstEnumerator];
      v33 = [depthFirstEnumerator countByEnumeratingWithState:&v99 objects:v105 count:16];
      if (v33)
      {
        v34 = *v100;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v100 != v34)
            {
              objc_enumerationMutation(depthFirstEnumerator);
            }

            v36 = *(*(&v99 + 1) + 8 * i);
            if (v36 != v85)
            {
              v37 = [(DAIMAPNotesDaemonAccount *)obj _copyDAFolderFromMailboxUid:v36 isDefault:0];

              daFoldersByFolderId3 = [(DAIMAPNotesDaemonAccount *)obj daFoldersByFolderId];
              folderID2 = [v37 folderID];
              [daFoldersByFolderId3 setObject:v37 forKeyedSubscript:folderID2];

              v29 = v37;
            }
          }

          v33 = [depthFirstEnumerator countByEnumeratingWithState:&v99 objects:v105 count:16];
        }

        while (v33);
      }
    }

    else
    {
      v85 = 0;
    }

    v87 = [(DAIMAPNotesDaemonAccount *)obj localNotesAccountInContext:v86];
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    daFoldersByFolderId4 = [(DAIMAPNotesDaemonAccount *)obj daFoldersByFolderId];
    allValues = [daFoldersByFolderId4 allValues];

    v42 = 0;
    v43 = [allValues countByEnumeratingWithState:&v95 objects:v104 count:16];
    if (v43)
    {
      v44 = *v96;
      do
      {
        for (j = 0; j != v43; j = j + 1)
        {
          if (*v96 != v44)
          {
            objc_enumerationMutation(allValues);
          }

          v46 = *(*(&v95 + 1) + 8 * j);
          folderID3 = [v46 folderID];
          v48 = [v87 storeForExternalId:folderID3];

          if (!v48)
          {
            v48 = [(DAIMAPNotesDaemonAccount *)obj _copyNotesStoreFromDAFolder:v46 withNoteContext:v86];
            v42 = 1;
          }

          name = [v48 name];
          folderName = [v46 folderName];
          v51 = [name isEqualToString:folderName];

          if ((v51 & 1) == 0)
          {
            folderName2 = [v46 folderName];
            [v48 setName:folderName2];

            v42 = 1;
          }
        }

        v43 = [allValues countByEnumeratingWithState:&v95 objects:v104 count:16];
      }

      while (v43);
    }

    stores = [v87 stores];
    v54 = [stores copy];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v55 = v54;
    v56 = [v55 countByEnumeratingWithState:&v91 objects:v103 count:16];
    v57 = obj;
    if (!v56)
    {
LABEL_54:

      if (v42)
      {
        v90 = 0;
        v66 = [v86 save:&v90];
        v67 = v90;
        if ((v66 & 1) == 0)
        {
          v68 = DALoggingwithCategory();
          v69 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v68, v69))
          {
            dAExtendedDescription = [v67 DAExtendedDescription];
            v71 = dAExtendedDescription;
            v72 = @"<no description>";
            if (dAExtendedDescription)
            {
              v72 = dAExtendedDescription;
            }

            *buf = 138412290;
            v107 = v72;
            _os_log_impl(&dword_0, v68, v69, "Failed to save: %@", buf, 0xCu);
          }

          if ([NoteContext databaseIsCorrupt:v67])
          {
            v73 = DALoggingwithCategory();
            if (os_log_type_enabled(v73, v69))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v73, v69, "Notes database was corrupted! This is a fatal error, so let's try that again.", buf, 2u);
            }

            v74 = +[NSAssertionHandler currentHandler];
            [v74 handleFailureInMethod:a2 object:obj file:@"DAIMAPNotesDaemonAccount.m" lineNumber:343 description:{@"Notes db was corrupted.  Crashing the daemon to get a second chance at it (err %@)", v67}];
          }
        }
      }

      objc_sync_exit(obj);
      [(DAIMAPNotesDaemonAccount *)obj _setSpinning:0];
      [(DAIMAPNotesDaemonAccount *)obj _consumerQueueWrapperSuccessfullyRetrievedFolderList:wrapperCopy];
      goto LABEL_66;
    }

    v58 = *v92;
LABEL_44:
    v59 = 0;
    while (1)
    {
      if (*v92 != v58)
      {
        objc_enumerationMutation(v55);
      }

      v60 = *(*(&v91 + 1) + 8 * v59);
      externalIdentifier = [v60 externalIdentifier];
      if (![externalIdentifier length])
      {
        break;
      }

      daFoldersByFolderId5 = [(DAIMAPNotesDaemonAccount *)v57 daFoldersByFolderId];
      externalIdentifier2 = [v60 externalIdentifier];
      v64 = [daFoldersByFolderId5 objectForKeyedSubscript:externalIdentifier2];
      v65 = v64 == 0;

      if (v65)
      {
        goto LABEL_51;
      }

LABEL_52:
      v59 = v59 + 1;
      v57 = obj;
      if (v56 == v59)
      {
        v56 = [v55 countByEnumeratingWithState:&v91 objects:v103 count:16];
        if (!v56)
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }
    }

LABEL_51:
    [v86 deleteStore:v60];
    v42 = 1;
    goto LABEL_52;
  }

  v18 = DALoggingwithCategory();
  v19 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v18, v19))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v18, v19, "Not syncing folder list for migrated iCloud account", buf, 2u);
  }

  [(DAIMAPNotesDaemonAccount *)selfCopy _setSpinning:0];
  [(DAIMAPNotesDaemonAccount *)selfCopy _consumerQueueWrapper:wrapperCopy failedToRetrieveFolderListWithStatus:68 error:0];
  [(DAIMAPNotesDaemonAccount *)selfCopy _noteInvocationFinished];
LABEL_69:
}

- (void)_consumerQueueWrapperSuccessfullyRetrievedFolderList:(id)list
{
  listCopy = list;
  consumer = [listCopy consumer];
  queue = [listCopy queue];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6568;
  block[3] = &unk_1C588;
  v8 = consumer;
  v6 = consumer;
  dispatch_async(queue, block);
}

- (void)_consumerQueueWrapper:(id)wrapper failedToRetrieveFolderListWithStatus:(int64_t)status error:(id)error
{
  errorCopy = error;
  wrapperCopy = wrapper;
  consumer = [wrapperCopy consumer];
  queue = [wrapperCopy queue];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6660;
  block[3] = &unk_1C5B0;
  v15 = errorCopy;
  statusCopy = status;
  v14 = consumer;
  v11 = errorCopy;
  v12 = consumer;
  dispatch_async(queue, block);
}

- (void)_syncNotesFolderListInLockWithConsumer:(id)consumer queue:(id)queue
{
  consumerCopy = consumer;
  queueCopy = queue;
  if (![(DAIMAPNotesDaemonAccount *)self isShuttingDown])
  {
    v8 = [[DAIMAPNotesFolderListConsumerQueueWrapper alloc] initWithConsumer:consumerCopy queue:queueCopy];
    v9 = [MFMonitoredInvocation mf_invocationWithSelector:"_reallySyncNotesFolderListWithConsumerQueueWrapper:" target:self object:v8];
    [(DAIMAPNotesDaemonAccount *)self setOutstandingInvocationCount:[(DAIMAPNotesDaemonAccount *)self outstandingInvocationCount]+ 1];
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v10, v11))
    {
      v13 = 138412546;
      selfCopy = self;
      v15 = 1024;
      outstandingInvocationCount = [(DAIMAPNotesDaemonAccount *)self outstandingInvocationCount];
      _os_log_impl(&dword_0, v10, v11, "IMAP daemon account %@ is syncing Notes folder list, outstandingInvocationCount is incremented to %d", &v13, 0x12u);
    }

    v12 = +[MFInvocationQueue sharedInvocationQueue];
    [v12 addInvocation:v9];
  }
}

- (void)syncNotesFolderListWithConsumer:(id)consumer queue:(id)queue
{
  consumerCopy = consumer;
  queueCopy = queue;
  if (![(DAIMAPNotesDaemonAccount *)self isShuttingDown])
  {
    v8 = +[DALocalDBGateKeeper sharedGateKeeper];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_68E0;
    v9[3] = &unk_1C5D8;
    v9[4] = self;
    v10 = consumerCopy;
    v11 = queueCopy;
    [v8 registerWaiter:self forDataclassLocks:32 completionHandler:v9];
  }
}

- (id)notesFolders
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  daFoldersByFolderId = [(DAIMAPNotesDaemonAccount *)selfCopy daFoldersByFolderId];
  allValues = [daFoldersByFolderId allValues];

  objc_sync_exit(selfCopy);

  return allValues;
}

- (id)defaultNotesFolder
{
  [(DAIMAPNotesDaemonAccount *)self notesFolders];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isDefault])
        {
          v12 = v8;

          goto LABEL_17;
        }

        if (v5)
        {
          folderName = [v8 folderName];
          v10 = [folderName isEqualToString:@"Notes"];

          if (v10)
          {
            v11 = v8;

            v5 = v11;
          }
        }

        else
        {
          v5 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  v5 = v5;
  v12 = v5;
LABEL_17:

  return v12;
}

- (id)notesFoldersByFolderId
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  daFoldersByFolderId = [(DAIMAPNotesDaemonAccount *)selfCopy daFoldersByFolderId];
  objc_sync_exit(selfCopy);

  return daFoldersByFolderId;
}

- (void)synchronizeNotesFolder:(id)folder noteContext:(id)context previousTag:(id)tag actions:(id)actions changeSet:(id)set notesToDeleteAfterSync:(id)sync isInitialUberSync:(BOOL)uberSync isResyncAfterConnectionFailed:(BOOL)self0 moreLocalChangesAvailable:(BOOL)self1 consumer:(id)self2
{
  folderCopy = folder;
  contextCopy = context;
  tagCopy = tag;
  actionsCopy = actions;
  setCopy = set;
  syncCopy = sync;
  consumerCopy = consumer;
  if ([(DAIMAPNotesDaemonAccount *)self isShuttingDown])
  {
    [consumerCopy notesFolderWithId:folderCopy failedToSyncWithStatus:-1 error:0];
    goto LABEL_176;
  }

  selfCopy = self;
  imapMailAccount = [(DAIMAPNotesDaemonAccount *)self imapMailAccount];
  library = [imapMailAccount library];
  [library setNoteContext:contextCopy];

  [(DAIMAPNotesDaemonAccount *)self _setSpinning:1];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  obj = selfCopy2;
  daFoldersByFolderId = [(DAIMAPNotesDaemonAccount *)selfCopy2 daFoldersByFolderId];
  v158 = [daFoldersByFolderId objectForKeyedSubscript:folderCopy];

  objc_sync_exit(obj);
  v154 = [(DAIMAPNotesDaemonAccount *)obj localNotesAccountInContext:contextCopy];
  folderID = [v158 folderID];
  v155 = [v154 storeForExternalId:folderID];

  if (!v158 || !v155)
  {
    v29 = DALoggingwithCategory();
    v30 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v29, v30))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v29, v30, "Our folder went bye-bye", buf, 2u);
    }

    goto LABEL_174;
  }

  imapMailAccount2 = [(DAIMAPNotesDaemonAccount *)obj imapMailAccount];
  mailboxUid = [v158 mailboxUid];
  v25 = [imapMailAccount2 storeForMailboxUid:mailboxUid];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v144 = +[NSAssertionHandler currentHandler];
    [v144 handleFailureInMethod:a2 object:obj file:@"DAIMAPNotesDaemonAccount.m" lineNumber:480 description:{@"Got an unacceptable store class %@ from my account", objc_opt_class()}];
  }

  v26 = v25;
  [v26 setAdditionalFetchHeaders:&off_1CF08];
  v165 = v26;
  if (+[DABehaviorOptions allIMAPServersSupportNotesSearch])
  {
    v27 = DALoggingwithCategory();
    v28 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v27, v28))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v27, v28, "Sending header-based search to all IMAP servers", buf, 2u);
    }

    goto LABEL_16;
  }

  imapMailAccount3 = [(DAIMAPNotesDaemonAccount *)obj imapMailAccount];
  accountTypeIdentifier = [objc_opt_class() accountTypeIdentifier];
  v33 = [accountTypeIdentifier isEqualToString:ACAccountTypeIdentifierIMAP];

  if (!v33)
  {
LABEL_16:
    [v26 setAdditionalSynchronizationSearchArguments:&off_1CF20];
    goto LABEL_17;
  }

  v34 = DALoggingwithCategory();
  v35 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v34, v35))
  {
    imapMailAccount4 = [(DAIMAPNotesDaemonAccount *)obj imapMailAccount];
    accountTypeIdentifier2 = [objc_opt_class() accountTypeIdentifier];
    *buf = 138412290;
    *v206 = accountTypeIdentifier2;
    _os_log_impl(&dword_0, v34, v35, "NOT requesting notes-only, as the account type %@ does not support that", buf, 0xCu);
  }

  v26 = v165;
LABEL_17:
  v38 = DALoggingwithCategory();
  type = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v38, type))
  {
    *buf = 138412290;
    *v206 = v26;
    _os_log_impl(&dword_0, v38, type, "This should be interesting.  Gonna fetch new messages for store %@", buf, 0xCu);
  }

  v168 = objc_opt_new();
  v172 = objc_opt_new();
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v39 = actionsCopy;
  v40 = [v39 countByEnumeratingWithState:&v196 objects:v209 count:16];
  if (v40)
  {
    v41 = *v197;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v197 != v41)
        {
          objc_enumerationMutation(v39);
        }

        v43 = *(*(&v196 + 1) + 8 * i);
        itemChangeType = [v43 itemChangeType];
        if (itemChangeType >= 2)
        {
          if (itemChangeType != &dword_0 + 2)
          {
            continue;
          }

          serverId = [v43 serverId];
          [v172 addObject:serverId];
        }

        else
        {
          serverId = [v43 changedItem];
          [v168 addObject:serverId];
        }
      }

      v40 = [v39 countByEnumeratingWithState:&v196 objects:v209 count:16];
    }

    while (v40);
  }

  v46 = DALoggingwithCategory();
  v153 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v46, v153))
  {
    v47 = [v168 count];
    v48 = [v172 count];
    *buf = 138412802;
    *v206 = folderCopy;
    *&v206[8] = 2048;
    *&v206[10] = v47;
    v207 = 2048;
    v208 = v48;
    _os_log_impl(&dword_0, v46, v153, "Syncing folder %@ with %lu add/modifies, %lu deletes", buf, 0x20u);
  }

  v49 = [v155 notesForIntegerIds:v168];
  v170 = objc_opt_new();
  v171 = objc_opt_new();
  v167 = objc_opt_new();
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v169 = v49;
  v50 = [v169 countByEnumeratingWithState:&v192 objects:v204 count:16];
  if (v50)
  {
    v51 = *v193;
    v52 = _CPLog_to_os_log_type[3];
    do
    {
      for (j = 0; j != v50; j = j + 1)
      {
        if (*v193 != v51)
        {
          objc_enumerationMutation(v169);
        }

        v54 = *(*(&v192 + 1) + 8 * j);
        if ([v54 hasValidServerIntId])
        {
          v55 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v54 serverIntId]);
          [v172 addObject:v55];
        }

        imapMailAccount5 = [(DAIMAPNotesDaemonAccount *)obj imapMailAccount];
        attachmentManager = [(DAIMAPNotesDaemonAccount *)obj attachmentManager];
        v58 = [DAIMAPNotesUtils outgoingMessageFromLocalNoteObject:v54 imapAccount:imapMailAccount5 attachmentManager:attachmentManager];

        if (v58)
        {
          [v170 addObject:v58];
          v59 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v54 serverIntId]);
          [v171 setObject:v59 forKeyedSubscript:v58];
LABEL_46:

          goto LABEL_47;
        }

        v60 = DALoggingwithCategory();
        if (os_log_type_enabled(v60, v52))
        {
          *buf = 138412290;
          *v206 = v54;
          _os_log_impl(&dword_0, v60, v52, "Couldn't cons up a message for note %@", buf, 0xCu);
        }

        if ([v54 hasValidServerIntId])
        {
          v59 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v54 serverIntId]);
          [v167 addObject:v59];
          goto LABEL_46;
        }

LABEL_47:
      }

      v50 = [v169 countByEnumeratingWithState:&v192 objects:v204 count:16];
    }

    while (v50);
  }

  if (![(DAIMAPNotesDaemonAccount *)obj isShuttingDown])
  {
    if ([v170 count])
    {
      v66 = objc_opt_new();
      v67 = DALoggingwithCategory();
      if (os_log_type_enabled(v67, v153))
      {
        *buf = 138412290;
        *v206 = v170;
        _os_log_impl(&dword_0, v67, v153, "Asking store to append messages %@", buf, 0xCu);
      }

      [v165 appendMessages:v170 unsuccessfulOnes:v66];
      if ([v66 count])
      {
        v68 = DALoggingwithCategory();
        v69 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v68, v69))
        {
          *buf = 138412290;
          *v206 = v66;
          _os_log_impl(&dword_0, v68, v69, "Failed to append these messages %@", buf, 0xCu);
        }

        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v70 = v66;
        v71 = [v70 countByEnumeratingWithState:&v184 objects:v202 count:16];
        if (v71)
        {
          v72 = *v185;
          do
          {
            for (k = 0; k != v71; k = k + 1)
            {
              if (*v185 != v72)
              {
                objc_enumerationMutation(v70);
              }

              v74 = [v171 objectForKeyedSubscript:*(*(&v184 + 1) + 8 * k)];
              [v172 removeObject:v74];
            }

            v71 = [v70 countByEnumeratingWithState:&v184 objects:v202 count:16];
          }

          while (v71);
        }
      }
    }

    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v75 = v170;
    v76 = [v75 countByEnumeratingWithState:&v180 objects:v201 count:16];
    if (v76)
    {
      v77 = *v181;
      do
      {
        for (m = 0; m != v76; m = m + 1)
        {
          if (*v181 != v77)
          {
            objc_enumerationMutation(v75);
          }

          [*(*(&v180 + 1) + 8 * m) setMessageBody:0];
        }

        v76 = [v75 countByEnumeratingWithState:&v180 objects:v201 count:16];
      }

      while (v76);
    }

    if ([(DAIMAPNotesDaemonAccount *)obj isShuttingDown])
    {
      v62 = DALoggingwithCategory();
      if (os_log_type_enabled(v62, v153))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v62, v153, "Bailing early, as someone wants us to shut down", buf, 2u);
      }

      goto LABEL_173;
    }

    if ([v172 count])
    {
      v79 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v172, "count")}];
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v80 = v172;
      v81 = [v80 countByEnumeratingWithState:&v176 objects:v200 count:16];
      if (v81)
      {
        v82 = *v177;
        do
        {
          for (n = 0; n != v81; n = n + 1)
          {
            if (*v177 != v82)
            {
              objc_enumerationMutation(v80);
            }

            v84 = *(*(&v176 + 1) + 8 * n);
            if (([v167 containsObject:v84] & 1) == 0)
            {
              v85 = [[MFLibraryMessage alloc] initWithLibraryID:0xFFFFFFFFLL];
              longLongValue = [v84 longLongValue];
              if (longLongValue < 0)
              {
                [v85 setHasTemporaryUid:1];
                longLongValue = -longLongValue;
              }

              v87 = [NSString stringWithFormat:@"%llu", longLongValue];
              [v85 setRemoteID:v87];

              [v85 setMessageStore:v165];
              [v79 addObject:v85];
            }
          }

          v81 = [v80 countByEnumeratingWithState:&v176 objects:v200 count:16];
        }

        while (v81);
      }

      v88 = DALoggingwithCategory();
      if (os_log_type_enabled(v88, v153))
      {
        *buf = 138412290;
        *v206 = v79;
        _os_log_impl(&dword_0, v88, v153, "Deleting messages %@", buf, 0xCu);
      }

      [v165 deleteMessages:v79 moveToTrash:0];
    }

    notesNeedingBodyDownload = [(DAIMAPNotesDaemonAccount *)obj notesNeedingBodyDownload];
    v90 = [notesNeedingBodyDownload count] == 0;

    if (!v90)
    {
      v145 = +[NSAssertionHandler currentHandler];
      [v145 handleFailureInMethod:a2 object:obj file:@"DAIMAPNotesDaemonAccount.m" lineNumber:592 description:@"We should not have any messages pending a body download at this point."];
    }

    v62 = [contextCopy allNotesWithoutBodiesInCollection:v155];
    v91 = DALoggingwithCategory();
    if (os_log_type_enabled(v91, type))
    {
      *buf = 138412546;
      *v206 = v155;
      *&v206[8] = 2112;
      *&v206[10] = v62;
      _os_log_impl(&dword_0, v91, type, "NoteStore %@ had notes needing bodies %@", buf, 0x16u);
    }

    v92 = v165;
    if ([v62 count])
    {
      notesNeedingBodyDownload2 = [(DAIMAPNotesDaemonAccount *)obj notesNeedingBodyDownload];
      [notesNeedingBodyDownload2 addObjectsFromArray:v62];

      v92 = v165;
    }

    if ([(DAIMAPNotesDaemonAccount *)obj isShuttingDown])
    {
      v94 = DALoggingwithCategory();
      if (os_log_type_enabled(v94, v153))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v94, v153, "Bailing early, as someone wants us to shut down", buf, 2u);
      }

LABEL_172:

      goto LABEL_173;
    }

    [v92 fetchMobileSynchronously:0x7FFFFFFFFFFFFFFFLL];
    v175 = 0;
    v95 = [contextCopy save:&v175];
    v94 = v175;
    if ((v95 & 1) == 0)
    {
      v96 = DALoggingwithCategory();
      v97 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v96, v97))
      {
        dAExtendedDescription = [v94 DAExtendedDescription];
        *buf = 138412290;
        *v206 = dAExtendedDescription;
        _os_log_impl(&dword_0, v96, v97, "Failed to save after getting note metadata: %@", buf, 0xCu);
      }

      if ([NoteContext databaseIsCorrupt:v94])
      {
        v99 = DALoggingwithCategory();
        if (os_log_type_enabled(v99, v97))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v99, v97, "Notes database was corrupted! This is a fatal error, so let's try that again.", buf, 2u);
        }

        v100 = +[NSAssertionHandler currentHandler];
        [v100 handleFailureInMethod:a2 object:obj file:@"DAIMAPNotesDaemonAccount.m" lineNumber:609 description:{@"Notes db was corrupted.  Crashing the daemon to get a second chance at it (err %@)", v94}];
      }
    }

    notesNeedingBodyDownload3 = [(DAIMAPNotesDaemonAccount *)obj notesNeedingBodyDownload];
    v102 = [notesNeedingBodyDownload3 count];

    if (v102)
    {
      notesNeedingBodyDownload4 = [(DAIMAPNotesDaemonAccount *)obj notesNeedingBodyDownload];
      [notesNeedingBodyDownload4 sortUsingComparator:&stru_1C618];
    }

    v104 = 0;
    v105 = 1;
    v148 = _CPLog_to_os_log_type[3];
    v147 = _CPLog_to_os_log_type[5];
    while (1)
    {
      notesNeedingBodyDownload5 = [(DAIMAPNotesDaemonAccount *)obj notesNeedingBodyDownload];
      v107 = [notesNeedingBodyDownload5 count] > v104;

      if (!v107)
      {
LABEL_171:
        notesNeedingBodyDownload6 = [(DAIMAPNotesDaemonAccount *)obj notesNeedingBodyDownload];
        [notesNeedingBodyDownload6 removeAllObjects];

        goto LABEL_172;
      }

      context = objc_autoreleasePoolPush();
      notesNeedingBodyDownload7 = [(DAIMAPNotesDaemonAccount *)obj notesNeedingBodyDownload];
      v166 = [notesNeedingBodyDownload7 objectAtIndexedSubscript:v104];

      isBookkeepingEntry = [v166 isBookkeepingEntry];
      LODWORD(notesNeedingBodyDownload7) = [isBookkeepingEntry BOOLValue];

      if (notesNeedingBodyDownload7)
      {
        v110 = DALoggingwithCategory();
        if (os_log_type_enabled(v110, v148))
        {
          *buf = 138412290;
          *v206 = v166;
          _os_log_impl(&dword_0, v110, v148, "Should not be asked to get the body of bookkeeping note %@.  Ignoring it", buf, 0xCu);
        }

        v111 = 25;
      }

      else
      {
        if (![(DAIMAPNotesDaemonAccount *)obj isShuttingDown])
        {
          if (25 * (v105 / 0x19) - 1 == v104)
          {

            v174 = 0;
            v112 = [contextCopy save:&v174];
            v94 = v174;
            if ((v112 & 1) == 0)
            {
              v113 = DALoggingwithCategory();
              if (os_log_type_enabled(v113, v148))
              {
                dAExtendedDescription2 = [v94 DAExtendedDescription];
                *buf = 67109378;
                *v206 = v104;
                *&v206[4] = 2112;
                *&v206[6] = dAExtendedDescription2;
                _os_log_impl(&dword_0, v113, v148, "Failed to save after getting %d note bodies: %@", buf, 0x12u);
              }

              if ([NoteContext databaseIsCorrupt:v94])
              {
                v115 = DALoggingwithCategory();
                if (os_log_type_enabled(v115, v148))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v115, v148, "Notes database was corrupted! This is a fatal error, so let's try that again.", buf, 2u);
                }

                v116 = +[NSAssertionHandler currentHandler];
                [v116 handleFailureInMethod:a2 object:obj file:@"DAIMAPNotesDaemonAccount.m" lineNumber:642 description:{@"Notes db was corrupted.  Crashing the daemon to get a second chance at it (err %@)", v94}];
              }
            }
          }

          mailboxUid2 = [v158 mailboxUid];
          imapMailAccount6 = [(DAIMAPNotesDaemonAccount *)obj imapMailAccount];
          v110 = [DAIMAPNotesUtils messageFromLocalNoteObject:v166 inMailboxUid:mailboxUid2 inAccount:imapMailAccount6];

          v119 = DALoggingwithCategory();
          if (os_log_type_enabled(v119, v153))
          {
            *buf = 138412290;
            *v206 = v110;
            _os_log_impl(&dword_0, v119, v153, "Going to get message data for message %@", buf, 0xCu);
          }

          messageBody = [v110 messageBody];
          htmlContent = [messageBody htmlContent];

          v121 = DALoggingwithCategory();
          if (os_log_type_enabled(v121, type))
          {
            headers = [v110 headers];
            *buf = 138412290;
            *v206 = headers;
            _os_log_impl(&dword_0, v121, type, "Pulled Notes headers %@", buf, 0xCu);
          }

          v123 = DALoggingwithCategory();
          if (os_log_type_enabled(v123, v153))
          {
            *buf = 138412290;
            *v206 = htmlContent;
            _os_log_impl(&dword_0, v123, v153, "Got htmlContent %@", buf, 0xCu);
          }

          if (htmlContent)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (![htmlContent count])
              {
                goto LABEL_150;
              }

              v124 = [htmlContent objectAtIndexedSubscript:0];
              if (!v124)
              {
                goto LABEL_150;
              }
            }

            else
            {
              v124 = htmlContent;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v140 = +[NSAssertionHandler currentHandler];
              [v140 handleFailureInMethod:a2 object:obj file:@"DAIMAPNotesDaemonAccount.m" lineNumber:666 description:{@"Got an unknown class of %@ for htmlContent of message %@", objc_opt_class(), v110}];
            }

            htmlData = [v124 htmlData];
            preferredCharacterSet = [v124 preferredCharacterSet];
            v129 = MFEncodingForCharset();

            v130 = CFStringConvertEncodingToNSStringEncoding(v129);
            if (v130 == 0xFFFFFFFF)
            {
              v131 = 4;
            }

            else
            {
              v131 = v130;
            }

            v132 = [NSString alloc];
            v133 = htmlData;
            v134 = [v132 initWithBytes:objc_msgSend(htmlData length:"bytes") encoding:{objc_msgSend(htmlData, "length"), v131}];
            v135 = DALoggingwithCategory();
            if (os_log_type_enabled(v135, type))
            {
              v136 = [v134 length];
              *buf = 134217984;
              *v206 = v136;
              _os_log_impl(&dword_0, v135, type, "messageBody htmlcontent is %ld characters", buf, 0xCu);
            }

            if ([v134 isEqualToString:@"<HTML><BODY></BODY></HTML>"])
            {
              v137 = DALoggingwithCategory();
              if (os_log_type_enabled(v137, v148))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v137, v148, "ignoring incorrectly empty messageBody htmlcontent, will retry in a future sync", buf, 2u);
              }
            }

            else
            {
              [v166 setContent:v134];
              attachmentManager2 = [(DAIMAPNotesDaemonAccount *)obj attachmentManager];
              v137 = [DAIMAPNotesUtils noteAttachmentObjectsFromAttachmentsOfMessage:v110 attachmentManager:attachmentManager2 noteContext:contextCopy];

              if ([v137 count])
              {
                v139 = [NSSet setWithArray:v137];
                [v166 setAttachments:v139];
              }
            }
          }

          else
          {
            v125 = DALoggingwithCategory();
            if (os_log_type_enabled(v125, v147))
            {
              *buf = 138412290;
              *v206 = v166;
              _os_log_impl(&dword_0, v125, v147, "Note with properties %@ disappeared before I got its content", buf, 0xCu);
            }

LABEL_150:
            v126 = DALoggingwithCategory();
            if (os_log_type_enabled(v126, v148))
            {
              *buf = 0;
              v124 = v126;
              _os_log_impl(&dword_0, v126, v148, "Couldn't get the MFWebMessageDocument from message body", buf, 2u);
            }

            else
            {
              v124 = v126;
            }
          }

          v111 = 0;
          goto LABEL_168;
        }

        v110 = DALoggingwithCategory();
        if (os_log_type_enabled(v110, v153))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v110, v153, "Bailing early, as someone wants us to shut down", buf, 2u);
        }

        v111 = 23;
      }

LABEL_168:

      objc_autoreleasePoolPop(context);
      if (v111 != 25 && v111)
      {
        goto LABEL_171;
      }

      ++v104;
      ++v105;
    }
  }

  v61 = DALoggingwithCategory();
  if (os_log_type_enabled(v61, v153))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v61, v153, "Bailing early, as someone wants us to shut down", buf, 2u);
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v62 = v170;
  v63 = [v62 countByEnumeratingWithState:&v188 objects:v203 count:16];
  if (v63)
  {
    v64 = *v189;
    do
    {
      for (ii = 0; ii != v63; ii = ii + 1)
      {
        if (*v189 != v64)
        {
          objc_enumerationMutation(v62);
        }

        [*(*(&v188 + 1) + 8 * ii) setMessageBody:0];
      }

      v63 = [v62 countByEnumeratingWithState:&v188 objects:v203 count:16];
    }

    while (v63);
  }

LABEL_173:

  v29 = v165;
LABEL_174:

  [(DAIMAPNotesDaemonAccount *)obj _setSpinning:0];
  *(&v146 + 1) = 0;
  LOBYTE(v146) = uberSync;
  [consumerCopy syncResultForNotesFolder:folderCopy noteContext:contextCopy newTag:0 previousTag:tagCopy actions:0 results:0 changeSet:setCopy notesToDeleteAfterSync:syncCopy isInitialSync:v146 moreAvailable:? moreLocalChangesAvailable:?];

  imapMailAccount7 = [(DAIMAPNotesDaemonAccount *)selfCopy imapMailAccount];
  library2 = [imapMailAccount7 library];
  [library2 setNoteContext:0];

LABEL_176:
}

- (void)addNoteNeedingBodyDownload:(id)download
{
  downloadCopy = download;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412546;
    v9 = downloadCopy;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v5, v6, "Note %@ added to DAAccount %p", &v8, 0x16u);
  }

  notesNeedingBodyDownload = [(DAIMAPNotesDaemonAccount *)self notesNeedingBodyDownload];
  [notesNeedingBodyDownload addObject:downloadCopy];
}

- (void)_noteInvocationFinishedOnMainThread
{
  [(DAIMAPNotesDaemonAccount *)self setOutstandingInvocationCount:[(DAIMAPNotesDaemonAccount *)self outstandingInvocationCount]- 1];
  if ([(DAIMAPNotesDaemonAccount *)self outstandingInvocationCount]< 0)
  {
    sub_FA98(a2, self);
  }

  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    v9 = 138412546;
    selfCopy2 = self;
    v11 = 1024;
    outstandingInvocationCount = [(DAIMAPNotesDaemonAccount *)self outstandingInvocationCount];
    _os_log_impl(&dword_0, v4, v5, "IMAP Daemon account %@ had an invocation finish. self.outstandingInvocationCount is decremented to %d", &v9, 0x12u);
  }

  if (![(DAIMAPNotesDaemonAccount *)self outstandingInvocationCount])
  {
    fullyShutDownCallback = [(DAIMAPNotesDaemonAccount *)self fullyShutDownCallback];

    if (fullyShutDownCallback)
    {
      fullyShutDownCallback2 = [(DAIMAPNotesDaemonAccount *)self fullyShutDownCallback];
      [(DAIMAPNotesDaemonAccount *)self setFullyShutDownCallback:0];
      if (!fullyShutDownCallback2)
      {
        sub_FB0C(a2, self);
      }

      v8 = DALoggingwithCategory();
      if (os_log_type_enabled(v8, v5))
      {
        v9 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_0, v8, v5, "IMAP Daemon account %@ invoking fullyShutdownCallback", &v9, 0xCu);
      }

      fullyShutDownCallback2[2](fullyShutDownCallback2);
    }
  }
}

- (void)shutDownAndCallCallback:(id)callback
{
  callbackCopy = callback;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    v13 = 67109120;
    LODWORD(selfCopy2) = [(DAIMAPNotesDaemonAccount *)self outstandingInvocationCount];
    _os_log_impl(&dword_0, v6, v7, "IMAP Daemon account should shut down now, _outstandingInvocationCount is %d", &v13, 8u);
  }

  [(DAIMAPNotesDaemonAccount *)self setIsShuttingDown:1];
  fullyShutDownCallback = [(DAIMAPNotesDaemonAccount *)self fullyShutDownCallback];

  if (fullyShutDownCallback)
  {
    sub_FB70(a2, self);
  }

  outstandingInvocationCount = [(DAIMAPNotesDaemonAccount *)self outstandingInvocationCount];
  v10 = DALoggingwithCategory();
  v11 = os_log_type_enabled(v10, v7);
  if (outstandingInvocationCount)
  {
    if (v11)
    {
      v13 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v10, v7, "IMAP Daemon account %@ saving shutdown callback", &v13, 0xCu);
    }

    v12 = [callbackCopy copy];
    [(DAIMAPNotesDaemonAccount *)self setFullyShutDownCallback:v12];
  }

  else
  {
    if (v11)
    {
      v13 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v10, v7, "IMAP Daemon account %@ invoking shutdown callback", &v13, 0xCu);
    }

    callbackCopy[2](callbackCopy);
  }
}

@end