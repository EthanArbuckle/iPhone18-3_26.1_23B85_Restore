@interface IMDRelayAttachmentController
- (BOOL)shouldSendLowResolutionOnly;
- (IMDRelayAttachmentController)initWithSession:(id)session;
- (id)_existingStoredMessageWithCompletedTransfersForMessageGUID:(id)d;
- (id)_plainTextPartWithString:(id)string index:(int64_t)index;
- (int64_t)transcodeTargetType;
- (void)_sendFileURL:(id)l forMessageGUID:(id)d attachmentIndex:(int64_t)index;
- (void)_sizeLimitsForTransfer:(id)transfer bigSize:(unint64_t *)size smallSize:(unint64_t *)smallSize;
- (void)processAttachmentsForMessage:(id)message generateTextParts:(BOOL)parts lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d completionBlock:(id)block;
- (void)processAttachmentsForPeerRelayForMessage:(id)message lastAddressHandle:(id)handle lastAddressedSIMID:(id)d completionBlock:(id)block uploadFailureBlock:(id)failureBlock;
- (void)remoteFileResponse:(id)response;
- (void)remotefileRequest:(id)request attempts:(int64_t)attempts;
- (void)retrieveAttachmentsForMessage:(id)message ignoreStoredTransfers:(BOOL)transfers displayID:(id)d token:(id)token completionBlock:(id)block;
- (void)retrieveLocalFileTransfer:(id)transfer attachmentIndex:(unint64_t)index path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature decryptionKey:(id)key requestedSize:(id)self0 fileSize:(unint64_t)self1 progressBlock:(id)self2 completionBlock:(id)self3;
@end

@implementation IMDRelayAttachmentController

- (int64_t)transcodeTargetType
{
  session = [(IMDRelayAttachmentController *)self session];
  service = [session service];
  transcodeTarget = [service transcodeTarget];

  return transcodeTarget;
}

- (void)processAttachmentsForMessage:(id)message generateTextParts:(BOOL)parts lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d completionBlock:(id)block
{
  partsCopy = parts;
  v158 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  dCopy = d;
  blockCopy = block;
  group = dispatch_group_create();
  v106 = messageCopy;
  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v12 = [fileTransferGUIDs count];

  if (v12)
  {
    session = [(IMDRelayAttachmentController *)self session];
    v92 = [session maxSizePerAttachmentWithCount:v12 lastAddressedHandle:handleCopy lastAddressedSIMID:dCopy];
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "     There are no attachments to consider", buf, 2u);
    }

    v92 = 0;
  }

  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = 0;
  *buf = 0;
  v142 = buf;
  v143 = 0x3032000000;
  v144 = sub_22B4D7640;
  v145 = sub_22B4D7878;
  v146 = objc_alloc_init(MEMORY[0x277CBEB18]);
  body = [messageCopy body];
  v16 = IMLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v152 = 0;
    _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Enumerating parts in body", v152, 2u);
  }

  threadIdentifier = [messageCopy threadIdentifier];
  if ([threadIdentifier length])
  {
    v18 = partsCopy;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      guid = [messageCopy guid];
      *v152 = 138412290;
      v153 = guid;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Prepending reply compatibility text message part for message %@", v152, 0xCu);
    }

    v21 = IMSharedUtilitiesFrameworkBundle();
    v22 = [v21 localizedStringForKey:@"REPLIED_BACKWARD_COMPATIBILITY" value:&stru_283F23018 table:@"IMSharedUtilities"];

    v23 = -[IMDRelayAttachmentController _plainTextPartWithString:index:](self, "_plainTextPartWithString:index:", v22, [*(v142 + 5) count]);
    if (v23)
    {
      [*(v142 + 5) addObject:v23];
    }
  }

  v24 = +[IMDFileTransferCenter sharedInstance];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B5166A8;
  aBlock[3] = &unk_2787033A8;
  v83 = v24;
  v140 = v83;
  v25 = _Block_copy(aBlock);
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = [body length];
  v29 = *MEMORY[0x277D19160];
  v132[0] = MEMORY[0x277D85DD0];
  v132[1] = 3221225472;
  v132[2] = sub_22B5166B4;
  v132[3] = &unk_2787033F0;
  v133 = body;
  v137 = buf;
  v30 = v26;
  v134 = v30;
  v31 = v27;
  v32 = v30;
  v95 = v31;
  v135 = v31;
  v138 = partsCopy;
  v84 = v133;
  v85 = v25;
  v136 = v85;
  [v133 enumerateAttribute:v29 inRange:0 options:v28 usingBlock:{0, v132}];
  if (!partsCopy)
  {
    v128[0] = MEMORY[0x277D85DD0];
    v128[1] = 3221225472;
    v128[2] = sub_22B516B9C;
    v128[3] = &unk_278703418;
    v131 = buf;
    v129 = v30;
    v130 = v95;
    [v84 __im_enumerateAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v85 block:v128];
  }

  v33 = 0;
  v34 = 0;
  key = *MEMORY[0x277D1A7D8];
  v90 = *MEMORY[0x277D1A7E0];
  v88 = *MEMORY[0x277D19E80];
  v89 = *MEMORY[0x277D1ADD8];
  while (v33 < [v32 count])
  {
    v35 = [v32 objectAtIndexedSubscript:v33];
    integerValue = [v35 integerValue];

    v36 = [v95 objectAtIndexedSubscript:v33];
    v37 = +[IMDFileTransferCenter sharedInstance];
    v38 = [v37 transferForGUID:v36];
    [v37 startTransfer:v36];
    [v37 endTransfer:v36];
    accountID = [v106 accountID];
    handle = [v106 handle];
    if (handle)
    {
      handle2 = [v106 handle];
      v41 = handle2;
    }

    else
    {
      v41 = 0;
    }

    [v37 assignTransfer:v36 toAccount:accountID otherPerson:v41];
    if (handle)
    {
    }

    localPath = [v38 localPath];
    type = [v38 type];
    v42 = IMLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *v152 = 138412290;
      v153 = localPath;
      _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Found path for attachment part: %@", v152, 0xCu);
    }

    v103 = [localPath length];
    if (v103)
    {
      dispatch_group_enter(group);
      v109 = [MEMORY[0x277CBEBC0] fileURLWithPath:localPath];
      pathExtension = [v109 pathExtension];
      if ([pathExtension length])
      {
        v97 = pathExtension;
      }

      else
      {
        defaultHFSFileManager = [MEMORY[0x277D19250] defaultHFSFileManager];
        type2 = [v38 type];
        v47 = [defaultHFSFileManager pathExtensionForUTIType:type2];

        if ([v47 length])
        {
          v48 = v47;
        }

        else
        {
          defaultHFSFileManager2 = [MEMORY[0x277D19250] defaultHFSFileManager];
          mimeType = [v38 mimeType];
          v51 = [defaultHFSFileManager2 pathExtensionForMIMEType:mimeType];

          v48 = v51;
        }

        v97 = v48;
        if ([v48 length])
        {
          absoluteString = [v109 absoluteString];
          stringByDeletingPathExtension = [absoluteString stringByDeletingPathExtension];

          v54 = [stringByDeletingPathExtension stringByAppendingPathExtension:v97];

          if ([v54 length])
          {
            v55 = [MEMORY[0x277CBEBC0] fileURLWithPath:v54];

            v109 = v55;
          }
        }
      }

      if (v109)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v57 = [defaultManager im_generateCopyForURL:v109];
      }

      else
      {
        v57 = 0;
      }

      transcoderUserInfo = [v38 transcoderUserInfo];
      theDict = [transcoderUserInfo mutableCopy];

      if (!theDict)
      {
        theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v59 = handleCopy;
      if (handleCopy)
      {
        CFDictionarySetValue(theDict, key, v59);
      }

      v60 = dCopy;
      if (dCopy)
      {
        CFDictionarySetValue(theDict, v90, v60);
      }

      v104 = v38;
      v100 = v37;
      v101 = v36;
      if ([v38 isAdaptiveImageGlyph])
      {
        CFDictionarySetValue(theDict, v88, MEMORY[0x277CBEC38]);
      }

      v61 = v109;
      if (v57)
      {
        v61 = v57;
      }

      v62 = v61;
      v63 = [MEMORY[0x277CCABB0] numberWithLongLong:v92];
      v151 = v63;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v151 count:1];

      mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
      isSticker = [v38 isSticker];
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"public.3gpp", @"public.3gp", @"public.png", @"public.jpg", @"public.jpeg", 0}];
      transcodeTargetType = [(IMDRelayAttachmentController *)self transcodeTargetType];
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = sub_22B516C54;
      v115[3] = &unk_278703440;
      v69 = v62;
      v116 = v69;
      v70 = v64;
      v117 = v70;
      v71 = v33;
      v72 = v32;
      v73 = type;
      v118 = v73;
      v74 = v104;
      v127 = integerValue;
      v119 = v74;
      v125 = buf;
      v120 = v100;
      v121 = v101;
      v122 = v106;
      v126 = &v147;
      v75 = v57;
      v123 = v75;
      v124 = group;
      LOBYTE(v82) = 0;
      v76 = v73;
      v32 = v72;
      v33 = v71;
      [mEMORY[0x277D1ADE0] transcodeFileTransferContents:v69 utiType:v76 isSticker:isSticker allowUnfilteredUTIs:v67 target:transcodeTargetType sizes:v70 commonCapabilities:0 maxDimension:-1 transcoderUserInfo:theDict representations:0 isLQMEnabled:v82 completionBlock:v115];

      v37 = v100;
      v36 = v101;
      v38 = v104;

      v34 = 1;
    }

    else
    {
      *(v148 + 24) = 1;
      v109 = [MEMORY[0x277CCA9B8] errorWithDomain:v89 code:-2 userInfo:0];
      v44 = IMLogHandleForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v152 = 138412802;
        v153 = localPath;
        v154 = 2112;
        v155 = v38;
        v156 = 2112;
        v157 = v109;
        _os_log_error_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_ERROR, "Invalid path %@ for file transfer: %@   error: %@", v152, 0x20u);
      }

      [v37 failTransfer:v36 error:v109];
    }

    ++v33;
    if (!v103)
    {
      goto LABEL_70;
    }
  }

  expressiveSendStyleID = [v106 expressiveSendStyleID];
  if ([expressiveSendStyleID length] && objc_msgSend(*(v142 + 5), "count"))
  {

    if (!partsCopy)
    {
      goto LABEL_66;
    }

    v78 = IMLogHandleForCategory();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      guid2 = [v106 guid];
      *v152 = 138412290;
      v153 = guid2;
      _os_log_impl(&dword_22B4CC000, v78, OS_LOG_TYPE_INFO, "Appending expressive send style message part for message %@", v152, 0xCu);
    }

    expressiveSendStyleID = [v106 _localizedBackwardsCompatibleExpressiveSendText];
    v80 = -[IMDRelayAttachmentController _plainTextPartWithString:index:](self, "_plainTextPartWithString:index:", expressiveSendStyleID, [*(v142 + 5) count]);
    if (v80)
    {
      [*(v142 + 5) addObject:v80];
    }
  }

LABEL_66:
  if (v34)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B517A14;
    block[3] = &unk_278703468;
    v111 = v106;
    v113 = &v147;
    v112 = blockCopy;
    v114 = buf;
    dispatch_group_notify(group, MEMORY[0x277D85CD0], block);
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, v106, (v148[3] & 1) == 0, *(v142 + 5), 0);
  }

LABEL_70:

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v147, 8);

  v81 = *MEMORY[0x277D85DE8];
}

- (id)_plainTextPartWithString:(id)string index:(int64_t)index
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    CFDictionarySetValue(v6, @"Type", @"text/plain");
    v7 = [stringCopy dataUsingEncoding:4];
    if (v7)
    {
      CFDictionarySetValue(v6, @"Data", v7);
    }

    if (@"text")
    {
      CFDictionarySetValue(v6, @"Tag", @"text");
    }

    index = [MEMORY[0x277CCACA8] stringWithFormat:@"text_%d.txt", index];
    if (index)
    {
      CFDictionarySetValue(v6, @"Path", index);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IMDRelayAttachmentController)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = IMDRelayAttachmentController;
  v6 = [(IMDRelayAttachmentController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (BOOL)shouldSendLowResolutionOnly
{
  if (+[IMDAttachmentUtilities _isNetworkUltraConstrained])
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Low resolution only because network is ultra constrained", v4, 2u);
    }

    return 1;
  }

  else
  {

    return MEMORY[0x2821737E8]();
  }
}

- (void)_sizeLimitsForTransfer:(id)transfer bigSize:(unint64_t *)size smallSize:(unint64_t *)smallSize
{
  type = [transfer type];
  v5 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  IMiMessageSizeLimitsForTransferType();
}

- (void)processAttachmentsForPeerRelayForMessage:(id)message lastAddressHandle:(id)handle lastAddressedSIMID:(id)d completionBlock:(id)block uploadFailureBlock:(id)failureBlock
{
  v88 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  dCopy = d;
  blockCopy = block;
  failureBlockCopy = failureBlock;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "AttachmentController: Told To Transcode and upload Parts of a Message to MMCS ", buf, 2u);
    }
  }

  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  if ([fileTransferGUIDs count])
  {
    fileTransferGUIDs2 = [messageCopy fileTransferGUIDs];
    v14 = [fileTransferGUIDs2 count];

    session = [(IMDRelayAttachmentController *)self session];
    v41 = [session maxSizePerAttachmentWithCount:v14 lastAddressedHandle:handleCopy lastAddressedSIMID:dCopy];

    v16 = +[IMDFileTransferCenter sharedInstance];
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 1;
    v75 = 0;
    v76 = &v75;
    v77 = 0x2020000000;
    v78 = 0;
    group = dispatch_group_create();
    v42 = objc_alloc_init(MEMORY[0x277CCA9E8]);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = fileTransferGUIDs;
    v17 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
    if (v17)
    {
      v18 = 0;
      v45 = *v72;
      do
      {
        v46 = v17;
        for (i = 0; i != v46; ++i)
        {
          if (*v72 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v71 + 1) + 8 * i);
          v21 = [v16 transferForGUID:{v20, handleCopy}];
          if (v21)
          {
            dispatch_group_enter(group);
            [v21 _setNeedsWrapper:0];
            [v16 startTransfer:v20];
            [v16 endTransfer:v20];
            accountID = [messageCopy accountID];
            handle = [messageCopy handle];
            if (handle)
            {
              handle = [messageCopy handle];
              handleCopy2 = handle;
            }

            else
            {
              handleCopy2 = 0;
            }

            [v16 assignTransfer:v20 toAccount:accountID otherPerson:handleCopy2];
            if (handle)
            {
            }

            v69 = 0;
            v70 = 0;
            [(IMDRelayAttachmentController *)self _sizeLimitsForTransfer:v21 bigSize:&v70 smallSize:&v69];
            v26 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v70;
              *&buf[8] = 1024;
              *&buf[10] = v69;
              _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Big size: %d    Small Size: %d", buf, 0xEu);
            }

            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 3221225472;
            aBlock[2] = sub_22B536FE0;
            aBlock[3] = &unk_278703D20;
            v27 = v21;
            v58 = v27;
            selfCopy = self;
            v68 = v41;
            v60 = v16;
            v61 = v20;
            v66 = &v75;
            v67 = &v79;
            v62 = group;
            v65 = failureBlockCopy;
            v63 = messageCopy;
            v64 = v44;
            v28 = _Block_copy(aBlock);
            localURL = [v27 localURL];
            v56 = 0;
            [v42 coordinateReadingItemAtURL:localURL options:0 error:&v56 byAccessor:v28];
            v30 = v56;

            if (v30)
            {
              if (IMOSLoggingEnabled())
              {
                v31 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  localURL2 = [v27 localURL];
                  *buf = 138412546;
                  *&buf[4] = localURL2;
                  *&buf[12] = 2112;
                  *&buf[14] = v30;
                  _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Failed coordinated read of: %@  (Error: %@)", buf, 0x16u);
                }
              }

              localURL3 = [v27 localURL];
              v28[2](v28, localURL3);
            }

            v18 = 1;
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v25 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No transfer found for guid: %@", buf, 0xCu);
              }
            }

            *(v80 + 24) = 0;
            *(v76 + 6) = 34;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
      }

      while (v17);

      if (v18)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v84 = sub_22B4D7650;
        v85 = sub_22B4D7880;
        v86 = [objc_alloc(MEMORY[0x277D19290]) initWithIdentifier:@"OutgoingMessagesPowerAssertion" timeout:120.0];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B538CDC;
        block[3] = &unk_278703D48;
        v50 = obj;
        v53 = &v79;
        v52 = blockCopy;
        v51 = v44;
        v54 = &v75;
        v55 = buf;
        dispatch_group_notify(group, MEMORY[0x277D85CD0], block);

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
    }

    _Block_object_dispose(&v75, 8);
    _Block_object_dispose(&v79, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "AttachmentController: Told To Transcode but the message had no parts, don't wake me up. ", buf, 2u);
      }
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, v44, 1, 0);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)retrieveAttachmentsForMessage:(id)message ignoreStoredTransfers:(BOOL)transfers displayID:(id)d token:(id)token completionBlock:(id)block
{
  messageCopy = message;
  dCopy = d;
  tokenCopy = token;
  blockCopy = block;
  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v17 = [fileTransferGUIDs count];

  if (v17)
  {
    if (transfers)
    {
      v18 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "   Ignoring existing transfers.";
LABEL_15:
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    guid = [messageCopy guid];
    v21 = [(IMDRelayAttachmentController *)self _existingStoredMessageWithCompletedTransfersForMessageGUID:guid];

    v18 = IMAttachmentsLogHandle();
    v22 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!v21)
    {
      if (v22)
      {
        *buf = 0;
        v19 = "   We don't have all the attachments yet, we'll just re-download.";
        goto LABEL_15;
      }

LABEL_16:

      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Starting network availablity check...", buf, 2u);
        }
      }

      mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
      if ([mEMORY[0x277D192A8] isScreenLit])
      {
        v25 = 0;
      }

      else
      {
        v25 = 9;
      }

      *buf = 0;
      v38 = buf;
      v39 = 0x3032000000;
      v40 = sub_22B4D7650;
      v41 = sub_22B4D7880;
      v42 = 0;
      v26 = objc_alloc(MEMORY[0x277D19280]);
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = sub_22B539164;
      v32 = &unk_278703DC0;
      v36 = buf;
      v33 = messageCopy;
      v34 = dCopy;
      v35 = blockCopy;
      v27 = [v26 initWithFlags:3 options:v25 timeout:&v29 wifiTimeout:20.0 completionBlock:5.0];
      v28 = *(v38 + 5);
      *(v38 + 5) = v27;

      [*(v38 + 5) start];
      _Block_object_dispose(buf, 8);

      goto LABEL_24;
    }

    if (v22)
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "   We already have all these transfers, just moving along as a success!", buf, 2u);
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, v21, dCopy, 1, 0);
    }
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, messageCopy, dCopy, 1, 0);
  }

LABEL_24:
}

- (id)_existingStoredMessageWithCompletedTransfersForMessageGUID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messageWithGUID:dCopy];

  if (v5)
  {
    v28 = dCopy;
    v6 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Found already stored message: %@", buf, 0xCu);
    }

    fileTransferGUIDs = [v5 fileTransferGUIDs];
    v8 = [fileTransferGUIDs count];
    v9 = v8 != 0;

    v10 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v36) = v8 != 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "   ==> Has attachments present: %{BOOL}d", buf, 8u);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = v5;
    obj = [v5 fileTransferGUIDs];
    v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = +[IMDFileTransferCenter sharedInstance];
          v17 = [v16 transferForGUID:v15];

          if (!v17)
          {
            localURL = IMAttachmentsLogHandle();
            if (os_log_type_enabled(localURL, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v36 = v15;
              _os_log_impl(&dword_22B4CC000, localURL, OS_LOG_TYPE_DEFAULT, "   ==> Missing a transfer for guid: %@", buf, 0xCu);
            }

            goto LABEL_19;
          }

          localURL = [v17 localURL];
          if (!localURL || ([MEMORY[0x277CCAA00] defaultManager], v19 = objc_claimAutoreleasedReturnValue(), -[NSObject path](localURL, "path"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "fileExistsAtPath:", v20), v20, v19, (v21 & 1) == 0))
          {
            v22 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v36 = localURL;
              _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "   ==> Missing an attachment at path: %@", buf, 0xCu);
            }

LABEL_19:
            v9 = 0;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    v5 = v27;
    if (v9)
    {
      v23 = v27;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    dCopy = v28;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)retrieveLocalFileTransfer:(id)transfer attachmentIndex:(unint64_t)index path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature decryptionKey:(id)key requestedSize:(id)self0 fileSize:(unint64_t)self1 progressBlock:(id)self2 completionBlock:(id)self3
{
  v50 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  pathCopy = path;
  stringCopy = string;
  dCopy = d;
  signatureCopy = signature;
  keyCopy = key;
  sizeCopy = size;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = transferCopy;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, " Requesting file attachments for transfer %@", buf, 0xCu);
    }
  }

  v47[0] = transferCopy;
  v46[0] = IMDRelayLocalMessageDictionaryGUIDKey;
  v46[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v47[1] = v21;
  v46[2] = IMDRelayLocalMessageDictionarySupportsDirectMMCSDownloadKey;
  v47[2] = MEMORY[0x277CBEC38];
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];

  v23 = JWEncodeDictionary();
  _FTCopyGzippedData = [v23 _FTCopyGzippedData];
  v44[0] = IMDRelayLocalMessageDictionaryTypeKey;
  v44[1] = IMDRelayLocalMessageDictionaryDictKey;
  v45[0] = IMDRelayLocalMessageTypeRemoteFileRequest;
  v45[1] = _FTCopyGzippedData;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v26 = +[IMDRelayServiceController sharedInstance];
  v27 = [v26 sendToLocalPeers:v25];

  if (v27)
  {
    peerCompletionBlocks = self->_peerCompletionBlocks;
    if (!peerCompletionBlocks)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v31 = self->_peerCompletionBlocks;
      p_peerCompletionBlocks = &self->_peerCompletionBlocks;
      *p_peerCompletionBlocks = Mutable;

      peerCompletionBlocks = *p_peerCompletionBlocks;
    }

    v32 = _Block_copy(completionBlockCopy);
    index = [transferCopy stringByAppendingFormat:@"_%lu", index];
    [(NSMutableDictionary *)peerCompletionBlocks setObject:v32 forKey:index];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = transferCopy;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, " Failed to send message to local device for Transfer %@, Failing", buf, 0xCu);
      }
    }

    (*(completionBlockCopy + 2))(completionBlockCopy, transferCopy, index, 0, 0, 0, 0);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_sendFileURL:(id)l forMessageGUID:(id)d attachmentIndex:(int64_t)index
{
  v42 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v11 = [defaultManager attributesOfItemAtPath:path error:0];

  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
  longValue = [v12 longValue];

  if (longValue <= 0x100000)
  {
    [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];
  }

  else
  {
    [MEMORY[0x277CBEA90] data];
  }
  v14 = ;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v37 = dCopy;
      v38 = 2048;
      indexCopy = index;
      v40 = 2112;
      v41 = lCopy;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Forwarding Attachment (%@, %ld) to local peer. Filepath %@", buf, 0x20u);
    }
  }

  v35[0] = dCopy;
  v34[0] = IMDRelayLocalMessageDictionaryGUIDKey;
  v34[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v35[1] = v16;
  v34[2] = IMDRelayLocalMessageDictionaryFileDataKey;
  data = v14;
  if (!v14)
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  v35[2] = data;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  if (!v14)
  {
  }

  v19 = longValue > 0x100000;

  v20 = JWEncodeDictionary();
  _FTCopyGzippedData = [v20 _FTCopyGzippedData];
  v32[0] = IMDRelayLocalMessageDictionaryDictKey;
  v32[1] = IMDRelayLocalMessageDictionaryTypeKey;
  v33[0] = _FTCopyGzippedData;
  v33[1] = IMDRelayLocalMessageTypeRemoteFileResponse;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v23 = IMOSLoggingEnabled();
  if (v19)
  {
    if (v23)
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Sending attachment with file url api", buf, 2u);
      }
    }

    v25 = +[IMDRelayServiceController sharedInstance];
    [v25 sendFileToLocalPeers:lCopy metadata:v22];
  }

  else
  {
    if (v23)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Using legacy api to send attachment", buf, 2u);
      }
    }

    v27 = +[IMDRelayServiceController sharedInstance];
    v28 = [v27 sendToLocalPeers:v22];

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = @"NO";
        if (v28)
        {
          v30 = @"YES";
        }

        *buf = 138412290;
        v37 = v30;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Got success? %@", buf, 0xCu);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)remotefileRequest:(id)request attempts:(int64_t)attempts
{
  v80 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [requestCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  v8 = [requestCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryAttachmentIndexKey];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [requestCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionarySupportsDirectMMCSDownloadKey];
  bOOLValue = [v10 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = unsignedIntegerValue;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Attempting to locate message with Message Guid %@ and index %lu", buf, 0x16u);
    }
  }

  v13 = +[IMDMessageStore sharedInstance];
  v14 = [v13 messageWithGUID:v7];

  v15 = IMOSLoggingEnabled();
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_82;
    }

    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Unable To locate Message with GUID %@, adding to pending requests to retry later", buf, 0xCu);
    }

    goto LABEL_58;
  }

  if (v15)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Located Mesage with Message Guid %@", buf, 0xCu);
    }
  }

  pendingRemoteFileRequests = [(IMDRelayAttachmentController *)self pendingRemoteFileRequests];
  [pendingRemoteFileRequests removeObject:requestCopy];

  pendingRemoteFileRequests2 = [(IMDRelayAttachmentController *)self pendingRemoteFileRequests];
  v19 = [pendingRemoteFileRequests2 count] == 0;

  if (v19)
  {
    [(IMDRelayAttachmentController *)self setPendingRemoteFileRequests:0];
  }

  if ([v14 isFinished])
  {
    fileTransferGUIDs = [v14 fileTransferGUIDs];

    v21 = IMOSLoggingEnabled();
    if (fileTransferGUIDs)
    {
      if (v21)
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v7;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Located message with guid %@ attachments,  ", buf, 0xCu);
        }
      }

      fileTransferGUIDs2 = [v14 fileTransferGUIDs];
      v24 = unsignedIntegerValue < [fileTransferGUIDs2 count];

      if (v24)
      {
        fileTransferGUIDs3 = [v14 fileTransferGUIDs];
        v60 = [fileTransferGUIDs3 objectAtIndex:unsignedIntegerValue];

        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v60;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Attempting to locate file transfer with guid %@ ", buf, 0xCu);
          }
        }

        v27 = +[IMDFileTransferCenter sharedInstance];
        v28 = [v27 transferForGUID:v60];

        if (v28)
        {
          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v60;
              _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Located Transfer with Guid %@ ", buf, 0xCu);
            }
          }

          if ([v28 isFinished])
          {
            if (IMOSLoggingEnabled())
            {
              v30 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v60;
                _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Located Completed transfer with %@ ", buf, 0xCu);
              }
            }

            if (bOOLValue)
            {
              v31 = MEMORY[0x277CE1CB8];
              type = [v28 type];
              v33 = [v31 typeWithIdentifier:type];

              if ([v33 conformsToType:*MEMORY[0x277CE1DB0]] && (objc_msgSend(v28, "localURL"), v34 = objc_claimAutoreleasedReturnValue(), v35 = IMFileURLIsActuallyAnimated(), v34, (v35 & 1) == 0))
              {
                v79 = 0;
                memset(buf, 0, sizeof(buf));
                IMPreviewConstraintsZero();
                *buf = xmmword_22B7F85A0;
                *&buf[16] = xmmword_22B7F85B0;
                LOBYTE(v79) = [v28 isSticker];
                BYTE2(v79) = [v28 isAdaptiveImageGlyph];
                BYTE1(v79) = 0;
                mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
                localURL = [v28 localURL];
                v68[0] = MEMORY[0x277D85DD0];
                v68[1] = 3221225472;
                v68[2] = sub_22B53BC0C;
                v68[3] = &unk_278703E10;
                v68[4] = self;
                v69 = v14;
                v70 = unsignedIntegerValue;
                v66[0] = *buf;
                v66[1] = *&buf[16];
                v67 = v79;
                [mEMORY[0x277D1ADE0] generateSafeRender:localURL constraints:v66 completionBlock:v68];
              }

              else
              {
                if (IMOSLoggingEnabled())
                {
                  v36 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *&buf[4] = v33;
                    _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "File safe render failed for Peer Relay because the filetype was not supported: %@", buf, 0xCu);
                  }
                }

                localURL2 = [v28 localURL];
                guid = [v14 guid];
                [(IMDRelayAttachmentController *)self _sendFileURL:localURL2 forMessageGUID:guid attachmentIndex:unsignedIntegerValue];
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v47 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Request is from an old watch, so we need to transcode", buf, 2u);
                }
              }

              transcoderUserInfo = [v28 transcoderUserInfo];
              if ([v28 isAdaptiveImageGlyph])
              {
                if (transcoderUserInfo)
                {
                  v48 = [transcoderUserInfo mutableCopy];
                }

                else
                {
                  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
                }

                v49 = v48;
                [v48 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D19E80]];
                v50 = [v49 copy];

                transcoderUserInfo = v50;
              }

              v58 = +[IMDRelayTranscodeController sharedInstance];
              localURL3 = [v28 localURL];
              type2 = [v28 type];
              session = [(IMDRelayAttachmentController *)self session];
              service = [session service];
              transcodeTarget = [service transcodeTarget];
              isSticker = [v28 isSticker];
              v62[0] = MEMORY[0x277D85DD0];
              v62[1] = 3221225472;
              v62[2] = sub_22B53BDCC;
              v62[3] = &unk_278703E38;
              v63 = v60;
              v64 = v14;
              v65 = unsignedIntegerValue;
              [v58 transcodeFileTransferContents:localURL3 utiType:type2 target:transcodeTarget transcoderUserInfo:transcoderUserInfo isSticker:isSticker highQualityMaxByteSize:0x80000 lowQualityMaxByteSize:0x80000 representations:0 completionBlock:v62];
            }
          }

          else
          {
            v42 = IMOSLoggingEnabled();
            if (attempts >= 40)
            {
              if (v42)
              {
                v44 = OSLogHandleForIMEventCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  *&buf[4] = v60;
                  *&buf[12] = 2112;
                  *&buf[14] = v7;
                  _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Transfer Guid %@ for Message with %@ is not yet complete, no retries remain ", buf, 0x16u);
                }
              }
            }

            else
            {
              if (v42)
              {
                v43 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  *&buf[4] = v60;
                  *&buf[12] = 2112;
                  *&buf[14] = v7;
                  _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Transfer Guid %@ for Message with %@ is not yet complete, Retrying it a bit ", buf, 0x16u);
                }
              }

              v61 = requestCopy;
              im_dispatch_after();
            }
          }
        }
      }

      goto LABEL_82;
    }

    if (!v21)
    {
      goto LABEL_82;
    }

    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "We have the message but no transfer guids - %@", buf, 0xCu);
    }

LABEL_58:

    goto LABEL_82;
  }

  v40 = IMOSLoggingEnabled();
  if (attempts >= 40)
  {
    if (!v40)
    {
      goto LABEL_82;
    }

    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Message with Guid is unfinished %@, No retried remain ", buf, 0xCu);
    }

    goto LABEL_58;
  }

  if (v40)
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Message with Guid  is unfinished %@, Retrying it a bit ", buf, 0xCu);
    }
  }

  v71 = MEMORY[0x277D85DD0];
  v72 = 3221225472;
  v73 = sub_22B53BBF8;
  v74 = &unk_278703DE8;
  selfCopy = self;
  v76 = requestCopy;
  attemptsCopy = attempts;
  im_dispatch_after();

LABEL_82:
  v55 = *MEMORY[0x277D85DE8];
}

- (void)remoteFileResponse:(id)response
{
  v25 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = responseCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Received remote file response message %@", buf, 0xCu);
    }
  }

  v6 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  v7 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryAttachmentIndexKey];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryFilePathKey];
  v10 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryFileDataKey];
  if ([v6 length])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v22 = v6;
        v23 = 2048;
        v24 = unsignedIntegerValue;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, " Incomming response for message %@ attachment index %lu ", buf, 0x16u);
      }
    }

    v12 = [v6 stringByAppendingFormat:@"_%lu", unsignedIntegerValue];
    v13 = [(NSMutableDictionary *)self->_peerCompletionBlocks objectForKey:v12];
    v14 = IMOSLoggingEnabled();
    if (v13)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, " Found completion block for attachment", buf, 2u);
        }
      }

      (v13)[2](v13, v6, unsignedIntegerValue, v9, v10, 1, 0);
      [(NSMutableDictionary *)self->_peerCompletionBlocks removeObjectForKey:v12];
    }

    else
    {
      if (v14)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v22 = v12;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, " No completion block for attachment found: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          allKeys = [(NSMutableDictionary *)self->_peerCompletionBlocks allKeys];
          *buf = 138412290;
          v22 = allKeys;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "     In list of blocks: %@", buf, 0xCu);
        }
      }
    }

    if (![(NSMutableDictionary *)self->_peerCompletionBlocks count])
    {
      peerCompletionBlocks = self->_peerCompletionBlocks;
      self->_peerCompletionBlocks = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end