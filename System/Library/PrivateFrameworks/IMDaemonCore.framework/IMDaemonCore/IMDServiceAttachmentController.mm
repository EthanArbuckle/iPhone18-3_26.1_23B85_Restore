@interface IMDServiceAttachmentController
- (BOOL)_receiveFileTransfer:(id)transfer transferID:(id)d balloonBundleID:(id)iD senderContext:(id)context progressBlock:(id)block completionBlock:(id)completionBlock;
- (BOOL)acceptFileTransfer:(id)transfer;
- (IMDServiceAttachmentController)initWithSession:(id)session;
- (IMDServiceSession)session;
- (void)_sendAttachmentToPeerDevice:(unint64_t)device fileTransferGUID:(id)d messageGuid:(id)guid fileURL:(id)l useLocalPeersFileAPI:(BOOL)i error:(int64_t)error;
- (void)remoteFileResponse:(id)response;
- (void)remotefileRequest:(id)request attempts:(int64_t)attempts shouldRetry:(BOOL)retry;
- (void)retrieveLocalFileTransfer:(id)transfer attachmentIndex:(unint64_t)index path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature decryptionKey:(id)key requestedSize:(id)self0 fileSize:(unint64_t)self1 progressBlock:(id)self2 completionBlock:(id)self3;
@end

@implementation IMDServiceAttachmentController

- (IMDServiceAttachmentController)initWithSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = IMDServiceAttachmentController;
  v5 = [(IMDServiceAttachmentController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
  }

  return v6;
}

- (BOOL)acceptFileTransfer:(id)transfer
{
  v33 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  v5 = IMOSLoggingEnabled();
  if (transferCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = transferCopy;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Accepting file transfer: %@", buf, 0xCu);
      }
    }

    guid = [transferCopy guid];
    filename = [transferCopy filename];
    lastPathComponent = [filename lastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [defaultManager im_randomTemporaryFileURLWithFileName:lastPathComponent];

    v23 = v9 != 0;
    if (v9)
    {
      path = [v9 path];
      v11 = +[IMDFileTransferCenter sharedInstance];
      hasLocalDevice = [(IMDServiceAttachmentController *)self hasLocalDevice];
      v13 = +[IMDStickerRegistry sharedInstance];
      stickerUserInfo = [transferCopy stickerUserInfo];
      isAdaptiveImageGlyph = [transferCopy isAdaptiveImageGlyph];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_22B56BAF0;
      v24[3] = &unk_278704BF0;
      v25 = transferCopy;
      v26 = v11;
      v30 = hasLocalDevice;
      v27 = path;
      v28 = guid;
      selfCopy = self;
      v16 = path;
      v17 = v11;
      [v13 retrieveStickerWithProperties:stickerUserInfo isAdaptiveImageGlyph:isAdaptiveImageGlyph completionBlock:v24];
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D26B4();
      }
    }
  }

  else
  {
    if (v5)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Not accepting, empty transfer supplied", buf, 2u);
      }
    }

    v23 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)_receiveFileTransfer:(id)transfer transferID:(id)d balloonBundleID:(id)iD senderContext:(id)context progressBlock:(id)block completionBlock:(id)completionBlock
{
  v112 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if (![mEMORY[0x277D19268] isInternalInstall])
  {

LABEL_8:
    userInfo = [transferCopy userInfo];
    v54 = [userInfo objectForKey:*MEMORY[0x277D19EC0]];
    originalFilename = [transferCopy originalFilename];
    lastPathComponent = [originalFilename lastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v59 = [defaultManager im_randomTemporaryFileURLWithFileName:lastPathComponent];

    if (!v59)
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D27D8();
      }

      if (completionBlockCopy)
      {
        v53 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.AttachmentControllerErrorDomain" code:3 userInfo:0];
        (*(completionBlockCopy + 2))(completionBlockCopy, dCopy, 0, 0, 0, v53, 0, 0.0, 0.0);
        v19 = 0;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_54;
    }

    if ([*MEMORY[0x277D1A608] isEqualToString:v54])
    {
      guid = [userInfo objectForKey:*MEMORY[0x277D19EB8]];
      v22 = [userInfo objectForKey:*MEMORY[0x277D19E98]];
      v23 = [v22 objectForKey:*MEMORY[0x277D19EE0]];
      v24 = [MEMORY[0x277CBEBC0] URLWithString:v23];
      v25 = [v22 objectForKeyedSubscript:*MEMORY[0x277D19E90]];
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Attempting download from RCS", buf, 2u);
        }
      }

      thumbnailMode = [transferCopy thumbnailMode];
      if (thumbnailMode)
      {
        [transferCopy setThumbnailMode:2];
      }

      mEMORY[0x277D1ADE8] = [MEMORY[0x277D1ADE8] sharedInstance];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = sub_22B56DAC4;
      v94[3] = &unk_278704C40;
      v95 = transferCopy;
      v96 = iDCopy;
      v97 = contextCopy;
      v100 = completionBlockCopy;
      v101 = thumbnailMode;
      selfCopy = self;
      v99 = dCopy;
      [mEMORY[0x277D1ADE8] downloadRCSTransferOnSimID:guid transferURL:v24 destURL:v59 cryptoMaterial:v25 completion:v94];

      v19 = 1;
      goto LABEL_53;
    }

    guid = [transferCopy guid];
    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = sub_22B4D7690;
    v92 = sub_22B4D78A0;
    v93 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = sub_22B4D7690;
    v86 = sub_22B4D78A0;
    v87 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = sub_22B4D7690;
    v80 = sub_22B4D78A0;
    v81 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = sub_22B4D7690;
    v74 = sub_22B4D78A0;
    v75 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = sub_22B4D7690;
    v68 = sub_22B4D78A0;
    v69 = 0;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_22B56E220;
    v63[3] = &unk_278704C68;
    v63[4] = &v88;
    v63[5] = &v82;
    v63[6] = &v76;
    v63[7] = &v70;
    v63[8] = &v64;
    [userInfo __message_defaultFileTransferEnforceMaxFileSize:1 withCompletion:v63];
    v30 = v89[5];
    v19 = v30 != 0;
    if (v30)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = v83[5];
          *buf = 138412290;
          v103 = v32;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " => Settled on signature: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v103 = transferCopy;
          _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, " transfer: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v103 = userInfo;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "    user info: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = v89[5];
          v37 = v77[5];
          v38 = v83[5];
          v39 = v65[5];
          v40 = v71[5];
          *buf = 138413314;
          v103 = v36;
          v104 = 2112;
          v105 = v37;
          v106 = 2112;
          v107 = v38;
          v108 = 2112;
          v109 = v39;
          v110 = 2112;
          v111 = v40;
          _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, " urlString: %@   owner: %@    signature: %@  key: %@  fileSizeString: %@", buf, 0x34u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Attempting download from MMCS", buf, 2u);
        }
      }

      mEMORY[0x277D1ADF8] = [MEMORY[0x277D1ADF8] sharedInstance];
      path = [v59 path];
      v44 = v89[5];
      v45 = v77[5];
      _FTDataFromHexString = [v83[5] _FTDataFromHexString];
      _FTDataFromHexString2 = [v65[5] _FTDataFromHexString];
      integerValue = [v71[5] integerValue];
      [mEMORY[0x277D1ADF8] receiveFileTransfer:dCopy transferGUID:guid topic:*MEMORY[0x277D186B0] path:path requestURLString:v44 ownerID:v45 signature:_FTDataFromHexString decryptionKey:_FTDataFromHexString2 fileSize:integerValue balloonBundleID:iDCopy senderContext:contextCopy progressBlock:blockCopy completionBlock:completionBlockCopy];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, " => No signature found, nothing to download here", buf, 2u);
        }
      }

      if (!completionBlockCopy)
      {
        goto LABEL_52;
      }

      mEMORY[0x277D1ADF8] = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.AttachmentControllerErrorDomain" code:2 userInfo:0];
      (*(completionBlockCopy + 2))(completionBlockCopy, dCopy, 0, 0, 0, mEMORY[0x277D1ADF8], 0, 0.0, 0.0);
    }

LABEL_52:
    _Block_object_dispose(&v64, 8);

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v76, 8);

    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v88, 8);

LABEL_53:
LABEL_54:

    goto LABEL_56;
  }

  v17 = IMGetCachedDomainBoolForKey();

  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D2840();
  }

  if (completionBlockCopy)
  {
    v61 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.AttachmentControllerErrorDomain" code:15 userInfo:0];
    (*(completionBlockCopy + 2))(completionBlockCopy, dCopy, 0, 0, 0, v61, 0, 0.0, 0.0);
    v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_56:

  v50 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)retrieveLocalFileTransfer:(id)transfer attachmentIndex:(unint64_t)index path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature decryptionKey:(id)key requestedSize:(id)self0 fileSize:(unint64_t)self1 progressBlock:(id)self2 completionBlock:(id)self3
{
  v52 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  pathCopy = path;
  stringCopy = string;
  dCopy = d;
  signatureCopy = signature;
  keyCopy = key;
  sizeCopy = size;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (index == 0x7FFFFFFFFFFFFFFFLL || ![transferCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v51 = index;
        *&v51[4] = 2112;
        *&v51[6] = transferCopy;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Trying to retrieve attachment at index: %u for transfer ID: %@, failing", buf, 0x12u);
      }
    }

    (*(completionBlockCopy + 2))(completionBlockCopy, transferCopy, index, 0, 0, 0, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v51 = transferCopy;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, " Requesting file attachments for transfer %@", buf, 0xCu);
      }
    }

    v49[0] = transferCopy;
    v48[0] = IMDRelayLocalMessageDictionaryGUIDKey;
    v48[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v49[1] = v24;
    v48[2] = IMDRelayLocalMessageDictionarySupportsDirectMMCSDownloadKey;
    v49[2] = MEMORY[0x277CBEC38];
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];

    v46[0] = IMDRelayLocalMessageDictionaryTypeKey;
    v46[1] = IMDRelayLocalMessageDictionaryDictKey;
    v47[0] = IMDRelayLocalMessageTypeRemoteFileRequest;
    v47[1] = v36;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
    if ([(IMDServiceAttachmentController *)self sendToLocalPeers:v25])
    {
      if (!qword_27D8CFE30)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v27 = qword_27D8CFE30;
        qword_27D8CFE30 = Mutable;
      }

      index = [transferCopy stringByAppendingFormat:@"_%lu", index];
      v29 = qword_27D8CFE30;
      v30 = _Block_copy(completionBlockCopy);
      [v29 setObject:v30 forKey:index];

      v31 = dispatch_time(0, 600000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B56E938;
      block[3] = &unk_278703DE8;
      v43 = index;
      v44 = transferCopy;
      indexCopy = index;
      v32 = index;
      dispatch_after(v31, MEMORY[0x277D85CD0], block);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v51 = transferCopy;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, " Failed to send message to local device for Transfer %@, Failing", buf, 0xCu);
        }
      }

      (*(completionBlockCopy + 2))(completionBlockCopy, transferCopy, index, 0, 0, 0, 0);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)remoteFileResponse:(id)response
{
  v34 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = responseCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, " Incomming response for file attachment %@ ", buf, 0xCu);
    }
  }

  v5 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  v6 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryAttachmentIndexKey];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryFileDataKey];
  v9 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryFilePathKey];
  v10 = [responseCopy objectForKeyedSubscript:@"error-code"];
  integerValue = [v10 integerValue];

  v12 = 0;
  if (integerValue)
  {
    v13 = integerValue == 5;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (integerValue && integerValue != 5)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D1A480] code:integerValue userInfo:0];
  }

  if ([v5 length])
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v8 length];
        *buf = 138413058;
        v27 = v5;
        v28 = 2048;
        v29 = unsignedIntegerValue;
        v30 = 2048;
        v31 = v16;
        v32 = 2048;
        v33 = integerValue;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, " Incomming response for message %@ attachmentIndex %lu data of length %lu errorCode %lu", buf, 0x2Au);
      }
    }

    v17 = [v5 stringByAppendingFormat:@"_%lu", unsignedIntegerValue];
    v18 = [qword_27D8CFE30 objectForKey:v17];
    v19 = IMOSLoggingEnabled();
    if (v18)
    {
      if (v19)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, " Found completion block for attachment", buf, 2u);
        }
      }

      (v18)[2](v18, v5, unsignedIntegerValue, v9, v8, v14, v12);
      [qword_27D8CFE30 removeObjectForKey:v17];
    }

    else
    {
      if (v19)
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v17;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, " No completion block for attachment found: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          allKeys = [qword_27D8CFE30 allKeys];
          *buf = 138412290;
          v27 = allKeys;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "     In list of blocks: %@", buf, 0xCu);
        }
      }
    }

    if (![qword_27D8CFE30 count])
    {
      v24 = qword_27D8CFE30;
      qword_27D8CFE30 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_sendAttachmentToPeerDevice:(unint64_t)device fileTransferGUID:(id)d messageGuid:(id)guid fileURL:(id)l useLocalPeersFileAPI:(BOOL)i error:(int64_t)error
{
  iCopy = i;
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  guidCopy = guid;
  lCopy = l;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v39 = dCopy;
      v40 = 2048;
      errorCopy = error;
      v42 = 2112;
      v43 = lCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Forwarding Attachment with guid %@ to local peer. Error: %lu. fileURL %@", buf, 0x20u);
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v17 = [defaultManager attributesOfItemAtPath:path error:0];

  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
  longValue = [v18 longValue];

  v20 = longValue > 0x100000 || iCopy;
  if (v20)
  {
    [MEMORY[0x277CBEA90] data];
  }

  else
  {
    [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];
  }
  v21 = ;
  v37[0] = guidCopy;
  v36[0] = IMDRelayLocalMessageDictionaryGUIDKey;
  v36[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:device];
  v37[1] = v22;
  v36[2] = IMDRelayLocalMessageDictionaryFileDataKey;
  data = v21;
  if (!v21)
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  v37[2] = data;
  v36[3] = @"error-code";
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:error];
  v37[3] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];

  if (!v21)
  {
  }

  v34[0] = IMDRelayLocalMessageDictionaryDictKey;
  v34[1] = IMDRelayLocalMessageDictionaryTypeKey;
  v35[0] = v25;
  v35[1] = IMDRelayLocalMessageTypeRemoteFileResponse;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  if (v20)
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Sending attachment with file url api", buf, 2u);
      }
    }

    [(IMDServiceAttachmentController *)self sendToLocalPeersFile:lCopy dictionary:v26];
  }

  else
  {
    localDeviceProductVersion = [(IMDServiceAttachmentController *)self localDeviceProductVersion];
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = localDeviceProductVersion;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Using legacy api to send attachment running on product version: %@", buf, 0xCu);
      }
    }

    [(IMDServiceAttachmentController *)self sendToLocalPeers:v26];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)remotefileRequest:(id)request attempts:(int64_t)attempts shouldRetry:(BOOL)retry
{
  retryCopy = retry;
  v117 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v9 = [requestCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  v10 = [requestCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryAttachmentIndexKey];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v11 = [requestCopy objectForKeyedSubscript:@"send-file-url"];
  bOOLValue = [v11 BOOLValue];

  v114 = bOOLValue;
  v13 = [requestCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionarySupportsDirectMMCSDownloadKey];
  bOOLValue2 = [v13 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (retryCopy)
      {
        v16 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Attempting to locate message with Message Guid %@ shouldRetry %@", buf, 0x16u);
    }
  }

  v17 = +[IMDMessageStore sharedInstance];
  v18 = [v17 itemWithGUID:v9];

  if (!v18)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Unable To locate Message with GUID %@, adding to pending requests to retry later", buf, 0xCu);
      }
    }

    pendingRemoteFileRequests = [(IMDServiceAttachmentController *)self pendingRemoteFileRequests];
    if (!pendingRemoteFileRequests)
    {
      pendingRemoteFileRequests = [MEMORY[0x277CBEB58] set];
      [(IMDServiceAttachmentController *)self setPendingRemoteFileRequests:pendingRemoteFileRequests];
    }

    [pendingRemoteFileRequests addObject:requestCopy];
    if (retryCopy)
    {
      if (attempts <= 39)
      {
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v9;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Message with Guid  is not found %@, Retrying it a bit ", buf, 0xCu);
          }
        }

        v87 = requestCopy;
        im_dispatch_after();

        goto LABEL_85;
      }

      if (IMOSLoggingEnabled())
      {
        v61 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_22B4CC000, v61, OS_LOG_TYPE_INFO, "Message with Guid is not found %@, No retried remain ", buf, 0xCu);
        }
      }
    }

    v57 = 1;
    goto LABEL_130;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Located Mesage with Message Guid %@", buf, 0xCu);
    }
  }

  pendingRemoteFileRequests2 = [(IMDServiceAttachmentController *)self pendingRemoteFileRequests];
  [pendingRemoteFileRequests2 removeObject:requestCopy];

  pendingRemoteFileRequests3 = [(IMDServiceAttachmentController *)self pendingRemoteFileRequests];
  v22 = [pendingRemoteFileRequests3 count] == 0;

  if (v22)
  {
    [(IMDServiceAttachmentController *)self setPendingRemoteFileRequests:0];
  }

  if (![v18 type])
  {
    pendingRemoteFileRequests = v18;
    if ([pendingRemoteFileRequests isFinished])
    {
      goto LABEL_30;
    }

    if (attempts > 39)
    {
      if (IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "Message with Guid is unfinished %@, No retried remain ", buf, 0xCu);
        }
      }

      v57 = 2;
      goto LABEL_130;
    }

    if (IMOSLoggingEnabled())
    {
      v60 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "Message with Guid  is unfinished %@, Retrying it a bit ", buf, 0xCu);
      }
    }

    v104 = MEMORY[0x277D85DD0];
    v105 = 3221225472;
    v106 = sub_22B5707C4;
    v107 = &unk_278703DE8;
    selfCopy = self;
    v109 = requestCopy;
    attemptsCopy = attempts;
    im_dispatch_after();

LABEL_85:
    v57 = 0;
    goto LABEL_130;
  }

  pendingRemoteFileRequests = 0;
LABEL_30:
  fileTransferGUIDs = [v18 fileTransferGUIDs];

  if (!fileTransferGUIDs)
  {
    v57 = 3;
    goto LABEL_130;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Located message with guid %@ attachments,  ", buf, 0xCu);
    }
  }

  fileTransferGUIDs2 = [v18 fileTransferGUIDs];
  v29 = unsignedIntegerValue < [fileTransferGUIDs2 count];

  if (v29)
  {
    fileTransferGUIDs3 = [v18 fileTransferGUIDs];
    v84 = [fileTransferGUIDs3 objectAtIndex:unsignedIntegerValue];

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v84;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Attempting to locate file transfer with guid %@ ", buf, 0xCu);
      }
    }

    v32 = +[IMDFileTransferCenter sharedInstance];
    v85 = [v32 transferForGUID:v84];

    if (!v85)
    {
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Transfer not found in transfer center, checking attachment store", buf, 2u);
        }
      }

      v34 = +[IMDAttachmentStore sharedInstance];
      v85 = [v34 attachmentWithGUID:v84];

      if (!v85)
      {
        if (IMOSLoggingEnabled())
        {
          v72 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v9;
            *&buf[12] = 2112;
            *&buf[14] = v84;
            _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_INFO, "Did not find file transfer for message GUID %@ transfer guid %@", buf, 0x16u);
          }
        }

        v57 = 3;

        goto LABEL_129;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v84;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Located Transfer with Guid %@ ", buf, 0xCu);
      }
    }

    if (![v85 isFinished])
    {
      if (attempts > 39)
      {
        if (IMOSLoggingEnabled())
        {
          v64 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v84;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_INFO, "Transfer Guid %@ for Message with %@ is not yet complete, no retries remain ", buf, 0x16u);
          }
        }

        v57 = 4;
        goto LABEL_128;
      }

      if (IMOSLoggingEnabled())
      {
        v62 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v84;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_INFO, "Transfer Guid %@ for Message with %@ is not yet complete, Retrying it a bit ", buf, 0x16u);
        }
      }

      v88 = requestCopy;
      im_dispatch_after();

LABEL_127:
      v57 = 0;
LABEL_128:

LABEL_129:
      goto LABEL_130;
    }

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v84;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Located Completed transfer with %@ ", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Attempting to transcode attachment for peer relay", buf, 2u);
      }
    }

    v38 = +[IMDChatStore sharedInstance];
    v39 = [v38 chatsGUIDsForMessageWithGUID:v9];
    lastObject = [v39 lastObject];

    v40 = +[IMDChatStore sharedInstance];
    v82 = [v40 chatWithGUID:lastObject];

    isFiltered = [v82 isFiltered];
    v42 = bOOLValue2 ^ 1u;
    if ((isFiltered == 0) | (bOOLValue2 ^ 1) & 1)
    {
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = [MEMORY[0x277CCABB0] numberWithBool:isFiltered == 0];
          v45 = [MEMORY[0x277CCABB0] numberWithBool:v42];
          *buf = 138412546;
          *&buf[4] = v44;
          *&buf[12] = 2112;
          *&buf[14] = v45;
          _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Attempting to transcode attachment for peer relay, this is a known sender (%@) or old watch (%@)", buf, 0x16u);
        }
      }

      type = [v85 type];
      transcoderUserInfo = [v85 transcoderUserInfo];
      Mutable = [transcoderUserInfo mutableCopy];

      if (UTTypeConformsTo(type, *MEMORY[0x277CC2020]))
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        }

        if (IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Found an a/v type, adding transcoder options to remove alpha and check for hevc+alpha", buf, 2u);
          }
        }

        v50 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [(__CFDictionary *)Mutable setObject:v50 forKey:*MEMORY[0x277D19DD8]];

        v51 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [(__CFDictionary *)Mutable setObject:v51 forKey:*MEMORY[0x277D19DA0]];
      }

      v81 = Mutable;
      v52 = type;
      v79 = [IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:v85 isSending:1];
      v80 = +[IMDAttachmentUtilities messageAttachmentSendableUTIs];
      mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
      localURL = [v85 localURL];
      isSticker = [v85 isSticker];
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = sub_22B5707DC;
      v97[3] = &unk_278704C90;
      v98 = v85;
      selfCopy2 = self;
      v102 = &v111;
      v103 = unsignedIntegerValue;
      v100 = v84;
      v101 = v9;
      LOBYTE(v78) = v79;
      [mEMORY[0x277D1ADE0] transcodeFileTransferContents:localURL utiType:v52 isSticker:isSticker allowUnfilteredUTIs:v80 target:0 sizes:&unk_283F4EE10 commonCapabilities:0 maxDimension:-1 transcoderUserInfo:v81 representations:0 isLQMEnabled:v78 completionBlock:v97];

      v56 = v52;
      goto LABEL_126;
    }

    type2 = [v85 type];
    v66 = type2 == 0;

    if (v66)
    {
      goto LABEL_136;
    }

    v67 = MEMORY[0x277CE1CB8];
    type3 = [v85 type];
    v56 = [v67 typeWithIdentifier:type3];

    if ([v56 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      localURL2 = [v85 localURL];
      v70 = IMFileURLIsActuallyAnimated();

      if ((v70 & 1) == 0)
      {
        v116 = 0;
        memset(buf, 0, sizeof(buf));
        IMPreviewConstraintsZero();
        *buf = xmmword_22B7F85A0;
        *&buf[16] = xmmword_22B7F85B0;
        LOBYTE(v116) = [v85 isSticker];
        BYTE2(v116) = [v85 isAdaptiveImageGlyph];
        BYTE1(v116) = 0;
        mEMORY[0x277D1ADE0]2 = [MEMORY[0x277D1ADE0] sharedInstance];
        localURL3 = [v85 localURL];
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = sub_22B570CE4;
        v91[3] = &unk_278704CB8;
        v91[4] = self;
        v96 = unsignedIntegerValue;
        v92 = v84;
        v93 = v9;
        v95 = &v111;
        v94 = v85;
        v89[0] = *buf;
        v89[1] = *&buf[16];
        v90 = v116;
        [mEMORY[0x277D1ADE0]2 generateSafeRender:localURL3 constraints:v89 completionBlock:v91];

        goto LABEL_126;
      }
    }

    if (!v56)
    {
LABEL_136:
      if (IMOSLoggingEnabled())
      {
        v73 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "File safe render failed for Peer Relay because the filetype was not found", buf, 2u);
        }
      }

      v56 = 0;
    }

    else if (IMOSLoggingEnabled())
    {
      v71 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v56;
        _os_log_impl(&dword_22B4CC000, v71, OS_LOG_TYPE_INFO, "File safe render failed for Peer Relay because the filetype was not supported: %@", buf, 0xCu);
      }
    }

    localURL4 = [v85 localURL];
    [(IMDServiceAttachmentController *)self _sendAttachmentToPeerDevice:unsignedIntegerValue fileTransferGUID:v84 messageGuid:v9 fileURL:localURL4 useLocalPeersFileAPI:*(v112 + 24) error:5];

LABEL_126:
    goto LABEL_127;
  }

  if (IMOSLoggingEnabled())
  {
    v58 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      fileTransferGUIDs4 = [v18 fileTransferGUIDs];
      *buf = 134218242;
      *&buf[4] = unsignedIntegerValue;
      *&buf[12] = 2112;
      *&buf[14] = fileTransferGUIDs4;
      _os_log_impl(&dword_22B4CC000, v58, OS_LOG_TYPE_INFO, "Attachment index out of bounds. attachment index: %lu file transfer guids: %@", buf, 0x16u);
    }
  }

  v57 = 6;
LABEL_130:

  if (v57)
  {
    [(IMDServiceAttachmentController *)self _sendAttachmentToPeerDevice:unsignedIntegerValue fileTransferGUID:0 messageGuid:v9 fileURL:0 useLocalPeersFileAPI:*(v112 + 24) error:v57];
  }

  _Block_object_dispose(&v111, 8);
  v75 = *MEMORY[0x277D85DE8];
}

- (IMDServiceSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end