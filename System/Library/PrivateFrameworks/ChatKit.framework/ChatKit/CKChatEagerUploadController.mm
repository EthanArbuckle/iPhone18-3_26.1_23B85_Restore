@interface CKChatEagerUploadController
- (CKChatEagerUploadController)init;
- (id)_newTransferForURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo;
- (void)_uploadFileURL:(id)l filename:(id)filename transcoderUserInfo:(id)info videoComplementURL:(id)rL attributionInfo:(id)attributionInfo identifier:(id)identifier recipients:(id)recipients;
- (void)addURLToIdentifierMap:(id)map forIdentifier:(id)identifier;
- (void)asyncCopyFileAtURL:(id)l toDestinationURL:(id)rL completion:(id)completion;
- (void)cancelAll;
- (void)cancelIdentifier:(id)identifier;
- (void)cancelURL:(id)l;
- (void)didSendComposition;
- (void)removeTemporaryURLForURL:(id)l;
- (void)uploadFileURL:(id)l filename:(id)filename transcoderUserInfo:(id)info videoComplementURL:(id)rL attributionInfo:(id)attributionInfo identifier:(id)identifier recipients:(id)recipients;
- (void)uploadPayload:(id)payload identifier:(id)identifier replace:(BOOL)replace recipients:(id)recipients;
@end

@implementation CKChatEagerUploadController

- (CKChatEagerUploadController)init
{
  v10.receiver = self;
  v10.super_class = CKChatEagerUploadController;
  v2 = [(CKChatEagerUploadController *)&v10 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  identifierMap = v2->_identifierMap;
  v2->_identifierMap = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  uploadUrls = v2->_uploadUrls;
  v2->_uploadUrls = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  temporaryURLS = v2->_temporaryURLS;
  v2->_temporaryURLS = v7;

  return v2;
}

- (void)removeTemporaryURLForURL:(id)l
{
  lCopy = l;
  v4 = [(NSMutableDictionary *)self->_temporaryURLS objectForKeyedSubscript:?];
  if (v4)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v4 error:0];
  }

  [(NSMutableDictionary *)self->_temporaryURLS setObject:0 forKeyedSubscript:lCopy];
}

- (void)didSendComposition
{
  [(NSMutableArray *)self->_uploadUrls removeAllObjects];
  identifierMap = self->_identifierMap;

  [(NSMutableDictionary *)identifierMap removeAllObjects];
}

- (void)cancelAll
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_uploadUrls copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CKChatEagerUploadController *)self cancelURL:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)cancelIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_identifierMap objectForKeyedSubscript:identifier];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CKChatEagerUploadController *)self cancelURL:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)cancelURL:(id)l
{
  lCopy = l;
  if ([MEMORY[0x1E69A7F58] IMIsEagerUploadEnabledForPhoneNumber:0 simID:0])
  {
    [(NSMutableArray *)self->_uploadUrls removeObject:lCopy];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    identifierMap = self->_identifierMap;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __41__CKChatEagerUploadController_cancelURL___block_invoke;
    v15 = &unk_1E72F81C8;
    v7 = lCopy;
    v16 = v7;
    v17 = v5;
    v8 = v5;
    [(NSMutableDictionary *)identifierMap enumerateKeysAndObjectsUsingBlock:&v12];
    [(NSMutableDictionary *)self->_identifierMap removeObjectsForKeys:v8, v12, v13, v14, v15];
    v9 = [(NSMutableDictionary *)self->_temporaryURLS objectForKeyedSubscript:v7];
    mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
    remoteDaemon = [mEMORY[0x1E69A5B50] remoteDaemon];
    [remoteDaemon eagerUploadCancel:v9];

    [(CKChatEagerUploadController *)self removeTemporaryURLForURL:v7];
  }
}

void __41__CKChatEagerUploadController_cancelURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (id)_newTransferForURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo
{
  lCopy = l;
  infoCopy = info;
  attributionInfoCopy = attributionInfo;
  defaultHFSFileManager = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
  path = [lCopy path];
  v22 = 0;
  v12 = [defaultHFSFileManager attributesOfItemAtPath:path error:&v22];

  v13 = [v12 objectForKey:*MEMORY[0x1E696A3D8]];
  LOBYTE(path) = [v13 isEqual:*MEMORY[0x1E696A3E0]];

  v14 = 0;
  if ((path & 1) == 0)
  {
    v15 = objc_alloc(MEMORY[0x1E69A8078]);
    lastPathComponent = [lCopy lastPathComponent];
    fileSize = [v12 fileSize];
    fileHFSTypeCode = [v12 fileHFSTypeCode];
    fileHFSCreatorCode = [v12 fileHFSCreatorCode];
    BYTE2(v21) = 0;
    LOWORD(v21) = [v12 fileHFSFlags];
    v14 = [v15 _initWithGUID:@"EAGER" filename:lastPathComponent isDirectory:0 localURL:lCopy account:0 otherPerson:0 totalBytes:fileSize hfsType:__PAIR64__(fileHFSCreatorCode hfsCreator:fileHFSTypeCode) hfsFlags:v21 isIncoming:?];

    [v14 setTranscoderUserInfo:infoCopy];
    [v14 setAttributionInfo:attributionInfoCopy];
  }

  return v14;
}

- (void)uploadPayload:(id)payload identifier:(id)identifier replace:(BOOL)replace recipients:(id)recipients
{
  replaceCopy = replace;
  v22 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  identifierCopy = identifier;
  recipientsCopy = recipients;
  if ([MEMORY[0x1E69A7F58] IMIsEagerUploadEnabledForPhoneNumber:0 simID:0] && (objc_msgSend(payloadCopy, "isSticker") & 1) == 0 && (objc_msgSend(payloadCopy, "shouldSendAsRichLink") & 1) == 0)
  {
    fileURL = [payloadCopy fileURL];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = fileURL;
        v20 = 2112;
        v21 = recipientsCopy;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Eager Upload Payload at URL %@ recipients %@", buf, 0x16u);
      }
    }

    if (replaceCopy)
    {
      [(CKChatEagerUploadController *)self cancelAll];
    }

    if (fileURL)
    {
      transcoderUserInfo = [payloadCopy transcoderUserInfo];
      videoComplementFileURL = [payloadCopy videoComplementFileURL];
      attributionInfo = [payloadCopy attributionInfo];
      [(CKChatEagerUploadController *)self _uploadFileURL:fileURL filename:0 transcoderUserInfo:transcoderUserInfo videoComplementURL:videoComplementFileURL attributionInfo:attributionInfo identifier:identifierCopy recipients:recipientsCopy];
    }
  }
}

- (void)uploadFileURL:(id)l filename:(id)filename transcoderUserInfo:(id)info videoComplementURL:(id)rL attributionInfo:(id)attributionInfo identifier:(id)identifier recipients:(id)recipients
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  filenameCopy = filename;
  infoCopy = info;
  rLCopy = rL;
  attributionInfoCopy = attributionInfo;
  identifierCopy = identifier;
  recipientsCopy = recipients;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = lCopy;
      v25 = 2112;
      v26 = recipientsCopy;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Eager Upload url %@ recipients %@", buf, 0x16u);
    }
  }

  [(CKChatEagerUploadController *)self cancelAll];
  [(CKChatEagerUploadController *)self _uploadFileURL:lCopy filename:filenameCopy transcoderUserInfo:infoCopy videoComplementURL:rLCopy attributionInfo:attributionInfoCopy identifier:identifierCopy recipients:recipientsCopy];
}

- (void)_uploadFileURL:(id)l filename:(id)filename transcoderUserInfo:(id)info videoComplementURL:(id)rL attributionInfo:(id)attributionInfo identifier:(id)identifier recipients:(id)recipients
{
  v58[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  filenameCopy = filename;
  infoCopy = info;
  rLCopy = rL;
  attributionInfoCopy = attributionInfo;
  identifierCopy = identifier;
  recipientsCopy = recipients;
  if (lCopy)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lastPathComponent = [lCopy lastPathComponent];
    v18 = CKAttachmentTmpFileURL(lastPathComponent);

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __131__CKChatEagerUploadController__uploadFileURL_filename_transcoderUserInfo_videoComplementURL_attributionInfo_identifier_recipients___block_invoke;
    v46[3] = &unk_1E72F81F0;
    v46[4] = self;
    v47 = lCopy;
    v48 = v18;
    v49 = infoCopy;
    v19 = attributionInfoCopy;
    v50 = v19;
    v20 = filenameCopy;
    v51 = v20;
    v21 = rLCopy;
    v52 = v21;
    v30 = v16;
    v53 = v30;
    v22 = recipientsCopy;
    v54 = v22;
    v23 = identifierCopy;
    v55 = v23;
    v31 = v48;
    [(CKChatEagerUploadController *)self asyncCopyFileAtURL:v47 toDestinationURL:v48 completion:v46];
    if (v21)
    {
      v57 = *MEMORY[0x1E69A6F50];
      v58[0] = MEMORY[0x1E695E118];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:{1, v30}];
      lastPathComponent2 = [v21 lastPathComponent];
      v26 = CKAttachmentTmpFileURL(lastPathComponent2);

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __131__CKChatEagerUploadController__uploadFileURL_filename_transcoderUserInfo_videoComplementURL_attributionInfo_identifier_recipients___block_invoke_2;
      v38[3] = &unk_1E72F8218;
      v38[4] = self;
      v39 = v26;
      v40 = v24;
      v41 = v19;
      v42 = v20;
      v43 = v22;
      v44 = v21;
      v45 = v23;
      v27 = v24;
      v28 = v26;
      [(CKChatEagerUploadController *)self asyncCopyFileAtURL:v44 toDestinationURL:v28 completion:v38];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "_uploadFileURL fileURL is nil", buf, 2u);
    }
  }
}

void __131__CKChatEagerUploadController__uploadFileURL_filename_transcoderUserInfo_videoComplementURL_attributionInfo_identifier_recipients___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  v2 = [*(a1 + 32) _newTransferForURL:*(a1 + 48) transcoderUserInfo:*(a1 + 56) attributionInfo:*(a1 + 64)];
  if (v2)
  {
    v6 = v2;
    if (*(a1 + 72))
    {
      [v2 setFilename:?];
    }

    if (*(a1 + 80))
    {
      [v6 setIsAuxImage:1];
    }

    [*(a1 + 88) addObject:*(a1 + 40)];
    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
    v3 = [MEMORY[0x1E69A5B50] sharedController];
    v4 = [v3 remoteDaemon];
    v5 = [v6 _dictionaryRepresentation];
    [v4 eagerUploadTransfer:v5 recipients:*(a1 + 96)];

    [*(a1 + 32) addURLToIdentifierMap:*(a1 + 40) forIdentifier:*(a1 + 104)];
    v2 = v6;
  }
}

void __131__CKChatEagerUploadController__uploadFileURL_filename_transcoderUserInfo_videoComplementURL_attributionInfo_identifier_recipients___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _newTransferForURL:*(a1 + 40) transcoderUserInfo:*(a1 + 48) attributionInfo:*(a1 + 56)];
  if (v2)
  {
    v6 = v2;
    [v2 setIsAuxVideo:1];
    if (*(a1 + 64))
    {
      [v6 setFilename:?];
    }

    v3 = [MEMORY[0x1E69A5B50] sharedController];
    v4 = [v3 remoteDaemon];
    v5 = [v6 _dictionaryRepresentation];
    [v4 eagerUploadTransfer:v5 recipients:*(a1 + 72)];

    [*(a1 + 32) addURLToIdentifierMap:*(a1 + 80) forIdentifier:*(a1 + 88)];
    [*(*(a1 + 32) + 16) addObject:*(a1 + 80)];
    v2 = v6;
  }
}

- (void)addURLToIdentifierMap:(id)map forIdentifier:(id)identifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (mapCopy && identifierCopy)
  {
    v9 = [(NSMutableDictionary *)self->_identifierMap objectForKeyedSubscript:identifierCopy];
    v10 = v9;
    if (v9)
    {
      [v9 addObject:mapCopy];
    }

    else
    {
      v11 = MEMORY[0x1E695DF70];
      v14[0] = mapCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v13 = [v11 arrayWithArray:v12];
      [(NSMutableDictionary *)self->_identifierMap setObject:v13 forKeyedSubscript:v8];
    }
  }
}

- (void)asyncCopyFileAtURL:(id)l toDestinationURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CKChatEagerUploadController_asyncCopyFileAtURL_toDestinationURL_completion___block_invoke;
  block[3] = &unk_1E72EDA68;
  v15 = rLCopy;
  v16 = lCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = lCopy;
  v13 = rLCopy;
  dispatch_async(v10, block);
}

void __78__CKChatEagerUploadController_asyncCopyFileAtURL_toDestinationURL_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [*(a1 + 32) URLByDeletingLastPathComponent];
  v16 = 0;
  v4 = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v16];
  v5 = v16;
  if ((v4 & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Failed to create copy destinaton directory {error: %@, directory: %@}", buf, 0x16u);
    }
  }

  if (!v5)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v15 = 0;
    v9 = [v2 copyItemAtURL:v7 toURL:v8 error:&v15];
    v5 = v15;
    if ((v9 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 32);
          v11 = *(a1 + 40);
          *buf = 138412802;
          v18 = v11;
          v19 = 2112;
          v20 = v12;
          v21 = 2112;
          v22 = v5;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Failed to copy file %@ to destinaton %@ with error: %@", buf, 0x20u);
        }
      }
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CKChatEagerUploadController_asyncCopyFileAtURL_toDestinationURL_completion___block_invoke_46;
  block[3] = &unk_1E72EBDB8;
  v14 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __78__CKChatEagerUploadController_asyncCopyFileAtURL_toDestinationURL_completion___block_invoke_46(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end