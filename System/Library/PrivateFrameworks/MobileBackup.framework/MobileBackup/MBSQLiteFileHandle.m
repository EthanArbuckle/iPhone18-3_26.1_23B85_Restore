@interface MBSQLiteFileHandle
+ (BOOL)compactSQLiteDatabaseAtPath:(id)a3 toPath:(id)a4 error:(id *)a5;
+ (BOOL)copySQLiteFileAtPath:(id)a3 toPath:(id)a4 timeout:(double)a5 error:(id *)a6;
+ (BOOL)isSQLiteFileAtPath:(id)a3 result:(BOOL *)a4 error:(id *)a5;
+ (BOOL)isSQLiteFileHandle:(id)a3 result:(BOOL *)a4 error:(id *)a5;
+ (BOOL)lastModifiedForSQLiteFileAtPath:(id)a3 time:(int64_t *)a4 error:(id *)a5;
+ (BOOL)removeJournalsForSQLiteFileAtPath:(id)a3 error:(id *)a4;
+ (BOOL)removeSQLiteFileAtPath:(id)a3 error:(id *)a4;
+ (BOOL)setAttributes:(id)a3 ofSQLiteFileAtPath:(id)a4 error:(id *)a5;
+ (id)SQLiteFileHandleWithOriginalFileHandle:(id)a3 copiedFileHandle:(id)a4;
+ (id)executePragma:(id)a3 withDatabase:(sqlite3 *)a4;
+ (void)removeAllSQLiteFilesAtPath:(id)a3;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)statWithBuffer:(stat *)a3 error:(id *)a4;
- (MBSQLiteFileHandle)initWithOriginalFileHandle:(id)a3 copiedFileHandle:(id)a4;
@end

@implementation MBSQLiteFileHandle

+ (BOOL)isSQLiteFileAtPath:(id)a3 result:(BOOL *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 length];
  v9 = [@"/private" length];
  if (v8 > 1024 - ([@"-journal" length] + v9))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "File path too long to handle as a SQLite file: %@", buf, 0xCu);
      _MBLog();
    }

    if (!a4)
    {
      goto LABEL_6;
    }

LABEL_5:
    *a4 = 0;
LABEL_6:
    v11 = 1;
    goto LABEL_14;
  }

  if (IsDatalessFaultWithPath(v7))
  {
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = [MBBasicFileHandle basicFileHandleWithPath:v7 flags:256 mode:0 error:a5];
  if (v12)
  {
    v11 = [MBSQLiteFileHandle isSQLiteFileHandle:v12 result:a4 error:a5];
    [v12 closeWithError:0];
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  return v11;
}

+ (BOOL)isSQLiteFileHandle:(id)a3 result:(BOOL *)a4 error:(id *)a5
{
  v7 = a3;
  *a4 = 0;
  v30 = xmmword_1002BA028;
  v31 = 0;
  v29 = 0;
  v8 = [v7 fd];
  if (fgetattrlist(v8, &v30, &v29, 8uLL, 0))
  {
    v9 = [v7 path];
    v10 = [MBError posixErrorWithPath:v9 format:@"fgetattrlist failed"];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 path];
      *buf = 138412546;
      v35 = v12;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "fgetattrlist failed at %@: %@", buf, 0x16u);

      v27 = [v7 path];
      _MBLog();
    }

    if (a5)
    {
      v13 = v10;
      *a5 = v10;
    }

    v14 = 0;
  }

  else if (HIDWORD(v29) == 1)
  {
    __buf = 0;
    v33 = 0;
    v15 = pread(v8, &__buf, 0x10uLL, 0);
    v14 = v15 >= 0;
    if (v15 < 0)
    {
      v20 = *__error();
      v21 = [v7 path];
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v35 = v21;
        v36 = 1024;
        LODWORD(v37) = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "pread failed at %@: %{errno}d", buf, 0x12u);
        _MBLog();
      }

      v23 = [MBError errorWithErrno:v20 path:v21 format:@"pread error"];
      v24 = v23;
      if (a5)
      {
        v25 = v23;
        *a5 = v24;
      }

      if ((v20 - 34) <= 0x3A && ((1 << (v20 - 34)) & 0x400000000000801) != 0 || v20 == 22)
      {
        MBDiagnoseFile(v21, v20, "pread");
      }
    }

    else if (v15 == 16 && __buf == 0x66206574694C5153 && v33 == 0x332074616D726FLL)
    {
      *a4 = 1;
    }
  }

  else
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HIDWORD(v29);
      v19 = [v7 path];
      *buf = 134218242;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Not a regular file (%ld) at %@", buf, 0x16u);

      v28 = [v7 path];
      _MBLog();
    }

    v14 = 1;
  }

  return v14;
}

+ (BOOL)compactSQLiteDatabaseAtPath:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!a5)
  {
    __assert_rtn("+[MBSQLiteFileHandle compactSQLiteDatabaseAtPath:toPath:error:]", "MBSQLiteFileHandle.m", 111, "errorPtr");
  }

  v9 = v8;
  v10 = [v7 fileSystemRepresentation];
  v11 = [v9 fileSystemRepresentation];
  ppDb = 0;
  memset(&v65, 0, sizeof(v65));
  if (stat(v10, &v65))
  {
    *&v12 = *__error();
    [MBError posixErrorWithPath:v7 format:@"stat error"];
    v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v14 = MBGetDefaultLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 138412546;
    *v68 = v7;
    *&v68[8] = 1024;
    *&v68[10] = LODWORD(v12);
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "stat failed at %@: %{errno}d", buf, 0x12u);
    v57 = v7;
    v58 = v12;
    goto LABEL_5;
  }

  st_size = v65.st_size;
  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *v68 = v7;
    *&v68[8] = 2112;
    *&v68[10] = v9;
    *&v68[18] = 2048;
    *&v68[20] = st_size;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Compacting SQLite database at %@ to %@ (%lld bytes)", buf, 0x20u);
    v58 = *&v9;
    v59 = *&st_size;
    v57 = v7;
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v30 = v29;
  *&v31 = sqlite3_open_v2(v10, &ppDb, 1, 0);
  if (LODWORD(v31))
  {
    v32 = v31;
    v33 = ppDb;
    if (ppDb)
    {
      v33 = sqlite3_errmsg(ppDb);
    }

    v57 = v33;
    v58 = v32;
    v34 = @"Error opening SQLite file: %s (%d)";
LABEL_28:
    v35 = 16;
LABEL_29:
    [MBError errorWithCode:v35 path:v7 format:v34, v57, *&v58, *&v59];
    *&v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
LABEL_30:
    v13 = *&v36;
    if (*&v36 != 0.0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v40 = v39;
  [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v9];
  *&v41 = COERCE_DOUBLE(_sqlite3_db_copy_compact());
  if (v41)
  {
    v42 = v41;
    while (1)
    {
      *&v43 = sqlite3_extended_errcode(ppDb);
      v44 = MBGetDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *v68 = v7;
        *&v68[8] = 1024;
        *&v68[10] = v42;
        *&v68[14] = 1024;
        *&v68[16] = LODWORD(v43);
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "_sqlite3_db_copy_compact failed at %@: %d/0x%x", buf, 0x18u);
        v58 = *&v42;
        v59 = v43;
        v57 = v7;
        _MBLog();
      }

      if (v42 != 5)
      {
        break;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      if (v45 - v40 >= 1.0)
      {
        v34 = @"SQLite file is locked";
        v35 = 13;
        goto LABEL_29;
      }

      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v68 = v7;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Waiting for busy SQLite database at %@", buf, 0xCu);
        v57 = v7;
        _MBLog();
      }

      [NSThread sleepForTimeInterval:0.1];
      [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v9];
      *&v42 = COERCE_DOUBLE(_sqlite3_db_copy_compact());
      if (!v42)
      {
        goto LABEL_45;
      }
    }

    if (v42 == 14)
    {
      v34 = @"Can't open SQLite file";
      v35 = 100;
      goto LABEL_29;
    }

    v57 = v42;
    v34 = @"Can't compact SQLite file (%d)";
    goto LABEL_28;
  }

LABEL_45:
  v47 = MBGetDefaultLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v68 = v7;
    *&v68[8] = 2112;
    *&v68[10] = v9;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Created compacted SQLite file from %@ to %@", buf, 0x16u);
    v57 = v7;
    v58 = *&v9;
    _MBLog();
  }

  memset(&v64, 0, sizeof(v64));
  if (!lstat(v11, &v64) && ((v64.st_mode & 0xF000) != 0x8000 || v64.st_nlink >= 2u))
  {
    [MBError errorWithCode:1 format:@"not a regular file", v57, *&v58, *&v59];
    *&v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    goto LABEL_30;
  }

  if (lchown(v11, v65.st_uid, v65.st_gid))
  {
    v48 = @"chown error";
LABEL_56:
    [MBError posixErrorWithPath:v9 format:v48, v57, *&v58, *&v59];
    *&v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    goto LABEL_30;
  }

  if (lchmod(v11, v65.st_mode))
  {
    v48 = @"chmod error";
    goto LABEL_56;
  }

  v63 = 0;
  v49 = [MBProtectionClassUtils getWithPathFSR:v10 error:&v63];
  v13 = COERCE_DOUBLE(v63);
  if ((v49 + 1) <= 1u)
  {
    v14 = MBGetDefaultLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_6:

      if (v13 != 0.0)
      {
LABEL_7:
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v68 = v7;
          *&v68[8] = 2112;
          *&v68[10] = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to compact SQLite database at %@: %@", buf, 0x16u);
          v57 = v7;
          v58 = v13;
          _MBLog();
        }

        v16 = *&v13;
        v17 = 0;
        *a5 = v13;
        v18 = v13;
        goto LABEL_10;
      }

LABEL_31:
      __assert_rtn("+[MBSQLiteFileHandle compactSQLiteDatabaseAtPath:toPath:error:]", "MBSQLiteFileHandle.m", 204, "error");
    }

    *buf = 138412546;
    *v68 = v7;
    *&v68[8] = 2112;
    *&v68[10] = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to fetch the protection class for %@: %@", buf, 0x16u);
    v57 = v7;
    v58 = v13;
LABEL_5:
    _MBLog();
    goto LABEL_6;
  }

  v62 = v13;
  v50 = [MBProtectionClassUtils setWithPathFSR:v11 value:v49 error:&v62];
  v18 = COERCE_DOUBLE(*&v62);

  if ((v50 & 1) == 0)
  {
    v51 = MBGetDefaultLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *v68 = v49;
      *&v68[4] = 2112;
      *&v68[6] = v9;
      *&v68[14] = 2112;
      *&v68[16] = v18;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to set the protection class (%d) for %@: %@", buf, 0x1Cu);
      v58 = *&v9;
      v59 = v18;
      v57 = v49;
      _MBLog();
    }
  }

  [NSDate timeIntervalSinceReferenceDate:v57];
  v53 = v52;
  v54 = v64.st_size;
  v55 = MBGetDefaultLog();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    v56 = v53 - v30;
    *buf = 138412802;
    *v68 = v7;
    *&v68[8] = 2048;
    *&v68[10] = v56;
    *&v68[18] = 2048;
    *&v68[20] = v54;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Finished compacting SQLite database at %@ in %0.3fs (%lld bytes)", buf, 0x20u);
    v59 = *&v54;
    v58 = v56;
    v57 = v7;
    _MBLog();
  }

  v17 = 1;
LABEL_10:
  if (ppDb)
  {
    *&v19 = sqlite3_close(ppDb);
    if (LODWORD(v19))
    {
      v20 = v19;
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v68 = v7;
        *&v68[8] = 1024;
        *&v68[10] = LODWORD(v20);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to close SQLite database at %@: %d", buf, 0x12u);
        v57 = v7;
        v58 = v20;
        _MBLog();
      }
    }
  }

  v61 = v18;
  v22 = [MBSQLiteFileHandle removeJournalsForSQLiteFileAtPath:v9 error:&v61, v57, *&v58, *&v59];
  v23 = *&v61;

  if ((v22 & 1) == 0)
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v68 = v9;
      *&v68[8] = 2112;
      *&v68[10] = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to remove SQLite files for %@: %@", buf, 0x16u);
      _MBLog();
    }

    v23 = 0;
  }

  if (!v17)
  {
    v60 = v23;
    v25 = [MBSQLiteFileHandle removeSQLiteFileAtPath:v9 error:&v60];
    v26 = v60;

    if (v25)
    {
      v23 = v26;
    }

    else
    {
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v68 = v9;
        *&v68[8] = 2112;
        *&v68[10] = v26;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to remove SQLite database at %@: %@", buf, 0x16u);
        _MBLog();
      }

      v23 = 0;
    }
  }

  return v17;
}

+ (BOOL)copySQLiteFileAtPath:(id)a3 toPath:(id)a4 timeout:(double)a5 error:(id *)a6
{
  v9 = a3;
  v10 = COERCE_DOUBLE(a4);
  v11 = [v9 fileSystemRepresentation];
  v12 = [*&v10 fileSystemRepresentation];
  v82 = 0;
  ppDb = 0;
  memset(&v81, 0, sizeof(v81));
  if (stat(v11, &v81))
  {
    if (a6)
    {
      *a6 = [MBError posixErrorWithPath:v9 format:@"stat error"];
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 138412546;
      v85 = *&v9;
      v86 = 1024;
      *v87 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "stat failed at %@: %{errno}d", buf, 0x12u);
      v75 = *&v9;
      *&v76 = *__error();
      _MBLog();
    }

    goto LABEL_7;
  }

  st_size = v81.st_size;
  v29 = MBGetDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v85 = *&v9;
    v86 = 2112;
    *v87 = v10;
    *&v87[8] = 2048;
    v88 = st_size;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Copying SQLite database at %@ to %@ (%lld bytes)", buf, 0x20u);
    v76 = v10;
    v77 = st_size;
    v75 = *&v9;
    _MBLog();
  }

  v30 = [MBProtectionClassUtils getWithPath:v9 error:a6];
  if ((v30 + 1) < 2u)
  {
    v23 = 0;
LABEL_36:
    v25 = 0;
    goto LABEL_37;
  }

  v34 = v30;
  +[NSDate timeIntervalSinceReferenceDate];
  v36 = v35;
  *&v37 = sqlite3_open_v2(v11, &ppDb, 1, 0);
  if (LODWORD(v37))
  {
    if (a6)
    {
      v38 = v37;
      v39 = ppDb;
      if (ppDb)
      {
        v39 = sqlite3_errmsg(ppDb);
      }

      v75 = *&v39;
      v76 = v38;
      v40 = @"Error opening SQLite file: %s (%d)";
LABEL_43:
      v41 = 16;
LABEL_44:
      v42 = *&v9;
      goto LABEL_52;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v43 = MBGetDefaultLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v85 = *&v9;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Opened SQLite database at %@", buf, 0xCu);
    v75 = *&v9;
    _MBLog();
  }

  *&v44 = [MBProtectionClassUtils sqliteOpenFlagForProtectionClass:v34]| 6;
  *&v45 = sqlite3_open_v2(v12, &v82, SLODWORD(v44), 0);
  if (LODWORD(v45))
  {
    if (a6)
    {
      v46 = v45;
      v47 = v82;
      if (v82)
      {
        v47 = sqlite3_errmsg(v82);
      }

      v75 = *&v47;
      v76 = v46;
      v40 = @"Error opening SQLite file: %s (%d)";
      v41 = 16;
      v42 = v10;
LABEL_52:
      v48 = [MBError errorWithCode:v41 path:*&v42 format:v40, *&v75, *&v76, v77];
LABEL_53:
      v15 = 0;
      *a6 = v48;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v49 = MBGetDefaultLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v85 = v10;
    v86 = 1024;
    *v87 = LODWORD(v44);
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Opened SQLite file for copying at %@ with flags 0x%x", buf, 0x12u);
    v75 = v10;
    v76 = v44;
    _MBLog();
  }

  memset(&v80, 0, sizeof(v80));
  if (!lstat(v12, &v80) && ((v80.st_mode & 0xF000) != 0x8000 || v80.st_nlink >= 2u))
  {
    if (a6)
    {
      v48 = [MBError errorWithCode:1 format:@"not a regular file"];
      goto LABEL_53;
    }

    goto LABEL_7;
  }

  if (lchown(v12, v81.st_uid, v81.st_gid))
  {
    if (!a6)
    {
      goto LABEL_7;
    }

    v50 = @"chown error";
LABEL_65:
    v48 = [MBError posixErrorWithPath:*&v10 format:v50, *&v75, *&v76, v77];
    goto LABEL_53;
  }

  if (lchmod(v12, v81.st_mode))
  {
    if (!a6)
    {
      goto LABEL_7;
    }

    v50 = @"chmod error";
    goto LABEL_65;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v52 = v51;
  *&v53 = sqlite3_file_control(v82, 0, 102, ppDb);
  if (LODWORD(v53))
  {
    v54 = v53;
    while (1)
    {
      v55 = sqlite3_extended_errcode(v82);
      v56 = MBGetDefaultLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v85 = *&v9;
        v86 = 1024;
        *v87 = LODWORD(v54);
        *&v87[4] = 1024;
        *&v87[6] = v55;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "sqlite3_file_control(SQLITE_REPLACE_DATABASE) failed at %@: %d/0x%x", buf, 0x18u);
        v76 = v54;
        v77 = v55;
        v75 = *&v9;
        _MBLog();
      }

      if (LODWORD(v54) != 5)
      {
        break;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      if (v57 - v52 >= a5)
      {
        if (!a6)
        {
          goto LABEL_7;
        }

        v40 = @"SQLite file is locked";
        v41 = 13;
        goto LABEL_44;
      }

      v58 = MBGetDefaultLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v85 = *&v9;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "Waiting for busy SQLite database at %@", buf, 0xCu);
        v75 = *&v9;
        _MBLog();
      }

      [NSThread sleepForTimeInterval:0.1];
      *&v54 = sqlite3_file_control(v82, 0, 102, ppDb);
      if (!LODWORD(v54))
      {
        goto LABEL_77;
      }
    }

    if (LODWORD(v54) == 14)
    {
      if (!a6)
      {
        goto LABEL_7;
      }

      v40 = @"Can't open SQLite file";
      v41 = 100;
      goto LABEL_44;
    }

    if (!a6)
    {
      goto LABEL_7;
    }

    v40 = @"Can't copy SQLite file";
    goto LABEL_43;
  }

LABEL_77:
  v59 = MBGetDefaultLog();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v85 = *&v9;
    v86 = 2112;
    *v87 = v10;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "Copied SQLite file from %@ to %@", buf, 0x16u);
    v75 = *&v9;
    v76 = v10;
    _MBLog();
  }

  *&v60 = sqlite3_wal_checkpoint_v2(v82, 0, 2, 0, 0);
  if (LODWORD(v60))
  {
    v61 = v60;
    v62 = sqlite3_extended_errcode(v82);
    v63 = MBGetDefaultLog();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v85 = *&v9;
      v86 = 1024;
      *v87 = LODWORD(v61);
      *&v87[4] = 1024;
      *&v87[6] = v62;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to checkpoint copied SQLite database at %@ (%d/0x%x)", buf, 0x18u);
      v76 = v61;
      v77 = v62;
      v75 = *&v9;
      _MBLog();
    }

    if (!a6)
    {
      goto LABEL_7;
    }

    v40 = @"Can't checkpoint copied SQLite file";
    goto LABEL_43;
  }

  v64 = MBGetDefaultLog();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v85 = *&v9;
    v86 = 2112;
    *v87 = v10;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "Checkpointed copied SQLite file from %@ to %@", buf, 0x16u);
    v75 = *&v9;
    v76 = v10;
    _MBLog();
  }

  *&v65 = sqlite3_close(v82);
  v82 = 0;
  if (LODWORD(v65))
  {
    v66 = v65;
    v67 = MBGetDefaultLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = v10;
      v86 = 1024;
      *v87 = LODWORD(v66);
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Failed to close copied SQLite database at %@: %d", buf, 0x12u);
      v75 = v10;
      v76 = v66;
      _MBLog();
    }

    if (!a6)
    {
      goto LABEL_7;
    }

    v40 = @"Can't close copied SQLite file";
    goto LABEL_43;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v69 = v68;
  v70 = lstat(v12, &v80);
  v71 = v80.st_size;
  v72 = MBGetDefaultLog();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
  {
    if (v70)
    {
      v73 = -1;
    }

    else
    {
      v73 = v71;
    }

    *buf = 138412802;
    v74 = v69 - v36;
    v85 = *&v9;
    v86 = 2048;
    *v87 = v74;
    *&v87[8] = 2048;
    v88 = v73;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Finished copying SQLite database at %@ in %0.3fs (%lld bytes)", buf, 0x20u);
    v77 = v73;
    v76 = v74;
    v75 = *&v9;
    _MBLog();
  }

  v15 = 1;
LABEL_8:
  if (ppDb)
  {
    *&v16 = sqlite3_close(ppDb);
    if (LODWORD(v16))
    {
      v17 = v16;
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = *&v9;
        v86 = 1024;
        *v87 = LODWORD(v17);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to close the SQLite database at %@: %d", buf, 0x12u);
        v75 = *&v9;
        v76 = v17;
        _MBLog();
      }
    }
  }

  if (v82)
  {
    *&v19 = sqlite3_close(v82);
    if (LODWORD(v19))
    {
      v20 = v19;
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = v10;
        v86 = 1024;
        *v87 = LODWORD(v20);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to close the SQLite database at %@: %d", buf, 0x12u);
        v75 = v10;
        v76 = v20;
        _MBLog();
      }
    }
  }

  v79 = 0;
  v22 = [MBSQLiteFileHandle removeJournalsForSQLiteFileAtPath:*&v10 error:&v79, *&v75, *&v76, v77];
  v23 = v79;
  if ((v22 & 1) == 0)
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = v10;
      v86 = 2112;
      *v87 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to remove the journals for the database at %@: %@", buf, 0x16u);
      _MBLog();
    }

    v23 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v78 = v23;
    v26 = [MBSQLiteFileHandle removeSQLiteFileAtPath:*&v10 error:&v78];
    v27 = v78;

    if (v26)
    {
      v23 = v27;
    }

    else
    {
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = v10;
        v86 = 2112;
        *v87 = v27;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to remove the SQLite database at %@: %@", buf, 0x16u);
        _MBLog();
      }

      v23 = 0;
    }

    v32 = MBGetDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = *&v9;
      v86 = 2112;
      *v87 = v23;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to copy SQLite database at %@: %@", buf, 0x16u);
      _MBLog();
    }

    goto LABEL_36;
  }

  v25 = 1;
LABEL_37:

  return v25;
}

+ (BOOL)lastModifiedForSQLiteFileAtPath:(id)a3 time:(int64_t *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 stringByAppendingString:@"-wal"];
  memset(&v20, 0, sizeof(v20));
  if (stat([v8 fileSystemRepresentation], &v20))
  {
    v9 = [v8 lastPathComponent];
    v10 = strlen([v9 fileSystemRepresentation]);

    if (*__error() == 63 && v10 >= 0x100)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "WAL file name too long: %@", buf, 0xCu);
        _MBLog();
      }
    }

    else if (*__error() != 2)
    {
      v15 = [MBError posixErrorWithPath:v8 format:@"stat failed"];
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "stat failed at %@: %@", buf, 0x16u);
        goto LABEL_21;
      }

LABEL_22:

      goto LABEL_23;
    }
  }

  else if ((v20.st_mode & 0xF000) == 0x8000)
  {
    tv_sec = v20.st_mtimespec.tv_sec;
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v22 = tv_sec;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Using last modified time (%lu) of WAL at %@", buf, 0x16u);
LABEL_17:
      _MBLog();
    }

LABEL_18:

    *a4 = tv_sec;
    v17 = 1;
    goto LABEL_26;
  }

  if (!stat([v7 fileSystemRepresentation], &v20))
  {
    tv_sec = v20.st_mtimespec.tv_sec;
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v22 = tv_sec;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Using last modified time (%lu) of db at %@", buf, 0x16u);
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v14 = *__error();
  v15 = [MBError posixErrorWithPath:v7 format:@"stat failed"];
  if (v14 != 2)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "stat failed at %@: %@", buf, 0x16u);
LABEL_21:
      _MBLog();
      goto LABEL_22;
    }

    goto LABEL_22;
  }

LABEL_23:
  if (a5)
  {
    v18 = v15;
    *a5 = v15;
  }

  v17 = 0;
LABEL_26:

  return v17;
}

+ (id)executePragma:(id)a3 withDatabase:(sqlite3 *)a4
{
  ppStmt = 0;
  do
  {
    v6 = [NSString stringWithFormat:@"PRAGMA %@", a3];
    v7 = sqlite3_prepare(a4, [v6 UTF8String], -1, &ppStmt, 0);
  }

  while (v7 == 5);
  if (v7)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "sqlite3_prepare returned %d!", buf, 8u);
      _MBLog();
    }

    v9 = 0;
  }

  else
  {
    do
    {
      v8 = sqlite3_step(ppStmt);
    }

    while (v8 == 5);
    if (v8 == 100)
    {
      v9 = [NSString stringWithFormat:@"%s", sqlite3_column_text(ppStmt, 0)];
        ;
      }
    }

    else
    {
      v9 = 0;
    }

    sqlite3_finalize(ppStmt);
  }

  return v9;
}

+ (BOOL)setAttributes:(id)a3 ofSQLiteFileAtPath:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v24 = +[NSFileManager defaultManager];
  v9 = [v7 mutableCopy];
  v10 = [v9 objectForKeyedSubscript:NSFileOwnerAccountID];
  v11 = [v9 objectForKeyedSubscript:NSFileGroupOwnerAccountID];
  [v9 removeObjectForKey:NSFileOwnerAccountID];
  v23 = v9;
  [v9 removeObjectForKey:NSFileGroupOwnerAccountID];
  v25 = v11;
  v26 = v10;
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 138412546;
      *&buf.st_mode = v10;
      WORD2(buf.st_ino) = 2112;
      *(&buf.st_ino + 6) = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No uid or gid: %@, %@", &buf, 0x16u);
      _MBLog();
    }

    goto LABEL_9;
  }

  memset(&buf, 0, sizeof(buf));
  if (lstat([v8 fileSystemRepresentation], &buf) || (buf.st_mode & 0xF000) == 0x8000 && buf.st_nlink < 2u)
  {
    if (lchown([v8 fileSystemRepresentation], objc_msgSend(v10, "integerValue"), objc_msgSend(v11, "integerValue")))
    {
      if (a5)
      {
        [MBError errorWithCode:1 format:@"chown error on %@", v8];
LABEL_38:
        *a5 = LOBYTE(v14) = 0;
        goto LABEL_41;
      }

      goto LABEL_9;
    }

    if (([v24 setAttributes:v9 ofItemAtPath:v8 error:a5] & 1) == 0)
    {
      goto LABEL_9;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = MBSQLiteJournalSuffixes();
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v16)
    {
      LOBYTE(v14) = 1;
      goto LABEL_40;
    }

    v17 = v16;
    v18 = *v29;
    v14 = 1;
LABEL_19:
    v19 = 0;
    while (1)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = [v8 stringByAppendingString:*(*(&v28 + 1) + 8 * v19)];
      memset(&v27, 0, sizeof(v27));
      if (!lstat([v20 fileSystemRepresentation], &v27) && ((v27.st_mode & 0xF000) != 0x8000 || v27.st_nlink >= 2u))
      {
        break;
      }

      if (lchown([v20 fileSystemRepresentation], objc_msgSend(v26, "integerValue"), objc_msgSend(v25, "integerValue")))
      {
        if (!a5)
        {
          goto LABEL_32;
        }

        [MBError errorWithCode:1 format:@"chown error: %@", v20];
LABEL_31:
        *a5 = v14 = 0;
        goto LABEL_33;
      }

      v14 &= [v24 setAttributes:v23 ofItemAtPath:v20 error:a5];
LABEL_33:

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (!v17)
        {
LABEL_40:

          goto LABEL_41;
        }

        goto LABEL_19;
      }
    }

    if (!a5)
    {
LABEL_32:
      v14 = 0;
      goto LABEL_33;
    }

    [MBError errorWithCode:1 format:@"not a regular file", v22];
    goto LABEL_31;
  }

  if (a5)
  {
    [MBError errorWithCode:1 format:@"not a regular file", v22];
    goto LABEL_38;
  }

LABEL_9:
  LOBYTE(v14) = 0;
LABEL_41:

  return v14;
}

+ (BOOL)removeSQLiteFileAtPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v10 = 0;
  v7 = [v6 removeItemAtPath:v5 error:&v10];
  v8 = v10;

  if (a4 && (v7 & 1) == 0)
  {
    *a4 = [MBError errorForNSError:v8 path:v5 format:@"Error removing copied SQLite file"];
  }

  return v7;
}

+ (BOOL)removeJournalsForSQLiteFileAtPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = MBSQLiteJournalSuffixes();
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v20 = a4;
    v10 = 0;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [v5 stringByAppendingString:{*(*(&v22 + 1) + 8 * i), v19}];
        if ([v6 fileExistsAtPath:v13])
        {
          v21 = v10;
          v14 = [v6 removeItemAtPath:v13 error:&v21];
          v15 = v21;

          if (!v14)
          {
            if (v20)
            {
              *v20 = [MBError errorForNSError:v15 path:v13 format:@"Error removing copied SQLite file journal"];
            }

            v17 = 0;
            goto LABEL_18;
          }

          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v27 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Removed copied SQLite file journal at %@", buf, 0xCu);
            v19 = v13;
            _MBLog();
          }

          v10 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v17 = 1;
    v15 = v10;
  }

  else
  {
    v15 = 0;
    v17 = 1;
  }

LABEL_18:

  return v17;
}

+ (void)removeAllSQLiteFilesAtPath:(id)a3
{
  v3 = a3;
  [MBSQLiteFileHandle removeJournalsForSQLiteFileAtPath:v3 error:0];
  [MBSQLiteFileHandle removeSQLiteFileAtPath:v3 error:0];
}

+ (id)SQLiteFileHandleWithOriginalFileHandle:(id)a3 copiedFileHandle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBSQLiteFileHandle alloc] initWithOriginalFileHandle:v6 copiedFileHandle:v5];

  return v7;
}

- (MBSQLiteFileHandle)initWithOriginalFileHandle:(id)a3 copiedFileHandle:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MBSQLiteFileHandle;
  v8 = [(MBFileHandleProxy *)&v11 initWithFileHandle:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_originalFileHandle, a3);
  }

  return v9;
}

- (BOOL)statWithBuffer:(stat *)a3 error:(id *)a4
{
  if ([MBFileHandle statWithBuffer:"statWithBuffer:error:" error:?])
  {
    v10 = 0;
    v7 = [(MBFileHandle *)self->_originalFileHandle path];
    v8 = [MBSQLiteFileHandle lastModifiedForSQLiteFileAtPath:v7 time:&v10 error:a4];

    if (v8)
    {
      a3->st_mtimespec.tv_sec = v10;
      a3->st_mtimespec.tv_nsec = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)closeWithError:(id *)a3
{
  v5 = [(MBFileHandle *)self->_originalFileHandle closeWithError:?];
  v10.receiver = self;
  v10.super_class = MBSQLiteFileHandle;
  v6 = [(MBFileHandleProxy *)&v10 closeWithError:a3];
  v7 = [(MBFileHandleProxy *)self fileHandle];
  v8 = [v7 path];
  LODWORD(a3) = [MBSQLiteFileHandle removeSQLiteFileAtPath:v8 error:a3]& v6;

  return a3 & v5;
}

@end