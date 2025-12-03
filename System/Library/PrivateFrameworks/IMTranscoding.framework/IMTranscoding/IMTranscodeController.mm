@interface IMTranscodeController
+ (id)sharedInstance;
- (BOOL)_connect;
- (IMTranscodeController)init;
- (int64_t)maxTimeForTranscriptionInSeconds;
- (void)_decodeiMessageAppPayload:(id)payload senderContext:(id)context bundleID:(id)d retries:(unint64_t)retries completionBlock:(id)block blockUntilReply:(BOOL)reply;
- (void)_disconnected;
- (void)_generateMetadata:(id)metadata metadataURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints retries:(unint64_t)retries completionBlock:(id)block blockUntilReply:(BOOL)reply;
- (void)_generatePreview:(id)preview previewURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints retries:(unint64_t)retries balloonBundleID:(id)d transferGUID:(id)iD completionBlock:(id)self0 blockUntilReply:(BOOL)self1;
- (void)_generateSafeRender:(id)render constraints:(IMPreviewConstraints *)constraints retries:(int)retries completionBlock:(id)block;
- (void)_transcodeFileTransferPayloadData:(id)data balloonBundleID:(id)d attachments:(id)attachments retries:(unint64_t)retries fallBack:(BOOL)back completionBlock:(id)block;
- (void)generateMetadata:(id)metadata metadataURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block;
- (void)generateMetadata:(id)metadata metadataURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block blockUntilReply:(BOOL)reply;
- (void)generatePosterConfigFromSource:(id)source destination:(id)destination senderContext:(id)context completionBlock:(id)block blockUntilReply:(BOOL)reply;
- (void)generatePreview:(id)preview previewURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints balloonBundleID:(id)d transferGUID:(id)iD completionBlock:(id)block blockUntilReply:(BOOL)self0;
- (void)generateReadOnlyPosterConfig:(id)config completionBlock:(id)block;
- (void)generateSafeRender:(id)render completionBlock:(id)block;
- (void)generateSafeRender:(id)render constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block;
- (void)generateSnapshotForMessageGUID:(id)d payloadURL:(id)l balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block;
- (void)replaceTransferWithSafeTransfer:(id)transfer constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block;
- (void)transcodeFallbackFileTransferContents:(id)contents utiType:(id)type allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)self0 representations:(int64_t)self1 isLQMEnabled:(BOOL)self2 completionBlock:(id)self3;
- (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion;
@end

@implementation IMTranscodeController

+ (id)sharedInstance
{
  if (qword_280E21168 != -1)
  {
    sub_25484B57C();
  }

  v3 = qword_280E21160;

  return v3;
}

- (IMTranscodeController)init
{
  v6.receiver = self;
  v6.super_class = IMTranscodeController;
  v2 = [(IMTranscodeController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.messages.transcoding-connection", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v3;
  }

  return v2;
}

- (void)_disconnected
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254843000, v3, OS_LOG_TYPE_INFO, "Clearing out _connection, we're disconnected", buf, 2u);
    }
  }

  if (self->_connection)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_254843000, v4, OS_LOG_TYPE_INFO, "Forcing a disconnect, terminating connection", v6, 2u);
      }
    }

    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
    self->_connection = 0;
  }
}

- (BOOL)_connect
{
  if (self->_connection)
  {
    return 1;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254843000, v4, OS_LOG_TYPE_INFO, "Connecting to transcoder agent", buf, 2u);
    }
  }

  v5 = xpc_connection_create("com.apple.imtranscoding.IMTranscoderAgent", self->_connectionQueue);
  connection = self->_connection;
  self->_connection = v5;

  v7 = self->_connection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_254844108;
  handler[3] = &unk_27978C240;
  handler[4] = self;
  xpc_connection_set_event_handler(v7, handler);
  xpc_connection_resume(self->_connection);
  return self->_connection != 0;
}

- (void)generateSafeRender:(id)render completionBlock:(id)block
{
  blockCopy = block;
  renderCopy = render;
  IMClientPreviewConstraints();
  [(IMTranscodeController *)self generateSafeRender:renderCopy constraints:v8 completionBlock:blockCopy];
}

- (void)generateSafeRender:(id)render constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  renderCopy = render;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(v13[0]) = 138412290;
      *(v13 + 4) = renderCopy;
      _os_log_impl(&dword_254843000, v10, OS_LOG_TYPE_INFO, "Generating safe render for file transfer: %@", v13, 0xCu);
    }
  }

  v11 = *&constraints->var1.height;
  v13[0] = *&constraints->var0;
  v13[1] = v11;
  v14 = *&constraints->var3;
  [(IMTranscodeController *)self _generateSafeRender:renderCopy constraints:v13 retries:0 completionBlock:blockCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)replaceTransferWithSafeTransfer:(id)transfer constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block
{
  transferCopy = transfer;
  blockCopy = block;
  if (!transferCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
    blockCopy[2](blockCopy, 0, v9);
  }

  v10 = +[IMTranscodeController sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_254844638;
  v16[3] = &unk_27978C268;
  v17 = transferCopy;
  v18 = blockCopy;
  v11 = *&constraints->var1.height;
  v14[0] = *&constraints->var0;
  v14[1] = v11;
  v15 = *&constraints->var3;
  v12 = blockCopy;
  v13 = transferCopy;
  [v10 generateSafeRender:v13 constraints:v14 completionBlock:v16];
}

- (void)_generateSafeRender:(id)render constraints:(IMPreviewConstraints *)constraints retries:(int)retries completionBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  renderCopy = render;
  blockCopy = block;
  if ([(IMTranscodeController *)self _connect])
  {
    v28 = blockCopy;
    v12 = xpc_dictionary_create(0, 0, 0);
    IMInsertCodableObjectsToXPCDictionary();
    v13 = *&constraints->var1.height;
    *buf = *&constraints->var0;
    v38 = v13;
    v39 = *&constraints->var3;
    v14 = IMPreviewConstraintsDictionaryFromConstraint();
    IMInsertDictionariesToXPCDictionary();

    IMInsertIntsToXPCDictionary();
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v16 = MEMORY[0x277CCACA8];
    uRLByDeletingPathExtension = [renderCopy URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
    v19 = [v16 stringWithFormat:@"%@.safe-render", lastPathComponent];
    v20 = [defaultManager im_randomTemporaryFileURLWithFileName:v19];

    IMInsertCodableObjectsToXPCDictionary();
    IMInsertSandboxExtensionIntoXPCMessageWithKeyForFileURL();
    [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v12 withKey:@"read-extension" forFileURL:renderCopy readOnly:1, v20, 0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_254844C0C;
    v29[3] = &unk_27978C2B8;
    retriesCopy = retries;
    v21 = renderCopy;
    v30 = v21;
    selfCopy = self;
    v22 = *&constraints->var1.height;
    v33 = *&constraints->var0;
    v34 = v22;
    v35 = *&constraints->var3;
    v32 = v28;
    v23 = MEMORY[0x259C1BC50](v29);
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v21;
        _os_log_impl(&dword_254843000, v24, OS_LOG_TYPE_INFO, "sending request to GenerateSafeRender for %@", buf, 0xCu);
      }
    }

    v25 = xpc_connection_send_message_with_reply_sync(self->_connection, v12);
    (v23)[2](v23, v25);

    blockCopy = v28;
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254843000, v26, OS_LOG_TYPE_INFO, "Unable to connect to transcoding service when generating safe render", buf, 2u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)transcodeFallbackFileTransferContents:(id)contents utiType:(id)type allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)self0 representations:(int64_t)self1 isLQMEnabled:(BOOL)self2 completionBlock:(id)self3
{
  LOBYTE(v14) = enabled;
  LOBYTE(v13) = 1;
  [(IMTranscodeController *)self _transcodeFileTransferContents:contents utiType:type isSticker:0 allowUnfilteredUTIs:is target:target sizes:sizes commonCapabilities:capabilities maxDimension:dimension transcoderUserInfo:info representations:representations fallBack:v13 retries:v14 isLQMEnabled:block completionBlock:?];
}

- (void)_transcodeFileTransferPayloadData:(id)data balloonBundleID:(id)d attachments:(id)attachments retries:(unint64_t)retries fallBack:(BOOL)back completionBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  attachmentsCopy = attachments;
  blockCopy = block;
  if (dataCopy && dCopy)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v18 = xpc_dictionary_create(0, 0, 0);
      IMInsertDatasToXPCDictionary();
      IMInsertArraysToXPCDictionary();
      [dCopy UTF8String];
      IMInsertStringsToXPCDictionary();
      IMInsertBoolsToXPCDictionary();
      IMInsertIntsToXPCDictionary();
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_254846AA8;
      v28[3] = &unk_27978C380;
      retriesCopy = retries;
      v19 = dCopy;
      v29 = v19;
      selfCopy = self;
      v20 = dataCopy;
      v31 = v20;
      v32 = attachmentsCopy;
      backCopy = back;
      v33 = blockCopy;
      v21 = MEMORY[0x259C1BC50](v28);
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v20 length];
          *buf = 138412546;
          v37 = v19;
          v38 = 2048;
          v39 = v23;
          _os_log_impl(&dword_254843000, v22, OS_LOG_TYPE_INFO, "sending request to TranscodePayloadData for %@, data length: %lu", buf, 0x16u);
        }
      }

      xpc_connection_send_message_with_reply(self->_connection, v18, MEMORY[0x277D85CD0], v21);
    }

    else if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254843000, v26, OS_LOG_TYPE_INFO, "Unable to connect to transcoding service", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v37 = [dataCopy length];
        v38 = 2112;
        v39 = dCopy;
        _os_log_impl(&dword_254843000, v24, OS_LOG_TYPE_INFO, "request error in TranscodingPayloadData: nil data (len=%lu) or balloonBundleID %@", buf, 0x16u);
      }
    }

    if (blockCopy)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(blockCopy + 2))(blockCopy, 0, 0, v25, 0, 0);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)generateSnapshotForMessageGUID:(id)d payloadURL:(id)l balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  lCopy = l;
  iDCopy = iD;
  contextCopy = context;
  blockCopy = block;
  if (lCopy && iDCopy)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v17 = xpc_dictionary_create(0, 0, 0);
      uTF8String = [dCopy UTF8String];
      IMInsertStringsToXPCDictionary();
      absoluteString = [lCopy absoluteString];
      uTF8String2 = [absoluteString UTF8String];
      IMInsertStringsToXPCDictionary();

      [iDCopy UTF8String];
      IMInsertStringsToXPCDictionary();
      IMInsertKeyedCodableObjectsToXPCDictionary();
      IMInsertIntsToXPCDictionary();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v17 withKey:@"read-extension" forFileURL:lCopy readOnly:1, 2, 0];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_254847664;
      v28[3] = &unk_27978C3A8;
      v19 = lCopy;
      v29 = v19;
      v30 = blockCopy;
      v20 = MEMORY[0x259C1BC50](v28);
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v32 = v19;
          _os_log_impl(&dword_254843000, v21, OS_LOG_TYPE_INFO, "sending request to GenerateSnapshot for %@", buf, 0xCu);
        }
      }

      xpc_connection_send_message_with_reply(self->_connection, v17, MEMORY[0x277D85CD0], v20);
    }

    else if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254843000, v24, OS_LOG_TYPE_INFO, "Unable to connect to transcoding service", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v32 = lCopy;
        v33 = 2112;
        v34 = iDCopy;
        _os_log_impl(&dword_254843000, v22, OS_LOG_TYPE_INFO, "request error in GenerateSnapshot, nil payloadURL %@ or balloonBundleID %@", buf, 0x16u);
      }
    }

    if (blockCopy)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(blockCopy + 2))(blockCopy, 0, v23);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)generatePreview:(id)preview previewURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints balloonBundleID:(id)d transferGUID:(id)iD completionBlock:(id)block blockUntilReply:(BOOL)self0
{
  replyCopy2 = reply;
  previewCopy = preview;
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  v23 = blockCopy;
  if (iDCopy)
  {
    selfCopy = self;
    v25 = MEMORY[0x259C1BC50](blockCopy);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_254847B5C;
    v32[3] = &unk_27978C3D0;
    v33 = iDCopy;
    v34 = v25;
    v26 = v25;
    v27 = MEMORY[0x259C1BC50](v32);

    self = selfCopy;
    replyCopy2 = reply;
    v23 = v27;
  }

  v28 = *&constraints->var1.height;
  v30[0] = *&constraints->var0;
  v30[1] = v28;
  v31 = *&constraints->var3;
  LOBYTE(v29) = replyCopy2;
  [(IMTranscodeController *)self _generatePreview:previewCopy previewURL:lCopy senderContext:contextCopy constraints:v30 retries:0 balloonBundleID:dCopy transferGUID:iDCopy completionBlock:v23 blockUntilReply:v29];
}

- (void)_generatePreview:(id)preview previewURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints retries:(unint64_t)retries balloonBundleID:(id)d transferGUID:(id)iD completionBlock:(id)self0 blockUntilReply:(BOOL)self1
{
  v56 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  if (previewCopy && lCopy)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v21 = xpc_dictionary_create(0, 0, 0);
      IMInsertIntsToXPCDictionary();
      absoluteString = [previewCopy absoluteString];
      uTF8String = [absoluteString UTF8String];
      IMInsertStringsToXPCDictionary();

      absoluteString2 = [lCopy absoluteString];
      uTF8String2 = [absoluteString2 UTF8String];
      IMInsertStringsToXPCDictionary();

      if (dCopy)
      {
        [dCopy UTF8String];
        IMInsertStringsToXPCDictionary();
      }

      IMInsertKeyedCodableObjectsToXPCDictionary();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v21 withKey:@"read-extension" forFileURL:previewCopy readOnly:1, contextCopy, 0];
      v38 = IMCachesDirectoryURL();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v21 withKey:@"write-extension" forFileURL:v38 readOnly:0];
      v24 = *&constraints->var1.height;
      *buf = *&constraints->var0;
      *&buf[16] = v24;
      v55 = *&constraints->var3;
      v37 = IMPreviewConstraintsDictionaryFromConstraint();
      IMInsertDictionariesToXPCDictionary();
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = sub_254848250;
      v41[3] = &unk_27978C3F8;
      retriesCopy = retries;
      v25 = previewCopy;
      v42 = v25;
      selfCopy = self;
      v44 = lCopy;
      v45 = contextCopy;
      v26 = *&constraints->var1.height;
      v50 = *&constraints->var0;
      v51 = v26;
      v52 = *&constraints->var3;
      v46 = dCopy;
      v47 = iDCopy;
      v48 = blockCopy;
      replyCopy = reply;
      v27 = MEMORY[0x259C1BC50](v41);
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v25;
          _os_log_impl(&dword_254843000, v28, OS_LOG_TYPE_INFO, "sending request to GeneratePreview for %@", buf, 0xCu);
        }
      }

      connection = self->_connection;
      if (reply)
      {
        v30 = xpc_connection_send_message_with_reply_sync(connection, v21);
        (v27)[2](v27, v30);
      }

      else
      {
        v30 = dispatch_get_global_queue(0, 0);
        xpc_connection_send_message_with_reply(connection, v21, v30, v27);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254843000, v33, OS_LOG_TYPE_INFO, "Unable to connect to transcoding service", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = previewCopy;
        *&buf[12] = 2112;
        *&buf[14] = lCopy;
        _os_log_impl(&dword_254843000, v31, OS_LOG_TYPE_INFO, "request error in GeneratePreview, nil sourceURL %@ or previewURL %@", buf, 0x16u);
      }
    }

    if (blockCopy)
    {
      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(blockCopy + 2))(blockCopy, 0, v32, 0.0, 0.0);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)generateMetadata:(id)metadata metadataURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block
{
  metadataCopy = metadata;
  lCopy = l;
  contextCopy = context;
  blockCopy = block;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v16 = *&constraints->var1.height;
    v27[0] = *&constraints->var0;
    v27[1] = v16;
    v28 = *&constraints->var3;
    LOBYTE(v18) = 0;
    [(IMTranscodeController *)self _generateMetadata:metadataCopy metadataURL:lCopy senderContext:contextCopy constraints:v27 retries:0 completionBlock:blockCopy blockUntilReply:v18];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254848930;
    block[3] = &unk_27978C420;
    block[4] = self;
    v20 = metadataCopy;
    v21 = lCopy;
    v22 = contextCopy;
    v17 = *&constraints->var1.height;
    v24 = *&constraints->var0;
    v25 = v17;
    v26 = *&constraints->var3;
    v23 = blockCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (void)generateMetadata:(id)metadata metadataURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block blockUntilReply:(BOOL)reply
{
  v8 = *&constraints->var1.height;
  v10[0] = *&constraints->var0;
  v10[1] = v8;
  v11 = *&constraints->var3;
  LOBYTE(v9) = reply;
  [(IMTranscodeController *)self _generateMetadata:metadata metadataURL:l senderContext:context constraints:v10 retries:0 completionBlock:block blockUntilReply:v9];
}

- (void)_generateMetadata:(id)metadata metadataURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints retries:(unint64_t)retries completionBlock:(id)block blockUntilReply:(BOOL)reply
{
  v49 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  lCopy = l;
  contextCopy = context;
  blockCopy = block;
  if (metadataCopy && lCopy)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v19 = xpc_dictionary_create(0, 0, 0);
      IMInsertIntsToXPCDictionary();
      absoluteString = [metadataCopy absoluteString];
      uTF8String = [absoluteString UTF8String];
      IMInsertStringsToXPCDictionary();

      absoluteString2 = [lCopy absoluteString];
      [absoluteString2 UTF8String];
      IMInsertStringsToXPCDictionary();

      IMInsertKeyedCodableObjectsToXPCDictionary();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v19 withKey:@"read-extension" forFileURL:metadataCopy readOnly:1, contextCopy, 0];
      v35 = IMCachesDirectoryURL();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v19 withKey:@"write-extension" forFileURL:v35 readOnly:0];
      v22 = *&constraints->var1.height;
      *buf = *&constraints->var0;
      *&buf[16] = v22;
      v48 = *&constraints->var3;
      v34 = IMPreviewConstraintsDictionaryFromConstraint();
      IMInsertDictionariesToXPCDictionary();
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_254848E90;
      v36[3] = &unk_27978C470;
      retriesCopy = retries;
      v23 = metadataCopy;
      v37 = v23;
      selfCopy = self;
      v39 = lCopy;
      v40 = contextCopy;
      v24 = *&constraints->var1.height;
      v43 = *&constraints->var0;
      v44 = v24;
      v45 = *&constraints->var3;
      v41 = blockCopy;
      replyCopy = reply;
      v25 = MEMORY[0x259C1BC50](v36);
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v23;
          _os_log_impl(&dword_254843000, v26, OS_LOG_TYPE_INFO, "sending request to GenerateMetadata for %@", buf, 0xCu);
        }
      }

      connection = self->_connection;
      if (reply)
      {
        v28 = xpc_connection_send_message_with_reply_sync(self->_connection, v19);
        (v25)[2](v25, v28);
      }

      else
      {
        v28 = dispatch_get_global_queue(0, 0);
        xpc_connection_send_message_with_reply(connection, v19, v28, v25);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254843000, v31, OS_LOG_TYPE_INFO, "Unable to connect to transcoding service", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = metadataCopy;
        *&buf[12] = 2112;
        *&buf[14] = lCopy;
        _os_log_impl(&dword_254843000, v29, OS_LOG_TYPE_INFO, "request error in GenerateMetadata, nil sourceURL %@ or destinationURL %@", buf, 0x16u);
      }
    }

    if (blockCopy)
    {
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(blockCopy + 2))(blockCopy, 0, v30, 0.0, 0.0);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_decodeiMessageAppPayload:(id)payload senderContext:(id)context bundleID:(id)d retries:(unint64_t)retries completionBlock:(id)block blockUntilReply:(BOOL)reply
{
  replyCopy = reply;
  v43 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  contextCopy = context;
  dCopy = d;
  blockCopy = block;
  if (payloadCopy && dCopy)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v17 = xpc_dictionary_create(0, 0, 0);
      IMInsertIntsToXPCDictionary();
      absoluteString = [payloadCopy absoluteString];
      uTF8String = [absoluteString UTF8String];
      IMInsertStringsToXPCDictionary();

      [dCopy UTF8String];
      IMInsertStringsToXPCDictionary();
      IMInsertKeyedCodableObjectsToXPCDictionary();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v17 withKey:@"read-extension" forFileURL:payloadCopy readOnly:1, contextCopy, 0];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_254849954;
      v31[3] = &unk_27978C380;
      retriesCopy = retries;
      v19 = payloadCopy;
      v32 = v19;
      v20 = dCopy;
      v33 = v20;
      selfCopy = self;
      v35 = contextCopy;
      v36 = blockCopy;
      v38 = replyCopy;
      v21 = MEMORY[0x259C1BC50](v31);
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v40 = v19;
          v41 = 2112;
          v42 = v20;
          _os_log_impl(&dword_254843000, v22, OS_LOG_TYPE_INFO, "sending request to DecodeiMessageAppPayload for %@ bundleID %@", buf, 0x16u);
        }
      }

      connection = self->_connection;
      if (replyCopy)
      {
        v24 = xpc_connection_send_message_with_reply_sync(connection, v17);
        (v21)[2](v21, v24);
      }

      else
      {
        v24 = dispatch_get_global_queue(0, 0);
        xpc_connection_send_message_with_reply(connection, v17, v24, v21);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254843000, v27, OS_LOG_TYPE_INFO, "Unable to connect to transcoding service", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v40 = payloadCopy;
        v41 = 2112;
        v42 = dCopy;
        _os_log_impl(&dword_254843000, v25, OS_LOG_TYPE_INFO, "request error in DecodeiMessageAppPayload: nil sourceURL %@ or bundleID %@", buf, 0x16u);
      }
    }

    if (blockCopy)
    {
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(blockCopy + 2))(blockCopy, 0, 0, 0, v26);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)generatePosterConfigFromSource:(id)source destination:(id)destination senderContext:(id)context completionBlock:(id)block blockUntilReply:(BOOL)reply
{
  replyCopy = reply;
  v39 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  destinationCopy = destination;
  contextCopy = context;
  blockCopy = block;
  if (sourceCopy && destinationCopy)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v15 = xpc_dictionary_create(0, 0, 0);
      IMInsertIntsToXPCDictionary();
      absoluteString = [sourceCopy absoluteString];
      uTF8String = [absoluteString UTF8String];
      IMInsertStringsToXPCDictionary();

      absoluteString2 = [destinationCopy absoluteString];
      [absoluteString2 UTF8String];
      IMInsertStringsToXPCDictionary();

      IMInsertKeyedCodableObjectsToXPCDictionary();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v15 withKey:@"read-extension" forFileURL:sourceCopy readOnly:1, contextCopy, 0];
      uRLByDeletingLastPathComponent = [destinationCopy URLByDeletingLastPathComponent];
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v15 withKey:@"write-extension" forFileURL:uRLByDeletingLastPathComponent readOnly:0];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_25484A420;
      v31[3] = &unk_27978C4B8;
      v19 = sourceCopy;
      v32 = v19;
      v20 = destinationCopy;
      v33 = v20;
      v34 = blockCopy;
      v21 = MEMORY[0x259C1BC50](v31);
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v36 = v19;
          v37 = 2112;
          v38 = v20;
          _os_log_impl(&dword_254843000, v22, OS_LOG_TYPE_INFO, "sending request to GeneratePosterConfig for sourceConfig %@ destConfig %@", buf, 0x16u);
        }
      }

      connection = self->_connection;
      if (replyCopy)
      {
        v24 = xpc_connection_send_message_with_reply_sync(connection, v15);
        (v21)[2](v21, v24);
      }

      else
      {
        v24 = dispatch_get_global_queue(0, 0);
        xpc_connection_send_message_with_reply(connection, v15, v24, v21);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254843000, v27, OS_LOG_TYPE_INFO, "Unable to connect to transcoding service", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v36 = sourceCopy;
        v37 = 2112;
        v38 = destinationCopy;
        _os_log_impl(&dword_254843000, v25, OS_LOG_TYPE_INFO, "request error in generatePosterConfig: nil sourceConfig %@ or destinationConfig %@", buf, 0x16u);
      }
    }

    if (blockCopy)
    {
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(blockCopy + 2))(blockCopy, 0, v26);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)generateReadOnlyPosterConfig:(id)config completionBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  configCopy = config;
  blockCopy = block;
  if (configCopy)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      IMInsertIntsToXPCDictionary();
      absoluteString = [configCopy absoluteString];
      uTF8String = [absoluteString UTF8String];
      IMInsertStringsToXPCDictionary();

      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v8 withKey:@"read-extension" forFileURL:configCopy readOnly:1, uTF8String, 0];
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v8 withKey:@"write-extension" forFileURL:configCopy readOnly:0];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_25484AB24;
      v20[3] = &unk_27978C3A8;
      v10 = configCopy;
      v21 = v10;
      v22 = blockCopy;
      v11 = MEMORY[0x259C1BC50](v20);
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v10;
          _os_log_impl(&dword_254843000, v12, OS_LOG_TYPE_INFO, "sending request to generateReadOnlyPosterConfig for sourceConfig %@", buf, 0xCu);
        }
      }

      connection = self->_connection;
      v14 = dispatch_get_global_queue(0, 0);
      xpc_connection_send_message_with_reply(connection, v8, v14, v11);
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254843000, v17, OS_LOG_TYPE_INFO, "Unable to connect to transcoding service", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = 0;
        _os_log_impl(&dword_254843000, v15, OS_LOG_TYPE_INFO, "request error in generateReadOnlyPosterConfig: nil sourceConfig %@", buf, 0xCu);
      }
    }

    if (blockCopy)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(blockCopy + 2))(blockCopy, 0, 0, v16);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (int64_t)maxTimeForTranscriptionInSeconds
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"md-audio-transcription-time-max-secs"];
    v5 = v4;
    if (v4)
    {
      longLongValue = [v4 longLongValue];
    }

    else
    {
      longLongValue = 120;
    }
  }

  else
  {
    longLongValue = 120;
  }

  return longLongValue;
}

- (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if ([(IMTranscodeController *)self _connect])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    IMInsertIntsToXPCDictionary();
    absoluteString = [lCopy absoluteString];
    uTF8String = [absoluteString UTF8String];
    IMInsertStringsToXPCDictionary();

    [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v8 withKey:@"read-extension" forFileURL:lCopy readOnly:1, uTF8String, 0];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_25484B1EC;
    v21[3] = &unk_27978C4E0;
    v24 = v26;
    v22 = lCopy;
    v25 = v28;
    v10 = completionCopy;
    v23 = v10;
    v11 = MEMORY[0x259C1BC50](v21);
    maxTimeForTranscriptionInSeconds = [(IMTranscodeController *)self maxTimeForTranscriptionInSeconds];
    connection = self->_connection;
    v14 = im_primary_queue();
    xpc_connection_send_message_with_reply(connection, v8, v14, v11);

    v15 = dispatch_time(0, 1000000000 * maxTimeForTranscriptionInSeconds);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_25484B444;
    block[3] = &unk_27978C508;
    v19 = v26;
    v20 = v28;
    v18 = v10;
    dispatch_after(v15, MEMORY[0x277D85CD0], block);

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v28, 8);
  }
}

@end