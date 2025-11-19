@interface IMDMessageAutomaticHistoryDeletion
+ (BOOL)isDirCreationDateAtPath:(id)a3 olderThanDays:(int64_t)a4;
+ (BOOL)isFileAtDirPath:(id)a3 olderThanDays:(int64_t)a4;
+ (BOOL)isFileHeaderDateAtPath:(id)a3 olderThanDays:(int64_t)a4;
+ (BOOL)isOlderThanDays:(int64_t)a3 fromDate:(id)a4;
+ (id)_getDirSubDirURLsForDirPath:(id)a3 error:(id *)a4;
+ (id)_getFilePathNotDSStore:(id)a3;
+ (id)_getPathAttributesForPath:(id)a3;
+ (id)_getiChatFileMetadataForPath:(id)a3;
+ (void)cleanDatabase;
+ (void)cleanUpOrphanAttachments;
+ (void)deleteAttachmentsAfterDays:(id)a3;
+ (void)deleteDirectoryAtPath:(id)a3;
+ (void)deleteJunkMessagesEligibleForPermanentRemovalOldThanDays:(int64_t)a3;
+ (void)deleteMessagesAfterDays:(id)a3;
+ (void)deleteMessagesAndAttachmentsAfterDays:(id)a3;
+ (void)deleteRecoverableMessagesEligibleForPermanentRemoval;
+ (void)deleteSpolightArchivedFiles;
@end

@implementation IMDMessageAutomaticHistoryDeletion

+ (void)cleanUpOrphanAttachments
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Cleansing orphaned attachments", v6, 2u);
    }
  }

  v3 = objc_alloc_init(IMDOrphanedAttachmentHandler);
  objc_msgSend_cleanseOrphanedAttachments(v3, v4, v5);
}

+ (void)deleteMessagesAndAttachmentsAfterDays:(id)a3
{
  objc_msgSend_deleteMessagesAfterDays_(IMDMessageAutomaticHistoryDeletion, a2, a3);

  MEMORY[0x1EEE66B58](IMDMessageAutomaticHistoryDeletion, sel_deleteAttachmentsAfterDays_, a3);
}

+ (void)deleteMessagesAfterDays:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_longLongValue(a3, a2, a3))
  {
    v9 = 0;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v11 = objc_msgSend_longValue(a3, v4, v5);
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "permanently deleting messages not in recently deleted older than %ld days", buf, 0xCu);
      }
    }

    v7 = objc_msgSend_longLongValue(a3, v4, v5);
    IMDMessageRecordDeleteMessagesOlderThanDays(v7, &v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)deleteAttachmentsAfterDays:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_longLongValue(a3, a2, a3))
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 134217984;
        v10 = objc_msgSend_longValue(a3, v4, v5);
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "deleting attachments older than %ld days", &v9, 0xCu);
      }
    }

    v7 = objc_msgSend_longLongValue(a3, v4, v5);
    IMDAttachmentRecordDeleteAttachmentsOlderThanDays(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)deleteRecoverableMessagesEligibleForPermanentRemoval
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      v9 = 30;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "permanently deleting messages in recently deleted older than %lld days", &v8, 0xCu);
    }
  }

  v5 = objc_msgSend_database(IMDDatabase, v2, v3);
  objc_msgSend_deleteRecoverableMessagesOlderThanDays_(v5, v6, 30);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)deleteJunkMessagesEligibleForPermanentRemovalOldThanDays:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "permanently deleting messages filtered as junk older than %lld days", &v10, 0xCu);
    }
  }

  v7 = objc_msgSend_database(IMDDatabase, v4, v5);
  objc_msgSend_deleteJunkMessagesOlderThanDays_(v7, v8, a3);
  v9 = *MEMORY[0x1E69E9840];
}

+ (void)cleanDatabase
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "  => Cleaning up orphaned messages", buf, 2u);
    }
  }

  IMDMessageRecordDeleteOrphanedMessages();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Cleansing database", v4, 2u);
    }
  }

  IMDDatabaseClean();
}

+ (void)deleteSpolightArchivedFiles
{
  v30 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "deleting spotlight archive files", buf, 2u);
    }
  }

  v6 = objc_msgSend_stringByExpandingTildeInPath(@"~/Library/Messages/Archive", v3, v4);
  DirSubDirURLsForDirPath_error = objc_msgSend__getDirSubDirURLsForDirPath_error_(a1, v7, v6, 0);
  v10 = DirSubDirURLsForDirPath_error;
  if (DirSubDirURLsForDirPath_error)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(DirSubDirURLsForDirPath_error, v9, &v23, v29, 16);
    if (v13)
    {
      v15 = *v24;
      *&v14 = 138412290;
      v22 = v14;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = objc_msgSend_path(*(*(&v23 + 1) + 8 * i), v11, v12, v22);
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v22;
              v28 = v17;
              _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "main folder path found %@", buf, 0xCu);
            }
          }

          objc_msgSend_deleteDirectoryAtPath_(a1, v18, v17);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v29, 16);
      }

      while (v13);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "could not messages archive director, error:", buf, 2u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)deleteDirectoryAtPath:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v4)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = a3;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "deleteDirectoryAtPath: Deleting directory at path %@", &v12, 0xCu);
      }
    }

    v8 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v5, v6);
    objc_msgSend_removeItemAtPath_error_(v8, v9, a3, 0);
  }

  else if (v4)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "deleteDirectoryAtPath:  path is nil", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isFileAtDirPath:(id)a3 olderThanDays:(int64_t)a4
{
  v13 = 0;
  DirSubDirURLsForDirPath_error = objc_msgSend__getDirSubDirURLsForDirPath_error_(a1, a2, a3, &v13);
  if (!DirSubDirURLsForDirPath_error)
  {
    return v13 == 0;
  }

  FilePathNotDSStore = objc_msgSend__getFilePathNotDSStore_(a1, v7, DirSubDirURLsForDirPath_error);
  if (objc_msgSend_isEqualToString_(FilePathNotDSStore, v9, &stru_1F2FA9728))
  {
    return v13 == 0;
  }

  if (objc_msgSend_isDirCreationDateAtPath_olderThanDays_(a1, v10, FilePathNotDSStore, a4))
  {
    return 1;
  }

  return objc_msgSend_isFileHeaderDateAtPath_olderThanDays_(a1, v12, FilePathNotDSStore, a4);
}

+ (BOOL)isFileHeaderDateAtPath:(id)a3 olderThanDays:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = a3;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "isFileHeaderDateAtPathOlderThanDays: checking file at path %@", &v20, 0xCu);
    }
  }

  v9 = objc_msgSend__getiChatFileMetadataForPath_(a1, v7, a3);
  v11 = objc_msgSend_objectForKey_(v9, v10, @"EndTime");
  v12 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v12)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = objc_msgSend_description(v11, v13, v15);
        v20 = 138412290;
        v21 = v16;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "isFileHeaderDateAtPathOlderThanDays: date modified %@", &v20, 0xCu);
      }
    }

    LOBYTE(v12) = objc_msgSend_isOlderThanDays_fromDate_(a1, v13, a4, v11);
  }

  else if (v12)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    v12 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v12)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "isFileHeaderDateAtPathOlderThanDays: dateCreated or dateMod is nil", &v20, 2u);
      LOBYTE(v12) = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (BOOL)isDirCreationDateAtPath:(id)a3 olderThanDays:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = a3;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "isDirCreationDateAtPathOlderThanDays: checking how old dir at %@ is", &v18, 0xCu);
    }
  }

  PathAttributesForPath = objc_msgSend__getPathAttributesForPath_(a1, v7, a3);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = PathAttributesForPath;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "isDirCreationDateAtPathOlderThanDays:path attributes are %@", &v18, 0xCu);
    }
  }

  if (PathAttributesForPath)
  {
    v12 = objc_msgSend_objectForKey_(PathAttributesForPath, v10, *MEMORY[0x1E696A308]);
    LOBYTE(v14) = objc_msgSend_isOlderThanDays_fromDate_(a1, v13, a4, v12);
  }

  else
  {
    v14 = IMOSLoggingEnabled();
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      v14 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v14)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "isDirCreationDateAtPathOlderThanDays: Could not locate directory at path", &v18, 2u);
        LOBYTE(v14) = 0;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)isOlderThanDays:(int64_t)a3 fromDate:(id)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      v5 = (-86400 * a3);
      objc_msgSend_timeIntervalSinceNow(a4, a2, a3);
      return ceil(v6) < v5;
    }
  }

  return result;
}

+ (id)_getPathAttributesForPath:(id)a3
{
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);

  return objc_msgSend_attributesOfItemAtPath_error_(v4, v5, a3, 0);
}

+ (id)_getDirSubDirURLsForDirPath:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v7 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v6, a3);
  objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v8, *MEMORY[0x1E695DC30]);

  return MEMORY[0x1EEE66B58](v5, sel_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_, v7);
}

+ (id)_getiChatFileMetadataForPath:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E695DEF0];
    v4 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], a2, a3);
    v6 = objc_msgSend_dataWithContentsOfURL_(v3, v5, v4);
    v17 = 0;
    v7 = objc_alloc(MEMORY[0x1E696ACD0]);
    v9 = objc_msgSend_initForReadingFromData_error_(v7, v8, v6, &v17);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "_getiChatFileMetadataForPath: data %@", buf, 0xCu);
      }
    }

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v9, v12, v11, @"metadata");
    if (v17)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v17;
          _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Failed to unarchive iChat file metadata. Error: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)_getFilePathNotDSStore:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, a2, &v14, v18, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(a3);
      }

      v10 = objc_msgSend_path(*(*(&v14 + 1) + 8 * v9), v5, v6);
      if ((objc_msgSend_containsString_(v10, v11, @".DS_Store") & 1) == 0 && !objc_msgSend_isEqualToString_(v10, v5, @".DS_Store"))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v5, &v14, v18, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        v10 = &stru_1F2FA9728;
        break;
      }
    }
  }

  else
  {
    v10 = &stru_1F2FA9728;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

@end