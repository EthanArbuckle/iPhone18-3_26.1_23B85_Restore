@interface CKIMFileTransfer
+ (id)makeHardLink:(id)link;
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
- (CKIMFileTransfer)initWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description hideAttachment:(BOOL)attachment isScreenshot:(BOOL)screenshot;
- (CKIMFileTransfer)initWithStickerFileURL:(id)l transferUserInfo:(id)info attributionInfo:(id)attributionInfo animatedImageCacheURL:(id)rL adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description;
- (CKIMFileTransfer)initWithTransferGUID:(id)d imMessage:(id)message;
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
- (void)_reloadTransferAndDetermineIfUpdated:(BOOL *)updated;
- (void)attachmentRestored:(id)restored;
- (void)dealloc;
- (void)fetchHighQualityFile:(id)file;
- (void)mediaObjectRemoved;
- (void)setHasFinalizedAnimatedFlag:(BOOL)flag;
- (void)setIMMessage:(id)message;
- (void)transferUpdated:(id)updated;
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
  imFileTransferCenter = [(CKIMFileTransfer *)self imFileTransferCenter];
  fileManager = [(CKIMFileTransfer *)self fileManager];
  v8 = [imFileTransferCenter transferForGUID:v5];
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

    [fileManager removeItemAtURL:self->_linkFileURL error:{0, v14}];
  }

  notificationCenter = [(CKIMFileTransfer *)self notificationCenter];
  [notificationCenter removeObserver:self];

  v15.receiver = self;
  v15.super_class = CKIMFileTransfer;
  [(CKIMFileTransfer *)&v15 dealloc];
}

- (NSString)description
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    imFileTransferCenter = [(CKIMFileTransfer *)self imFileTransferCenter];
    guid = [(CKIMFileTransfer *)self guid];
    v5 = [imFileTransferCenter transferForGUID:guid];

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
  isFileURLFinalized = [(CKIMFileTransfer *)self isFileURLFinalized];
  isFileDataReady = [(CKIMFileTransfer *)self isFileDataReady];
  isRestoring = [(CKIMFileTransfer *)self isRestoring];
  error = [(CKIMFileTransfer *)self error];
  fileURL = [(CKIMFileTransfer *)self fileURL];
  linkFileURL = [(CKIMFileTransfer *)self linkFileURL];
  filename = [(CKIMFileTransfer *)self filename];
  transcoderUserInfo = [(CKIMFileTransfer *)self transcoderUserInfo];
  v19 = [v18 stringWithFormat:@"[%@ [%@] isFileURLFinalized:%d isFileDataReady:%d isDownloadable:%@ isDownloading:%@ isRestoring:%d error:%@ fileURL:%@ linkFileURL:%@ filename:%@ transcoderUserInfo:%@ currentBytes:%llu totalBytes:%llu imMessage:%@]", v8, v23, isFileURLFinalized, isFileDataReady, v22, v20, isRestoring, error, fileURL, linkFileURL, filename, transcoderUserInfo, -[CKIMFileTransfer currentBytes](self, "currentBytes"), -[CKIMFileTransfer totalBytes](self, "totalBytes"), v21];

  return v19;
}

- (CKIMFileTransfer)initWithTransferGUID:(id)d imMessage:(id)message
{
  dCopy = d;
  messageCopy = message;
  v34.receiver = self;
  v34.super_class = CKIMFileTransfer;
  v8 = [(CKIMFileTransfer *)&v34 init];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = [dCopy copy];
  guid = v8->_guid;
  v8->_guid = v9;

  v8->_mediaObjectCount = 0;
  v11 = dispatch_queue_create("CKIMFileTransfer read/write isolation queue", MEMORY[0x1E69E96A8]);
  isolationQueue = v8->_isolationQueue;
  v8->_isolationQueue = v11;

  imFileTransferCenter = [(CKIMFileTransfer *)v8 imFileTransferCenter];
  guid = [(CKIMFileTransfer *)v8 guid];
  v15 = [imFileTransferCenter transferForGUID:guid];

  transferState = [v15 transferState];
  v17 = !CKFileTransferIsFileURLFinalized(transferState) || [(CKIMFileTransfer *)v8 isDownloadingFromRemoteIntent];
  if ([messageCopy isFromMe])
  {
    isSent = [messageCopy isSent];
  }

  else
  {
    isSent = 1;
  }

  if ([messageCopy isFromMe])
  {
    isDelivered = [messageCopy isDelivered];
    if (transferState == 3)
    {
      v20 = isDelivered;
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

  thumbnailExistsAtLocalPath = [v15 thumbnailExistsAtLocalPath];
  if (CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests())
  {
    localURL = [v15 localURL];
    v23 = [localURL copy];
LABEL_16:
    v24 = 200;
    goto LABEL_17;
  }

  if (v20 & 1 | (((v17 | isSent) & 1) == 0))
  {
    localURL = [v15 localURL];
    v23 = [CKIMFileTransfer makeHardLink:localURL];
    goto LABEL_16;
  }

  if (!thumbnailExistsAtLocalPath)
  {
    goto LABEL_18;
  }

  localURL = [v15 localURL];
  v23 = [CKIMFileTransfer makeHardLink:localURL];
  v24 = 40;
LABEL_17:
  v25 = *(&v8->super.isa + v24);
  *(&v8->super.isa + v24) = v23;

LABEL_18:
  attributionInfo = [(CKIMFileTransfer *)v8 attributionInfo];
  v27 = attributionInfo;
  if (attributionInfo)
  {
    attributionInfo2 = attributionInfo;
  }

  else
  {
    attributionInfo2 = [v15 attributionInfo];
  }

  v29 = attributionInfo2;

  [(CKIMFileTransfer *)v8 setAttributionInfo:v29];
  [v15 setAttributionInfo:v29];
  [(CKIMFileTransfer *)v8 setIMMessage:messageCopy];
  [(CKIMFileTransfer *)v8 reloadTransfer];
  notificationCenter = [(CKIMFileTransfer *)v8 notificationCenter];
  [notificationCenter addObserver:v8 selector:sel_transferUpdated_ name:*MEMORY[0x1E69A5998] object:0];
  syncController = [(CKIMFileTransfer *)v8 syncController];
  if ([syncController isRestoring])
  {
    isRestoring = [(CKIMFileTransfer *)v8 isRestoring];

    if (isRestoring)
    {
      [notificationCenter addObserver:v8 selector:sel_attachmentRestored_ name:@"com.apple.ChatKit.attachmentRestoredNotification" object:0];
    }
  }

  else
  {
  }

LABEL_26:
  return v8;
}

- (CKIMFileTransfer)initWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description hideAttachment:(BOOL)attachment isScreenshot:(BOOL)screenshot
{
  attachmentCopy = attachment;
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  attributionInfoCopy = attributionInfo;
  identifierCopy = identifier;
  descriptionCopy = description;
  lastPathComponent = [lCopy lastPathComponent];
  v18 = [CKIMFileTransfer linkFileURLWithFilename:lastPathComponent];

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v41 = lCopy;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_DEBUG, "Create CKFileTransfer's hard link for %@ at %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v33 = lCopy;
    v35 = v18;
    _CKLog();
  }

  v20 = [(CKIMFileTransfer *)self fileManager:v33];
  uRLByDeletingLastPathComponent = [v18 URLByDeletingLastPathComponent];
  [v20 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  [v20 copyItemAtURL:lCopy toURL:v18 error:0];
  imFileTransferCenter = [(CKIMFileTransfer *)self imFileTransferCenter];
  v23 = [imFileTransferCenter createNewOutgoingTransferWithLocalFileURL:lCopy];
  v24 = [imFileTransferCenter transferForGUID:v23];
  [v24 setTranscoderUserInfo:infoCopy];
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = attributionInfoCopy;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "set attributionInfo %@ for guid %@", buf, 0x16u);
    }
  }

  [v24 setAttributionInfo:attributionInfoCopy];
  [v24 setAdaptiveImageGlyphContentIdentifier:identifierCopy];
  [v24 setAdaptiveImageGlyphContentDescription:descriptionCopy];
  [v24 setHideAttachment:attachmentCopy];
  [v24 setIsScreenshot:screenshot];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v41 = v23;
      v42 = 2112;
      v43 = lCopy;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_DEBUG, "Generate IM guid %@ for %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v34 = v23;
    v36 = lCopy;
    _CKLog();
  }

  [imFileTransferCenter registerTransferWithDaemon:{v23, v34, v36}];
  v27 = [attributionInfoCopy copy];
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

- (CKIMFileTransfer)initWithStickerFileURL:(id)l transferUserInfo:(id)info attributionInfo:(id)attributionInfo animatedImageCacheURL:(id)rL adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  attributionInfoCopy = attributionInfo;
  rLCopy = rL;
  identifierCopy = identifier;
  descriptionCopy = description;
  imFileTransferCenter = [(CKIMFileTransfer *)self imFileTransferCenter];
  v20 = [imFileTransferCenter createNewOutgoingTransferWithLocalFileURL:lCopy];
  v21 = [imFileTransferCenter transferForGUID:v20];
  [v21 setStickerUserInfo:infoCopy];
  [v21 setIsSticker:1];
  [v21 setAdaptiveImageGlyphContentIdentifier:identifierCopy];
  [v21 setAdaptiveImageGlyphContentDescription:descriptionCopy];
  [v21 setAttributionInfo:attributionInfoCopy];
  v22 = [(CKIMFileTransfer *)self initWithTransferGUID:v20 imMessage:0];
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = lCopy;
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Generated file guid %@ for fileURL %@", buf, 0x16u);
    }
  }

  if (v22)
  {
    v24 = [lCopy copy];
    linkFileURL = v22->_linkFileURL;
    v22->_linkFileURL = v24;

    [(CKIMFileTransfer *)v22 setAttributionInfo:attributionInfoCopy];
    [(CKIMFileTransfer *)v22 setAnimatedImageCacheURL:rLCopy];
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
    guid = [(CKIMFileTransfer *)self guid];
    [v3 raise:v4 format:{@"Tried to access -[CKFileTransfer message] (%@) off of mainThread.", guid}];
  }

  imMessage = self->_imMessage;

  return imMessage;
}

- (void)setIMMessage:(id)message
{
  messageCopy = message;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    guid = [(CKIMFileTransfer *)self guid];
    [v5 raise:v6 format:{@"Tried to change -[CKFileTransfer message] (%@) off of mainThread.", guid}];
  }

  imMessage = self->_imMessage;
  self->_imMessage = messageCopy;
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
  imFileTransferCenter = [(CKIMFileTransfer *)self imFileTransferCenter];
  guid = [(CKIMFileTransfer *)self guid];
  v5 = [imFileTransferCenter transferForGUID:guid];

  return v5;
}

- (BOOL)isThumbnail
{
  _transfer = [(CKIMFileTransfer *)self _transfer];
  v3 = [_transfer transferState] == 9;

  return v3;
}

- (BOOL)isDownloadable
{
  _transfer = [(CKIMFileTransfer *)self _transfer];
  _isMissingAndDownloadable = [_transfer _isMissingAndDownloadable];

  return _isMissingAndDownloadable;
}

- (BOOL)isDownloading
{
  isFileDataReady = [(CKIMFileTransfer *)self isFileDataReady];
  transferState = [(CKIMFileTransfer *)self transferState];
  guid = [(CKIMFileTransfer *)self guid];
  IsDownloading = CKFileTransferIsDownloading(isFileDataReady, transferState, guid);

  return IsDownloading;
}

- (BOOL)isReset
{
  transferState = [(CKIMFileTransfer *)self transferState];

  return CKFileTransferIsReset(transferState);
}

- (NSString)originalFilename
{
  _transfer = [(CKIMFileTransfer *)self _transfer];
  originalFilename = [_transfer originalFilename];

  return originalFilename;
}

- (int64_t)previewGenerationState
{
  _transfer = [(CKIMFileTransfer *)self _transfer];
  previewGenerationState = [_transfer previewGenerationState];

  return previewGenerationState;
}

- (void)mediaObjectRemoved
{
  if (atomic_fetch_add_explicit(&self->_mediaObjectCount, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v10 = v2;
    v11 = v3;
    notificationCenter = [(CKIMFileTransfer *)self notificationCenter];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__CKIMFileTransfer_mediaObjectRemoved__block_invoke;
    v7[3] = &unk_1E72EB8D0;
    v8 = notificationCenter;
    selfCopy = self;
    v6 = notificationCenter;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)setHasFinalizedAnimatedFlag:(BOOL)flag
{
  isolationQueue = [(CKIMFileTransfer *)self isolationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CKIMFileTransfer_setHasFinalizedAnimatedFlag___block_invoke;
  v6[3] = &unk_1E72ED8D8;
  v6[4] = self;
  flagCopy = flag;
  dispatch_barrier_sync(isolationQueue, v6);
}

- (void)_faultInAnimatedFlagImmediately
{
  filename = [(CKIMFileTransfer *)self filename];
  v4 = IMUTITypeForFilename();

  fileURL = [(CKIMFileTransfer *)self fileURL];
  if (fileURL && IMUTTypeIsSupportedAnimatedImage())
  {
    v6 = MEMORY[0x1E69A80C0];
    fileURL2 = [(CKIMFileTransfer *)self fileURL];
    v8 = [v6 imageIsAnimatedSequenceAtFileURL:fileURL2];
  }

  else
  {
    v8 = 0;
  }

  isolationQueue = [(CKIMFileTransfer *)self isolationQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CKIMFileTransfer__faultInAnimatedFlagImmediately__block_invoke;
  v10[3] = &unk_1E72ED8D8;
  v10[4] = self;
  v11 = v8;
  dispatch_barrier_sync(isolationQueue, v10);
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
  isolationQueue = [(CKIMFileTransfer *)self isolationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CKIMFileTransfer_fileIsAnimated__block_invoke;
  v6[3] = &unk_1E72F1660;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isAdaptiveImageGlyph
{
  adaptiveImageGlyphContentIdentifier = [(CKIMFileTransfer *)self adaptiveImageGlyphContentIdentifier];
  v3 = [adaptiveImageGlyphContentIdentifier length] != 0;

  return v3;
}

- (BOOL)isIrisAsset
{
  isIrisAssetNumber = self->_isIrisAssetNumber;
  if (!isIrisAssetNumber)
  {
    v4 = MEMORY[0x1E696AD98];
    irisVideoPath = [(CKIMFileTransfer *)self irisVideoPath];
    v6 = [v4 numberWithBool:irisVideoPath != 0];
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
    fileURL = [(CKIMFileTransfer *)self fileURL];
    v5 = [CKLivePhotoBundleUtilities calculateLivePhotoVideoPath:fileURL];
    v6 = self->_irisVideoPath;
    self->_irisVideoPath = v5;

    irisVideoPath = self->_irisVideoPath;
  }

  return irisVideoPath;
}

- (void)_reloadTransferAndDetermineIfUpdated:(BOOL *)updated
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    guid = [(CKIMFileTransfer *)self guid];
    [v4 raise:v5 format:{@"Tried to access IMFileTransfer %@ off of mainThread.", guid}];
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
  isolationQueue = [(CKIMFileTransfer *)self isolationQueue];
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
  dispatch_barrier_sync(isolationQueue, block);

  imFileTransferCenter = [(CKIMFileTransfer *)self imFileTransferCenter];
  guid2 = [(CKIMFileTransfer *)self guid];
  v10 = [imFileTransferCenter transferForGUID:guid2];

  iMMessage = [(CKIMFileTransfer *)self IMMessage];
  filename = [v10 filename];
  transcoderUserInfo = [v10 transcoderUserInfo];
  stickerUserInfo = [v10 stickerUserInfo];
  totalBytes = [v10 totalBytes];
  currentBytes = [v10 currentBytes];
  isSticker = [v10 isSticker];
  adaptiveImageGlyphContentIdentifier = [v10 adaptiveImageGlyphContentIdentifier];
  adaptiveImageGlyphContentDescription = [v10 adaptiveImageGlyphContentDescription];
  commSafetySensitive = [v10 commSafetySensitive];
  if (v10)
  {
    transferState = [v10 transferState];
  }

  else
  {
    transferState = 6;
  }

  attributionInfo = [v10 attributionInfo];
  hideAttachment = [v10 hideAttachment];
  isDirectory = [v10 isDirectory];
  isFromMomentShare = [v10 isFromMomentShare];
  v107 = iMMessage;
  if (CKFileTransferIsFileURLFinalized(transferState) && ![(CKIMFileTransfer *)self isDownloadingFromRemoteIntent])
  {
    localURL = [v10 localURL];
    if (localURL)
    {
      fileManager = [(CKIMFileTransfer *)self fileManager];
      path = [(NSURL *)localURL path];
      v17 = [fileManager fileExistsAtPath:path];
    }

    else
    {
      v17 = 0;
    }

    syncController = [(CKIMFileTransfer *)self syncController];
    isRestoring = [syncController isRestoring];

    v19 = CKFileTransferRestoring(v17, transferState != 0, isRestoring);
    if ([iMMessage isFromMe])
    {
      v24 = [iMMessage isSent] ^ 1;
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

    v17 = (transferState != 6) | v24;
    goto LABEL_19;
  }

  localURL = self->_linkFileURL;
  if (localURL)
  {
    fileManager2 = [(CKIMFileTransfer *)self fileManager];
    path2 = [(NSURL *)localURL path];
    v17 = [fileManager2 fileExistsAtPath:path2];

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
  selfCopy = self;
  if (v10 && (transferState & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v25 = MEMORY[0x1E696ABC0];
    error = [v10 error];
    v27 = IMFileTransferErrorDomain;
LABEL_31:
    v30 = [v25 errorWithDomain:*v27 code:error userInfo:0];
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
    guid3 = [(CKIMFileTransfer *)self guid];
    if (CKFileTransferIsDownloading(0, transferState, guid3))
    {
    }

    else
    {
      _isMissingAndDownloadable = [v10 _isMissingAndDownloadable];

      if ((_isMissingAndDownloadable & 1) == 0)
      {
LABEL_30:
        error = 0;
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
  v32 = localURL;
  v128 = v32;
  v123 = filename;
  v129 = v123;
  v105 = v30;
  v130 = v105;
  v106 = transcoderUserInfo;
  v131 = v106;
  v121 = stickerUserInfo;
  v132 = v121;
  v137 = currentBytes;
  v138 = totalBytes;
  v141 = isSticker;
  v119 = adaptiveImageGlyphContentIdentifier;
  v133 = v119;
  v117 = adaptiveImageGlyphContentDescription;
  v134 = v117;
  v139 = commSafetySensitive;
  v140 = transferState;
  v142 = v17 & 1;
  v143 = v18;
  v144 = transferState == 8;
  v145 = v19;
  v33 = attributionInfo;
  v135 = v33;
  v146 = hideAttachment;
  v147 = isDirectory;
  v148 = isFromMomentShare;
  v34 = v10;
  v136 = v34;
  ck_dispatch_isolated(isolationQueue, v127);
  updatedCopy3 = updated;
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

  if (updated)
  {
    v38 = v261[5];
    fileURL = [(CKIMFileTransfer *)selfCopy fileURL];
    v40 = fileURL;
    if (v38 == fileURL)
    {
    }

    else
    {
      v41 = v261[5];
      fileURL2 = [(CKIMFileTransfer *)selfCopy fileURL];
      LODWORD(v41) = [v41 isEqual:fileURL2];

      if (!v41)
      {
        goto LABEL_75;
      }
    }

    v43 = v255[5];
    filename2 = [(CKIMFileTransfer *)selfCopy filename];
    v45 = filename2;
    if (v43 == filename2)
    {
    }

    else
    {
      v46 = v255[5];
      filename3 = [(CKIMFileTransfer *)selfCopy filename];
      LODWORD(v46) = [v46 isEqualToString:filename3];

      if (!v46)
      {
        goto LABEL_75;
      }
    }

    v48 = v249[5];
    error2 = [(CKIMFileTransfer *)selfCopy error];
    v50 = error2;
    if (v48 == error2)
    {
    }

    else
    {
      v51 = v249[5];
      error3 = [(CKIMFileTransfer *)selfCopy error];
      LODWORD(v51) = [v51 isEqual:error3];

      if (!v51)
      {
        goto LABEL_75;
      }
    }

    v53 = v243[5];
    transcoderUserInfo2 = [(CKIMFileTransfer *)selfCopy transcoderUserInfo];
    v55 = transcoderUserInfo2;
    if (v53 == transcoderUserInfo2)
    {
    }

    else
    {
      v56 = v243[5];
      transcoderUserInfo3 = [(CKIMFileTransfer *)selfCopy transcoderUserInfo];
      LODWORD(v56) = [v56 isEqualToDictionary:transcoderUserInfo3];

      if (!v56)
      {
        goto LABEL_75;
      }
    }

    v58 = v237[5];
    stickerUserInfo2 = [(CKIMFileTransfer *)selfCopy stickerUserInfo];
    v60 = stickerUserInfo2;
    if (v58 == stickerUserInfo2)
    {

      v63 = selfCopy;
    }

    else
    {
      v61 = v237[5];
      stickerUserInfo3 = [(CKIMFileTransfer *)selfCopy stickerUserInfo];
      LODWORD(v61) = [v61 isEqualToDictionary:stickerUserInfo3];

      v63 = selfCopy;
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
    if (v65 != [(CKIMFileTransfer *)selfCopy totalBytes])
    {
      goto LABEL_75;
    }

    v66 = *(v225 + 24);
    if (v66 != [(CKIMFileTransfer *)selfCopy isSticker])
    {
      goto LABEL_75;
    }

    v67 = v219[5];
    adaptiveImageGlyphContentIdentifier2 = [(CKIMFileTransfer *)selfCopy adaptiveImageGlyphContentIdentifier];
    v69 = adaptiveImageGlyphContentIdentifier2;
    if (v67 == adaptiveImageGlyphContentIdentifier2)
    {
    }

    else
    {
      v70 = v219[5];
      adaptiveImageGlyphContentIdentifier3 = [(CKIMFileTransfer *)selfCopy adaptiveImageGlyphContentIdentifier];
      LODWORD(v70) = [v70 isEqualToString:adaptiveImageGlyphContentIdentifier3];

      if (!v70)
      {
        goto LABEL_75;
      }
    }

    v72 = v213[5];
    adaptiveImageGlyphContentDescription2 = [(CKIMFileTransfer *)selfCopy adaptiveImageGlyphContentDescription];
    v74 = adaptiveImageGlyphContentDescription2;
    if (v72 == adaptiveImageGlyphContentDescription2)
    {

      v77 = selfCopy;
    }

    else
    {
      v75 = v213[5];
      adaptiveImageGlyphContentDescription3 = [(CKIMFileTransfer *)selfCopy adaptiveImageGlyphContentDescription];
      LODWORD(v75) = [v75 isEqualToString:adaptiveImageGlyphContentDescription3];

      v77 = selfCopy;
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
    if (v79 != [(CKIMFileTransfer *)selfCopy isFileDataReady])
    {
      goto LABEL_75;
    }

    v80 = *(v197 + 24);
    if (v80 != [(CKIMFileTransfer *)selfCopy isFileURLFinalized])
    {
      goto LABEL_75;
    }

    v81 = *(v193 + 24);
    if (v81 != [(CKIMFileTransfer *)selfCopy isRejected])
    {
      goto LABEL_75;
    }

    v82 = *(v189 + 24);
    if (v82 != [(CKIMFileTransfer *)selfCopy isRestoring])
    {
      goto LABEL_75;
    }

    v83 = v185[3];
    if (v83 != [(CKIMFileTransfer *)selfCopy transferState])
    {
      goto LABEL_75;
    }

    v84 = v179[5];
    attributionInfo2 = [(CKIMFileTransfer *)selfCopy attributionInfo];
    v86 = attributionInfo2;
    if (v84 == attributionInfo2)
    {
    }

    else
    {
      v87 = v179[5];
      attributionInfo3 = [(CKIMFileTransfer *)selfCopy attributionInfo];
      LODWORD(v87) = [v87 isEqualToDictionary:attributionInfo3];

      if (!v87)
      {
LABEL_75:
        v89 = 1;
LABEL_76:
        *updatedCopy3 = v89;
        goto LABEL_77;
      }
    }

    v90 = *(v175 + 24);
    if (v90 == [(CKIMFileTransfer *)selfCopy hideAttachment])
    {
      v91 = *(v171 + 24);
      if (v91 == [(CKIMFileTransfer *)selfCopy isDirectory])
      {
        v92 = *(v167 + 24);
        if (v92 == [(CKIMFileTransfer *)selfCopy isFromMomentShare])
        {
          v93 = v161[5];
          shareURL = [(CKIMFileTransfer *)selfCopy shareURL];
          v95 = shareURL;
          if (v93 == shareURL)
          {
          }

          else
          {
            v96 = v161[5];
            shareURL2 = [(CKIMFileTransfer *)selfCopy shareURL];
            LODWORD(v96) = [v96 isEqual:shareURL2];

            if (!v96)
            {
              goto LABEL_89;
            }
          }

          v98 = *(v157 + 24);
          if (v98 == [(CKIMFileTransfer *)selfCopy isScreenshot])
          {
            v99 = v151[5];
            audioTranscriptionText = [(CKIMFileTransfer *)selfCopy audioTranscriptionText];
            v101 = audioTranscriptionText;
            if (v99 == audioTranscriptionText)
            {
            }

            else
            {
              v102 = v151[5];
              audioTranscriptionText2 = [(CKIMFileTransfer *)selfCopy audioTranscriptionText];
              LODWORD(v102) = [v102 isEqualToString:audioTranscriptionText2];

              if (!v102)
              {
                goto LABEL_89;
              }
            }

            v104 = v205[3];
            updatedCopy3 = updated;
            v89 = v104 != [(CKIMFileTransfer *)selfCopy updateReason];
            goto LABEL_76;
          }
        }
      }
    }

LABEL_89:
    v89 = 1;
    updatedCopy3 = updated;
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

- (void)transferUpdated:(id)updated
{
  v21 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  object = [updatedCopy object];
  mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
  guid = [(CKIMFileTransfer *)self guid];
  v8 = [mEMORY[0x1E69A5B80] transferForGUID:guid];

  if (v8 == object)
  {
    isFileURLFinalized = [(CKIMFileTransfer *)self isFileURLFinalized];
    isDownloading = [(CKIMFileTransfer *)self isDownloading];
    v18 = 0;
    [(CKIMFileTransfer *)self _reloadTransferAndDetermineIfUpdated:&v18];
    notificationCenter = [(CKIMFileTransfer *)self notificationCenter];
    if (v18 == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Updated state for transfer: %@", buf, 0xCu);
        }
      }

      [notificationCenter postNotificationName:@"CKFileTransferUpdatedNotification" object:self];
    }

    isFileURLFinalized2 = [(CKIMFileTransfer *)self isFileURLFinalized];
    isDownloading2 = [(CKIMFileTransfer *)self isDownloading];
    if (!isFileURLFinalized && isFileURLFinalized2 || isDownloading && !isDownloading2)
    {
      [(CKIMFileTransfer *)self remoteIntentTransferFinished];
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(46);
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          guid2 = [(CKIMFileTransfer *)self guid];
          *buf = 138412290;
          selfCopy = guid2;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_DEBUG, "Transfer %@ finished.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        guid3 = [(CKIMFileTransfer *)self guid];
        _CKLog();
      }

      [notificationCenter postNotificationName:@"CKFileTransferFinishedNotification" object:{self, guid3}];
    }
  }
}

- (void)fetchHighQualityFile:(id)file
{
  fileCopy = file;
  imFileTransferCenter = [(CKIMFileTransfer *)self imFileTransferCenter];
  if (imFileTransferCenter)
  {
    guid = [(CKIMFileTransfer *)self guid];
    v7 = [imFileTransferCenter transferForGUID:guid];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __41__CKIMFileTransfer_fetchHighQualityFile___block_invoke;
      v8[3] = &unk_1E72F75A8;
      v9 = fileCopy;
      [imFileTransferCenter fetchHighQualityVariantForTransfer:v7 completion:v8];
    }

    else if (fileCopy)
    {
      (*(fileCopy + 2))(fileCopy, 0, 0);
    }
  }

  else if (fileCopy)
  {
    (*(fileCopy + 2))(fileCopy, 0, 0);
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

- (void)attachmentRestored:(id)restored
{
  v11 = *MEMORY[0x1E69E9840];
  restoredCopy = restored;
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
          guid = [(CKIMFileTransfer *)self guid];
          *buf = 138412290;
          v10 = guid;
          _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "Transfer %@ restored.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        guid2 = [(CKIMFileTransfer *)self guid];
        _CKLog();
      }

      notificationCenter = [(CKIMFileTransfer *)self notificationCenter];
      [notificationCenter removeObserver:self name:@"com.apple.ChatKit.attachmentRestoredNotification" object:0];
      [notificationCenter postNotificationName:@"CKFileTransferRestoredNotification" object:self];
    }
  }
}

+ (id)makeHardLink:(id)link
{
  v16 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  v5 = linkCopy;
  if (linkCopy)
  {
    lastPathComponent = [linkCopy lastPathComponent];

    if (lastPathComponent)
    {
      lastPathComponent2 = [v5 lastPathComponent];
      lastPathComponent = [self linkFileURLWithFilename:lastPathComponent2];

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v12 = 138412546;
          v13 = v5;
          v14 = 2112;
          v15 = lastPathComponent;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Create CKFileTransfer's hard link for %@ at %@.", &v12, 0x16u);
        }
      }

      fileManager = [self fileManager];
      uRLByDeletingLastPathComponent = [lastPathComponent URLByDeletingLastPathComponent];
      [fileManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

      [fileManager copyItemAtURL:v5 toURL:lastPathComponent error:0];
    }
  }

  else
  {
    lastPathComponent = 0;
  }

  return lastPathComponent;
}

@end