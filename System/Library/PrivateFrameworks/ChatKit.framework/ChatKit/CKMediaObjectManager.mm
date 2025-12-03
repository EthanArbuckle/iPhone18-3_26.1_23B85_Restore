@interface CKMediaObjectManager
+ (id)sharedInstance;
- (BOOL)_attachmentDataTooLargeToSend:(id)send utiType:(id)type;
- (CKMediaObjectManager)init;
- (Class)classForFilename:(id)filename;
- (Class)classForUTIType:(id)type;
- (id)UTITypeForExtension:(id)extension;
- (id)UTITypeForFilename:(id)filename;
- (id)allUTITypes;
- (id)mediaObjectWithData:(id)data UTIType:(id)type filename:(id)filename transcoderUserInfo:(id)info;
- (id)mediaObjectWithFileURL:(id)l filename:(id)filename fileIsResolved:(BOOL)resolved transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description hideAttachment:(BOOL)self0 isScreenshot:(BOOL)self1;
- (id)mediaObjectWithSticker:(id)sticker stickerUserInfo:(id)info;
- (id)mediaObjectWithTransferGUID:(id)d imMessage:(id)message chatContext:(id)context;
- (id)transferWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description hideAttachment:(BOOL)attachment isScreenshot:(BOOL)screenshot;
- (id)transferWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo hideAttachment:(BOOL)attachment;
- (id)transferWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo hideAttachment:(BOOL)attachment isScreenshot:(BOOL)screenshot stickerEffectType:(unint64_t)type;
- (id)transferWithStickerFileURL:(id)l transferUserInfo:(id)info attributionInfo:(id)attributionInfo animatedImageCacheURL:(id)rL adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description;
- (id)transferWithTransferGUID:(id)d imMessage:(id)message;
- (void)_copyResolvedFileURL:(id)l toURL:(id)rL;
- (void)_previewGenerationFailedNotification:(id)notification;
- (void)_previewGenerationSucceededNotification:(id)notification;
- (void)dealloc;
- (void)transferRemoved:(id)removed;
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
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [standardUserDefaults objectForKey:@"kCKMediaObjectManagerDefaultsClasses"];
    v9 = [v8 __imArrayByApplyingBlock:&__block_literal_global_245];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    buildVersion = [currentDevice buildVersion];

    v12 = [standardUserDefaults objectForKey:@"kCKMediaObjectManagerDefaultsOSVersion"];
    v49 = v9;
    v50 = v6;
    v47 = v12;
    v48 = buildVersion;
    if ([v9 isEqual:v6] && (objc_msgSend(v12, "isEqualToString:", buildVersion) & 1) != 0)
    {
      [(CKMediaObjectManager *)v2 setClasses:v9];
      v13 = standardUserDefaults;
      v14 = [standardUserDefaults objectForKey:@"kCKMediaObjectManagerDefaultsUTITypes"];
      v15 = [v14 mutableCopy];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      allKeys = [v15 allKeys];
      v17 = [allKeys countByEnumeratingWithState:&v51 objects:v63 count:16];
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
              objc_enumerationMutation(allKeys);
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

          v18 = [allKeys countByEnumeratingWithState:&v51 objects:v63 count:16];
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
      v45 = standardUserDefaults;
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
      allKeys2 = [v31 allKeys];
      v33 = [allKeys2 countByEnumeratingWithState:&v55 objects:v64 count:16];
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
              objc_enumerationMutation(allKeys2);
            }

            v37 = *(*(&v55 + 1) + 8 * j);
            v38 = NSStringFromClass([v31 objectForKey:v37]);
            [v31 setObject:v38 forKey:v37];
          }

          v34 = [allKeys2 countByEnumeratingWithState:&v55 objects:v64 count:16];
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_transferRemoved_ name:@"CKFileTransferRemovedNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__previewGenerationSucceededNotification_ name:*MEMORY[0x1E69A8468] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__previewGenerationFailedNotification_ name:*MEMORY[0x1E69A8460] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (id)UTITypeForExtension:(id)extension
{
  extensionCopy = extension;
  if ([extensionCopy length])
  {
    lowercaseString = [extensionCopy lowercaseString];
    dynTypes = [(CKMediaObjectManager *)self dynTypes];
    v7 = [dynTypes objectForKey:lowercaseString];

    if (!v7)
    {
      PreferredIdentifierForTag = IMLookUpExtensionInCache();
      if (!PreferredIdentifierForTag)
      {
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], lowercaseString, 0);
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

- (id)UTITypeForFilename:(id)filename
{
  filenameCopy = filename;
  if ([filenameCopy length])
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
  uTITypes = [(CKMediaObjectManager *)self UTITypes];
  allKeys = [uTITypes allKeys];
  [v3 addObjectsFromArray:allKeys];

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

- (Class)classForUTIType:(id)type
{
  typeCopy = type;
  uTITypes = [(CKMediaObjectManager *)self UTITypes];
  v6 = [uTITypes objectForKey:typeCopy];

  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = v6;

  return v6;
}

- (Class)classForFilename:(id)filename
{
  v4 = [(CKMediaObjectManager *)self UTITypeForFilename:filename];
  v5 = [(CKMediaObjectManager *)self classForUTIType:v4];

  return v5;
}

- (id)mediaObjectWithTransferGUID:(id)d imMessage:(id)message chatContext:(id)context
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  messageCopy = message;
  contextCopy = context;
  transfers = [(CKMediaObjectManager *)self transfers];
  v11 = [transfers objectForKey:dCopy];

  if (!v11)
  {
    v11 = [(CKMediaObjectManager *)self transferWithTransferGUID:dCopy imMessage:messageCopy];
    if (v11)
    {
      if ([dCopy length])
      {
        transfers2 = [(CKMediaObjectManager *)self transfers];
        [transfers2 setObject:v11 forKey:dCopy];
      }
    }
  }

  mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
  v13 = [mEMORY[0x1E69A5B80] transferForGUID:dCopy];

  fileURL = [v11 fileURL];

  if (!fileURL && IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      localURL = [v13 localURL];
      *buf = 138412290;
      v39 = localURL;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "imFileTransfer localURL: %@, transfer fileURL: NULL", buf, 0xCu);
    }
  }

  if (v13)
  {
    filename = [v13 filename];
    isSticker = [v13 isSticker];
    isAdaptiveImageGlyph = [v13 isAdaptiveImageGlyph];
    v20 = [(CKMediaObjectManager *)self classForFilename:filename];
    if (isAdaptiveImageGlyph)
    {
LABEL_9:
      v21 = objc_opt_class();
      goto LABEL_17;
    }
  }

  else
  {
    filename = [v11 filename];
    isSticker = [v11 isSticker];
    isAdaptiveImageGlyph2 = [v11 isAdaptiveImageGlyph];
    v20 = [(CKMediaObjectManager *)self classForFilename:filename];
    if (isAdaptiveImageGlyph2)
    {
      goto LABEL_9;
    }
  }

  v21 = v20;
  if (isSticker && ((-[objc_class isEqual:](v20, "isEqual:", objc_opt_class()) & 1) != 0 || [v21 isEqual:objc_opt_class()]))
  {
    goto LABEL_9;
  }

LABEL_17:
  if ([v21 isEqual:objc_opt_class()])
  {
    if (([v11 fileIsAnimated] & 1) == 0)
    {
      v24 = [(CKMediaObjectManager *)self UTITypeForFilename:filename];
      identifier = [*MEMORY[0x1E6982E00] identifier];
      v26 = [v24 isEqualToString:identifier];

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

  __ck_context = [messageCopy __ck_context];
  v29 = [__ck_context mutableCopy];

  if (([messageCopy isFromMe] & 1) == 0)
  {
    [v29 setSpam:{objc_msgSend(contextCopy, "isSpam")}];
  }

  [v29 setChatContext:contextCopy];
  __ck_service = [messageCopy __ck_service];
  name = [__ck_service name];
  [v29 setServiceName:name];

  v32 = [[v21 alloc] initWithTransfer:v11 context:v29 forceInlinePreview:0];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      guid = [v11 guid];
      *buf = 138412546;
      v39 = v32;
      v40 = 2112;
      v41 = guid;
      _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_DEBUG, "Create mediaObject %@ for transfer %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    guid2 = [v11 guid];
    _CKLog();
  }

  return v32;
}

- (id)mediaObjectWithData:(id)data UTIType:(id)type filename:(id)filename transcoderUserInfo:(id)info
{
  v40 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  typeCopy = type;
  filenameCopy = filename;
  infoCopy = info;
  if (filenameCopy)
  {
    lastPathComponent = [filenameCopy lastPathComponent];
    v16 = CKSafeFilename(lastPathComponent, v15);
  }

  else
  {
    v17 = [(CKMediaObjectManager *)self classForUTIType:typeCopy];
    v18 = UTTypeCopyPreferredTagWithClass(typeCopy, *MEMORY[0x1E6963710]);
    fallbackFilenamePrefix = [(objc_class *)v17 fallbackFilenamePrefix];
    v16 = CKAttachmentFallbackFilename(fallbackFilenamePrefix, v18);
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

  if ([(CKMediaObjectManager *)self _attachmentDataTooLargeToSend:dataCopy utiType:typeCopy, v33])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKTransferFileTooLargeNotification" object:0 userInfo:0];

LABEL_13:
    v22 = 0;
    goto LABEL_25;
  }

  if (![dataCopy length])
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
        v39 = typeCopy;
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

  fileManager = [(CKMediaObjectManager *)self fileManager];
  uRLByDeletingLastPathComponent = [v23 URLByDeletingLastPathComponent];
  [fileManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  CKFreeSpaceWriteDataToURL(dataCopy, v23, 1);
  v27 = IMIsScreenshotURL();
  if (v27)
  {
    LOBYTE(v27) = [MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled];
  }

  LOBYTE(v35) = v27;
  v28 = [(CKMediaObjectManager *)self transferWithFileURL:v23 transcoderUserInfo:infoCopy attributionInfo:0 adaptiveImageGlyphContentIdentifier:0 adaptiveImageGlyphContentDescription:0 hideAttachment:0 isScreenshot:v35];
  guid = [v28 guid];
  transfers = [(CKMediaObjectManager *)self transfers];
  [transfers setObject:v28 forKey:guid];

  v22 = [(CKMediaObjectManager *)self mediaObjectWithTransferGUID:guid imMessage:0];

LABEL_25:

  return v22;
}

- (id)mediaObjectWithFileURL:(id)l filename:(id)filename fileIsResolved:(BOOL)resolved transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description hideAttachment:(BOOL)self0 isScreenshot:(BOOL)self1
{
  v53 = *MEMORY[0x1E69E9840];
  lCopy = l;
  filenameCopy = filename;
  infoCopy = info;
  attributionInfoCopy = attributionInfo;
  identifierCopy = identifier;
  descriptionCopy = description;
  if (lCopy)
  {
    fileManager = [(CKMediaObjectManager *)self fileManager];
    if (filenameCopy)
    {
      lastPathComponent = [filenameCopy lastPathComponent];
      v24 = CKSafeFilename(lastPathComponent, v23);

      filenameCopy = v24;
    }

    else
    {
      path = [lCopy path];
      filenameCopy = [path lastPathComponent];

      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(46);
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v50 = filenameCopy;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_DEBUG, "No filename given, extracting the filename %@ from fileURL.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v44 = filenameCopy;
        _CKLog();
      }
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        uRLByResolvingSymlinksInPath = [lCopy URLByResolvingSymlinksInPath];
        *buf = 138412546;
        v50 = lCopy;
        v51 = 2112;
        v52 = uRLByResolvingSymlinksInPath;
        _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_DEBUG, "Resolving %@ to %@.", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      [lCopy URLByResolvingSymlinksInPath];
      v46 = v44 = lCopy;
      _CKLog();
    }

    if (!resolved)
    {
      uRLByResolvingSymlinksInPath2 = [lCopy URLByResolvingSymlinksInPath];

      lCopy = uRLByResolvingSymlinksInPath2;
    }

    path2 = [lCopy path];
    v33 = [fileManager fileExistsAtPath:path2];

    if (v33)
    {
      v34 = CKAttachmentTmpFileURL(filenameCopy);
      path3 = [v34 path];
      v36 = [fileManager fileExistsAtPath:path3];

      if ((v36 & 1) == 0)
      {
        uRLByDeletingLastPathComponent = [v34 URLByDeletingLastPathComponent];
        [fileManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

        if (resolved)
        {
          [(CKMediaObjectManager *)self _copyResolvedFileURL:lCopy toURL:v34];
        }

        else
        {
          [fileManager copyItemAtURL:lCopy toURL:v34 error:0];
        }
      }

      v39 = IMIsScreenshotURL();
      if (v39)
      {
        LOBYTE(v39) = [MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled];
      }

      LOBYTE(v45) = v39;
      v40 = [(CKMediaObjectManager *)self transferWithFileURL:v34 transcoderUserInfo:infoCopy attributionInfo:attributionInfoCopy adaptiveImageGlyphContentIdentifier:identifierCopy adaptiveImageGlyphContentDescription:descriptionCopy hideAttachment:attachment isScreenshot:v45];
      guid = [v40 guid];
      transfers = [(CKMediaObjectManager *)self transfers];
      [transfers setObject:v40 forKey:guid];

      v26 = [(CKMediaObjectManager *)self mediaObjectWithTransferGUID:guid imMessage:0];
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
          v50 = lCopy;
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

- (void)_copyResolvedFileURL:(id)l toURL:(id)rL
{
  rLCopy = rL;
  path = [l path];
  fileSystemRepresentation = [path fileSystemRepresentation];

  path2 = [rLCopy path];

  fileSystemRepresentation2 = [path2 fileSystemRepresentation];
  v10 = open(fileSystemRepresentation, 0x20000000);
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
    v12 = open(fileSystemRepresentation2, 514, 384);
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

- (id)mediaObjectWithSticker:(id)sticker stickerUserInfo:(id)info
{
  v111 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  infoCopy = info;
  if (!stickerCopy)
  {
    stickerGUID = IMLogHandleForCategory();
    if (os_log_type_enabled(stickerGUID, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
    }

    goto LABEL_11;
  }

  if (([stickerCopy prepareToSend] & 1) == 0)
  {
    stickerGUID = IMLogHandleForCategory();
    if (os_log_type_enabled(stickerGUID, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager mediaObjectWithSticker:stickerCopy stickerUserInfo:?];
    }

LABEL_11:
    v16 = 0;
    goto LABEL_49;
  }

  stickerGUID = [stickerCopy stickerGUID];
  stickerPackGUID = [stickerCopy stickerPackGUID];
  v10 = *MEMORY[0x1E69A7C90];
  v11 = [infoCopy objectForKey:*MEMORY[0x1E69A7C90]];
  recipe = [stickerCopy recipe];
  __imHexString = [recipe __imHexString];

  ballonBundleID = [stickerCopy ballonBundleID];
  if (!stickerGUID || ![stickerGUID length])
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager mediaObjectWithSticker:stickerCopy stickerUserInfo:?];
    }

    v16 = 0;
    goto LABEL_48;
  }

  v94 = [stickerPackGUID isEqualToString:@"com.apple.private.watchEmoji"];
  value = ballonBundleID;
  if (infoCopy)
  {
    v15 = [infoCopy mutableCopy];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v17 = v15;
  stickerEffectType = [stickerCopy stickerEffectType];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:stickerEffectType];
  if (v19)
  {
    CFDictionarySetValue(v17, *MEMORY[0x1E69A7C88], v19);
  }

  v20 = stickerPackGUID;
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

  if (__imHexString)
  {
    CFDictionarySetValue(v17, *MEMORY[0x1E69A7CC0], __imHexString);
  }

  v98 = __imHexString;
  representations = [stickerCopy representations];
  if (representations)
  {
    v22 = representations;
    fileURL = [stickerCopy fileURL];

    if (!fileURL)
    {
      v96 = v11;
      representations2 = [stickerCopy representations];
      firstObject = [representations2 firstObject];

      data = [firstObject data];
      v46 = [data length];

      if (!v46)
      {
        v63 = IMLogHandleForCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          [CKMediaObjectManager mediaObjectWithSticker:stickerCopy stickerUserInfo:?];
        }

        v16 = 0;
        goto LABEL_71;
      }

      data2 = [firstObject data];
      v48 = IMSharedHelperMD5OfData();

      v91 = v48;
      if (v48 && [v48 length])
      {
        if ([stickerGUID length])
        {
          CFDictionarySetValue(v17, *MEMORY[0x1E69A7CA0], v48);
          v49 = MEMORY[0x1E6982C40];
          type = [firstObject type];
          v88 = [v49 typeWithIdentifier:type];

          v52 = CKSafeFilename(stickerGUID, v51);
          v53 = [v52 stringByAppendingPathExtensionForType:v88];

          v54 = v53;
          v55 = CKAttachmentTmpFileURL(v54);
          v86 = v54;

          path = [v55 path];
          stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

          v87 = stringByDeletingLastPathComponent;
          IMSharedHelperEnsureDirectoryExistsAtPath();
          data3 = [firstObject data];
          v102 = 0;
          v90 = v55;
          LODWORD(v55) = [data3 writeToURL:v55 options:0x40000000 error:&v102];
          v59 = v102;

          if (!v55 || v59)
          {
            v70 = IMLogHandleForCategory();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
            }

            v16 = 0;
            stickerGUID = v86;
            goto LABEL_71;
          }

          v93 = stickerPackGUID;
          stickerGUID = v86;
LABEL_59:

          if (v94)
          {
            Mutable = [infoCopy mutableCopy];
            v11 = v96;
            __imHexString = v98;
            goto LABEL_94;
          }

          v86 = stickerGUID;
          mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
          v66 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v20];

          v11 = v96;
          if (v66)
          {
            attributionInfo = [v66 attributionInfo];
            Mutable = [attributionInfo mutableCopy];

            attributionInfo2 = [stickerCopy attributionInfo];
            v69 = attributionInfo2;
            if (Mutable)
            {

              if (v69)
              {
                __imHexString = v98;
LABEL_93:

                stickerGUID = v86;
LABEL_94:
                stickerGUID = stickerGUID;
                if (stickerGUID)
                {
                  CFDictionarySetValue(v17, *MEMORY[0x1E69A7C98], stickerGUID);
                }

                else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
                }

                if (!Mutable)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                }

                accessibilityLabel = [stickerCopy accessibilityLabel];
                if (accessibilityLabel)
                {
                  CFDictionarySetValue(Mutable, *MEMORY[0x1E69A6F98], accessibilityLabel);
                }

                adaptiveImageGlyphContentIdentifier = [stickerCopy adaptiveImageGlyphContentIdentifier];
                adaptiveImageGlyphContentDescription = [stickerCopy adaptiveImageGlyphContentDescription];
                animatedImageCacheURLFromExtension = [stickerCopy animatedImageCacheURLFromExtension];
                v95 = Mutable;
                v92 = adaptiveImageGlyphContentDescription;
                v76 = [(CKMediaObjectManager *)self transferWithStickerFileURL:v90 transferUserInfo:v17 attributionInfo:Mutable animatedImageCacheURL:animatedImageCacheURLFromExtension adaptiveImageGlyphContentIdentifier:adaptiveImageGlyphContentIdentifier adaptiveImageGlyphContentDescription:adaptiveImageGlyphContentDescription];

                v89 = v76;
                if (v76)
                {
                  guid = [v76 guid];
                  transfers = [(CKMediaObjectManager *)self transfers];
                  [transfers setObject:v76 forKey:guid];

                  v97 = guid;
                  v16 = [(CKMediaObjectManager *)self mediaObjectWithTransferGUID:guid imMessage:0];
                  ballonBundleID = value;
                  if (v16)
                  {
                    objc_opt_class();
                    stickerPackGUID = v93;
                    if (objc_opt_isKindOfClass())
                    {
                      [v16 setSticker:stickerCopy];
                    }

                    else
                    {
                      v81 = IMLogHandleForCategory();
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                      {
                        [CKMediaObjectManager mediaObjectWithSticker:stickerCopy stickerUserInfo:?];
                      }
                    }

                    cachedAdaptiveImageGlyphForSkippingPreviewGenerationOnly = [stickerCopy cachedAdaptiveImageGlyphForSkippingPreviewGenerationOnly];
                    [v16 setAdaptiveImageGlyph:cachedAdaptiveImageGlyphForSkippingPreviewGenerationOnly];
                    v82 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v104 = stickerCopy;
                      _os_log_impl(&dword_19020E000, v82, OS_LOG_TYPE_INFO, "Create media object for sticker: %@ OK", buf, 0xCu);
                    }

                    v83 = v16;
                    ballonBundleID = value;
                  }

                  else
                  {
                    cachedAdaptiveImageGlyphForSkippingPreviewGenerationOnly = IMLogHandleForCategory();
                    stickerPackGUID = v93;
                    if (os_log_type_enabled(cachedAdaptiveImageGlyphForSkippingPreviewGenerationOnly, OS_LOG_TYPE_ERROR))
                    {
                      [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
                    }
                  }
                }

                else
                {
                  v79 = IMLogHandleForCategory();
                  ballonBundleID = value;
                  v97 = v79;
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    v85 = [stickerCopy description];
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
                    stickerPackGUID = v93;
                    goto LABEL_118;
                  }

                  v16 = 0;
                  stickerPackGUID = v93;
                }

                Mutable = v95;
LABEL_118:

                goto LABEL_48;
              }

              v72 = Mutable;
              v71 = [(__CFDictionary *)Mutable copy];
              [stickerCopy setAttributionInfo:v71];
              __imHexString = v98;
LABEL_92:

              Mutable = v72;
              goto LABEL_93;
            }

            Mutable = [attributionInfo2 mutableCopy];

            __imHexString = v98;
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
            __imHexString = v98;
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
        __imHexString = v98;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [CKMediaObjectManager mediaObjectWithSticker:stickerCopy stickerUserInfo:?];
        }
      }

      else
      {
        v62 = IMLogHandleForCategory();
        __imHexString = v98;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
        }

        v11 = v96;
      }

      goto LABEL_46;
    }
  }

  firstObject = [stickerCopy fileURL];
  if (!firstObject)
  {
    v42 = IMLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager mediaObjectWithSticker:stickerCopy stickerUserInfo:?];
    }

    __imHexString = v98;
    goto LABEL_45;
  }

  v96 = v11;
  v93 = stickerPackGUID;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path2 = [firstObject path];
  v27 = [defaultManager fileExistsAtPath:path2];

  if ((v27 & 1) == 0)
  {
    v42 = IMLogHandleForCategory();
    stickerPackGUID = v93;
    v11 = v96;
    __imHexString = v98;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectManager mediaObjectWithSticker:stickerUserInfo:];
    }

LABEL_45:

LABEL_46:
    v16 = 0;
    goto LABEL_47;
  }

  path3 = [firstObject path];
  v29 = IMSharedHelperMD5HashOfFileAtPath();

  v30 = v29;
  v11 = v96;
  __imHexString = v98;
  if (v30 && [v30 length])
  {
    v91 = v30;
    path4 = [firstObject path];
    lastPathComponent = [path4 lastPathComponent];

    if (!lastPathComponent)
    {
      v64 = IMLogHandleForCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [CKMediaObjectManager mediaObjectWithSticker:stickerCopy stickerUserInfo:?];
      }

      v16 = 0;
      stickerPackGUID = v93;
      goto LABEL_75;
    }

    CFDictionarySetValue(v17, *MEMORY[0x1E69A7CA0], v91);
    v34 = CKSafeFilename(lastPathComponent, v33);

    v88 = v34;
    v35 = CKAttachmentTmpFileURL(v34);
    path5 = [v35 path];
    stringByDeletingLastPathComponent2 = [path5 stringByDeletingLastPathComponent];

    v87 = stringByDeletingLastPathComponent2;
    IMSharedHelperEnsureDirectoryExistsAtPath();
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    fileURL2 = [stickerCopy fileURL];
    v101 = 0;
    v90 = v35;
    LODWORD(v86) = [defaultManager2 copyItemAtURL:fileURL2 toURL:v35 error:&v101];
    v40 = v101;

    if (!v86 || v40)
    {
      v41 = IMLogHandleForCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        fileURL3 = [stickerCopy fileURL];
        *buf = 138412802;
        v104 = fileURL3;
        v105 = 2112;
        v106 = v90;
        v107 = 2112;
        v108 = v40;
        _os_log_error_impl(&dword_19020E000, v41, OS_LOG_TYPE_ERROR, "Could not copy sticker from %@ to %@ error %@", buf, 0x20u);
      }

      v16 = 0;
      stickerPackGUID = v93;
LABEL_71:
      v11 = v96;
LABEL_75:
      __imHexString = v98;
      ballonBundleID = value;
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
  stickerPackGUID = v93;
LABEL_47:
  ballonBundleID = value;
LABEL_48:

LABEL_49:

  return v16;
}

- (id)transferWithTransferGUID:(id)d imMessage:(id)message
{
  messageCopy = message;
  dCopy = d;
  v8 = [objc_alloc(-[CKMediaObjectManager transferClass](self "transferClass"))];

  return v8;
}

- (id)transferWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo hideAttachment:(BOOL)attachment
{
  attachmentCopy = attachment;
  attributionInfoCopy = attributionInfo;
  infoCopy = info;
  lCopy = l;
  v13 = [objc_alloc(-[CKMediaObjectManager transferClass](self "transferClass"))];

  return v13;
}

- (id)transferWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description hideAttachment:(BOOL)attachment isScreenshot:(BOOL)screenshot
{
  attachmentCopy = attachment;
  descriptionCopy = description;
  identifierCopy = identifier;
  attributionInfoCopy = attributionInfo;
  infoCopy = info;
  lCopy = l;
  LOBYTE(v22) = screenshot;
  v20 = [objc_alloc(-[CKMediaObjectManager transferClass](self "transferClass"))];

  return v20;
}

- (id)transferWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo hideAttachment:(BOOL)attachment isScreenshot:(BOOL)screenshot stickerEffectType:(unint64_t)type
{
  attachmentCopy = attachment;
  lCopy = l;
  infoCopy = info;
  attributionInfoCopy = attributionInfo;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

  if (isStickersAppEnabled)
  {
    LOBYTE(v20) = screenshot;
    v18 = [objc_alloc(-[CKMediaObjectManager transferClass](self "transferClass"))];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)transferWithStickerFileURL:(id)l transferUserInfo:(id)info attributionInfo:(id)attributionInfo animatedImageCacheURL:(id)rL adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description
{
  descriptionCopy = description;
  identifierCopy = identifier;
  rLCopy = rL;
  attributionInfoCopy = attributionInfo;
  infoCopy = info;
  lCopy = l;
  v20 = [objc_alloc(-[CKMediaObjectManager transferClass](self "transferClass"))];

  return v20;
}

- (void)transferRemoved:(id)removed
{
  object = [removed object];
  guid = [object guid];
  if (guid)
  {
    transfers = [(CKMediaObjectManager *)self transfers];
    [transfers removeObjectForKey:guid];
  }
}

- (BOOL)_attachmentDataTooLargeToSend:(id)send utiType:(id)type
{
  sendCopy = send;
  v5 = (IMUTITypeIsSupportedForTranscodeOnSend() & 1) == 0 && [sendCopy length] > 0x6400000;

  return v5;
}

- (void)_previewGenerationSucceededNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  if ([MEMORY[0x1E69A7FF8] ignorePreviewGenerationNotifications])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = object;
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
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A8470]];
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

    mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedInstance];
    remoteDaemon = [mEMORY[0x1E69A5B50] remoteDaemon];
    [remoteDaemon successfullyGeneratedPreviewForTransfer:object withPreviewSize:{v10, v9}];
  }
}

- (void)_previewGenerationFailedNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  if ([MEMORY[0x1E69A7FF8] ignorePreviewGenerationNotifications])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v9 = object;
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
    mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedInstance];
    remoteDaemon = [mEMORY[0x1E69A5B50] remoteDaemon];
    [remoteDaemon failTransferPreviewGeneration:object];
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