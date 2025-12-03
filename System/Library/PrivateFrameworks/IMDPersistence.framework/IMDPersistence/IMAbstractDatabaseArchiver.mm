@interface IMAbstractDatabaseArchiver
- (BOOL)copyDatabase:(id)database;
- (BOOL)deleteFailedArchiveAtPath:(id)path error:(id *)error;
- (IMAbstractDatabaseArchiver)initWithSourceDatabasePath:(id)path destinationDatabasePath:(id)databasePath;
- (void)dealloc;
@end

@implementation IMAbstractDatabaseArchiver

- (IMAbstractDatabaseArchiver)initWithSourceDatabasePath:(id)path destinationDatabasePath:(id)databasePath
{
  if (path)
  {
LABEL_6:
    if (databasePath)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v52 = xmmword_1E7CB8740;
  v53 = *off_1E7CB8750;
  v54 = 23;
  v7 = MEMORY[0x1E696AEC0];
  v8 = IMFileLocationTrimFileName();
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, &stru_1F2FA9728);
  v12 = objc_msgSend_stringWithFormat_(v7, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", @"sourcePath", "[IMAbstractDatabaseArchiver initWithSourceDatabasePath:destinationDatabasePath:]", v8, 23, v10);
  v13 = IMGetAssertionFailureHandler();
  if (!v13)
  {
    v16 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFAB0(v12, v16, v17, v18, v19, v20, v21, v22);
      if (databasePath)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13(v12);
  if (databasePath)
  {
    goto LABEL_11;
  }

LABEL_7:
  v52 = xmmword_1E7CB8768;
  v53 = *off_1E7CB8778;
  v54 = 24;
  v23 = MEMORY[0x1E696AEC0];
  v24 = IMFileLocationTrimFileName();
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, &stru_1F2FA9728);
  v28 = objc_msgSend_stringWithFormat_(v23, v27, @"Unexpected nil '%@' in %s at %s:%d. %@", @"destinationPath", "[IMAbstractDatabaseArchiver initWithSourceDatabasePath:destinationDatabasePath:]", v24, 24, v26);
  v29 = IMGetAssertionFailureHandler();
  if (v29)
  {
    v29(v28);
  }

  else
  {
    v32 = objc_msgSend_warning(MEMORY[0x1E69A6138], v30, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFAB0(v28, v32, v33, v34, v35, v36, v37, v38);
    }
  }

LABEL_11:
  v51.receiver = self;
  v51.super_class = IMAbstractDatabaseArchiver;
  v41 = [(IMAbstractDatabaseArchiver *)&v51 init];
  if (v41)
  {
    v42 = objc_msgSend_stringByExpandingTildeInPath(path, v39, v40);
    v41->_sourcePath = objc_msgSend_copy(v42, v43, v44);
    v47 = objc_msgSend_stringByExpandingTildeInPath(databasePath, v45, v46);
    v41->_destinationPath = objc_msgSend_copy(v47, v48, v49);
  }

  return v41;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMAbstractDatabaseArchiver;
  [(IMAbstractDatabaseArchiver *)&v3 dealloc];
}

- (BOOL)copyDatabase:(id)database
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMFileLocationTrimFileName();
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"required override");
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"Failure in %s at %s:%d. %@", "[IMAbstractDatabaseArchiver copyDatabase:]", v5, 41, v7, 0x1B7D20164, 0, "[IMAbstractDatabaseArchiver copyDatabase:]", "[IMAbstractDatabaseArchiver copyDatabase:]");
  v10 = IMGetAssertionFailureHandler();
  if (v10)
  {
    v10(v9);
    if (!database)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v13 = objc_msgSend_warning(MEMORY[0x1E69A6138], v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEFAB0(v9, v13, v14, v15, v16, v17, v18, v19);
    if (!database)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (database)
  {
LABEL_6:
    (*(database + 2))(database, 0, 0);
  }

  return 0;
}

- (BOOL)deleteFailedArchiveAtPath:(id)path error:(id *)error
{
  NSLog(&cfstr_AttemptingToDe.isa, a2, path, error);
  v10 = 0;
  IMDDatabaseDelete(path, &v10);
  v7 = v10;
  if (v10)
  {
    v8 = objc_msgSend_localizedDescription(v10, v5, v6);
    NSLog(&cfstr_UnableToDelete.isa, v8, path);
  }

  return v7 == 0;
}

@end