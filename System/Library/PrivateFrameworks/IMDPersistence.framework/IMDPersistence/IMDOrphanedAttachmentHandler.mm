@interface IMDOrphanedAttachmentHandler
- (IMDOrphanedAttachmentHandler)init;
- (IMDOrphanedAttachmentHandler)initWithFileManager:(id)a3;
- (void)_cleanseOrphanedAttachmentsWithEnumerator:(id)a3 atPath:(id)a4;
- (void)cleanseOrphanedAttachments;
- (void)cleanseOrphanedAttachmentsInDirectoryAtPath:(id)a3;
- (void)dealloc;
@end

@implementation IMDOrphanedAttachmentHandler

- (IMDOrphanedAttachmentHandler)init
{
  v4.receiver = self;
  v4.super_class = IMDOrphanedAttachmentHandler;
  v2 = [(IMDOrphanedAttachmentHandler *)&v4 init];
  if (v2)
  {
    v2->_fileManager = objc_alloc_init(MEMORY[0x1E696AC08]);
  }

  return v2;
}

- (IMDOrphanedAttachmentHandler)initWithFileManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMDOrphanedAttachmentHandler;
  v4 = [(IMDOrphanedAttachmentHandler *)&v6 init];
  if (v4)
  {
    v4->_fileManager = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDOrphanedAttachmentHandler;
  [(IMDOrphanedAttachmentHandler *)&v3 dealloc];
}

- (void)_cleanseOrphanedAttachmentsWithEnumerator:(id)a3 atPath:(id)a4
{
  *(&v92[2] + 2) = *MEMORY[0x1E69E9840];
  Object = objc_msgSend_nextObject(a3, a2, a3);
  if (Object)
  {
    v8 = Object;
    v9 = 0;
    v83 = *MEMORY[0x1E695E480];
    *&v7 = 138412546;
    v81 = v7;
    do
    {
      if (v9 >= objc_msgSend_maxCleanseIterations(self, v5, v6, v81))
      {
        objc_initWeak(buf, self);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1B7B2E280;
        block[3] = &unk_1E7CB7708;
        objc_copyWeak(&v87, buf);
        block[4] = a3;
        block[5] = a4;
        IMDPersistencePerformBlock(block, 0, v79);
        objc_destroyWeak(&v87);
        objc_destroyWeak(buf);
        goto LABEL_36;
      }

      v10 = objc_autoreleasePoolPush();
      v15 = objc_msgSend_level(a3, v11, v12);
      if (v15 == 3)
      {
        if (objc_msgSend_level(a3, v13, v14) == 3)
        {
          PathComponent = objc_msgSend_lastPathComponent(v8, v16, v17);
          v19 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v81;
            v90 = v8;
            v91 = 2112;
            v92[0] = PathComponent;
            _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_DEFAULT, "Examining '%@' as it looks like it contains a guid '%@'.", buf, 0x16u);
          }

          v20 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID(PathComponent, 1);
          if (v20 || (v20 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID(PathComponent, 0)) != 0)
          {
            v22 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v90 = v8;
              _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_DEFAULT, "Keeping '%@' we have a record for it in the DB.", buf, 0xCu);
            }

            v23 = IMDAttachmentRecordCopyFilename(v83, v20, 0);
            v24 = IMDAttachmentRecordCopyFilename(v83, v20, 1);
            v26 = objc_msgSend_stringByAppendingPathComponent_(a4, v25, v8);
            v29 = objc_msgSend_fileManager(self, v27, v28);
            v31 = objc_msgSend_enumeratorAtPath_(v29, v30, v26);
            for (i = objc_msgSend_nextObject(v31, v32, v33); ; i = objc_msgSend_nextObject(v31, v63, v64))
            {
              v35 = i;
              if (!i)
              {
                break;
              }

              v36 = objc_autoreleasePoolPush();
              v39 = objc_msgSend_lastPathComponent(v35, v37, v38);
              v42 = objc_msgSend_lastPathComponent(v23, v40, v41);
              if (objc_msgSend_isEqualToString_(v39, v43, v42) & 1) != 0 || (v46 = objc_msgSend_lastPathComponent(v35, v44, v45), v49 = objc_msgSend_lastPathComponent(v24, v47, v48), (objc_msgSend_isEqualToString_(v46, v50, v49)) || (v53 = objc_msgSend_pathExtension(v35, v51, v52), (objc_msgSend_isEqualToIgnoringCase_(v53, v54, @"MOV")))
              {
                v56 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v90 = v35;
                  _os_log_impl(&dword_1B7AD5000, v56, OS_LOG_TYPE_DEFAULT, "  Not deleting the actual attachment: %@", buf, 0xCu);
                }
              }

              else
              {
                v57 = objc_msgSend_stringByAppendingPathComponent_(v26, v55, v35);
                v58 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v90 = v57;
                  _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_DEFAULT, "  Deleting preview: %@", buf, 0xCu);
                }

                v61 = objc_msgSend_fileManager(self, v59, v60);
                objc_msgSend_removeItemAtPath_error_(v61, v62, v57, 0);
              }

              objc_autoreleasePoolPop(v36);
            }

            CFRelease(v20);
            goto LABEL_27;
          }

          v88 = 0;
          v71 = objc_msgSend_stringByAppendingPathComponent_(a4, v21, v8);
          v72 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v90 = v71;
            _os_log_impl(&dword_1B7AD5000, v72, OS_LOG_TYPE_DEFAULT, "To Delete: %@", buf, 0xCu);
          }

          v75 = objc_msgSend_fileManager(self, v73, v74);
          objc_msgSend_removeItemAtPath_error_(v75, v76, v71, &v88);
          v77 = IMAttachmentsLogHandle();
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          *buf = 138412290;
          v90 = v71;
          v66 = v77;
          v67 = "Cleaned up '%@'";
          v68 = 12;
          goto LABEL_25;
        }
      }

      else
      {
        v65 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v90 = v8;
          v91 = 1024;
          LODWORD(v92[0]) = v15;
          WORD2(v92[0]) = 1024;
          *(v92 + 6) = 3;
          v66 = v65;
          v67 = "Skipping '%@' as its level is %d and our target level is %d.";
          v68 = 24;
LABEL_25:
          _os_log_impl(&dword_1B7AD5000, v66, OS_LOG_TYPE_DEFAULT, v67, buf, v68);
        }
      }

LABEL_27:
      objc_autoreleasePoolPop(v10);
      v8 = objc_msgSend_nextObject(a3, v69, v70);
      ++v9;
    }

    while (v8);
  }

  v78 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v90 = @"successfully.";
    _os_log_impl(&dword_1B7AD5000, v78, OS_LOG_TYPE_DEFAULT, "File cleanse ended %@", buf, 0xCu);
  }

LABEL_36:
  v80 = *MEMORY[0x1E69E9840];
}

- (void)cleanseOrphanedAttachments
{
  v3 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Beginning file cleanse.", v8, 2u);
  }

  v6 = objc_msgSend_stringByExpandingTildeInPath(@"/var/mobile/Library/SMS/Attachments", v4, v5);
  objc_msgSend_cleanseOrphanedAttachmentsInDirectoryAtPath_(self, v7, v6);
}

- (void)cleanseOrphanedAttachmentsInDirectoryAtPath:(id)a3
{
  v5 = objc_msgSend_fileManager(self, a2, a3);
  v8 = objc_msgSend_enumeratorAtPath_(v5, v6, a3);

  objc_msgSend__cleanseOrphanedAttachmentsWithEnumerator_atPath_(self, v7, v8, a3);
}

@end