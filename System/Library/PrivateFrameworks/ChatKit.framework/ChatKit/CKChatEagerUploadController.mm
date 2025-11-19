@interface CKChatEagerUploadController
- (CKChatEagerUploadController)init;
- (id)_newTransferForURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5;
- (void)_uploadFileURL:(id)a3 filename:(id)a4 transcoderUserInfo:(id)a5 videoComplementURL:(id)a6 attributionInfo:(id)a7 identifier:(id)a8 recipients:(id)a9;
- (void)addURLToIdentifierMap:(id)a3 forIdentifier:(id)a4;
- (void)asyncCopyFileAtURL:(id)a3 toDestinationURL:(id)a4 completion:(id)a5;
- (void)cancelAll;
- (void)cancelIdentifier:(id)a3;
- (void)cancelURL:(id)a3;
- (void)didSendComposition;
- (void)removeTemporaryURLForURL:(id)a3;
- (void)uploadFileURL:(id)a3 filename:(id)a4 transcoderUserInfo:(id)a5 videoComplementURL:(id)a6 attributionInfo:(id)a7 identifier:(id)a8 recipients:(id)a9;
- (void)uploadPayload:(id)a3 identifier:(id)a4 replace:(BOOL)a5 recipients:(id)a6;
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

- (void)removeTemporaryURLForURL:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_temporaryURLS objectForKeyedSubscript:?];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 removeItemAtURL:v4 error:0];
  }

  [(NSMutableDictionary *)self->_temporaryURLS setObject:0 forKeyedSubscript:v6];
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

- (void)cancelIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_identifierMap objectForKeyedSubscript:a3];
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

- (void)cancelURL:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69A7F58] IMIsEagerUploadEnabledForPhoneNumber:0 simID:0])
  {
    [(NSMutableArray *)self->_uploadUrls removeObject:v4];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    identifierMap = self->_identifierMap;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __41__CKChatEagerUploadController_cancelURL___block_invoke;
    v15 = &unk_1E72F81C8;
    v7 = v4;
    v16 = v7;
    v17 = v5;
    v8 = v5;
    [(NSMutableDictionary *)identifierMap enumerateKeysAndObjectsUsingBlock:&v12];
    [(NSMutableDictionary *)self->_identifierMap removeObjectsForKeys:v8, v12, v13, v14, v15];
    v9 = [(NSMutableDictionary *)self->_temporaryURLS objectForKeyedSubscript:v7];
    v10 = [MEMORY[0x1E69A5B50] sharedController];
    v11 = [v10 remoteDaemon];
    [v11 eagerUploadCancel:v9];

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

- (id)_newTransferForURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
  v11 = [v7 path];
  v22 = 0;
  v12 = [v10 attributesOfItemAtPath:v11 error:&v22];

  v13 = [v12 objectForKey:*MEMORY[0x1E696A3D8]];
  LOBYTE(v11) = [v13 isEqual:*MEMORY[0x1E696A3E0]];

  v14 = 0;
  if ((v11 & 1) == 0)
  {
    v15 = objc_alloc(MEMORY[0x1E69A8078]);
    v16 = [v7 lastPathComponent];
    v17 = [v12 fileSize];
    v18 = [v12 fileHFSTypeCode];
    v19 = [v12 fileHFSCreatorCode];
    BYTE2(v21) = 0;
    LOWORD(v21) = [v12 fileHFSFlags];
    v14 = [v15 _initWithGUID:@"EAGER" filename:v16 isDirectory:0 localURL:v7 account:0 otherPerson:0 totalBytes:v17 hfsType:__PAIR64__(v19 hfsCreator:v18) hfsFlags:v21 isIncoming:?];

    [v14 setTranscoderUserInfo:v8];
    [v14 setAttributionInfo:v9];
  }

  return v14;
}

- (void)uploadPayload:(id)a3 identifier:(id)a4 replace:(BOOL)a5 recipients:(id)a6
{
  v7 = a5;
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([MEMORY[0x1E69A7F58] IMIsEagerUploadEnabledForPhoneNumber:0 simID:0] && (objc_msgSend(v10, "isSticker") & 1) == 0 && (objc_msgSend(v10, "shouldSendAsRichLink") & 1) == 0)
  {
    v13 = [v10 fileURL];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Eager Upload Payload at URL %@ recipients %@", buf, 0x16u);
      }
    }

    if (v7)
    {
      [(CKChatEagerUploadController *)self cancelAll];
    }

    if (v13)
    {
      v15 = [v10 transcoderUserInfo];
      v16 = [v10 videoComplementFileURL];
      v17 = [v10 attributionInfo];
      [(CKChatEagerUploadController *)self _uploadFileURL:v13 filename:0 transcoderUserInfo:v15 videoComplementURL:v16 attributionInfo:v17 identifier:v11 recipients:v12];
    }
  }
}

- (void)uploadFileURL:(id)a3 filename:(id)a4 transcoderUserInfo:(id)a5 videoComplementURL:(id)a6 attributionInfo:(id)a7 identifier:(id)a8 recipients:(id)a9
{
  v27 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = v15;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Eager Upload url %@ recipients %@", buf, 0x16u);
    }
  }

  [(CKChatEagerUploadController *)self cancelAll];
  [(CKChatEagerUploadController *)self _uploadFileURL:v15 filename:v16 transcoderUserInfo:v17 videoComplementURL:v18 attributionInfo:v19 identifier:v20 recipients:v21];
}

- (void)_uploadFileURL:(id)a3 filename:(id)a4 transcoderUserInfo:(id)a5 videoComplementURL:(id)a6 attributionInfo:(id)a7 identifier:(id)a8 recipients:(id)a9
{
  v58[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a9;
  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = [v15 lastPathComponent];
    v18 = CKAttachmentTmpFileURL(v17);

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __131__CKChatEagerUploadController__uploadFileURL_filename_transcoderUserInfo_videoComplementURL_attributionInfo_identifier_recipients___block_invoke;
    v46[3] = &unk_1E72F81F0;
    v46[4] = self;
    v47 = v15;
    v48 = v18;
    v49 = v33;
    v19 = v35;
    v50 = v19;
    v20 = v32;
    v51 = v20;
    v21 = v34;
    v52 = v21;
    v30 = v16;
    v53 = v30;
    v22 = v37;
    v54 = v22;
    v23 = v36;
    v55 = v23;
    v31 = v48;
    [(CKChatEagerUploadController *)self asyncCopyFileAtURL:v47 toDestinationURL:v48 completion:v46];
    if (v21)
    {
      v57 = *MEMORY[0x1E69A6F50];
      v58[0] = MEMORY[0x1E695E118];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:{1, v30}];
      v25 = [v21 lastPathComponent];
      v26 = CKAttachmentTmpFileURL(v25);

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

- (void)addURLToIdentifierMap:(id)a3 forIdentifier:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(NSMutableDictionary *)self->_identifierMap objectForKeyedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      [v9 addObject:v6];
    }

    else
    {
      v11 = MEMORY[0x1E695DF70];
      v14[0] = v6;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v13 = [v11 arrayWithArray:v12];
      [(NSMutableDictionary *)self->_identifierMap setObject:v13 forKeyedSubscript:v8];
    }
  }
}

- (void)asyncCopyFileAtURL:(id)a3 toDestinationURL:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CKChatEagerUploadController_asyncCopyFileAtURL_toDestinationURL_completion___block_invoke;
  block[3] = &unk_1E72EDA68;
  v15 = v8;
  v16 = v7;
  v17 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v8;
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