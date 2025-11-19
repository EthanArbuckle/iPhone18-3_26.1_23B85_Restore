@interface CKIMFileTransfer
+ (id)makeHardLink:(id)a3;
- (BOOL)fileIsAnimated;
- (BOOL)hasFinalizedAnimatedFlag;
- (BOOL)hideAttachment;
- (BOOL)isAdaptiveImageGlyph;
- (BOOL)isDirectory;
- (BOOL)isDownloadable;
- (BOOL)isDownloading;
- (BOOL)isFileDataReady;
- (BOOL)isFileURLFinalized;
- (BOOL)isFromMomentShare;
- (BOOL)isIrisAsset;
- (BOOL)isRejected;
- (BOOL)isReset;
- (BOOL)isRestoring;
- (BOOL)isScreenshot;
- (BOOL)isSticker;
- (BOOL)isThumbnail;
- (CKIMFileTransfer)initWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 adaptiveImageGlyphContentIdentifier:(id)a6 adaptiveImageGlyphContentDescription:(id)a7 hideAttachment:(BOOL)a8 isScreenshot:(BOOL)a9;
- (CKIMFileTransfer)initWithStickerFileURL:(id)a3 transferUserInfo:(id)a4 attributionInfo:(id)a5 animatedImageCacheURL:(id)a6 adaptiveImageGlyphContentIdentifier:(id)a7 adaptiveImageGlyphContentDescription:(id)a8;
- (CKIMFileTransfer)initWithTransferGUID:(id)a3 imMessage:(id)a4;
- (IMMessage)IMMessage;
- (NSDictionary)attributionInfo;
- (NSDictionary)stickerUserInfo;
- (NSDictionary)transcoderUserInfo;
- (NSError)error;
- (NSString)adaptiveImageGlyphContentDescription;
- (NSString)adaptiveImageGlyphContentIdentifier;
- (NSString)audioTranscriptionText;
- (NSString)description;
- (NSString)filename;
- (NSString)guid;
- (NSString)irisVideoPath;
- (NSString)originalFilename;
- (NSURL)fileURL;
- (NSURL)shareURL;
- (id)_transfer;
- (int64_t)commSafetySensitive;
- (int64_t)previewGenerationState;
- (int64_t)transferState;
- (int64_t)updateReason;
- (unint64_t)currentBytes;
- (unint64_t)totalBytes;
- (void)_faultInAnimatedFlagImmediately;
- (void)_reloadTransferAndDetermineIfUpdated:(BOOL *)a3;
- (void)attachmentRestored:(id)a3;
- (void)dealloc;
- (void)fetchHighQualityFile:(id)a3;
- (void)mediaObjectRemoved;
- (void)setHasFinalizedAnimatedFlag:(BOOL)a3;
- (void)setIMMessage:(id)a3;
- (void)transferUpdated:(id)a3;
@end

@implementation CKIMFileTransfer

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      fileURL = self->_fileURL;
      *buf = 138412290;
      v17 = fileURL;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "Transfer %@ removed.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v14 = self->_fileURL;
    _CKLog();
  }

  v5 = self->_guid;
  v6 = [(CKIMFileTransfer *)self imFileTransferCenter];
  v7 = [(CKIMFileTransfer *)self fileManager];
  v8 = [v6 transferForGUID:v5];
  v9 = v8;
  if (self->_linkFileURL && ([v8 isSticker] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        guid = self->_guid;
        linkFileURL = self->_linkFileURL;
        *buf = 138412546;
        v17 = guid;
        v18 = 2112;
        v19 = linkFileURL;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Remove hard link for %@ at %@.", buf, 0x16u);
      }
    }

    [v7 removeItemAtURL:self->_linkFileURL error:{0, v14}];
  }

  v13 = [(CKIMFileTransfer *)self notificationCenter];
  [v13 removeObserver:self];

  v15.receiver = self;
  v15.super_class = CKIMFileTransfer;
  [(CKIMFileTransfer *)&v15 dealloc];
}

- (NSString)description
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = [(CKIMFileTransfer *)self imFileTransferCenter];
    v4 = [(CKIMFileTransfer *)self guid];
    v5 = [v3 transferForGUID:v4];

    v23 = [v5 description];
    v21 = [(IMMessage *)self->_imMessage description];

    v22 = @"<< Not Loggable On Main Thread >>";
    v20 = @"<< Not Loggable On Main Thread >>";
  }

  else
  {
    if ([(CKIMFileTransfer *)self isDownloadable])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v22 = v6;
    if ([(CKIMFileTransfer *)self isDownloading])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v20 = v7;
    v21 = @"<< Not Loggable Off Main Thread >>";
    v23 = @"<< Not Loggable Off Main Thread >>";
  }

  v18 = MEMORY[0x1E696AEC0];
  v24.receiver = self;
  v24.super_class = CKIMFileTransfer;
  v8 = [(CKIMFileTransfer *)&v24 description];
  v17 = [(CKIMFileTransfer *)self isFileURLFinalized];
  v16 = [(CKIMFileTransfer *)self isFileDataReady];
  v9 = [(CKIMFileTransfer *)self isRestoring];
  v10 = [(CKIMFileTransfer *)self error];
  v11 = [(CKIMFileTransfer *)self fileURL];
  v12 = [(CKIMFileTransfer *)self linkFileURL];
  v13 = [(CKIMFileTransfer *)self filename];
  v14 = [(CKIMFileTransfer *)self transcoderUserInfo];
  v19 = [v18 stringWithFormat:@"[%@ [%@] isFileURLFinalized:%d isFileDataReady:%d isDownloadable:%@ isDownloading:%@ isRestoring:%d error:%@ fileURL:%@ linkFileURL:%@ filename:%@ transcoderUserInfo:%@ currentBytes:%llu totalBytes:%llu imMessage:%@]", v8, v23, v17, v16, v22, v20, v9, v10, v11, v12, v13, v14, -[CKIMFileTransfer currentBytes](self, "currentBytes"), -[CKIMFileTransfer totalBytes](self, "totalBytes"), v21];

  return v19;
}

- (CKIMFileTransfer)initWithTransferGUID:(id)a3 imMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = CKIMFileTransfer;
  v8 = [(CKIMFileTransfer *)&v34 init];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = [v6 copy];
  guid = v8->_guid;
  v8->_guid = v9;

  v8->_mediaObjectCount = 0;
  v11 = dispatch_queue_create("CKIMFileTransfer read/write isolation queue", MEMORY[0x1E69E96A8]);
  isolationQueue = v8->_isolationQueue;
  v8->_isolationQueue = v11;

  v13 = [(CKIMFileTransfer *)v8 imFileTransferCenter];
  v14 = [(CKIMFileTransfer *)v8 guid];
  v15 = [v13 transferForGUID:v14];

  v16 = [v15 transferState];
  v17 = !CKFileTransferIsFileURLFinalized(v16) || [(CKIMFileTransfer *)v8 isDownloadingFromRemoteIntent];
  if ([v7 isFromMe])
  {
    v18 = [v7 isSent];
  }

  else
  {
    v18 = 1;
  }

  if ([v7 isFromMe])
  {
    v19 = [v7 isDelivered];
    if (v16 == 3)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = [v15 thumbnailExistsAtLocalPath];
  if (CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests())
  {
    v22 = [v15 localURL];
    v23 = [v22 copy];
LABEL_16:
    v24 = 200;
    goto LABEL_17;
  }

  if (v20 & 1 | (((v17 | v18) & 1) == 0))
  {
    v22 = [v15 localURL];
    v23 = [CKIMFileTransfer makeHardLink:v22];
    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = [v15 localURL];
  v23 = [CKIMFileTransfer makeHardLink:v22];
  v24 = 40;
LABEL_17:
  v25 = *(&v8->super.isa + v24);
  *(&v8->super.isa + v24) = v23;

LABEL_18:
  v26 = [(CKIMFileTransfer *)v8 attributionInfo];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = [v15 attributionInfo];
  }

  v29 = v28;

  [(CKIMFileTransfer *)v8 setAttributionInfo:v29];
  [v15 setAttributionInfo:v29];
  [(CKIMFileTransfer *)v8 setIMMessage:v7];
  [(CKIMFileTransfer *)v8 reloadTransfer];
  v30 = [(CKIMFileTransfer *)v8 notificationCenter];
  [v30 addObserver:v8 selector:sel_transferUpdated_ name:*MEMORY[0x1E69A5998] object:0];
  v31 = [(CKIMFileTransfer *)v8 syncController];
  if ([v31 isRestoring])
  {
    v32 = [(CKIMFileTransfer *)v8 isRestoring];

    if (v32)
    {
      [v30 addObserver:v8 selector:sel_attachmentRestored_ name:@"com.apple.ChatKit.attachmentRestoredNotification" object:0];
    }
  }

  else
  {
  }

LABEL_26:
  return v8;
}

- (CKIMFileTransfer)initWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 adaptiveImageGlyphContentIdentifier:(id)a6 adaptiveImageGlyphContentDescription:(id)a7 hideAttachment:(BOOL)a8 isScreenshot:(BOOL)a9
{
  v9 = a8;
  v44 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v39 = a4;
  v16 = a5;
  v38 = a6;
  v37 = a7;
  v17 = [v15 lastPathComponent];
  v18 = [CKIMFileTransfer linkFileURLWithFilename:v17];

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v41 = v15;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_DEBUG, "Create CKFileTransfer's hard link for %@ at %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v33 = v15;
    v35 = v18;
    _CKLog();
  }

  v20 = [(CKIMFileTransfer *)self fileManager:v33];
  v21 = [v18 URLByDeletingLastPathComponent];
  [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:0];

  [v20 copyItemAtURL:v15 toURL:v18 error:0];
  v22 = [(CKIMFileTransfer *)self imFileTransferCenter];
  v23 = [v22 createNewOutgoingTransferWithLocalFileURL:v15];
  v24 = [v22 transferForGUID:v23];
  [v24 setTranscoderUserInfo:v39];
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = v16;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "set attributionInfo %@ for guid %@", buf, 0x16u);
    }
  }

  [v24 setAttributionInfo:v16];
  [v24 setAdaptiveImageGlyphContentIdentifier:v38];
  [v24 setAdaptiveImageGlyphContentDescription:v37];
  [v24 setHideAttachment:v9];
  [v24 setIsScreenshot:a9];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v41 = v23;
      v42 = 2112;
      v43 = v15;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_DEBUG, "Generate IM guid %@ for %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v34 = v23;
    v36 = v15;
    _CKLog();
  }

  [v22 registerTransferWithDaemon:{v23, v34, v36}];
  v27 = [v16 copy];
  attributionInfo = self->_attributionInfo;
  self->_attributionInfo = v27;

  v29 = [(CKIMFileTransfer *)self initWithTransferGUID:v23 imMessage:0];
  if (v29)
  {
    v30 = [v18 copy];
    linkFileURL = v29->_linkFileURL;
    v29->_linkFileURL = v30;

    [(CKIMFileTransfer *)v29 reloadTransfer];
  }

  return v29;
}

- (CKIMFileTransfer)initWithStickerFileURL:(id)a3 transferUserInfo:(id)a4 attributionInfo:(id)a5 animatedImageCacheURL:(id)a6 adaptiveImageGlyphContentIdentifier:(id)a7 adaptiveImageGlyphContentDescription:(id)a8
{
  v32 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v27 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(CKIMFileTransfer *)self imFileTransferCenter];
  v20 = [v19 createNewOutgoingTransferWithLocalFileURL:v14];
  v21 = [v19 transferForGUID:v20];
  [v21 setStickerUserInfo:v15];
  [v21 setIsSticker:1];
  [v21 setAdaptiveImageGlyphContentIdentifier:v17];
  [v21 setAdaptiveImageGlyphContentDescription:v18];
  [v21 setAttributionInfo:v16];
  v22 = [(CKIMFileTransfer *)self initWithTransferGUID:v20 imMessage:0];
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Generated file guid %@ for fileURL %@", buf, 0x16u);
    }
  }

  if (v22)
  {
    v24 = [v14 copy];
    linkFileURL = v22->_linkFileURL;
    v22->_linkFileURL = v24;

    [(CKIMFileTransfer *)v22 setAttributionInfo:v16];
    [(CKIMFileTransfer *)v22 setAnimatedImageCacheURL:v27];
    [(CKIMFileTransfer *)v22 reloadTransfer];
  }

  return v22;
}

- (IMMessage)IMMessage
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    v5 = [(CKIMFileTransfer *)self guid];
    [v3 raise:v4 format:{@"Tried to access -[CKFileTransfer message] (%@) off of mainThread.", v5}];
  }

  imMessage = self->_imMessage;

  return imMessage;
}

- (void)setIMMessage:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = [(CKIMFileTransfer *)self guid];
    [v5 raise:v6 format:{@"Tried to change -[CKFileTransfer message] (%@) off of mainThread.", v7}];
  }

  imMessage = self->_imMessage;
  self->_imMessage = v4;
}

- (NSString)guid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__CKIMFileTransfer_guid__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __24__CKIMFileTransfer_guid__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSURL)fileURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__CKIMFileTransfer_fileURL__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __27__CKIMFileTransfer_fileURL__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasFinalizedAnimatedFlag
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__CKIMFileTransfer_hasFinalizedAnimatedFlag__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)filename
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__CKIMFileTransfer_filename__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__CKIMFileTransfer_filename__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSDictionary)transcoderUserInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__CKIMFileTransfer_transcoderUserInfo__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__CKIMFileTransfer_transcoderUserInfo__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSDictionary)stickerUserInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CKIMFileTransfer_stickerUserInfo__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__CKIMFileTransfer_stickerUserInfo__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSDictionary)attributionInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CKIMFileTransfer_attributionInfo__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__CKIMFileTransfer_attributionInfo__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__CKIMFileTransfer_error__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__CKIMFileTransfer_error__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)currentBytes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CKIMFileTransfer_currentBytes__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)totalBytes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CKIMFileTransfer_totalBytes__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isSticker
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__CKIMFileTransfer_isSticker__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)adaptiveImageGlyphContentIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__CKIMFileTransfer_adaptiveImageGlyphContentIdentifier__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)adaptiveImageGlyphContentDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__CKIMFileTransfer_adaptiveImageGlyphContentDescription__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)hideAttachment
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__CKIMFileTransfer_hideAttachment__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isDirectory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__CKIMFileTransfer_isDirectory__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)commSafetySensitive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__CKIMFileTransfer_commSafetySensitive__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isFileURLFinalized
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__CKIMFileTransfer_isFileURLFinalized__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isRejected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CKIMFileTransfer_isRejected__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isFileDataReady
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CKIMFileTransfer_isFileDataReady__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isRestoring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__CKIMFileTransfer_isRestoring__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isFromMomentShare
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CKIMFileTransfer_isFromMomentShare__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)transferState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CKIMFileTransfer_transferState__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSURL)shareURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__CKIMFileTransfer_shareURL__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__CKIMFileTransfer_shareURL__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isScreenshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CKIMFileTransfer_isScreenshot__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)audioTranscriptionText
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CKIMFileTransfer_audioTranscriptionText__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)updateReason
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CKIMFileTransfer_updateReason__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_transfer
{
  v3 = [(CKIMFileTransfer *)self imFileTransferCenter];
  v4 = [(CKIMFileTransfer *)self guid];
  v5 = [v3 transferForGUID:v4];

  return v5;
}

- (BOOL)isThumbnail
{
  v2 = [(CKIMFileTransfer *)self _transfer];
  v3 = [v2 transferState] == 9;

  return v3;
}

- (BOOL)isDownloadable
{
  v2 = [(CKIMFileTransfer *)self _transfer];
  v3 = [v2 _isMissingAndDownloadable];

  return v3;
}

- (BOOL)isDownloading
{
  v3 = [(CKIMFileTransfer *)self isFileDataReady];
  v4 = [(CKIMFileTransfer *)self transferState];
  v5 = [(CKIMFileTransfer *)self guid];
  IsDownloading = CKFileTransferIsDownloading(v3, v4, v5);

  return IsDownloading;
}

- (BOOL)isReset
{
  v2 = [(CKIMFileTransfer *)self transferState];

  return CKFileTransferIsReset(v2);
}

- (NSString)originalFilename
{
  v2 = [(CKIMFileTransfer *)self _transfer];
  v3 = [v2 originalFilename];

  return v3;
}

- (int64_t)previewGenerationState
{
  v2 = [(CKIMFileTransfer *)self _transfer];
  v3 = [v2 previewGenerationState];

  return v3;
}

- (void)mediaObjectRemoved
{
  if (atomic_fetch_add_explicit(&self->_mediaObjectCount, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v10 = v2;
    v11 = v3;
    v5 = [(CKIMFileTransfer *)self notificationCenter];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__CKIMFileTransfer_mediaObjectRemoved__block_invoke;
    v7[3] = &unk_1E72EB8D0;
    v8 = v5;
    v9 = self;
    v6 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)setHasFinalizedAnimatedFlag:(BOOL)a3
{
  v5 = [(CKIMFileTransfer *)self isolationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CKIMFileTransfer_setHasFinalizedAnimatedFlag___block_invoke;
  v6[3] = &unk_1E72ED8D8;
  v6[4] = self;
  v7 = a3;
  dispatch_barrier_sync(v5, v6);
}

- (void)_faultInAnimatedFlagImmediately
{
  v3 = [(CKIMFileTransfer *)self filename];
  v4 = IMUTITypeForFilename();

  v5 = [(CKIMFileTransfer *)self fileURL];
  if (v5 && IMUTTypeIsSupportedAnimatedImage())
  {
    v6 = MEMORY[0x1E69A80C0];
    v7 = [(CKIMFileTransfer *)self fileURL];
    v8 = [v6 imageIsAnimatedSequenceAtFileURL:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(CKIMFileTransfer *)self isolationQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CKIMFileTransfer__faultInAnimatedFlagImmediately__block_invoke;
  v10[3] = &unk_1E72ED8D8;
  v10[4] = self;
  v11 = v8;
  dispatch_barrier_sync(v9, v10);
}

uint64_t __51__CKIMFileTransfer__faultInAnimatedFlagImmediately__block_invoke(uint64_t result)
{
  *(*(result + 32) + 12) = *(result + 40);
  *(*(result + 32) + 13) = 1;
  return result;
}

- (BOOL)fileIsAnimated
{
  if (![(CKIMFileTransfer *)self hasFinalizedAnimatedFlag])
  {
    [(CKIMFileTransfer *)self _faultInAnimatedFlagImmediately];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(CKIMFileTransfer *)self isolationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CKIMFileTransfer_fileIsAnimated__block_invoke;
  v6[3] = &unk_1E72F1660;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isAdaptiveImageGlyph
{
  v2 = [(CKIMFileTransfer *)self adaptiveImageGlyphContentIdentifier];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)isIrisAsset
{
  isIrisAssetNumber = self->_isIrisAssetNumber;
  if (!isIrisAssetNumber)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(CKIMFileTransfer *)self irisVideoPath];
    v6 = [v4 numberWithBool:v5 != 0];
    v7 = self->_isIrisAssetNumber;
    self->_isIrisAssetNumber = v6;

    isIrisAssetNumber = self->_isIrisAssetNumber;
  }

  return [(NSNumber *)isIrisAssetNumber BOOLValue];
}

- (NSString)irisVideoPath
{
  irisVideoPath = self->_irisVideoPath;
  if (!irisVideoPath)
  {
    v4 = [(CKIMFileTransfer *)self fileURL];
    v5 = [CKLivePhotoBundleUtilities calculateLivePhotoVideoPath:v4];
    v6 = self->_irisVideoPath;
    self->_irisVideoPath = v5;

    irisVideoPath = self->_irisVideoPath;
  }

  return irisVideoPath;
}

- (void)_reloadTransferAndDetermineIfUpdated:(BOOL *)a3
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    v6 = [(CKIMFileTransfer *)self guid];
    [v4 raise:v5 format:{@"Tried to access IMFileTransfer %@ off of mainThread.", v6}];
  }

  v260 = 0;
  v261 = &v260;
  v262 = 0x3032000000;
  v263 = __Block_byref_object_copy__70;
  v264 = __Block_byref_object_dispose__70;
  v265 = 0;
  v254 = 0;
  v255 = &v254;
  v256 = 0x3032000000;
  v257 = __Block_byref_object_copy__70;
  v258 = __Block_byref_object_dispose__70;
  v259 = 0;
  v248 = 0;
  v249 = &v248;
  v250 = 0x3032000000;
  v251 = __Block_byref_object_copy__70;
  v252 = __Block_byref_object_dispose__70;
  v253 = 0;
  v242 = 0;
  v243 = &v242;
  v244 = 0x3032000000;
  v245 = __Block_byref_object_copy__70;
  v246 = __Block_byref_object_dispose__70;
  v247 = 0;
  v236 = 0;
  v237 = &v236;
  v238 = 0x3032000000;
  v239 = __Block_byref_object_copy__70;
  v240 = __Block_byref_object_dispose__70;
  v241 = 0;
  v232 = 0;
  v233 = &v232;
  v234 = 0x2020000000;
  v235 = 0;
  v228 = 0;
  v229 = &v228;
  v230 = 0x2020000000;
  v231 = 0;
  v224 = 0;
  v225 = &v224;
  v226 = 0x2020000000;
  v227 = 0;
  v218 = 0;
  v219 = &v218;
  v220 = 0x3032000000;
  v221 = __Block_byref_object_copy__70;
  v222 = __Block_byref_object_dispose__70;
  v223 = 0;
  v212 = 0;
  v213 = &v212;
  v214 = 0x3032000000;
  v215 = __Block_byref_object_copy__70;
  v216 = __Block_byref_object_dispose__70;
  v217 = 0;
  v208 = 0;
  v209 = &v208;
  v210 = 0x2020000000;
  v211 = 0;
  v204 = 0;
  v205 = &v204;
  v206 = 0x2020000000;
  v207 = 0;
  v200 = 0;
  v201 = &v200;
  v202 = 0x2020000000;
  v203 = 0;
  v196 = 0;
  v197 = &v196;
  v198 = 0x2020000000;
  v199 = 0;
  v192 = 0;
  v193 = &v192;
  v194 = 0x2020000000;
  v195 = 0;
  v188 = 0;
  v189 = &v188;
  v190 = 0x2020000000;
  v191 = 0;
  v184 = 0;
  v185 = &v184;
  v186 = 0x2020000000;
  v187 = 0;
  v178 = 0;
  v179 = &v178;
  v180 = 0x3032000000;
  v181 = __Block_byref_object_copy__70;
  v182 = __Block_byref_object_dispose__70;
  v183 = 0;
  v174 = 0;
  v175 = &v174;
  v176 = 0x2020000000;
  v177 = 0;
  v170 = 0;
  v171 = &v170;
  v172 = 0x2020000000;
  v173 = 0;
  v166 = 0;
  v167 = &v166;
  v168 = 0x2020000000;
  v169 = 0;
  v160 = 0;
  v161 = &v160;
  v162 = 0x3032000000;
  v163 = __Block_byref_object_copy__70;
  v164 = __Block_byref_object_dispose__70;
  v165 = 0;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v159 = 0;
  v150 = 0;
  v151 = &v150;
  v152 = 0x3032000000;
  v153 = __Block_byref_object_copy__70;
  v154 = __Block_byref_object_dispose__70;
  v155 = 0;
  v7 = [(CKIMFileTransfer *)self isolationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CKIMFileTransfer__reloadTransferAndDetermineIfUpdated___block_invoke;
  block[3] = &unk_1E72F7558;
  block[4] = self;
  block[5] = &v260;
  block[6] = &v254;
  block[7] = &v248;
  block[8] = &v242;
  block[9] = &v236;
  block[10] = &v232;
  block[11] = &v228;
  block[12] = &v224;
  block[13] = &v218;
  block[14] = &v212;
  block[15] = &v208;
  block[16] = &v204;
  block[17] = &v200;
  block[18] = &v196;
  block[19] = &v192;
  block[20] = &v188;
  block[21] = &v184;
  block[22] = &v178;
  block[23] = &v174;
  block[24] = &v170;
  block[25] = &v166;
  block[26] = &v160;
  block[27] = &v156;
  block[28] = &v150;
  dispatch_barrier_sync(v7, block);

  v8 = [(CKIMFileTransfer *)self imFileTransferCenter];
  v9 = [(CKIMFileTransfer *)self guid];
  v10 = [v8 transferForGUID:v9];

  v11 = [(CKIMFileTransfer *)self IMMessage];
  v122 = [v10 filename];
  v12 = [v10 transcoderUserInfo];
  v120 = [v10 stickerUserInfo];
  v118 = [v10 totalBytes];
  v116 = [v10 currentBytes];
  v115 = [v10 isSticker];
  v114 = [v10 adaptiveImageGlyphContentIdentifier];
  v113 = [v10 adaptiveImageGlyphContentDescription];
  v112 = [v10 commSafetySensitive];
  if (v10)
  {
    v13 = [v10 transferState];
  }

  else
  {
    v13 = 6;
  }

  v111 = [v10 attributionInfo];
  v110 = [v10 hideAttachment];
  v109 = [v10 isDirectory];
  v108 = [v10 isFromMomentShare];
  v107 = v11;
  if (CKFileTransferIsFileURLFinalized(v13) && ![(CKIMFileTransfer *)self isDownloadingFromRemoteIntent])
  {
    v14 = [v10 localURL];
    if (v14)
    {
      v20 = [(CKIMFileTransfer *)self fileManager];
      v21 = [(NSURL *)v14 path];
      v17 = [v20 fileExistsAtPath:v21];
    }

    else
    {
      v17 = 0;
    }

    v22 = [(CKIMFileTransfer *)self syncController];
    v23 = [v22 isRestoring];

    v19 = CKFileTransferRestoring(v17, v13 != 0, v23);
    if ([v11 isFromMe])
    {
      v24 = [v11 isSent] ^ 1;
      if (!v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v24 = 0;
      if (!v17)
      {
LABEL_19:
        v18 = 1;
        goto LABEL_20;
      }
    }

    v17 = (v13 != 6) | v24;
    goto LABEL_19;
  }

  v14 = self->_linkFileURL;
  if (v14)
  {
    v15 = [(CKIMFileTransfer *)self fileManager];
    v16 = [(NSURL *)v14 path];
    v17 = [v15 fileExistsAtPath:v16];

    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
  }

LABEL_20:
  v125 = self;
  if (v10 && (v13 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v25 = MEMORY[0x1E696ABC0];
    v26 = [v10 error];
    v27 = IMFileTransferErrorDomain;
LABEL_31:
    v30 = [v25 errorWithDomain:*v27 code:v26 userInfo:0];
    goto LABEL_32;
  }

  if ((v10 == 0) | (v17 | v19) & 1)
  {
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v28 = [(CKIMFileTransfer *)self guid];
    if (CKFileTransferIsDownloading(0, v13, v28))
    {
    }

    else
    {
      v29 = [v10 _isMissingAndDownloadable];

      if ((v29 & 1) == 0)
      {
LABEL_30:
        v26 = 0;
        v25 = MEMORY[0x1E696ABC0];
        v27 = CKFileTransferErrorDomain;
        goto LABEL_31;
      }
    }
  }

  v30 = 0;
LABEL_32:
  isolationQueue = self->_isolationQueue;
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __57__CKIMFileTransfer__reloadTransferAndDetermineIfUpdated___block_invoke_2;
  v127[3] = &unk_1E72F7580;
  v127[4] = self;
  v32 = v14;
  v128 = v32;
  v123 = v122;
  v129 = v123;
  v105 = v30;
  v130 = v105;
  v106 = v12;
  v131 = v106;
  v121 = v120;
  v132 = v121;
  v137 = v116;
  v138 = v118;
  v141 = v115;
  v119 = v114;
  v133 = v119;
  v117 = v113;
  v134 = v117;
  v139 = v112;
  v140 = v13;
  v142 = v17 & 1;
  v143 = v18;
  v144 = v13 == 8;
  v145 = v19;
  v33 = v111;
  v135 = v33;
  v146 = v110;
  v147 = v109;
  v148 = v108;
  v34 = v10;
  v136 = v34;
  ck_dispatch_isolated(isolationQueue, v127);
  v35 = a3;
  v36 = v261[5];
  if (v36 != v32 && ([(NSURL *)v36 isEqual:v32]& 1) == 0)
  {
    [(CKIMFileTransfer *)self setHasFinalizedAnimatedFlag:0];
    v37 = dispatch_get_global_queue(2, 0);
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __57__CKIMFileTransfer__reloadTransferAndDetermineIfUpdated___block_invoke_3;
    v126[3] = &unk_1E72EBA18;
    v126[4] = self;
    dispatch_async(v37, v126);
  }

  if (a3)
  {
    v38 = v261[5];
    v39 = [(CKIMFileTransfer *)v125 fileURL];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = v261[5];
      v42 = [(CKIMFileTransfer *)v125 fileURL];
      LODWORD(v41) = [v41 isEqual:v42];

      if (!v41)
      {
        goto LABEL_75;
      }
    }

    v43 = v255[5];
    v44 = [(CKIMFileTransfer *)v125 filename];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = v255[5];
      v47 = [(CKIMFileTransfer *)v125 filename];
      LODWORD(v46) = [v46 isEqualToString:v47];

      if (!v46)
      {
        goto LABEL_75;
      }
    }

    v48 = v249[5];
    v49 = [(CKIMFileTransfer *)v125 error];
    v50 = v49;
    if (v48 == v49)
    {
    }

    else
    {
      v51 = v249[5];
      v52 = [(CKIMFileTransfer *)v125 error];
      LODWORD(v51) = [v51 isEqual:v52];

      if (!v51)
      {
        goto LABEL_75;
      }
    }

    v53 = v243[5];
    v54 = [(CKIMFileTransfer *)v125 transcoderUserInfo];
    v55 = v54;
    if (v53 == v54)
    {
    }

    else
    {
      v56 = v243[5];
      v57 = [(CKIMFileTransfer *)v125 transcoderUserInfo];
      LODWORD(v56) = [v56 isEqualToDictionary:v57];

      if (!v56)
      {
        goto LABEL_75;
      }
    }

    v58 = v237[5];
    v59 = [(CKIMFileTransfer *)v125 stickerUserInfo];
    v60 = v59;
    if (v58 == v59)
    {

      v63 = v125;
    }

    else
    {
      v61 = v237[5];
      v62 = [(CKIMFileTransfer *)v125 stickerUserInfo];
      LODWORD(v61) = [v61 isEqualToDictionary:v62];

      v63 = v125;
      if (!v61)
      {
        goto LABEL_75;
      }
    }

    v64 = v233[3];
    if (v64 != [(CKIMFileTransfer *)v63 currentBytes])
    {
      goto LABEL_75;
    }

    v65 = v229[3];
    if (v65 != [(CKIMFileTransfer *)v125 totalBytes])
    {
      goto LABEL_75;
    }

    v66 = *(v225 + 24);
    if (v66 != [(CKIMFileTransfer *)v125 isSticker])
    {
      goto LABEL_75;
    }

    v67 = v219[5];
    v68 = [(CKIMFileTransfer *)v125 adaptiveImageGlyphContentIdentifier];
    v69 = v68;
    if (v67 == v68)
    {
    }

    else
    {
      v70 = v219[5];
      v71 = [(CKIMFileTransfer *)v125 adaptiveImageGlyphContentIdentifier];
      LODWORD(v70) = [v70 isEqualToString:v71];

      if (!v70)
      {
        goto LABEL_75;
      }
    }

    v72 = v213[5];
    v73 = [(CKIMFileTransfer *)v125 adaptiveImageGlyphContentDescription];
    v74 = v73;
    if (v72 == v73)
    {

      v77 = v125;
    }

    else
    {
      v75 = v213[5];
      v76 = [(CKIMFileTransfer *)v125 adaptiveImageGlyphContentDescription];
      LODWORD(v75) = [v75 isEqualToString:v76];

      v77 = v125;
      if (!v75)
      {
        goto LABEL_75;
      }
    }

    v78 = v209[3];
    if (v78 != [(CKIMFileTransfer *)v77 commSafetySensitive])
    {
      goto LABEL_75;
    }

    v79 = *(v201 + 24);
    if (v79 != [(CKIMFileTransfer *)v125 isFileDataReady])
    {
      goto LABEL_75;
    }

    v80 = *(v197 + 24);
    if (v80 != [(CKIMFileTransfer *)v125 isFileURLFinalized])
    {
      goto LABEL_75;
    }

    v81 = *(v193 + 24);
    if (v81 != [(CKIMFileTransfer *)v125 isRejected])
    {
      goto LABEL_75;
    }

    v82 = *(v189 + 24);
    if (v82 != [(CKIMFileTransfer *)v125 isRestoring])
    {
      goto LABEL_75;
    }

    v83 = v185[3];
    if (v83 != [(CKIMFileTransfer *)v125 transferState])
    {
      goto LABEL_75;
    }

    v84 = v179[5];
    v85 = [(CKIMFileTransfer *)v125 attributionInfo];
    v86 = v85;
    if (v84 == v85)
    {
    }

    else
    {
      v87 = v179[5];
      v88 = [(CKIMFileTransfer *)v125 attributionInfo];
      LODWORD(v87) = [v87 isEqualToDictionary:v88];

      if (!v87)
      {
LABEL_75:
        v89 = 1;
LABEL_76:
        *v35 = v89;
        goto LABEL_77;
      }
    }

    v90 = *(v175 + 24);
    if (v90 == [(CKIMFileTransfer *)v125 hideAttachment])
    {
      v91 = *(v171 + 24);
      if (v91 == [(CKIMFileTransfer *)v125 isDirectory])
      {
        v92 = *(v167 + 24);
        if (v92 == [(CKIMFileTransfer *)v125 isFromMomentShare])
        {
          v93 = v161[5];
          v94 = [(CKIMFileTransfer *)v125 shareURL];
          v95 = v94;
          if (v93 == v94)
          {
          }

          else
          {
            v96 = v161[5];
            v97 = [(CKIMFileTransfer *)v125 shareURL];
            LODWORD(v96) = [v96 isEqual:v97];

            if (!v96)
            {
              goto LABEL_89;
            }
          }

          v98 = *(v157 + 24);
          if (v98 == [(CKIMFileTransfer *)v125 isScreenshot])
          {
            v99 = v151[5];
            v100 = [(CKIMFileTransfer *)v125 audioTranscriptionText];
            v101 = v100;
            if (v99 == v100)
            {
            }

            else
            {
              v102 = v151[5];
              v103 = [(CKIMFileTransfer *)v125 audioTranscriptionText];
              LODWORD(v102) = [v102 isEqualToString:v103];

              if (!v102)
              {
                goto LABEL_89;
              }
            }

            v104 = v205[3];
            v35 = a3;
            v89 = v104 != [(CKIMFileTransfer *)v125 updateReason];
            goto LABEL_76;
          }
        }
      }
    }

LABEL_89:
    v89 = 1;
    v35 = a3;
    goto LABEL_76;
  }

LABEL_77:

  _Block_object_dispose(&v150, 8);
  _Block_object_dispose(&v156, 8);
  _Block_object_dispose(&v160, 8);

  _Block_object_dispose(&v166, 8);
  _Block_object_dispose(&v170, 8);
  _Block_object_dispose(&v174, 8);
  _Block_object_dispose(&v178, 8);

  _Block_object_dispose(&v184, 8);
  _Block_object_dispose(&v188, 8);
  _Block_object_dispose(&v192, 8);
  _Block_object_dispose(&v196, 8);
  _Block_object_dispose(&v200, 8);
  _Block_object_dispose(&v204, 8);
  _Block_object_dispose(&v208, 8);
  _Block_object_dispose(&v212, 8);

  _Block_object_dispose(&v218, 8);
  _Block_object_dispose(&v224, 8);
  _Block_object_dispose(&v228, 8);
  _Block_object_dispose(&v232, 8);
  _Block_object_dispose(&v236, 8);

  _Block_object_dispose(&v242, 8);
  _Block_object_dispose(&v248, 8);

  _Block_object_dispose(&v254, 8);
  _Block_object_dispose(&v260, 8);
}

void __57__CKIMFileTransfer__reloadTransferAndDetermineIfUpdated___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 48) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1[4] + 56) copy];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1[4] + 64) copy];
  v12 = *(a1[8] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1[4] + 72) copy];
  v15 = *(a1[9] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  *(*(a1[10] + 8) + 24) = *(a1[4] + 88);
  *(*(a1[11] + 8) + 24) = *(a1[4] + 96);
  *(*(a1[12] + 8) + 24) = *(a1[4] + 14);
  objc_storeStrong((*(a1[13] + 8) + 40), *(a1[4] + 112));
  objc_storeStrong((*(a1[14] + 8) + 40), *(a1[4] + 120));
  *(*(a1[15] + 8) + 24) = *(a1[4] + 128);
  *(*(a1[16] + 8) + 24) = *(a1[4] + 136);
  *(*(a1[17] + 8) + 24) = *(a1[4] + 15);
  *(*(a1[18] + 8) + 24) = *(a1[4] + 16);
  *(*(a1[19] + 8) + 24) = *(a1[4] + 17);
  *(*(a1[20] + 8) + 24) = *(a1[4] + 18);
  *(*(a1[21] + 8) + 24) = *(a1[4] + 144);
  v17 = [*(a1[4] + 80) copy];
  v18 = *(a1[22] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  *(*(a1[23] + 8) + 24) = *(a1[4] + 19);
  *(*(a1[24] + 8) + 24) = *(a1[4] + 20);
  *(*(a1[25] + 8) + 24) = *(a1[4] + 21);
  v20 = [*(a1[4] + 160) copy];
  v21 = *(a1[26] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  *(*(a1[27] + 8) + 24) = *(a1[4] + 22);
  v23 = *(a1[4] + 168);
  v24 = (*(a1[28] + 8) + 40);

  objc_storeStrong(v24, v23);
}

uint64_t __57__CKIMFileTransfer__reloadTransferAndDetermineIfUpdated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  v8 = [*(a1 + 56) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  *(v9 + 56) = v8;

  v11 = [*(a1 + 64) copy];
  v12 = *(a1 + 32);
  v13 = *(v12 + 64);
  *(v12 + 64) = v11;

  v14 = [*(a1 + 72) copy];
  v15 = *(a1 + 32);
  v16 = *(v15 + 72);
  *(v15 + 72) = v14;

  *(*(a1 + 32) + 88) = *(a1 + 112);
  *(*(a1 + 32) + 96) = *(a1 + 120);
  *(*(a1 + 32) + 14) = *(a1 + 144);
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 80));
  objc_storeStrong((*(a1 + 32) + 120), *(a1 + 88));
  *(*(a1 + 32) + 128) = *(a1 + 128);
  *(*(a1 + 32) + 15) = *(a1 + 145);
  *(*(a1 + 32) + 16) = *(a1 + 146);
  *(*(a1 + 32) + 17) = *(a1 + 147);
  *(*(a1 + 32) + 18) = *(a1 + 148);
  *(*(a1 + 32) + 144) = *(a1 + 136);
  v17 = [*(a1 + 96) copy];
  v18 = *(a1 + 32);
  v19 = *(v18 + 80);
  *(v18 + 80) = v17;

  *(*(a1 + 32) + 19) = *(a1 + 149);
  *(*(a1 + 32) + 20) = *(a1 + 150);
  *(*(a1 + 32) + 21) = *(a1 + 151);
  v20 = [*(a1 + 104) shareURL];
  v21 = [v20 copy];
  v22 = *(a1 + 32);
  v23 = *(v22 + 160);
  *(v22 + 160) = v21;

  *(*(a1 + 32) + 22) = [*(a1 + 104) isScreenshot];
  v24 = [*(a1 + 104) audioTranscriptionText];
  v25 = [v24 copy];
  v26 = *(a1 + 32);
  v27 = *(v26 + 168);
  *(v26 + 168) = v25;

  result = [*(a1 + 104) updateReason];
  *(*(a1 + 32) + 136) = result;
  return result;
}

- (void)transferUpdated:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [MEMORY[0x1E69A5B80] sharedInstance];
  v7 = [(CKIMFileTransfer *)self guid];
  v8 = [v6 transferForGUID:v7];

  if (v8 == v5)
  {
    v9 = [(CKIMFileTransfer *)self isFileURLFinalized];
    v10 = [(CKIMFileTransfer *)self isDownloading];
    v18 = 0;
    [(CKIMFileTransfer *)self _reloadTransferAndDetermineIfUpdated:&v18];
    v11 = [(CKIMFileTransfer *)self notificationCenter];
    if (v18 == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = self;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Updated state for transfer: %@", buf, 0xCu);
        }
      }

      [v11 postNotificationName:@"CKFileTransferUpdatedNotification" object:self];
    }

    v13 = [(CKIMFileTransfer *)self isFileURLFinalized];
    v14 = [(CKIMFileTransfer *)self isDownloading];
    if (!v9 && v13 || v10 && !v14)
    {
      [(CKIMFileTransfer *)self remoteIntentTransferFinished];
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(46);
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = [(CKIMFileTransfer *)self guid];
          *buf = 138412290;
          v20 = v16;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_DEBUG, "Transfer %@ finished.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v17 = [(CKIMFileTransfer *)self guid];
        _CKLog();
      }

      [v11 postNotificationName:@"CKFileTransferFinishedNotification" object:{self, v17}];
    }
  }
}

- (void)fetchHighQualityFile:(id)a3
{
  v4 = a3;
  v5 = [(CKIMFileTransfer *)self imFileTransferCenter];
  if (v5)
  {
    v6 = [(CKIMFileTransfer *)self guid];
    v7 = [v5 transferForGUID:v6];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __41__CKIMFileTransfer_fetchHighQualityFile___block_invoke;
      v8[3] = &unk_1E72F75A8;
      v9 = v4;
      [v5 fetchHighQualityVariantForTransfer:v7 completion:v8];
    }

    else if (v4)
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __41__CKIMFileTransfer_fetchHighQualityFile___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    v9 = v5;
    if (a2)
    {
      v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
      (*(v7 + 16))(v7, 1, v8);
    }

    else
    {
      (*(v7 + 16))(v7, 0, 0);
    }

    v6 = v9;
  }
}

- (void)attachmentRestored:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKIMFileTransfer *)self isRestoring])
  {
    [(CKIMFileTransfer *)self reloadTransfer];
    if (![(CKIMFileTransfer *)self isRestoring])
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(46);
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = [(CKIMFileTransfer *)self guid];
          *buf = 138412290;
          v10 = v6;
          _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "Transfer %@ restored.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v8 = [(CKIMFileTransfer *)self guid];
        _CKLog();
      }

      v7 = [(CKIMFileTransfer *)self notificationCenter];
      [v7 removeObserver:self name:@"com.apple.ChatKit.attachmentRestoredNotification" object:0];
      [v7 postNotificationName:@"CKFileTransferRestoredNotification" object:self];
    }
  }
}

+ (id)makeHardLink:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 lastPathComponent];

    if (v6)
    {
      v7 = [v5 lastPathComponent];
      v6 = [a1 linkFileURLWithFilename:v7];

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v12 = 138412546;
          v13 = v5;
          v14 = 2112;
          v15 = v6;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Create CKFileTransfer's hard link for %@ at %@.", &v12, 0x16u);
        }
      }

      v9 = [a1 fileManager];
      v10 = [v6 URLByDeletingLastPathComponent];
      [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:0];

      [v9 copyItemAtURL:v5 toURL:v6 error:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end