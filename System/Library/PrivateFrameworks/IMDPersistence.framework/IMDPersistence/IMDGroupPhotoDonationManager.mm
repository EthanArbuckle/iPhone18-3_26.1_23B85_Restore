@interface IMDGroupPhotoDonationManager
+ (id)sharedInstance;
- (IMDGroupPhotoDonationManager)init;
- (void)copyGroupPhotoToExternalPathIfNecessary:(id)necessary chatGUID:(id)d attachmentFilepath:(id)filepath;
- (void)dealloc;
@end

@implementation IMDGroupPhotoDonationManager

+ (id)sharedInstance
{
  if (qword_1EDBE62D0 != -1)
  {
    sub_1B7CF3EDC();
  }

  v3 = qword_1EDBE7938;

  return v3;
}

- (IMDGroupPhotoDonationManager)init
{
  v8.receiver = self;
  v8.super_class = IMDGroupPhotoDonationManager;
  v4 = [(IMDGroupPhotoDonationManager *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v2, v3);
    fileManager = v4->_fileManager;
    v4->_fileManager = v5;
  }

  return v4;
}

- (void)dealloc
{
  fileManager = self->_fileManager;
  self->_fileManager = 0;

  v4.receiver = self;
  v4.super_class = IMDGroupPhotoDonationManager;
  [(IMDGroupPhotoDonationManager *)&v4 dealloc];
}

- (void)copyGroupPhotoToExternalPathIfNecessary:(id)necessary chatGUID:(id)d attachmentFilepath:(id)filepath
{
  v53 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  dCopy = d;
  filepathCopy = filepath;
  v13 = filepathCopy;
  if (necessaryCopy && dCopy && filepathCopy)
  {
    v14 = objc_msgSend_im_lastPathComponent(filepathCopy, v11, v12);
    v15 = IMSharedHelperExternalLocationForFile();

    v18 = objc_msgSend_fileManager(self, v16, v17);
    v20 = objc_msgSend_fileExistsAtPath_(v18, v19, v15);

    if (v20)
    {
      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_1B7CF3EF0(v15, v21);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v46 = v15;
          _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "File missing at path %@. Will attempt to copy from Attachments directory", buf, 0xCu);
        }
      }

      v21 = objc_msgSend_stringByDeletingLastPathComponent(v15, v23, v24);
      v28 = objc_msgSend_fileManager(self, v26, v27);
      DirectoriesInPath_mode = objc_msgSend___im_makeDirectoriesInPath_mode_(v28, v29, v21, 448);

      if ((DirectoriesInPath_mode & 1) == 0 && IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v46 = v21;
          _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Error creating intermediate directories for path: %@", buf, 0xCu);
        }
      }

      v34 = objc_msgSend_fileManager(self, v31, v32);
      v44 = 0;
      v36 = objc_msgSend_copyItemAtPath_toPath_error_(v34, v35, v13, v15, &v44);
      v37 = v44;

      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = v36;
      }

      v39 = IMOSLoggingEnabled();
      if (v38)
      {
        if (v39)
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v46 = v15;
            v47 = 2112;
            v48 = v13;
            _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "Successfully copied to path %@ from path %@", buf, 0x16u);
          }
        }
      }

      else if (v39)
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = @"NO";
          *buf = 138413058;
          v46 = v15;
          v47 = 2112;
          if (v36)
          {
            v42 = @"YES";
          }

          v48 = v13;
          v49 = 2112;
          v50 = v42;
          v51 = 2112;
          v52 = v37;
          _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "Error copying to path %@ from path %@ success: %@ error: %@", buf, 0x2Au);
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v46 = necessaryCopy;
      v47 = 2112;
      v48 = dCopy;
      v49 = 2112;
      v50 = v13;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "early returning from copyGroupPhotoToExternalPathIfNecessary - nil argument. groupPhotoGUID %@ chatGUID %@ filepath %@", buf, 0x20u);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

@end