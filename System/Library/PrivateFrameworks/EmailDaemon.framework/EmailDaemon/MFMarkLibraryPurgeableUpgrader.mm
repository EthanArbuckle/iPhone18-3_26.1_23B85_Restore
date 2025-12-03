@interface MFMarkLibraryPurgeableUpgrader
+ (BOOL)isComplete;
+ (OS_os_log)log;
- (BOOL)_canRun;
- (BOOL)_mailboxNeedsToBeMarkedPurgeable:(id)purgeable;
- (BOOL)markDirectoryPurgeable:(id)purgeable account:(id)account shouldCancel:(id)cancel error:(id *)error;
- (MFMarkLibraryPurgeableUpgrader)initWithMailboxUIDs:(id)ds;
- (id)mailboxesNeededToBeMarkedPurgeable;
- (void)_removePurgeableXAttrForMailbox:(id)mailbox;
- (void)_setPurgeableXAttrForMailbox:(id)mailbox;
- (void)runMarkLibraryPurgeableUpgraderShouldDefer:(id)defer completion:(id)completion;
@end

@implementation MFMarkLibraryPurgeableUpgrader

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100072134;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185910 != -1)
  {
    dispatch_once(&qword_100185910, block);
  }

  v2 = qword_100185908;

  return v2;
}

- (MFMarkLibraryPurgeableUpgrader)initWithMailboxUIDs:(id)ds
{
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = MFMarkLibraryPurgeableUpgrader;
  v5 = [(MFMarkLibraryPurgeableUpgrader *)&v11 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    mailboxUIDs = v5->_mailboxUIDs;
    v5->_mailboxUIDs = v6;

    v8 = _os_activity_create(&_mh_execute_header, "Mail mark library purgeable activity", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
    activity = v5->_activity;
    v5->_activity = v8;
  }

  return v5;
}

+ (BOOL)isComplete
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 integerForKey:EMUserDefaultFilesMarkedPurgeable] == 1;

  return v3;
}

- (void)runMarkLibraryPurgeableUpgraderShouldDefer:(id)defer completion:(id)completion
{
  deferCopy = defer;
  completionCopy = completion;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  activity = [(MFMarkLibraryPurgeableUpgrader *)self activity];
  os_activity_scope_enter(activity, &state);

  if (![(MFMarkLibraryPurgeableUpgrader *)self _canRun])
  {
    v27 = +[MFMarkLibraryPurgeableUpgrader log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Library purgeable upgrader should not run", buf, 2u);
    }

    v36 = 0;
    v26 = 0;
    goto LABEL_44;
  }

  v7 = +[MFMarkLibraryPurgeableUpgrader log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Marking library purgeable", buf, 2u);
  }

  [(MFMarkLibraryPurgeableUpgrader *)self mailboxesNeededToBeMarkedPurgeable];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v8 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (!v8)
  {

    v36 = 0;
    goto LABEL_33;
  }

  v36 = 0;
  v39 = v8;
  v40 = *v50;
  v37 = 1;
  *&v9 = 138412546;
  v34 = v9;
  do
  {
    for (i = 0; i != v39; i = i + 1)
    {
      if (*v50 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v49 + 1) + 8 * i);
      fullPath = [v11 fullPath];
      v13 = [NSURL fileURLWithPath:fullPath isDirectory:1];

      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100072A48;
      v47[3] = &unk_100158B20;
      v14 = deferCopy;
      v47[4] = v11;
      v48 = v14;
      v15 = objc_retainBlock(v47);
      v16 = +[MFMarkLibraryPurgeableUpgrader log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        fullPath2 = [v11 fullPath];
        *buf = 138412290;
        v56 = fullPath2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Begin marking files in directory purgeable {%@}", buf, 0xCu);
      }

      account = [v11 account];
      v46 = 0;
      v19 = [(MFMarkLibraryPurgeableUpgrader *)self markDirectoryPurgeable:v13 account:account shouldCancel:v15 error:&v46];
      v20 = v46;

      if (v19)
      {
        if (v20 && ([v20 code] == 1 || objc_msgSend(v20, "code") == 4))
        {
          v21 = 0;
          v37 = 0;
          goto LABEL_24;
        }

        [(MFMarkLibraryPurgeableUpgrader *)self _setPurgeableXAttrForMailbox:v11];
        v22 = +[MFMarkLibraryPurgeableUpgrader log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          fullPath3 = [v11 fullPath];
          *buf = 138412290;
          v56 = fullPath3;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Finished marking files purgeable in directory: {%@}", buf, 0xCu);
        }
      }

      else
      {
        v22 = +[MFMarkLibraryPurgeableUpgrader log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          fullPath4 = [v11 fullPath];
          ef_publicDescription = [v20 ef_publicDescription];
          *buf = v34;
          v56 = fullPath4;
          v57 = 2114;
          v58 = ef_publicDescription;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error occured attempting to mark files purgeable in {%@}: %{public}@", buf, 0x16u);
        }
      }

      if (deferCopy && ((*(deferCopy + 2))(v14, v11) & 1) != 0)
      {
        v21 = 0;
        v37 = 0;
        v36 = 1;
      }

      else
      {
        v21 = 1;
      }

LABEL_24:

      if (!v21)
      {
        goto LABEL_27;
      }
    }

    v39 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  }

  while (v39);
LABEL_27:

  if ((v37 & 1) == 0)
  {
    v26 = 0;
    goto LABEL_43;
  }

LABEL_33:
  v28 = +[MFMarkLibraryPurgeableUpgrader log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Finishing Marking Library as Purgeable", buf, 2u);
  }

  v29 = +[NSUserDefaults em_userDefaults];
  [v29 setInteger:1 forKey:EMUserDefaultFilesMarkedPurgeable];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  mailboxUIDs = [(MFMarkLibraryPurgeableUpgrader *)self mailboxUIDs];
  v31 = [mailboxUIDs countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v31)
  {
    v32 = *v43;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(mailboxUIDs);
        }

        [(MFMarkLibraryPurgeableUpgrader *)self _removePurgeableXAttrForMailbox:*(*(&v42 + 1) + 8 * j)];
      }

      v31 = [mailboxUIDs countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v31);
  }

  v26 = 1;
LABEL_43:
  v27 = obj;
LABEL_44:

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v26, v36 & 1);
  }

  os_activity_scope_leave(&state);
}

- (id)mailboxesNeededToBeMarkedPurgeable
{
  mailboxUIDs = [(MFMarkLibraryPurgeableUpgrader *)self mailboxUIDs];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100072B1C;
  v6[3] = &unk_100157208;
  v6[4] = self;
  v4 = [mailboxUIDs ef_filter:v6];

  return v4;
}

- (BOOL)_canRun
{
  if (+[MFMarkLibraryPurgeableUpgrader isComplete])
  {
    return 0;
  }

  return +[MFLibraryCompressor libraryCompressionComplete];
}

- (BOOL)_mailboxNeedsToBeMarkedPurgeable:(id)purgeable
{
  purgeableCopy = purgeable;
  fullPath = [purgeableCopy fullPath];
  if (fullPath && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 fileExistsAtPath:fullPath], v5, v6))
  {
    v7 = +[NSFileManager defaultManager];
    v13 = 0;
    v8 = [v7 mf_valueForExtendedAttribute:@"com_apple_mail_markedPurgeable" ofItemAtPath:fullPath error:&v13];
    v9 = v13;

    if (!v8)
    {
      v10 = +[MFMarkLibraryPurgeableUpgrader log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [purgeableCopy URL];
        objc_claimAutoreleasedReturnValue();
        [v9 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000D4758();
      }
    }

    v11 = [v8 length] == 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setPurgeableXAttrForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v4 = [NSData dataWithBytes:"1" length:1];
  v5 = +[NSFileManager defaultManager];
  fullPath = [mailboxCopy fullPath];
  v10 = 0;
  v7 = [v5 mf_setValue:v4 forExtendedAttribute:@"com_apple_mail_markedPurgeable" ofItemAtPath:fullPath error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    v9 = +[MFMarkLibraryPurgeableUpgrader log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [mailboxCopy URL];
      objc_claimAutoreleasedReturnValue();
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000D47A0();
    }
  }
}

- (void)_removePurgeableXAttrForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v4 = +[NSFileManager defaultManager];
  fullPath = [mailboxCopy fullPath];
  v6 = [v4 fileExistsAtPath:fullPath];

  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    fullPath2 = [mailboxCopy fullPath];
    v12 = 0;
    v9 = [v7 mf_setValue:0 forExtendedAttribute:@"com_apple_mail_markedPurgeable" ofItemAtPath:fullPath2 error:&v12];
    v10 = v12;

    if ((v9 & 1) == 0)
    {
      v11 = +[MFMarkLibraryPurgeableUpgrader log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [mailboxCopy URL];
        objc_claimAutoreleasedReturnValue();
        [v10 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000D47E8();
      }
    }
  }

  else
  {
    v10 = 0;
  }
}

- (BOOL)markDirectoryPurgeable:(id)purgeable account:(id)account shouldCancel:(id)cancel error:(id *)error
{
  purgeableCopy = purgeable;
  accountCopy = account;
  cancelCopy = cancel;
  v40 = purgeableCopy;
  if ([purgeableCopy fileSystemRepresentation])
  {
    v36 = strdup([purgeableCopy fileSystemRepresentation]);
    v51[0] = v36;
    v51[1] = 0;
    v9 = fts_open(v51, 80, 0);
    v10 = 0;
    v11 = 0;
    v39 = 1;
    while (1)
    {
      v12 = fts_read(v9);
      if (!v12)
      {
LABEL_23:
        if (fts_close(v9) == -1)
        {
          v30 = *__error();
          v47 = NSURLErrorKey;
          v48 = v40;
          v31 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v30 userInfo:v31];

          v32 = +[MFMarkLibraryPurgeableUpgrader log];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            ef_publicDescription = [v26 ef_publicDescription];
            sub_1000D4830(ef_publicDescription, buf, v40, v32);
          }

          v39 = 0;
        }

        else
        {
          v26 = v11;
        }

        free(v36);
        goto LABEL_32;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = [NSURL alloc];
      v15 = [NSString stringWithUTF8String:v12->fts_accpath];
      v16 = [v14 initFileURLWithPath:v15];

      v42 = 0;
      LODWORD(v14) = [v16 getResourceValue:&v42 forKey:NSURLIsDirectoryKey error:0];
      v17 = v42;
      v18 = v17;
      if (v14 && ([v17 BOOLValue] & 1) == 0)
      {
        v20 = EFMarkFileAsPurgeable();
        v21 = v11;

        if (v20)
        {
          goto LABEL_37;
        }

        v25 = +[MFMarkLibraryPurgeableUpgrader log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v40;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Error marking file purgeable: %@", buf, 0xCu);
        }

        if ([v21 code] == 1 || objc_msgSend(v21, "code") == 4)
        {
          v19 = 0;
          v39 = 0;
        }

        else
        {
LABEL_37:
          if (cancelCopy)
          {
            v22 = v10++;
            if (v22 >= 29)
            {
              if (cancelCopy[2]())
              {
                v23 = +[MFMarkLibraryPurgeableUpgrader log];
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v46 = v40;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Canceling marking directory purgeable: %@", buf, 0xCu);
                }

                v49 = NSURLErrorKey;
                v50 = v40;
                v24 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
                v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:4 userInfo:v24];

                v19 = 0;
                v39 = 0;
                goto LABEL_22;
              }

              v10 = 0;
            }
          }

          v19 = 1;
        }

        v11 = v21;
      }

      else
      {
        v19 = 1;
      }

LABEL_22:

      objc_autoreleasePoolPop(v13);
      if ((v19 & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  v43 = NSURLErrorKey;
  v44 = purgeableCopy;
  v27 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v27];

  v28 = +[MFMarkLibraryPurgeableUpgrader log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    ef_publicDescription2 = [v26 ef_publicDescription];
    sub_1000D488C(ef_publicDescription2, purgeableCopy, buf, v28);
  }

  v39 = 0;
LABEL_32:
  if (error)
  {
    v34 = v26;
    *error = v26;
  }

  return v39 & 1;
}

@end