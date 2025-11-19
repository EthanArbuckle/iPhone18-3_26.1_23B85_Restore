@interface IMTranscodeController
+ (id)sharedInstance;
- (BOOL)_connect;
- (IMTranscodeController)init;
- (int64_t)maxTimeForTranscriptionInSeconds;
- (void)_decodeiMessageAppPayload:(id)a3 senderContext:(id)a4 bundleID:(id)a5 retries:(unint64_t)a6 completionBlock:(id)a7 blockUntilReply:(BOOL)a8;
- (void)_disconnected;
- (void)_generateMetadata:(id)a3 metadataURL:(id)a4 senderContext:(id)a5 constraints:(IMPreviewConstraints *)a6 retries:(unint64_t)a7 completionBlock:(id)a8 blockUntilReply:(BOOL)a9;
- (void)_generatePreview:(id)a3 previewURL:(id)a4 senderContext:(id)a5 constraints:(IMPreviewConstraints *)a6 retries:(unint64_t)a7 balloonBundleID:(id)a8 transferGUID:(id)a9 completionBlock:(id)a10 blockUntilReply:(BOOL)a11;
- (void)_generateSafeRender:(id)a3 constraints:(IMPreviewConstraints *)a4 retries:(int)a5 completionBlock:(id)a6;
- (void)_transcodeFileTransferPayloadData:(id)a3 balloonBundleID:(id)a4 attachments:(id)a5 retries:(unint64_t)a6 fallBack:(BOOL)a7 completionBlock:(id)a8;
- (void)generateMetadata:(id)a3 metadataURL:(id)a4 senderContext:(id)a5 constraints:(IMPreviewConstraints *)a6 completionBlock:(id)a7;
- (void)generateMetadata:(id)a3 metadataURL:(id)a4 senderContext:(id)a5 constraints:(IMPreviewConstraints *)a6 completionBlock:(id)a7 blockUntilReply:(BOOL)a8;
- (void)generatePosterConfigFromSource:(id)a3 destination:(id)a4 senderContext:(id)a5 completionBlock:(id)a6 blockUntilReply:(BOOL)a7;
- (void)generatePreview:(id)a3 previewURL:(id)a4 senderContext:(id)a5 constraints:(IMPreviewConstraints *)a6 balloonBundleID:(id)a7 transferGUID:(id)a8 completionBlock:(id)a9 blockUntilReply:(BOOL)a10;
- (void)generateReadOnlyPosterConfig:(id)a3 completionBlock:(id)a4;
- (void)generateSafeRender:(id)a3 completionBlock:(id)a4;
- (void)generateSafeRender:(id)a3 constraints:(IMPreviewConstraints *)a4 completionBlock:(id)a5;
- (void)generateSnapshotForMessageGUID:(id)a3 payloadURL:(id)a4 balloonBundleID:(id)a5 senderContext:(id)a6 completionBlock:(id)a7;
- (void)replaceTransferWithSafeTransfer:(id)a3 constraints:(IMPreviewConstraints *)a4 completionBlock:(id)a5;
- (void)transcodeFallbackFileTransferContents:(id)a3 utiType:(id)a4 allowUnfilteredUTIs:(id)a5 target:(int64_t)a6 sizes:(id)a7 commonCapabilities:(id)a8 maxDimension:(unint64_t)a9 transcoderUserInfo:(id)a10 representations:(int64_t)a11 isLQMEnabled:(BOOL)a12 completionBlock:(id)a13;
- (void)transcribeAudioForAudioTransferURL:(id)a3 withCompletion:(id)a4;
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

- (void)generateSafeRender:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  IMClientPreviewConstraints();
  [(IMTranscodeController *)self generateSafeRender:v7 constraints:v8 completionBlock:v6];
}

- (void)generateSafeRender:(id)a3 constraints:(IMPreviewConstraints *)a4 completionBlock:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(v13[0]) = 138412290;
      *(v13 + 4) = v8;
      _os_log_impl(&dword_254843000, v10, OS_LOG_TYPE_INFO, "Generating safe render for file transfer: %@", v13, 0xCu);
    }
  }

  v11 = *&a4->var1.height;
  v13[0] = *&a4->var0;
  v13[1] = v11;
  v14 = *&a4->var3;
  [(IMTranscodeController *)self _generateSafeRender:v8 constraints:v13 retries:0 completionBlock:v9];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)replaceTransferWithSafeTransfer:(id)a3 constraints:(IMPreviewConstraints *)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!v7)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
    v8[2](v8, 0, v9);
  }

  v10 = +[IMTranscodeController sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_254844638;
  v16[3] = &unk_27978C268;
  v17 = v7;
  v18 = v8;
  v11 = *&a4->var1.height;
  v14[0] = *&a4->var0;
  v14[1] = v11;
  v15 = *&a4->var3;
  v12 = v8;
  v13 = v7;
  [v10 generateSafeRender:v13 constraints:v14 completionBlock:v16];
}

- (void)_generateSafeRender:(id)a3 constraints:(IMPreviewConstraints *)a4 retries:(int)a5 completionBlock:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if ([(IMTranscodeController *)self _connect])
  {
    v28 = v11;
    v12 = xpc_dictionary_create(0, 0, 0);
    IMInsertCodableObjectsToXPCDictionary();
    v13 = *&a4->var1.height;
    *buf = *&a4->var0;
    v38 = v13;
    v39 = *&a4->var3;
    v14 = IMPreviewConstraintsDictionaryFromConstraint();
    IMInsertDictionariesToXPCDictionary();

    IMInsertIntsToXPCDictionary();
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = MEMORY[0x277CCACA8];
    v17 = [v10 URLByDeletingPathExtension];
    v18 = [v17 lastPathComponent];
    v19 = [v16 stringWithFormat:@"%@.safe-render", v18];
    v20 = [v15 im_randomTemporaryFileURLWithFileName:v19];

    IMInsertCodableObjectsToXPCDictionary();
    IMInsertSandboxExtensionIntoXPCMessageWithKeyForFileURL();
    [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v12 withKey:@"read-extension" forFileURL:v10 readOnly:1, v20, 0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_254844C0C;
    v29[3] = &unk_27978C2B8;
    v36 = a5;
    v21 = v10;
    v30 = v21;
    v31 = self;
    v22 = *&a4->var1.height;
    v33 = *&a4->var0;
    v34 = v22;
    v35 = *&a4->var3;
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

    v11 = v28;
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

- (void)transcodeFallbackFileTransferContents:(id)a3 utiType:(id)a4 allowUnfilteredUTIs:(id)a5 target:(int64_t)a6 sizes:(id)a7 commonCapabilities:(id)a8 maxDimension:(unint64_t)a9 transcoderUserInfo:(id)a10 representations:(int64_t)a11 isLQMEnabled:(BOOL)a12 completionBlock:(id)a13
{
  LOBYTE(v14) = a12;
  LOBYTE(v13) = 1;
  [(IMTranscodeController *)self _transcodeFileTransferContents:a3 utiType:a4 isSticker:0 allowUnfilteredUTIs:a5 target:a6 sizes:a7 commonCapabilities:a8 maxDimension:a9 transcoderUserInfo:a10 representations:a11 fallBack:v13 retries:v14 isLQMEnabled:a13 completionBlock:?];
}

- (void)_transcodeFileTransferPayloadData:(id)a3 balloonBundleID:(id)a4 attachments:(id)a5 retries:(unint64_t)a6 fallBack:(BOOL)a7 completionBlock:(id)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (v14 && v15)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v18 = xpc_dictionary_create(0, 0, 0);
      IMInsertDatasToXPCDictionary();
      IMInsertArraysToXPCDictionary();
      [v15 UTF8String];
      IMInsertStringsToXPCDictionary();
      IMInsertBoolsToXPCDictionary();
      IMInsertIntsToXPCDictionary();
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_254846AA8;
      v28[3] = &unk_27978C380;
      v34 = a6;
      v19 = v15;
      v29 = v19;
      v30 = self;
      v20 = v14;
      v31 = v20;
      v32 = v16;
      v35 = a7;
      v33 = v17;
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
        v37 = [v14 length];
        v38 = 2112;
        v39 = v15;
        _os_log_impl(&dword_254843000, v24, OS_LOG_TYPE_INFO, "request error in TranscodingPayloadData: nil data (len=%lu) or balloonBundleID %@", buf, 0x16u);
      }
    }

    if (v17)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(v17 + 2))(v17, 0, 0, v25, 0, 0);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)generateSnapshotForMessageGUID:(id)a3 payloadURL:(id)a4 balloonBundleID:(id)a5 senderContext:(id)a6 completionBlock:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13 && v14)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v17 = xpc_dictionary_create(0, 0, 0);
      v26 = [v12 UTF8String];
      IMInsertStringsToXPCDictionary();
      v18 = [v13 absoluteString];
      v27 = [v18 UTF8String];
      IMInsertStringsToXPCDictionary();

      [v14 UTF8String];
      IMInsertStringsToXPCDictionary();
      IMInsertKeyedCodableObjectsToXPCDictionary();
      IMInsertIntsToXPCDictionary();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v17 withKey:@"read-extension" forFileURL:v13 readOnly:1, 2, 0];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_254847664;
      v28[3] = &unk_27978C3A8;
      v19 = v13;
      v29 = v19;
      v30 = v16;
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
        v32 = v13;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_254843000, v22, OS_LOG_TYPE_INFO, "request error in GenerateSnapshot, nil payloadURL %@ or balloonBundleID %@", buf, 0x16u);
      }
    }

    if (v16)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(v16 + 2))(v16, 0, v23);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)generatePreview:(id)a3 previewURL:(id)a4 senderContext:(id)a5 constraints:(IMPreviewConstraints *)a6 balloonBundleID:(id)a7 transferGUID:(id)a8 completionBlock:(id)a9 blockUntilReply:(BOOL)a10
{
  v16 = a10;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = v22;
  if (v21)
  {
    v24 = self;
    v25 = MEMORY[0x259C1BC50](v22);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_254847B5C;
    v32[3] = &unk_27978C3D0;
    v33 = v21;
    v34 = v25;
    v26 = v25;
    v27 = MEMORY[0x259C1BC50](v32);

    self = v24;
    v16 = a10;
    v23 = v27;
  }

  v28 = *&a6->var1.height;
  v30[0] = *&a6->var0;
  v30[1] = v28;
  v31 = *&a6->var3;
  LOBYTE(v29) = v16;
  [(IMTranscodeController *)self _generatePreview:v17 previewURL:v18 senderContext:v19 constraints:v30 retries:0 balloonBundleID:v20 transferGUID:v21 completionBlock:v23 blockUntilReply:v29];
}

- (void)_generatePreview:(id)a3 previewURL:(id)a4 senderContext:(id)a5 constraints:(IMPreviewConstraints *)a6 retries:(unint64_t)a7 balloonBundleID:(id)a8 transferGUID:(id)a9 completionBlock:(id)a10 blockUntilReply:(BOOL)a11
{
  v56 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v40 = a5;
  v19 = a8;
  v39 = a9;
  v20 = a10;
  if (v17 && v18)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v21 = xpc_dictionary_create(0, 0, 0);
      IMInsertIntsToXPCDictionary();
      v22 = [v17 absoluteString];
      v35 = [v22 UTF8String];
      IMInsertStringsToXPCDictionary();

      v23 = [v18 absoluteString];
      v36 = [v23 UTF8String];
      IMInsertStringsToXPCDictionary();

      if (v19)
      {
        [v19 UTF8String];
        IMInsertStringsToXPCDictionary();
      }

      IMInsertKeyedCodableObjectsToXPCDictionary();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v21 withKey:@"read-extension" forFileURL:v17 readOnly:1, v40, 0];
      v38 = IMCachesDirectoryURL();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v21 withKey:@"write-extension" forFileURL:v38 readOnly:0];
      v24 = *&a6->var1.height;
      *buf = *&a6->var0;
      *&buf[16] = v24;
      v55 = *&a6->var3;
      v37 = IMPreviewConstraintsDictionaryFromConstraint();
      IMInsertDictionariesToXPCDictionary();
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = sub_254848250;
      v41[3] = &unk_27978C3F8;
      v49 = a7;
      v25 = v17;
      v42 = v25;
      v43 = self;
      v44 = v18;
      v45 = v40;
      v26 = *&a6->var1.height;
      v50 = *&a6->var0;
      v51 = v26;
      v52 = *&a6->var3;
      v46 = v19;
      v47 = v39;
      v48 = v20;
      v53 = a11;
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
      if (a11)
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
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_254843000, v31, OS_LOG_TYPE_INFO, "request error in GeneratePreview, nil sourceURL %@ or previewURL %@", buf, 0x16u);
      }
    }

    if (v20)
    {
      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(v20 + 2))(v20, 0, v32, 0.0, 0.0);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)generateMetadata:(id)a3 metadataURL:(id)a4 senderContext:(id)a5 constraints:(IMPreviewConstraints *)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v16 = *&a6->var1.height;
    v27[0] = *&a6->var0;
    v27[1] = v16;
    v28 = *&a6->var3;
    LOBYTE(v18) = 0;
    [(IMTranscodeController *)self _generateMetadata:v12 metadataURL:v13 senderContext:v14 constraints:v27 retries:0 completionBlock:v15 blockUntilReply:v18];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254848930;
    block[3] = &unk_27978C420;
    block[4] = self;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v17 = *&a6->var1.height;
    v24 = *&a6->var0;
    v25 = v17;
    v26 = *&a6->var3;
    v23 = v15;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (void)generateMetadata:(id)a3 metadataURL:(id)a4 senderContext:(id)a5 constraints:(IMPreviewConstraints *)a6 completionBlock:(id)a7 blockUntilReply:(BOOL)a8
{
  v8 = *&a6->var1.height;
  v10[0] = *&a6->var0;
  v10[1] = v8;
  v11 = *&a6->var3;
  LOBYTE(v9) = a8;
  [(IMTranscodeController *)self _generateMetadata:a3 metadataURL:a4 senderContext:a5 constraints:v10 retries:0 completionBlock:a7 blockUntilReply:v9];
}

- (void)_generateMetadata:(id)a3 metadataURL:(id)a4 senderContext:(id)a5 constraints:(IMPreviewConstraints *)a6 retries:(unint64_t)a7 completionBlock:(id)a8 blockUntilReply:(BOOL)a9
{
  v49 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  if (v15 && v16)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v19 = xpc_dictionary_create(0, 0, 0);
      IMInsertIntsToXPCDictionary();
      v20 = [v15 absoluteString];
      v33 = [v20 UTF8String];
      IMInsertStringsToXPCDictionary();

      v21 = [v16 absoluteString];
      [v21 UTF8String];
      IMInsertStringsToXPCDictionary();

      IMInsertKeyedCodableObjectsToXPCDictionary();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v19 withKey:@"read-extension" forFileURL:v15 readOnly:1, v17, 0];
      v35 = IMCachesDirectoryURL();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v19 withKey:@"write-extension" forFileURL:v35 readOnly:0];
      v22 = *&a6->var1.height;
      *buf = *&a6->var0;
      *&buf[16] = v22;
      v48 = *&a6->var3;
      v34 = IMPreviewConstraintsDictionaryFromConstraint();
      IMInsertDictionariesToXPCDictionary();
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_254848E90;
      v36[3] = &unk_27978C470;
      v42 = a7;
      v23 = v15;
      v37 = v23;
      v38 = self;
      v39 = v16;
      v40 = v17;
      v24 = *&a6->var1.height;
      v43 = *&a6->var0;
      v44 = v24;
      v45 = *&a6->var3;
      v41 = v18;
      v46 = a9;
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
      if (a9)
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
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        _os_log_impl(&dword_254843000, v29, OS_LOG_TYPE_INFO, "request error in GenerateMetadata, nil sourceURL %@ or destinationURL %@", buf, 0x16u);
      }
    }

    if (v18)
    {
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(v18 + 2))(v18, 0, v30, 0.0, 0.0);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_decodeiMessageAppPayload:(id)a3 senderContext:(id)a4 bundleID:(id)a5 retries:(unint64_t)a6 completionBlock:(id)a7 blockUntilReply:(BOOL)a8
{
  v8 = a8;
  v43 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v30 = a4;
  v15 = a5;
  v16 = a7;
  if (v14 && v15)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v17 = xpc_dictionary_create(0, 0, 0);
      IMInsertIntsToXPCDictionary();
      v18 = [v14 absoluteString];
      v29 = [v18 UTF8String];
      IMInsertStringsToXPCDictionary();

      [v15 UTF8String];
      IMInsertStringsToXPCDictionary();
      IMInsertKeyedCodableObjectsToXPCDictionary();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v17 withKey:@"read-extension" forFileURL:v14 readOnly:1, v30, 0];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_254849954;
      v31[3] = &unk_27978C380;
      v37 = a6;
      v19 = v14;
      v32 = v19;
      v20 = v15;
      v33 = v20;
      v34 = self;
      v35 = v30;
      v36 = v16;
      v38 = v8;
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
      if (v8)
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
        v40 = v14;
        v41 = 2112;
        v42 = v15;
        _os_log_impl(&dword_254843000, v25, OS_LOG_TYPE_INFO, "request error in DecodeiMessageAppPayload: nil sourceURL %@ or bundleID %@", buf, 0x16u);
      }
    }

    if (v16)
    {
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(v16 + 2))(v16, 0, 0, 0, v26);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)generatePosterConfigFromSource:(id)a3 destination:(id)a4 senderContext:(id)a5 completionBlock:(id)a6 blockUntilReply:(BOOL)a7
{
  v7 = a7;
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v30 = a5;
  v14 = a6;
  if (v12 && v13)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v15 = xpc_dictionary_create(0, 0, 0);
      IMInsertIntsToXPCDictionary();
      v16 = [v12 absoluteString];
      v29 = [v16 UTF8String];
      IMInsertStringsToXPCDictionary();

      v17 = [v13 absoluteString];
      [v17 UTF8String];
      IMInsertStringsToXPCDictionary();

      IMInsertKeyedCodableObjectsToXPCDictionary();
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v15 withKey:@"read-extension" forFileURL:v12 readOnly:1, v30, 0];
      v18 = [v13 URLByDeletingLastPathComponent];
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v15 withKey:@"write-extension" forFileURL:v18 readOnly:0];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_25484A420;
      v31[3] = &unk_27978C4B8;
      v19 = v12;
      v32 = v19;
      v20 = v13;
      v33 = v20;
      v34 = v14;
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
      if (v7)
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
        v36 = v12;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_254843000, v25, OS_LOG_TYPE_INFO, "request error in generatePosterConfig: nil sourceConfig %@ or destinationConfig %@", buf, 0x16u);
      }
    }

    if (v14)
    {
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(v14 + 2))(v14, 0, v26);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)generateReadOnlyPosterConfig:(id)a3 completionBlock:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if ([(IMTranscodeController *)self _connect])
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      IMInsertIntsToXPCDictionary();
      v9 = [v6 absoluteString];
      v19 = [v9 UTF8String];
      IMInsertStringsToXPCDictionary();

      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v8 withKey:@"read-extension" forFileURL:v6 readOnly:1, v19, 0];
      [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v8 withKey:@"write-extension" forFileURL:v6 readOnly:0];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_25484AB24;
      v20[3] = &unk_27978C3A8;
      v10 = v6;
      v21 = v10;
      v22 = v7;
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

    if (v7)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-2 userInfo:0];
      (*(v7 + 2))(v7, 0, 0, v16);
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
      v6 = [v4 longLongValue];
    }

    else
    {
      v6 = 120;
    }
  }

  else
  {
    v6 = 120;
  }

  return v6;
}

- (void)transcribeAudioForAudioTransferURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IMTranscodeController *)self _connect])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    IMInsertIntsToXPCDictionary();
    v9 = [v6 absoluteString];
    v16 = [v9 UTF8String];
    IMInsertStringsToXPCDictionary();

    [(IMTranscodeController *)self _insertSandboxExtensionIntoXPCMessage:v8 withKey:@"read-extension" forFileURL:v6 readOnly:1, v16, 0];
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
    v22 = v6;
    v25 = v28;
    v10 = v7;
    v23 = v10;
    v11 = MEMORY[0x259C1BC50](v21);
    v12 = [(IMTranscodeController *)self maxTimeForTranscriptionInSeconds];
    connection = self->_connection;
    v14 = im_primary_queue();
    xpc_connection_send_message_with_reply(connection, v8, v14, v11);

    v15 = dispatch_time(0, 1000000000 * v12);
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