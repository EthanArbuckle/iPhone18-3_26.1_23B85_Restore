@interface MFLibraryCompressor
+ (BOOL)libraryCompressionComplete;
+ (OS_os_log)log;
- (BOOL)_mailboxNeedsCompression:(id)compression;
- (MFLibraryCompressor)initWithMailboxUIDs:(id)ds;
- (id)mailboxesNeedingCompression;
- (void)_markMailboxCompressed:(id)compressed;
- (void)_removeCompressedXAttr:(id)attr;
- (void)runLibraryCompressionShouldDefer:(id)defer completion:(id)completion;
@end

@implementation MFLibraryCompressor

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006B408;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_1001858B0 != -1)
  {
    dispatch_once(&qword_1001858B0, block);
  }

  v2 = qword_1001858A8;

  return v2;
}

- (MFLibraryCompressor)initWithMailboxUIDs:(id)ds
{
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = MFLibraryCompressor;
  v5 = [(MFLibraryCompressor *)&v11 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    mailboxUIDs = v5->_mailboxUIDs;
    v5->_mailboxUIDs = v6;

    v8 = _os_activity_create(&_mh_execute_header, "Mail library compression activity", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
    libraryCompressionActivity = v5->_libraryCompressionActivity;
    v5->_libraryCompressionActivity = v8;
  }

  return v5;
}

+ (BOOL)libraryCompressionComplete
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 integerForKey:@"MFLibraryCompressorDefaultsUpgradeStateKey"] == 1;

  return v3;
}

- (void)runLibraryCompressionShouldDefer:(id)defer completion:(id)completion
{
  deferCopy = defer;
  completionCopy = completion;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  libraryCompressionActivity = [(MFLibraryCompressor *)self libraryCompressionActivity];
  os_activity_scope_enter(libraryCompressionActivity, &state);

  if (+[MFLibraryCompressor libraryCompressionComplete])
  {
    v7 = +[MFLibraryCompressor log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4520(v7);
    }

    v38 = 0;
    v8 = 1;
    goto LABEL_44;
  }

  v9 = +[MFLibraryCompressor log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Running library compression", buf, 2u);
  }

  [(MFLibraryCompressor *)self mailboxesNeedingCompression];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v10 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (!v10)
  {

    v38 = 0;
    goto LABEL_33;
  }

  v40 = v10;
  v41 = *v51;
  v37 = 1;
  v38 = 0;
  *&v11 = 138412546;
  v35 = v11;
  do
  {
    for (i = 0; i != v40; i = i + 1)
    {
      if (*v51 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v50 + 1) + 8 * i);
      fullPath = [v13 fullPath];
      v15 = [NSURL fileURLWithPath:fullPath isDirectory:1];

      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10006BD10;
      v48[3] = &unk_100158B20;
      v16 = deferCopy;
      v48[4] = v13;
      v49 = v16;
      v17 = objc_retainBlock(v48);
      v18 = +[MFLibraryCompressor log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v13 URL];
        *buf = 138412290;
        v57 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Begin compressing mailbox directory %@", buf, 0xCu);
      }

      v47 = 0;
      v20 = [EFFileCompression compressDirectory:v15 shouldCancel:v17 error:&v47];
      v21 = v47;
      v22 = v21;
      if (v20)
      {
        if (v21 && ([v21 code] == 1 || objc_msgSend(v22, "code") == 4))
        {
LABEL_24:
          v25 = 0;
          v37 = 0;
          v38 = 1;
          goto LABEL_26;
        }

        [(MFLibraryCompressor *)self _markMailboxCompressed:v13];
        v23 = +[MFLibraryCompressor log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v13 URL];
          *buf = 138412290;
          v57 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Finished compressing mailbox directory %@", buf, 0xCu);
        }
      }

      else
      {
        v23 = +[MFLibraryCompressor log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v26 = [v13 URL];
          ef_publicDescription = [v22 ef_publicDescription];
          *buf = v35;
          v57 = v26;
          v58 = 2114;
          v59 = ef_publicDescription;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Error occured attempting to compress directory %@: %{public}@", buf, 0x16u);
        }
      }

      if (deferCopy && ((*(deferCopy + 2))(v16, v13) & 1) != 0)
      {
        goto LABEL_24;
      }

      v25 = 1;
LABEL_26:

      if (!v25)
      {
        goto LABEL_29;
      }
    }

    v40 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  }

  while (v40);
LABEL_29:

  if ((v37 & 1) == 0)
  {
    v8 = 0;
    goto LABEL_43;
  }

LABEL_33:
  v28 = +[MFLibraryCompressor log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Finishing Library Compression", buf, 2u);
  }

  v29 = [NSNumber numberWithInteger:1];
  v30 = +[NSUserDefaults em_userDefaults];
  [v30 setInteger:objc_msgSend(v29 forKey:{"integerValue"), @"MFLibraryCompressorDefaultsUpgradeStateKey"}];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  mailboxUIDs = [(MFLibraryCompressor *)self mailboxUIDs];
  v32 = [mailboxUIDs countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v32)
  {
    v33 = *v44;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(mailboxUIDs);
        }

        [(MFLibraryCompressor *)self _removeCompressedXAttr:*(*(&v43 + 1) + 8 * j)];
      }

      v32 = [mailboxUIDs countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v32);
  }

  v8 = 1;
LABEL_43:
  v7 = obj;
LABEL_44:

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8, v38 & 1);
  }

  os_activity_scope_leave(&state);
}

- (id)mailboxesNeedingCompression
{
  mailboxUIDs = [(MFLibraryCompressor *)self mailboxUIDs];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006BDE4;
  v6[3] = &unk_100157208;
  v6[4] = self;
  v4 = [mailboxUIDs ef_filter:v6];

  return v4;
}

- (BOOL)_mailboxNeedsCompression:(id)compression
{
  compressionCopy = compression;
  fullPath = [compressionCopy fullPath];
  if (fullPath)
  {
    v5 = +[NSFileManager defaultManager];
    v11 = 0;
    v6 = [v5 mf_valueForExtendedAttribute:@"com_apple_mail_mailboxDirectoryCompressed" ofItemAtPath:fullPath error:&v11];
    v7 = v11;

    if (!v6)
    {
      v8 = +[MFLibraryCompressor log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [compressionCopy URL];
        objc_claimAutoreleasedReturnValue();
        [v7 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000D4564();
      }
    }

    v9 = [v6 length] == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_markMailboxCompressed:(id)compressed
{
  compressedCopy = compressed;
  v4 = [NSData dataWithBytes:"1" length:1];
  v5 = +[NSFileManager defaultManager];
  fullPath = [compressedCopy fullPath];
  v10 = 0;
  v7 = [v5 mf_setValue:v4 forExtendedAttribute:@"com_apple_mail_mailboxDirectoryCompressed" ofItemAtPath:fullPath error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    v9 = +[MFLibraryCompressor log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [compressedCopy URL];
      objc_claimAutoreleasedReturnValue();
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000D45AC();
    }
  }
}

- (void)_removeCompressedXAttr:(id)attr
{
  attrCopy = attr;
  v4 = +[NSFileManager defaultManager];
  fullPath = [attrCopy fullPath];
  v9 = 0;
  v6 = [v4 mf_setValue:0 forExtendedAttribute:@"com_apple_mail_mailboxDirectoryCompressed" ofItemAtPath:fullPath error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = +[MFLibraryCompressor log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [attrCopy URL];
      objc_claimAutoreleasedReturnValue();
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000D45AC();
    }
  }
}

@end