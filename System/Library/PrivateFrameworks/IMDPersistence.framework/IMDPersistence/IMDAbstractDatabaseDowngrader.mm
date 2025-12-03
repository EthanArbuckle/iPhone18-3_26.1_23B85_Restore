@interface IMDAbstractDatabaseDowngrader
- (BOOL)copyDatabase:(id)database;
@end

@implementation IMDAbstractDatabaseDowngrader

- (BOOL)copyDatabase:(id)database
{
  v62 = *MEMORY[0x1E69E9840];
  DowngradeHelper = objc_msgSend_createDowngradeHelper(self, a2, database);
  v55 = 0;
  v56 = &v55;
  v57 = 0x3052000000;
  v58 = sub_1B7AE19E4;
  v59 = sub_1B7AE2500;
  v60 = 0;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_1B7B621D4;
  v54[3] = &unk_1E7CB66D8;
  v54[4] = &v55;
  objc_msgSend_open_(DowngradeHelper, v6, v54);
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Downgrade: Opening new coral database", buf, 2u);
  }

  if (!v56[5])
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_1B7B621E4;
    v53[3] = &unk_1E7CB66D8;
    v53[4] = &v55;
    objc_msgSend_beginTransaction_(DowngradeHelper, v8, v53);
    if (!v56[5])
    {
      v10 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Downgrade: Creating Tables", buf, 2u);
      }

      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = sub_1B7B621F4;
      v52[3] = &unk_1E7CB66D8;
      v52[4] = &v55;
      objc_msgSend_createTables_(DowngradeHelper, v11, v52);
      if (v56[5])
      {
        goto LABEL_11;
      }

      v13 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Downgrade: Creating Indexes", buf, 2u);
      }

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = sub_1B7B62204;
      v51[3] = &unk_1E7CB66D8;
      v51[4] = &v55;
      objc_msgSend_createIndexes_(DowngradeHelper, v14, v51);
      if (v56[5])
      {
LABEL_11:
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = sub_1B7B62214;
        v50[3] = &unk_1E7CB66D8;
        v50[4] = &v55;
        objc_msgSend_revertTransaction_(DowngradeHelper, v12, v50);
      }

      else
      {
        v40 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "Downgrade: Committing phase 1", buf, 2u);
        }

        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = sub_1B7B62224;
        v49[3] = &unk_1E7CB66D8;
        v49[4] = &v55;
        objc_msgSend_commitTransaction_(DowngradeHelper, v41, v49);
      }

      if (!v56[5])
      {
        v15 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Downgrade: Beginning to copy tables", buf, 2u);
        }

        memset(buf, 0, sizeof(buf));
        v18 = objc_msgSend_sourcePath(self, v16, v17);
        IMDSqlOperationInitAndCreateIfNeededWithPath(v18, buf);
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = sub_1B7B62234;
        v48[3] = &unk_1E7CB66D8;
        v48[4] = &v55;
        objc_msgSend_importDataFromWhitetailDatabaseWithSqlOperation_resultBlock_(DowngradeHelper, v19, buf, v48);
        IMDSqlOperationRelease(buf, v56 + 5);
        if (v56[5])
        {
          goto LABEL_23;
        }

        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = sub_1B7B62244;
        v47[3] = &unk_1E7CB66D8;
        v47[4] = &v55;
        objc_msgSend_beginTransaction_(DowngradeHelper, v20, v47);
        if (v56[5])
        {
          goto LABEL_23;
        }

        v21 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *v46 = 0;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Downgrade: Creating triggers", v46, 2u);
        }

        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = sub_1B7B62254;
        v45[3] = &unk_1E7CB66D8;
        v45[4] = &v55;
        objc_msgSend_createTriggers_(DowngradeHelper, v22, v45);
        if (v56[5])
        {
          goto LABEL_23;
        }

        v23 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *v46 = 0;
          _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "Downgrade: Updating Version", v46, 2u);
        }

        v26 = objc_msgSend_downgradesToVersion(DowngradeHelper, v24, v25);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = sub_1B7B62264;
        v44[3] = &unk_1E7CB66D8;
        v44[4] = &v55;
        objc_msgSend_writeDatabaseVersion_resultBlock_(DowngradeHelper, v27, v26, v44);
        if (v56[5])
        {
LABEL_23:
          objc_msgSend_revertTransaction_(DowngradeHelper, v20, &unk_1F2FA02B0);
        }

        else
        {
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = sub_1B7B62278;
          v43[3] = &unk_1E7CB66D8;
          v43[4] = &v55;
          objc_msgSend_commitTransaction_(DowngradeHelper, v20, v43);
          v42 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *v46 = 0;
            _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "Downgrade: Committing phase 2", v46, 2u);
          }
        }
      }
    }
  }

  if (objc_msgSend_isOpen(DowngradeHelper, v8, v9))
  {
    objc_msgSend_close_(DowngradeHelper, v28, &unk_1F2FA0C50);
  }

  if (!v56[5])
  {
    v36 = IMDatabaseLogHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    LOWORD(buf[0]) = 0;
    v33 = "Downgrade completed ok! :-D";
    v34 = v36;
    v35 = 2;
    goto LABEL_32;
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v32 = objc_msgSend_localizedDescription(v56[5], v30, v31);
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v32;
      v33 = "Database downgrade failed with error: %@";
      v34 = v29;
      v35 = 12;
LABEL_32:
      _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, v33, buf, v35);
    }
  }

LABEL_33:
  if (database)
  {
    (*(database + 2))(database, v56[5] == 0);
  }

  v37 = v56[5] == 0;
  _Block_object_dispose(&v55, 8);
  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

@end