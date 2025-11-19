@interface CKMediaObjectManager
+ (id)sharedInstance;
- (BOOL)_attachmentDataTooLargeToSend:(id)a3 utiType:(id)a4;
- (CKMediaObjectManager)init;
- (Class)classForFilename:(id)a3;
- (Class)classForUTIType:(id)a3;
- (id)UTITypeForExtension:(id)a3;
- (id)UTITypeForFilename:(id)a3;
- (id)allUTITypes;
- (id)mediaObjectWithData:(id)a3 UTIType:(id)a4 filename:(id)a5 transcoderUserInfo:(id)a6;
- (id)mediaObjectWithFileURL:(id)a3 filename:(id)a4 fileIsResolved:(BOOL)a5 transcoderUserInfo:(id)a6 attributionInfo:(id)a7 adaptiveImageGlyphContentIdentifier:(id)a8 adaptiveImageGlyphContentDescription:(id)a9 hideAttachment:(BOOL)a10 isScreenshot:(BOOL)a11;
- (id)mediaObjectWithSticker:(id)a3 stickerUserInfo:(id)a4;
- (id)mediaObjectWithTransferGUID:(id)a3 imMessage:(id)a4 chatContext:(id)a5;
- (id)transferWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 adaptiveImageGlyphContentIdentifier:(id)a6 adaptiveImageGlyphContentDescription:(id)a7 hideAttachment:(BOOL)a8 isScreenshot:(BOOL)a9;
- (id)transferWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 hideAttachment:(BOOL)a6;
- (id)transferWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 hideAttachment:(BOOL)a6 isScreenshot:(BOOL)a7 stickerEffectType:(unint64_t)a8;
- (id)transferWithStickerFileURL:(id)a3 transferUserInfo:(id)a4 attributionInfo:(id)a5 animatedImageCacheURL:(id)a6 adaptiveImageGlyphContentIdentifier:(id)a7 adaptiveImageGlyphContentDescription:(id)a8;
- (id)transferWithTransferGUID:(id)a3 imMessage:(id)a4;
- (void)_copyResolvedFileURL:(id)a3 toURL:(id)a4;
- (void)_previewGenerationFailedNotification:(id)a3;
- (void)_previewGenerationSucceededNotification:(id)a3;
- (void)dealloc;
- (void)transferRemoved:(id)a3;
@end

@implementation CKMediaObjectManager

+ (id)sharedInstance
{
  if (sharedInstance_once_4 != -1)
  {
    +[CKMediaObjectManager sharedInstance];
  }

  v3 = sharedInstance_sMediaObjectManager;

  return v3;
}

void __38__CKMediaObjectManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKMediaObjectManager);
  v1 = sharedInstance_sMediaObjectManager;
  sharedInstance_sMediaObjectManager = v0;
}

- (CKMediaObjectManager)init
{
  v65[14] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = CKMediaObjectManager;
  v2 = [(CKMediaObjectManager *)&v62 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKMediaObjectManager *)v2 setTransfers:v3];
    v4 = MEMORY[0x1E695DF70];
    v65[0] = objc_opt_class();
    v65[1] = objc_opt_class();
    v65[2] = objc_opt_class();
    v65[3] = objc_opt_class();
    v65[4] = objc_opt_class();
    v65[5] = objc_opt_class();
    v65[6] = objc_opt_class();
    v65[7] = objc_opt_class();
    v65[8] = objc_opt_class();
    v65[9] = objc_opt_class();
    v65[10] = objc_opt_class();
    v65[11] = objc_opt_class();
    v65[12] = objc_opt_class();
    v65[13] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:14];
    v6 = [v4 arrayWithArray:v5];

    +[CKPassPreviewMediaObject isSupported];
    [v6 insertObject:objc_opt_class() atIndex:0];
    [v6 insertObject:objc_opt_class() atIndex:0];
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [v7 objectForKey:@"kCKMediaObjectManagerDefaultsClasses"];
    v9 = [v8 __imArrayByApplyingBlock:&__block_literal_global_245];

    v10 = [MEMORY[0x1E69DC938] currentDevice];
    v11 = [v10 buildVersion];

    v12 = [v7 objectForKey:@"kCKMediaObjectManagerDefaultsOSVersion"];
    v49 = v9;
    v50 = v6;
    v47 = v12;
    v48 = v11;
    if ([v9 isEqual:v6] && (objc_msgSend(v12, "isEqualToString:", v11) & 1) != 0)
    {
      [(CKMediaObjectManager *)v2 setClasses:v9];
      v13 = v7;
      v14 = [v7 objectForKey:@"kCKMediaObjectManagerDefaultsUTITypes"];
      v15 = [v14 mutableCopy];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v16 = [v15 allKeys];
      v17 = [v16 countByEnumeratingWithState:&v51 objects:v63 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v52;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v52 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v51 + 1) + 8 * i);
            v22 = [v15 objectForKey:v21];
            v23 = NSClassFromString(v22);
            if (v23)
            {
              [v15 setObject:v23 forKey:v21];
            }

            else
            {
              [v15 removeObjectForKey:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v51 objects:v63 count:16];
        }

        while (v18);
      }

      v24 = v13;
      v25 = [v13 objectForKey:@"kCKMediaObjectManagerDefaultsDynTypes"];
      v26 = [v25 mutableCopy];

      [(CKMediaObjectManager *)v2 setUTITypes:v15];
      [(CKMediaObjectManager *)v2 setDynTypes:v26];
      v27 = v50;
      v28 = v48;
    }

    else
    {
      v45 = v7;
      v46 = v3;
      [(CKMediaObjectManager *)v2 setClasses:v6, @"kCKMediaObjectManagerDefaultsOSVersion"];
      v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __28__CKMediaObjectManager_init__block_invoke_2;
      v59[3] = &unk_1E72F7410;
      v15 = v29;
      v60 = v15;
      v26 = v30;
      v61 = v26;
      [v6 enumerateObjectsUsingBlock:v59];
      [(CKMediaObjectManager *)v2 setUTITypes:v15];
      [(CKMediaObjectManager *)v2 setDynTypes:v26];
      v31 = [v15 mutableCopy];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v32 = [v31 allKeys];
      v33 = [v32 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v56;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v56 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v55 + 1) + 8 * j);
            v38 = NSStringFromClass([v31 objectForKey:v37]);
            [v31 setObject:v38 forKey:v37];
          }

          v34 = [v32 countByEnumeratingWithState:&v55 objects:v64 count:16];
        }

        while (v34);
      }

      v27 = v50;
      v39 = [v50 __imArrayByApplyingBlock:&__block_literal_global_73];
      v24 = v45;
      [v45 setObject:v31 forKey:@"kCKMediaObjectManagerDefaultsUTITypes"];
      [v45 setObject:v26 forKey:@"kCKMediaObjectManagerDefaultsDynTypes"];
      v28 = v48;
      [v45 setObject:v48 forKey:v44];
      [v45 setObject:v39 forKey:@"kCKMediaObjectManagerDefaultsClasses"];

      v3 = v46;
    }

    v40 = [MEMORY[0x1E696AD88] defaultCenter];
    [v40 addObserver:v2 selector:sel_transferRemoved_ name:@"CKFileTransferRemovedNotification" object:0];

    v41 = [MEMORY[0x1E696AD88] defaultCenter];
    [v41 addObserver:v2 selector:sel__previewGenerationSucceededNotification_ name:*MEMORY[0x1E69A8468] object:0];

    v42 = [MEMORY[0x1E696AD88] defaultCenter];
    [v42 addObserver:v2 selector:sel__previewGenerationFailedNotification_ name:*MEMORY[0x1E69A8460] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKMediaObjectManager;
  [(CKMediaObjectManager *)&v4 dealloc];
}

void __28__CKMediaObjectManager_init__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 UTITypes];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__CKMediaObjectManager_init__block_invoke_3;
  v5[3] = &unk_1E72F73E8;
  v6 = *(a1 + 32);
  v8 = a2;
  v7 = *(a1 + 40);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __28__CKMediaObjectManager_init__block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKey:?];

  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) objectForKey:v11];
    NSLog(&cfstr_CanTRegisterUt.isa, v11, v4, v5);
  }

  else
  {
    [*(a1 + 32) setObject:*(a1 + 48) forKey:v11];
  }

  if ([v11 hasPrefix:@"dyn."])
  {
    v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:v11];
    v7 = [v6 preferredFilenameExtension];
    v8 = [v7 lowercaseString];

    v9 = [*(a1 + 40) objectForKey:v8];

    if (v9)
    {
      v10 = [*(a1 + 40) objectForKey:v8];
      NSLog(&cfstr_CanTRegisterEx.isa, v8, v11, v10);
    }

    if (v8)
    {
      [*(a1 + 40) setObject:v11 forKey:v8];
    }

    else
    {
      NSLog(&cfstr_CanTRegisterNi.isa, v11);
    }
  }
}

- (id)UTITypeForExtension:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 lowercaseString];
    v6 = [(CKMediaObjectManager *)self dynTypes];
    v7 = [v6 objectForKey:v5];

    if (!v7)
    {
      PreferredIdentifierForTag = IMLookUpExtensionInCache();
      if (!PreferredIdentifierForTag)
      {
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v5, 0);
      }

      v7 = PreferredIdentifierForTag;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E6963790];
  }

  return v7;
}

- (id)UTITypeForFilename:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    IMAttachmentFileNameAndExtension();
    v5 = 0;
    v6 = [(CKMediaObjectManager *)self UTITypeForExtension:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)allUTITypes
{
  v11[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(CKMediaObjectManager *)self UTITypes];
  v5 = [v4 allKeys];
  [v3 addObjectsFromArray:v5];

  v6 = *MEMORY[0x1E6963778];
  v11[0] = *MEMORY[0x1E6963790];
  v11[1] = v6;
  v7 = *MEMORY[0x1E69637E8];
  v11[2] = *MEMORY[0x1E6963888];
  v11[3] = v7;
  v8 = *MEMORY[0x1E69638B0];
  v11[4] = *MEMORY[0x1E69638B8];
  v11[5] = v8;
  v11[6] = *MEMORY[0x1E69A6890];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];
  [v3 addObjectsFromArray:v9];

  return v3;
}

- (Class)classForUTIType:(id)a3
{
  v4 = a3;
  v5 = [(CKMediaObjectManager *)self UTITypes];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = v6;

  return v6;
}

- (Class)classForFilename:(id)a3
{
  v4 = [(CKMediaObjectManager *)self UTITypeForFilename:a3];
  v5 = [(CKMediaObjectManager *)self classForUTIType:v4];

  return v5;
}

- (id)mediaObjectWithTransferGUID:(id)a3 imMessage:(id)a4 chatContext:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v37 = a5;
  v10 = [(CKMediaObjectManager *)self transfers];
  v11 = [v10 objectForKey:v8];

  if (!v11)
  {
    v11 = [(CKMediaObjectManager *)self transferWithTransferGUID:v8 imMessage:v9];
    if (v11)
    {
      if ([v8 length])
      {
        v22 = [(CKMediaObjectManager *)self transfers];
        [v22 setObject:v11 forKey:v8];
      }
    }
  }

  v12 = [MEMORY[0x1E69A5B80] sharedInstance];
  v13 = [v12 transferForGUID:v8];

  v14 = [v11 fileURL];

  if (!v14 && IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v13 localURL];
      *buf = 138412290;
      v39 = v16;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "imFileTransfer localURL: %@, transfer fileURL: NULL", buf, 0xCu);
    }
  }

  if (v13)
  {
    v17 = [v13 filename];
    v18 = [v13 isSticker];
    v19 = [v13 isAdaptiveImageGlyph];
    v20 = [(CKMediaObjectManager *)self classForFilename:v17];
    if (v19)
    {
LABEL_9:
      v21 = objc_opt_class();
      goto LABEL_17;
    }
  }

  else
  {
    v17 = [v11 filename];
    v18 = [v11 isSticker];
    v23 = [v11 isAdaptiveImageGlyph];
    v20 = [(CKMediaObjectManager *)self classForFilename:v17];
    if (v23)
    {
      goto LABEL_9;
    }
  }

  v21 = v20;
  if (v18 && ((-[objc_class isEqual:](v20, "isEqual:", objc_opt_class()) & 1) != 0 || [v21 isEqual:objc_opt_class()]))
  {
    goto LABEL_9;
  }

LABEL_17:
  if ([v21 isEqual:objc_opt_class()])
  {
    if (([v11 fileIsAnimated] & 1) == 0)
    {
      v24 = [(CKMediaObjectManager *)self UTITypeForFilename:v17];
      v25 = [*MEMORY[0x1E6982E00] identifier];
      v26 = [v24 isEqualToString:v25];

      if (v26)
      {
        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "UTI type was possibly animated, but it wasn't actually multi-frame.", buf, 2u);
          }
        }

        v21 = objc_opt_class();
      }
    }
  }

  v28 = [v9 __ck_context];
  v29 = [v28 mutableCopy];

  if (([v9 isFromMe] & 1) == 0)
  {
    [v29 setSpam:{objc_msgSend(v37, "isSpam")}];
  }

  [v29 setChatContext:v37];
  v30 = [v9 __ck_service];
  v31 = [v30 name];
  [v29 setServiceName:v31];

  v32 = [[v21 alloc] initWithTransfer:v11 context:v29 forceInlinePreview:0];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = [v11 guid];
      *buf = 138412546;
      v39 = v32;
      v40 = 2112;
      v41 = v34;
      _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_DEBUG, "Create mediaObject %@ for transfer %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v36 = [v11 guid];
    _CKLog();
  }

  return v32;
}

- (id)mediaObjectWithData:(id)a3 UTIType:(id)a4 filename:(id)a5 transcoderUserInfo:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v14 = [v12 lastPathComponent];
    v16 = CKSafeFilename(v14, v15);
  }

  else
  {
    v17 = [(CKMediaObjectManager *)self classForUTIType:v11];
    v18 = UTTypeCopyPreferredTagWithClass(v11, *MEMORY[0x1E6963710]);
    v19 = [(objc_class *)v17 fallbackFilenamePrefix];
    v16 = CKAttachmentFallbackFilename(v19, v18);
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = v16;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_DEBUG, "No filename. Generated filename: %@.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v33 = v16;
      _CKLog();
    }
  }

  if ([(CKMediaObjectManager *)self _attachmentDataTooLargeToSend:v10 utiType:v11, v33])
  {
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 postNotificationName:@"CKTransferFileTooLargeNotification" object:0 userInfo:0];

LABEL_13:
    v22 = 0;
    goto LABEL_25;
  }

  if (![v10 length])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v37 = v16;
        v38 = 2112;
        v39 = v11;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "No data for media %@ of type %@", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }

    goto LABEL_13;
  }

  v23 = CKAttachmentTmpFileURL(v16);
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v37 = v23;
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_DEBUG, "Write media data to %@ for transfer.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v34 = v23;
    _CKLog();
  }

  v25 = [(CKMediaObjectManager *)self fileManager];
  v26 = [v23 URLByDeletingLastPathComponent];
  [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:0];

  CKFreeSpaceWriteDataToURL(v10, v23, 1);
  v27 = IMIsScreenshotURL();
  if (v27)
  {
    LOBYTE(v27) = [MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled];
  }

  LOBYTE(v35) = v27;
  v28 = [(CKMediaObjectManager *)self transferWithFileURL:v23 transcoderUserInfo:v13 attributionInfo:0 adaptiveImageGlyphContentIdentifier:0 adaptiveImageGlyphContentDescription:0 hideAttachment:0 isScreenshot:v35];
  v29 = [v28 guid];
  v30 = [(CKMediaObjectManager *)self transfers];
  [v30 setObject:v28 forKey:v29];

  v22 = [(CKMediaObjectManager *)self mediaObjectWithTransferGUID:v29 imMessage:0];

LABEL_25:

  return v22;
}

- (id)mediaObjectWithFileURL:(id)a3 filename:(id)a4 fileIsResolved:(BOOL)a5 transcoderUserInfo:(id)a6 attributionInfo:(id)a7 adaptiveImageGlyphContentIdentifier:(id)a8 adaptiveImageGlyphContentDescription:(id)a9 hideAttachment:(BOOL)a10 isScreenshot:(BOOL)a11
{
  v53 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v47 = a6;
  v48 = a7;
  v19 = a8;
  v20 = a9;
  if (v17)
  {
    v21 = [(CKMediaObjectManager *)self fileManager];
    if (v18)
    {
      v22 = [v18 lastPathComponent];
      v24 = CKSafeFilename(v22, v23);

      v18 = v24;
    }

    else
    {
      v27 = [v17 path];
      v18 = [v27 lastPathComponent];

      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(46);
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v50 = v18;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_DEBUG, "No filename given, extracting the filename %@ from fileURL.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v44 = v18;
        _CKLog();
      }
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = [v17 URLByResolvingSymlinksInPath];
        *buf = 138412546;
        v50 = v17;
        v51 = 2112;
        v52 = v30;
        _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_DEBUG, "Resolving %@ to %@.", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      [v17 URLByResolvingSymlinksInPath];
      v46 = v44 = v17;
      _CKLog();
    }

    if (!a5)
    {
      v31 = [v17 URLByResolvingSymlinksInPath];

      v17 = v31;
    }

    v32 = [v17 path];
    v33 = [v21 fileExistsAtPath:v32];

    if (v33)
    {
      v34 = CKAttachmentTmpFileURL(v18);
      v35 = [v34 path];
      v36 = [v21 fileExistsAtPath:v35];

      if ((v36 & 1) == 0)
      {
        v37 = [v34 URLByDeletingLastPathComponent];
        [v21 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:0];

        if (a5)
        {
          [(CKMediaObjectManager *)self _copyResolvedFileURL:v17 toURL:v34];
        }

        else
        {
          [v21 copyItemAtURL:v17 toURL:v34 error:0];
        }
      }

      v39 = IMIsScreenshotURL();
      if (v39)
      {
        LOBYTE(v39) = [MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled];
      }

      LOBYTE(v45) = v39;
      v40 = [(CKMediaObjectManager *)self transferWithFileURL:v34 transcoderUserInfo:v47 attributionInfo:v48 adaptiveImageGlyphContentIdentifier:v19 adaptiveImageGlyphContentDescription:v20 hideAttachment:a10 isScreenshot:v45];
      v41 = [v40 guid];
      v42 = [(CKMediaObjectManager *)self transfers];
      [v42 setObject:v40 forKey:v41];

      v26 = [(CKMediaObjectManager *)self mediaObjectWithTransferGUID:v41 imMessage:0];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(46);
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v50 = v17;
          _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "No file for media at %@", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        _CKLogExternal();
      }

      v26 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_DEBUG, "fileURL is NIL can't create media object", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v26 = 0;
  }

  return v26;
}

- (void)_copyResolvedFileURL:(id)a3 toURL:(id)a4
{
  v5 = a4;
  v6 = [a3 path];
  v7 = [v6 fileSystemRepresentation];

  v8 = [v5 path];

  v9 = [v8 fileSystemRepresentation];
  v10 = open(v7, 0x20000000);
  if (v10 == -1)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager _copyResolvedFileURL:toURL:];
    }
  }

  else
  {
    v11 = v10;
    v12 = open(v9, 514, 384);
    if (v12 == -1)
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CKMediaObjectManager _copyResolvedFileURL:toURL:];
      }
    }

    else
    {
      v13 = v12;
      if (fcopyfile(v11, v12, 0, 0xC0008u) < 0)
      {
        v14 = IMLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CKMediaObjectManager _copyResolvedFileURL:toURL:];
        }
      }

      close(v13);
    }

    close(v11);
  }
}

- (id)mediaObjectWithSticker:(id)a3 stickerUserInfo:(id)a4
{
  v111 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
    }

    goto LABEL_11;
  }

  if (([v6 prepareToSend] & 1) == 0)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager mediaObjectWithSticker:v6 stickerUserInfo:?];
    }

LABEL_11:
    v16 = 0;
    goto LABEL_49;
  }

  v8 = [v6 stickerGUID];
  v9 = [v6 stickerPackGUID];
  v10 = *MEMORY[0x1E69A7C90];
  v11 = [v7 objectForKey:*MEMORY[0x1E69A7C90]];
  v12 = [v6 recipe];
  v13 = [v12 __imHexString];

  v14 = [v6 ballonBundleID];
  if (!v8 || ![v8 length])
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager mediaObjectWithSticker:v6 stickerUserInfo:?];
    }

    v16 = 0;
    goto LABEL_48;
  }

  v94 = [v9 isEqualToString:@"com.apple.private.watchEmoji"];
  value = v14;
  if (v7)
  {
    v15 = [v7 mutableCopy];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v17 = v15;
  v18 = [v6 stickerEffectType];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
  if (v19)
  {
    CFDictionarySetValue(v17, *MEMORY[0x1E69A7C88], v19);
  }

  v20 = v9;
  if (v20)
  {
    CFDictionarySetValue(v17, *MEMORY[0x1E69A7CB0], v20);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
  }

  if (v11)
  {
    CFDictionarySetValue(v17, v10, v11);
  }

  if (value)
  {
    CFDictionarySetValue(v17, *MEMORY[0x1E69A7C80], value);
  }

  if (v13)
  {
    CFDictionarySetValue(v17, *MEMORY[0x1E69A7CC0], v13);
  }

  v98 = v13;
  v21 = [v6 representations];
  if (v21)
  {
    v22 = v21;
    v23 = [v6 fileURL];

    if (!v23)
    {
      v96 = v11;
      v44 = [v6 representations];
      v24 = [v44 firstObject];

      v45 = [v24 data];
      v46 = [v45 length];

      if (!v46)
      {
        v63 = IMLogHandleForCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          [CKMediaObjectManager mediaObjectWithSticker:v6 stickerUserInfo:?];
        }

        v16 = 0;
        goto LABEL_71;
      }

      v47 = [v24 data];
      v48 = IMSharedHelperMD5OfData();

      v91 = v48;
      if (v48 && [v48 length])
      {
        if ([v8 length])
        {
          CFDictionarySetValue(v17, *MEMORY[0x1E69A7CA0], v48);
          v49 = MEMORY[0x1E6982C40];
          v50 = [v24 type];
          v88 = [v49 typeWithIdentifier:v50];

          v52 = CKSafeFilename(v8, v51);
          v53 = [v52 stringByAppendingPathExtensionForType:v88];

          v54 = v53;
          v55 = CKAttachmentTmpFileURL(v54);
          v86 = v54;

          v56 = [v55 path];
          v57 = [v56 stringByDeletingLastPathComponent];

          v87 = v57;
          IMSharedHelperEnsureDirectoryExistsAtPath();
          v58 = [v24 data];
          v102 = 0;
          v90 = v55;
          LODWORD(v55) = [v58 writeToURL:v55 options:0x40000000 error:&v102];
          v59 = v102;

          if (!v55 || v59)
          {
            v70 = IMLogHandleForCategory();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
            }

            v16 = 0;
            v8 = v86;
            goto LABEL_71;
          }

          v93 = v9;
          v8 = v86;
LABEL_59:

          if (v94)
          {
            Mutable = [v7 mutableCopy];
            v11 = v96;
            v13 = v98;
            goto LABEL_94;
          }

          v86 = v8;
          v65 = [MEMORY[0x1E69A5AD0] sharedInstance];
          v66 = [v65 balloonPluginForBundleID:v20];

          v11 = v96;
          if (v66)
          {
            v67 = [v66 attributionInfo];
            Mutable = [v67 mutableCopy];

            v68 = [v6 attributionInfo];
            v69 = v68;
            if (Mutable)
            {

              if (v69)
              {
                v13 = v98;
LABEL_93:

                v8 = v86;
LABEL_94:
                v8 = v8;
                if (v8)
                {
                  CFDictionarySetValue(v17, *MEMORY[0x1E69A7C98], v8);
                }

                else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
                }

                if (!Mutable)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                }

                v73 = [v6 accessibilityLabel];
                if (v73)
                {
                  CFDictionarySetValue(Mutable, *MEMORY[0x1E69A6F98], v73);
                }

                v99 = [v6 adaptiveImageGlyphContentIdentifier];
                v74 = [v6 adaptiveImageGlyphContentDescription];
                v75 = [v6 animatedImageCacheURLFromExtension];
                v95 = Mutable;
                v92 = v74;
                v76 = [(CKMediaObjectManager *)self transferWithStickerFileURL:v90 transferUserInfo:v17 attributionInfo:Mutable animatedImageCacheURL:v75 adaptiveImageGlyphContentIdentifier:v99 adaptiveImageGlyphContentDescription:v74];

                v89 = v76;
                if (v76)
                {
                  v77 = [v76 guid];
                  v78 = [(CKMediaObjectManager *)self transfers];
                  [v78 setObject:v76 forKey:v77];

                  v97 = v77;
                  v16 = [(CKMediaObjectManager *)self mediaObjectWithTransferGUID:v77 imMessage:0];
                  v14 = value;
                  if (v16)
                  {
                    objc_opt_class();
                    v9 = v93;
                    if (objc_opt_isKindOfClass())
                    {
                      [v16 setSticker:v6];
                    }

                    else
                    {
                      v81 = IMLogHandleForCategory();
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                      {
                        [CKMediaObjectManager mediaObjectWithSticker:v6 stickerUserInfo:?];
                      }
                    }

                    v80 = [v6 cachedAdaptiveImageGlyphForSkippingPreviewGenerationOnly];
                    [v16 setAdaptiveImageGlyph:v80];
                    v82 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v104 = v6;
                      _os_log_impl(&dword_19020E000, v82, OS_LOG_TYPE_INFO, "Create media object for sticker: %@ OK", buf, 0xCu);
                    }

                    v83 = v16;
                    v14 = value;
                  }

                  else
                  {
                    v80 = IMLogHandleForCategory();
                    v9 = v93;
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                    {
                      [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
                    }
                  }
                }

                else
                {
                  v79 = IMLogHandleForCategory();
                  v14 = value;
                  v97 = v79;
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    v85 = [v6 description];
                    *buf = 138413058;
                    v104 = v85;
                    v105 = 2112;
                    v106 = v90;
                    v107 = 2112;
                    v108 = v17;
                    v109 = 2112;
                    v110 = Mutable;
                    _os_log_error_impl(&dword_19020E000, v79, OS_LOG_TYPE_ERROR, "Failed to create file transfer for sticker: %@, tempFileURL: %@, transfer user info: %@, attribution info: %@", buf, 0x2Au);

                    v16 = 0;
                    v9 = v93;
                    goto LABEL_118;
                  }

                  v16 = 0;
                  v9 = v93;
                }

                Mutable = v95;
LABEL_118:

                goto LABEL_48;
              }

              v72 = Mutable;
              v71 = [(__CFDictionary *)Mutable copy];
              [v6 setAttributionInfo:v71];
              v13 = v98;
LABEL_92:

              Mutable = v72;
              goto LABEL_93;
            }

            Mutable = [v68 mutableCopy];

            v13 = v98;
            if (Mutable)
            {
              goto LABEL_93;
            }

            v71 = IMLogHandleForCategory();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
            }
          }

          else
          {
            v71 = IMLogHandleForCategory();
            v13 = v98;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
            }
          }

          v72 = 0;
          goto LABEL_92;
        }

        v62 = IMLogHandleForCategory();
        v11 = v96;
        v13 = v98;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [CKMediaObjectManager mediaObjectWithSticker:v6 stickerUserInfo:?];
        }
      }

      else
      {
        v62 = IMLogHandleForCategory();
        v13 = v98;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
        }

        v11 = v96;
      }

      goto LABEL_46;
    }
  }

  v24 = [v6 fileURL];
  if (!v24)
  {
    v42 = IMLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager mediaObjectWithSticker:v6 stickerUserInfo:?];
    }

    v13 = v98;
    goto LABEL_45;
  }

  v96 = v11;
  v93 = v9;
  v25 = [MEMORY[0x1E696AC08] defaultManager];
  v26 = [v24 path];
  v27 = [v25 fileExistsAtPath:v26];

  if ((v27 & 1) == 0)
  {
    v42 = IMLogHandleForCategory();
    v9 = v93;
    v11 = v96;
    v13 = v98;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
    }

LABEL_45:

LABEL_46:
    v16 = 0;
    goto LABEL_47;
  }

  v28 = [v24 path];
  v29 = IMSharedHelperMD5HashOfFileAtPath();

  v30 = v29;
  v11 = v96;
  v13 = v98;
  if (v30 && [v30 length])
  {
    v91 = v30;
    v31 = [v24 path];
    v32 = [v31 lastPathComponent];

    if (!v32)
    {
      v64 = IMLogHandleForCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [CKMediaObjectManager mediaObjectWithSticker:v6 stickerUserInfo:?];
      }

      v16 = 0;
      v9 = v93;
      goto LABEL_75;
    }

    CFDictionarySetValue(v17, *MEMORY[0x1E69A7CA0], v91);
    v34 = CKSafeFilename(v32, v33);

    v88 = v34;
    v35 = CKAttachmentTmpFileURL(v34);
    v36 = [v35 path];
    v37 = [v36 stringByDeletingLastPathComponent];

    v87 = v37;
    IMSharedHelperEnsureDirectoryExistsAtPath();
    v38 = [MEMORY[0x1E696AC08] defaultManager];
    v39 = [v6 fileURL];
    v101 = 0;
    v90 = v35;
    LODWORD(v86) = [v38 copyItemAtURL:v39 toURL:v35 error:&v101];
    v40 = v101;

    if (!v86 || v40)
    {
      v41 = IMLogHandleForCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v84 = [v6 fileURL];
        *buf = 138412802;
        v104 = v84;
        v105 = 2112;
        v106 = v90;
        v107 = 2112;
        v108 = v40;
        _os_log_error_impl(&dword_19020E000, v41, OS_LOG_TYPE_ERROR, "Could not copy sticker from %@ to %@ error %@", buf, 0x20u);
      }

      v16 = 0;
      v9 = v93;
LABEL_71:
      v11 = v96;
LABEL_75:
      v13 = v98;
      v14 = value;
      goto LABEL_48;
    }

    goto LABEL_59;
  }

  v61 = IMLogHandleForCategory();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
  }

  v16 = 0;
  v9 = v93;
LABEL_47:
  v14 = value;
LABEL_48:

LABEL_49:

  return v16;
}

- (id)transferWithTransferGUID:(id)a3 imMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(-[CKMediaObjectManager transferClass](self "transferClass"))];

  return v8;
}

- (id)transferWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 hideAttachment:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_alloc(-[CKMediaObjectManager transferClass](self "transferClass"))];

  return v13;
}

- (id)transferWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 adaptiveImageGlyphContentIdentifier:(id)a6 adaptiveImageGlyphContentDescription:(id)a7 hideAttachment:(BOOL)a8 isScreenshot:(BOOL)a9
{
  v9 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  LOBYTE(v22) = a9;
  v20 = [objc_alloc(-[CKMediaObjectManager transferClass](self "transferClass"))];

  return v20;
}

- (id)transferWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 hideAttachment:(BOOL)a6 isScreenshot:(BOOL)a7 stickerEffectType:(unint64_t)a8
{
  v9 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v17 = [v16 isStickersAppEnabled];

  if (v17)
  {
    LOBYTE(v20) = a7;
    v18 = [objc_alloc(-[CKMediaObjectManager transferClass](self "transferClass"))];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)transferWithStickerFileURL:(id)a3 transferUserInfo:(id)a4 attributionInfo:(id)a5 animatedImageCacheURL:(id)a6 adaptiveImageGlyphContentIdentifier:(id)a7 adaptiveImageGlyphContentDescription:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [objc_alloc(-[CKMediaObjectManager transferClass](self "transferClass"))];

  return v20;
}

- (void)transferRemoved:(id)a3
{
  v6 = [a3 object];
  v4 = [v6 guid];
  if (v4)
  {
    v5 = [(CKMediaObjectManager *)self transfers];
    [v5 removeObjectForKey:v4];
  }
}

- (BOOL)_attachmentDataTooLargeToSend:(id)a3 utiType:(id)a4
{
  v4 = a3;
  v5 = (IMUTITypeIsSupportedForTranscodeOnSend() & 1) == 0 && [v4 length] > 0x6400000;

  return v5;
}

- (void)_previewGenerationSucceededNotification:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 object];
  if ([MEMORY[0x1E69A7FF8] ignorePreviewGenerationNotifications])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v4;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "Preview generation succeeded for transfer %@, but ignoring due to override", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }
  }

  else
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A8470]];
    v8 = v7;
    *buf = 0uLL;
    if (v7)
    {
      [v7 getValue:buf size:16];
      v9 = *&buf[8];
      v10 = *buf;
    }

    else
    {
      v9 = 0.0;
      v10 = 0.0;
    }

    v11 = [MEMORY[0x1E69A5B50] sharedInstance];
    v12 = [v11 remoteDaemon];
    [v12 successfullyGeneratedPreviewForTransfer:v4 withPreviewSize:{v10, v9}];
  }
}

- (void)_previewGenerationFailedNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 object];
  if ([MEMORY[0x1E69A7FF8] ignorePreviewGenerationNotifications])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "Preview generation failed for transfer %@, but ignoring due to override", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69A5B50] sharedInstance];
    v7 = [v6 remoteDaemon];
    [v7 failTransferPreviewGeneration:v4];
  }
}

- (void)_copyResolvedFileURL:toURL:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)_copyResolvedFileURL:toURL:.cold.2()
{
  __error();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_copyResolvedFileURL:toURL:.cold.3()
{
  __error();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)mediaObjectWithSticker:(void *)a1 stickerUserInfo:.cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mediaObjectWithSticker:stickerUserInfo:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)mediaObjectWithSticker:stickerUserInfo:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_19020E000, v1, OS_LOG_TYPE_ERROR, "Could not write sticker representation to %@ error %@", v2, 0x16u);
}

- (void)mediaObjectWithSticker:(void *)a1 stickerUserInfo:.cold.4(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mediaObjectWithSticker:stickerUserInfo:.cold.5()
{
  OUTLINED_FUNCTION_4_2();
  v2 = [v1 type];
  v3 = [v0 description];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)mediaObjectWithSticker:(void *)a1 stickerUserInfo:.cold.6(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mediaObjectWithSticker:stickerUserInfo:.cold.7()
{
  OUTLINED_FUNCTION_4_2();
  v2 = [v1 path];
  v3 = [v0 description];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)mediaObjectWithSticker:stickerUserInfo:.cold.8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)mediaObjectWithSticker:stickerUserInfo:.cold.9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)mediaObjectWithSticker:stickerUserInfo:.cold.10()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)mediaObjectWithSticker:(void *)a1 stickerUserInfo:.cold.11(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mediaObjectWithSticker:stickerUserInfo:.cold.12()
{
  OUTLINED_FUNCTION_4_2();
  v1 = [v0 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)mediaObjectWithSticker:(void *)a1 stickerUserInfo:.cold.13(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mediaObjectWithSticker:stickerUserInfo:.cold.14()
{
  OUTLINED_FUNCTION_4_2();
  v2 = [v1 path];
  v3 = [v0 description];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)mediaObjectWithSticker:(void *)a1 stickerUserInfo:.cold.15(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mediaObjectWithSticker:(void *)a1 stickerUserInfo:.cold.16(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end