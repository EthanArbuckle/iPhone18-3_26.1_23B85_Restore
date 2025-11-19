@interface IMDPersistentAttachmentController
+ (id)sharedInstance;
- (BOOL)_canDeleteAttachmentPath:(id)a3;
- (BOOL)_shouldDeleteOriginalPath:(id)a3 copyWithinAttachmentStore:(BOOL)a4 destPath:(id)a5 storeAtExternalPath:(BOOL)a6;
- (BOOL)cleanseOrphanedFileTransfers;
- (BOOL)isSafeToDeleteAttachmentPath:(id)a3;
- (id)_migrateSiblingAssetsInAttachmentStoreWithOriginalPath:(id)a3 destinationPath:(id)a4 withFileManager:(id)a5;
- (id)_persistentPathForTransfer:(id)a3 filename:(id)PathComponent highQuality:(BOOL)a5 chatGUID:(id)a6 storeAtExternalPath:(BOOL)a7;
- (void)_removeLegacyAttachmentPathsInAttachmentStoreWithOriginalPath:(id)a3 withFileManager:(id)a4;
- (void)moveAttachmentsForTransfer:(id)a3 completion:(id)a4;
- (void)saveAttachmentsForTransfer:(id)a3 chatGUID:(id)a4 storeAtExternalLocation:(BOOL)a5 completion:(id)a6;
- (void)saveAttachmentsForTransfer:(id)a3 completion:(id)a4;
@end

@implementation IMDPersistentAttachmentController

+ (id)sharedInstance
{
  if (qword_1EDBE62C8 != -1)
  {
    sub_1B7CF17FC();
  }

  return qword_1EDBE7930;
}

- (void)saveAttachmentsForTransfer:(id)a3 chatGUID:(id)a4 storeAtExternalLocation:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v12 = objc_msgSend__saveAttachmentForTransfer_highQuality_copyWithinAttachmentStore_chatGUID_storeAtExternalPath_(self, a2, a3, 0, 0, 0, 0);
  v13 = 0;
  if (v7)
  {
    v13 = objc_msgSend__saveAttachmentForTransfer_highQuality_copyWithinAttachmentStore_chatGUID_storeAtExternalPath_(self, v11, a3, 0, 0, a4, 1);
  }

  if (a6)
  {
    v14 = *(a6 + 2);

    v14(a6, v12, 0, v13);
  }
}

- (void)saveAttachmentsForTransfer:(id)a3 completion:(id)a4
{
  v5 = objc_msgSend__saveAttachmentForTransfer_highQuality_copyWithinAttachmentStore_chatGUID_storeAtExternalPath_(self, a2, a3, 0, 0, 0, 0);
  if (a4)
  {
    v6 = *(a4 + 2);

    v6(a4, v5, 0);
  }
}

- (void)moveAttachmentsForTransfer:(id)a3 completion:(id)a4
{
  v5 = objc_msgSend__saveAttachmentForTransfer_highQuality_copyWithinAttachmentStore_(self, a2, a3, 0, 1);
  if (a4)
  {
    v6 = *(a4 + 2);

    v6(a4, v5, 0);
  }
}

- (BOOL)_shouldDeleteOriginalPath:(id)a3 copyWithinAttachmentStore:(BOOL)a4 destPath:(id)a5 storeAtExternalPath:(BOOL)a6
{
  v16 = *MEMORY[0x1E69E9840];
  if (a6 && sub_1B7B4DA88(a3, a2, a3))
  {
    v8 = IMAttachmentsLogHandle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v9)
    {
      v12 = 138412546;
      v13 = a3;
      v14 = 2112;
      v15 = a5;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Not deleting at original path %@ because we're storing at an external path %@", &v12, 0x16u);
      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_canDeleteAttachmentPath:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  PathComponent = objc_msgSend_lastPathComponent(a3, a2, a3);
  if (objc_msgSend_isEqualToString_(PathComponent, v5, @"Attachments"))
  {
    v8 = IMOSLoggingEnabled();
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      v8 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v8)
      {
        LOWORD(v27) = 0;
        v10 = "Not deleting attachment path, last component is Attachments";
        v11 = v9;
        v12 = 2;
LABEL_14:
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, v10, &v27, v12);
        LOBYTE(v8) = 0;
      }
    }
  }

  else
  {
    v13 = objc_msgSend_lastPathComponent(a3, v6, v7);
    if (objc_msgSend_length(v13, v14, v15) == 36)
    {
      v18 = objc_msgSend_stringByDeletingLastPathComponent(a3, v16, v17);
      v21 = objc_msgSend_stringByExpandingTildeInPath(@"/var/mobile/Library/SMS/Attachments", v19, v20);
      if (objc_msgSend_containsString_(v18, v22, v21))
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        v8 = IMOSLoggingEnabled();
        if (v8)
        {
          v24 = OSLogHandleForIMFoundationCategory();
          v8 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
          if (v8)
          {
            v27 = 138412290;
            v28 = a3;
            v10 = "Not deleting attachment path, not in attachment store: %@";
            v11 = v24;
            v12 = 12;
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
      v8 = IMOSLoggingEnabled();
      if (v8)
      {
        v23 = OSLogHandleForIMFoundationCategory();
        v8 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
        if (v8)
        {
          v27 = 138412546;
          v28 = a3;
          v29 = 2112;
          v30 = v13;
          v10 = "Not deleting attachment path, last component is not guid-like %@ guidPathComponent: %@";
          v11 = v23;
          v12 = 22;
          goto LABEL_14;
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_removeLegacyAttachmentPathsInAttachmentStoreWithOriginalPath:(id)a3 withFileManager:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  PathComponent = objc_msgSend_stringByDeletingLastPathComponent(a3, a2, a3);
  v8 = objc_msgSend_contentsOfDirectoryAtPath_error_(a4, v7, PathComponent, 0);
  if (v8 && !objc_msgSend_count(v8, v9, v10))
  {
    if (objc_msgSend__canDeleteAttachmentPath_(self, v11, PathComponent))
    {
      v14 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = PathComponent;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Path was in attachment store, removing %@", &v17, 0xCu);
      }

      objc_msgSend_removeItemAtPath_error_(a4, v15, PathComponent, 0);
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = PathComponent;
        v13 = "Bailing out of legacy attachment path deletion, %@ is not an eligible path";
        goto LABEL_6;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = PathComponent;
      v13 = "Bailing out of legacy attachment path deletion, %@ has other contents in path";
LABEL_6:
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, v13, &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_migrateSiblingAssetsInAttachmentStoreWithOriginalPath:(id)a3 destinationPath:(id)a4 withFileManager:(id)a5
{
  v84 = *MEMORY[0x1E69E9840];
  PathComponent = objc_msgSend_stringByDeletingLastPathComponent(a3, a2, a3);
  v60 = a4;
  v11 = objc_msgSend_stringByDeletingLastPathComponent(a4, v9, v10);
  v59 = a3;
  v14 = objc_msgSend_lastPathComponent(a3, v12, v13);
  v65 = v11;
  v66 = PathComponent;
  if (!objc_msgSend_isEqualToString_(PathComponent, v15, v11))
  {
    v18 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v76 = v14;
      v77 = 2112;
      v78 = PathComponent;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_DEFAULT, "Looking for sibling files of %@ in %@", buf, 0x16u);
    }

    v20 = objc_msgSend_contentsOfDirectoryAtPath_error_(a5, v19, PathComponent, 0);
    obj = v20;
    if (!v20 || !objc_msgSend_count(v20, v21, v22) || (v71 = 0u, v72 = 0u, v69 = 0u, v70 = 0u, (v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v69, v83, 16)) == 0))
    {
      v64 = 0;
      goto LABEL_48;
    }

    v64 = 0;
    v27 = *v70;
    v61 = *MEMORY[0x1E696A250];
    v63 = *MEMORY[0x1E696A3A0];
    v62 = *MEMORY[0x1E696A388];
    *&v26 = 138413058;
    v58 = v26;
    while (1)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v70 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v69 + 1) + 8 * i);
        if (objc_msgSend_isEqualToString_(v29, v24, v14, v58))
        {
          v31 = IMAttachmentsLogHandle();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          *buf = 138412290;
          v76 = v29;
          v32 = v31;
          v33 = OS_LOG_TYPE_DEFAULT;
          v34 = "Sibling search found orig filename %@, skipping";
          v35 = 12;
          goto LABEL_43;
        }

        v36 = objc_msgSend_stringByAppendingPathComponent_(v66, v30, v29);
        v38 = objc_msgSend_stringByAppendingPathComponent_(v65, v37, v29);
        v39 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v76 = v36;
          v77 = 2112;
          v78 = v38;
          _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_DEFAULT, "Will migrate sibling at path %@ to %@", buf, 0x16u);
        }

        v68 = 0;
        v43 = objc_msgSend_removeItemAtPath_error_(a5, v40, v38, &v68);
        if (!v43)
        {
          goto LABEL_52;
        }

        if (!v68)
        {
          goto LABEL_31;
        }

        v44 = objc_msgSend_domain(v68, v41, v42);
        if (!objc_msgSend_isEqualToString_(v44, v45, v61) || objc_msgSend_code(v68, v46, v47) != 4)
        {
LABEL_52:
          if (IMOSLoggingEnabled())
          {
            v48 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = @"NO";
              if (v43)
              {
                v49 = @"YES";
              }

              *buf = 138412802;
              v76 = v38;
              v77 = 2112;
              v78 = v49;
              v79 = 2112;
              v80 = v68;
              _os_log_impl(&dword_1B7AD5000, v48, OS_LOG_TYPE_INFO, "Failed to delete existing sibling %@ success %@ error %@", buf, 0x20u);
            }
          }
        }

        if (v68)
        {
          v68 = 0;
        }

LABEL_31:
        objc_msgSend_copyItemAtPath_toPath_error_(a5, v41, v36, v38, &v68);
        if (v68)
        {
          if (IMOSLoggingEnabled())
          {
            v50 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = v58;
              v76 = v59;
              v77 = 2112;
              v78 = v36;
              v79 = 2112;
              v80 = v38;
              v81 = 2112;
              v82 = v68;
              v32 = v50;
              v33 = OS_LOG_TYPE_INFO;
              v34 = "Failed to copy sibling attachment to dst. Orig %@ sibling %@ dst %@ error %@";
              v35 = 42;
LABEL_43:
              _os_log_impl(&dword_1B7AD5000, v32, v33, v34, buf, v35);
              continue;
            }
          }
        }

        else
        {
          if (!v64)
          {
            v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v51 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v76 = v29;
            v77 = 2112;
            v78 = v60;
            _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_DEFAULT, "Successfully migrated %@ to %@", buf, 0x16u);
          }

          objc_msgSend_addObject_(v64, v52, v36);
          v73 = v63;
          v74 = v62;
          v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v53, &v74, &v73, 1);
          objc_msgSend_setAttributes_ofItemAtPath_error_(a5, v55, v54, v38, &v68);
          if (v68)
          {
            if (IMOSLoggingEnabled())
            {
              v56 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v76 = v38;
                v77 = 2112;
                v78 = v68;
                v32 = v56;
                v33 = OS_LOG_TYPE_INFO;
                v34 = "Failed to update permissions on sibling file dst path %@ error %@";
                v35 = 22;
                goto LABEL_43;
              }
            }
          }
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v69, v83, 16);
      if (!v25)
      {
LABEL_48:
        result = v64;
        goto LABEL_49;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Can't migrate sibling attachments to the same folder", buf, 2u);
    }
  }

  result = 0;
LABEL_49:
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isSafeToDeleteAttachmentPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  PathComponent = objc_msgSend_lastPathComponent(a3, a2, a3);
  if (objc_msgSend_isEqualToString_(PathComponent, v5, @"Attachments"))
  {
    v8 = IMOSLoggingEnabled();
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      v8 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v8)
      {
        LOWORD(v21) = 0;
        v10 = "Not deleting attachment path, last component is Attachments";
        v11 = v9;
        v12 = 2;
LABEL_10:
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, v10, &v21, v12);
        LOBYTE(v8) = 0;
      }
    }
  }

  else
  {
    v13 = objc_msgSend_stringByDeletingLastPathComponent(a3, v6, v7);
    v16 = objc_msgSend_stringByExpandingTildeInPath(@"/var/mobile/Library/SMS/Attachments", v14, v15);
    if (objc_msgSend_containsString_(v13, v17, v16))
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = IMOSLoggingEnabled();
      if (v8)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        v8 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v8)
        {
          v21 = 138412290;
          v22 = a3;
          v10 = "Not deleting attachment path, not in attachment store: %@";
          v11 = v18;
          v12 = 12;
          goto LABEL_10;
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_persistentPathForTransfer:(id)a3 filename:(id)PathComponent highQuality:(BOOL)a5 chatGUID:(id)a6 storeAtExternalPath:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v44 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isSticker(a3, a2, a3))
  {
    v25 = objc_msgSend_guid(a3, v12, v13);
    if (objc_msgSend_isAuxVideo(a3, v26, v27))
    {
      v30 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 138412290;
        v41 = a3;
        _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_DEFAULT, "Overriding guid for transfer in _persistentPathForTransfer %@", &v40, 0xCu);
      }

      v25 = objc_msgSend_guidByStrippingAuxPrefix_(MEMORY[0x1E69A8078], v31, v25);
    }

    if (v9)
    {
      v32 = objc_msgSend_temporaryHighQualityLocalPath(a3, v28, v29);
      if (!PathComponent)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v32 = objc_msgSend_localPath(a3, v28, v29);
      if (!PathComponent)
      {
LABEL_15:
        PathComponent = objc_msgSend_lastPathComponent(v32, v33, v34);
      }
    }

    v35 = objc_msgSend_mimeType(a3, v33, v34);
    v38 = objc_msgSend_type(a3, v36, v37);
    result = IMDCopyAttachmentPersistentPath(v25, PathComponent, v35, v38, a6, v7);
    goto LABEL_17;
  }

  v14 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_guid(a3, v15, v16);
    isSticker = objc_msgSend_isSticker(a3, v18, v19);
    v21 = @"NO";
    if (isSticker)
    {
      v21 = @"YES";
    }

    v40 = 138412546;
    v41 = v17;
    v42 = 2112;
    v43 = v21;
    _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Generating path for sticker transfer %@ isSticker %@", &v40, 0x16u);
  }

  objc_msgSend_stickerUserInfo(a3, v15, v16);
  objc_msgSend_isAdaptiveImageGlyph(a3, v22, v23);
  result = IMSharedHelperCachePathForStickerWithProperties();
LABEL_17:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)cleanseOrphanedFileTransfers
{
  v2 = objc_alloc_init(IMDOrphanedAttachmentHandler);
  objc_msgSend_cleanseOrphanedAttachments(v2, v3, v4);

  return 1;
}

@end