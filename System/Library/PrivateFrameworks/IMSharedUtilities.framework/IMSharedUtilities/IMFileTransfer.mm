@interface IMFileTransfer
+ (BOOL)_doesLocalURLRequireArchiving:(id)archiving;
+ (BOOL)canMarkPurgeableWithCKSyncState:(int64_t)state transferState:(int64_t)transferState isAudio:(BOOL)audio isSticker:(BOOL)sticker isGroupPhoto:(BOOL)photo isPluginPayload:(BOOL)payload isRichLink:(BOOL)link;
+ (BOOL)genmojiFileTransferShouldDisplayAsPermanentlyFailed:(id)failed;
+ (id)AuxGUIDFromFileTransferGUID:(id)d;
+ (id)guidByStrippingAuxPrefix:(id)prefix;
+ (id)whitelistedKeys;
+ (int64_t)finalTransferStateForThumbnailMode:(int64_t)mode success:(BOOL)success;
+ (int64_t)thumbnailModeForMode:(int64_t)mode afterDownloadSuccess:(BOOL)success;
- (BOOL)_hasLegacyPreviewGenerationState;
- (BOOL)_isMissingAndDownloadable;
- (BOOL)_updateWithDictionaryRepresentation:(id)representation;
- (BOOL)canMarkPurgeable;
- (BOOL)canMarkPurgeableIfIsRichLink:(BOOL)link;
- (BOOL)existsAtLocalPath;
- (BOOL)isAnimojiV2;
- (BOOL)isAutoloopVideo;
- (BOOL)isContact;
- (BOOL)isDownloadExpired;
- (BOOL)isGenmoji;
- (BOOL)isGenmojiFallback;
- (BOOL)isHEVCWithAlphaVideo;
- (BOOL)isLocation;
- (BOOL)isOpusAudioMessage;
- (BOOL)isRecipeBasedSticker;
- (BOOL)isSticker;
- (BOOL)isTemporaryBackwardCompatibilityAsset;
- (BOOL)shouldNotTranscribeAudio;
- (BOOL)thumbnailExistsAtLocalPath;
- (BOOL)wantsAlphaRemoved;
- (IMFileTransfer)init;
- (NSDate)refreshDate;
- (NSString)displayName;
- (NSString)localPath;
- (NSString)mimeType;
- (NSString)originalFilename;
- (NSString)permanentHighQualityLocalPath;
- (NSString)temporaryHighQualityLocalPath;
- (NSString)type;
- (NSURL)shareURL;
- (id)_auxVideoPathIfItExists;
- (id)_dictionaryRepresentation;
- (id)_dictionaryToSend;
- (id)_initWithGUID:(id)d filename:(id)filename isDirectory:(BOOL)directory localURL:(id)l account:(id)account otherPerson:(id)person totalBytes:(unint64_t)bytes hfsType:(unsigned int)self0 hfsCreator:(unsigned int)self1 hfsFlags:(unsigned __int16)self2 isIncoming:(BOOL)self3;
- (id)createAndPersistLivePhotoBundleIfNecessary;
- (id)description;
- (int64_t)_resolvedPreviewGenerationState;
- (int64_t)finalTransferStateForSuccess:(BOOL)success;
- (int64_t)previewGenerationVersion;
- (int64_t)thumbnailMode;
- (int64_t)thumbnailModeAfterDownloadSuccess:(BOOL)success;
- (unint64_t)currentBytes;
- (unint64_t)totalBytes;
- (void)_calculateTypeInformation;
- (void)_clear;
- (void)_clearLegacyPreviewGenerationState;
- (void)_migratePreviewGenerationState;
- (void)_resetTransferStateIfAttachmentIsMissingAndDownloadable;
- (void)_setAccount:(id)account otherPerson:(id)person;
- (void)_setAveragedTransferRate:(unint64_t)rate lastAveragedInterval:(double)interval lastAveragedBytes:(unint64_t)bytes;
- (void)_setCurrentBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes;
- (void)_setDirectory:(BOOL)directory hfsType:(unsigned int)type hfsCreator:(unsigned int)creator hfsFlags:(unsigned __int16)flags;
- (void)_setLocalPath:(id)path;
- (void)_setLocalURL:(id)l;
- (void)_setSandboxTokenForExportDownload;
- (void)_setStartDate:(id)date;
- (void)_setTransferDataURL:(id)l;
- (void)_updateWithDictionaryRepresentationForWhitelistedKeys:(id)keys;
- (void)dealloc;
- (void)fixInvalidTransferStateIfNeeded;
- (void)setAdaptiveImageGlyphContentIdentifier:(id)identifier;
- (void)setIsGenmojiFallback:(BOOL)fallback;
- (void)setIsTemporaryBackwardCompatibilityAsset:(BOOL)asset;
- (void)setPreviewGenerationVersion:(int64_t)version;
- (void)setRefreshDate:(id)date;
- (void)setShouldNotTranscribeAudio:(BOOL)audio;
- (void)setThumbnailMode:(int64_t)mode;
- (void)setTranscoderUserInfoIsGenmoji:(BOOL)genmoji;
- (void)setTranscoderUserInfoObject:(id)object forKey:(id)key;
@end

@implementation IMFileTransfer

- (id)_dictionaryRepresentation
{
  [(IMFileTransfer *)self _calculateTypeInformation];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = self->_guid;
  if (v4)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferGUID", v4);
  }

  v5 = self->_messageGUID;
  if (v5)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferMessageGUID", v5);
  }

  if (self->_transferState)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    if (v6)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferStateKey", v6);
    }
  }

  if (self->_isIncoming)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v7)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferIsIncomingKey", v7);
    }
  }

  v8 = self->_filename;
  if (v8)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferFilenameKey", v8);
  }

  v9 = self->_mimeType;
  if (v9)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferMIMETypeKey", v9);
  }

  v10 = self->_utiType;
  if (v10)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferUTITypeKey", v10);
  }

  v11 = self->_transferredFilename;
  if (v11)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferTransferredFilenameKey", v11);
  }

  if (self->_hfsCreator)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    if (v12)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferHFSCreatorKey", v12);
    }
  }

  if (self->_hfsType)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    if (v13)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferHFSTypeKey", v13);
    }
  }

  if (self->_hfsFlags)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    if (v14)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferHFSFlagsKey", v14);
    }
  }

  v15 = self->_localUserInfo;
  if (v15)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferLocalUserInfoKey", v15);
  }

  v16 = self->_transcoderUserInfo;
  if (v16)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferTranscoderUserInfoKey", v16);
  }

  v17 = self->_stickerUserInfo;
  if (v17)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferStickerUserInfoKey", v17);
  }

  v18 = self->_attributionInfo;
  if (v18)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferAttributionInfoKey", v18);
  }

  v19 = self->_otherPerson;
  if (v19)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferOtherPersonKey", v19);
  }

  v20 = self->_accountID;
  if (v20)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferAccountKey", v20);
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_currentBytes];
  if (v21)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferCurrentBytesKey", v21);
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalBytes];
  if (v22)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferTotalBytesKey", v22);
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_averageTransferRate];
  if (v23)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferAverageRateKey", v23);
  }

  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_auxStateWasDowngraded];
  if (v24)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferAuxStateWasDowngradedKey", v24);
  }

  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAuxVideo];
  if (v25)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferIsAuxVideoKey", v25);
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_isScreenshot];
  if (v26)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferIsScreenshotKey", v26);
  }

  v27 = self->_audioTranscriptionText;
  if (v27)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferAudioTranscriptionTextKey", v27);
  }

  v28 = self->_adaptiveImageGlyphContentIdentifier;
  if (v28)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferAdaptiveImageGlyphContentIdentifierKey", v28);
  }

  v29 = self->_adaptiveImageGlyphContentDescription;
  if (v29)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferAdaptiveImageGlyphContentDescriptionKey", v29);
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAuxImage];
  if (v30)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferIsAuxImageKey", v30);
  }

  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSticker];
  if (v31)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferIsStickerKey", v31);
  }

  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_hideAttachment];
  if (v32)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferHideAttachmentKey", v32);
  }

  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_cloudKitSyncState != 0];
  if (v33)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferCloudKitSyncStateKey", v33);
  }

  v34 = [MEMORY[0x1E696AD98] numberWithInteger:self->_commSafetySensitive];
  if (v34)
  {
    CFDictionarySetValue(dictionary, @"sIMFileTransferIsCommSafetySensitiveKey", v34);
  }

  v35 = [MEMORY[0x1E696AD98] numberWithInteger:self->_previewGenerationState];
  if (v35)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferPreviewGenerationStateKey", v35);
  }

  if (self->_isDirectory)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v36)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferIsDirectoryKey", v36);
    }
  }

  if (self->_shouldAttemptToResume)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v37)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferShouldAttemptToResumeKey", v37);
    }
  }

  if (self->_shouldForceArchive)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v38)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferShouldForceArchive", v38);
    }
  }

  if (self->_error)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    if (v39)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferErrorReasonKey", v39);
    }
  }

  v40 = self->_errorDescription;
  if (v40)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferErrorDescriptionKey", v40);
  }

  startDate = self->_startDate;
  if (startDate)
  {
    [(NSDate *)startDate timeIntervalSince1970];
    v42 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v42)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferStartDate", v42);
    }
  }

  createdDate = self->_createdDate;
  if (createdDate)
  {
    [(NSDate *)createdDate timeIntervalSince1970];
    v44 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v44)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferCreatedDate", v44);
    }
  }

  transferDataURL = self->_transferDataURL;
  if (transferDataURL)
  {
    absoluteString = [(NSURL *)transferDataURL absoluteString];
    if (absoluteString)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferTransferDataURLKey", absoluteString);
    }
  }

  localURL = self->_localURL;
  if (localURL)
  {
    absoluteString2 = [(NSURL *)localURL absoluteString];
    if (absoluteString2)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferLocalURLKey", absoluteString2);
    }
  }

  temporaryHighQualityLocalURL = self->_temporaryHighQualityLocalURL;
  if (temporaryHighQualityLocalURL)
  {
    absoluteString3 = [(NSURL *)temporaryHighQualityLocalURL absoluteString];
    if (absoluteString3)
    {
      CFDictionarySetValue(dictionary, @"IMFileTransferTemporaryHighQualityLocalURLKey", absoluteString3);
    }
  }

  sandboxToken = self->_sandboxToken;
  if (sandboxToken)
  {
    v52 = sandboxToken;
    CFDictionarySetValue(dictionary, @"sIMFileTransferSandboxTokenKey", v52);
  }

  v53 = [MEMORY[0x1E696AD98] numberWithInteger:self->_updateReason];
  if (v53)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferUpdateReasonKey", v53);
  }

  v54 = dictionary;
  return dictionary;
}

- (void)_calculateTypeInformation
{
  if (!self->_utiType)
  {
    pathExtension = [(NSString *)self->_filename pathExtension];
    if ([pathExtension length])
    {
      defaultHFSFileManager = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
      v5 = [defaultHFSFileManager UTITypeOfPath:self->_filename];
      utiType = self->_utiType;
      self->_utiType = v5;
    }
  }

  if (!self->_mimeType)
  {
    defaultHFSFileManager2 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
    v8 = [defaultHFSFileManager2 MIMETypeOfPath:self->_filename];
    mimeType = self->_mimeType;
    self->_mimeType = v8;

    if (!self->_mimeType)
    {
      if (self->_utiType)
      {
        defaultHFSFileManager3 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
        v14 = [defaultHFSFileManager3 pathExtensionForUTIType:self->_utiType];

        defaultHFSFileManager4 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
        v12 = [defaultHFSFileManager4 MIMETypeOfPathExtension:v14];
        v13 = self->_mimeType;
        self->_mimeType = v12;
      }
    }
  }
}

- (IMFileTransfer)init
{
  v9.receiver = self;
  v9.super_class = IMFileTransfer;
  v2 = [(IMFileTransfer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_needsWrapper = 1;
    adaptiveImageGlyphContentIdentifier = v2->_adaptiveImageGlyphContentIdentifier;
    v2->_adaptiveImageGlyphContentIdentifier = 0;

    adaptiveImageGlyphContentDescription = v3->_adaptiveImageGlyphContentDescription;
    v3->_adaptiveImageGlyphContentDescription = 0;

    cloudKitServerChangeTokenBlob = v3->_cloudKitServerChangeTokenBlob;
    v3->_cloudKitSyncState = 0;
    v3->_cloudKitServerChangeTokenBlob = 0;
    *&v3->_hideAttachment = 0;
    v3->_appMessageFallbackImage = 0;

    cloudKitRecordID = v3->_cloudKitRecordID;
    v3->_cloudKitRecordID = 0;

    v3->_commSafetySensitive = 0;
    v3->_updateReason = 0;
  }

  return v3;
}

- (void)_clear
{
  utiType = self->_utiType;
  self->_utiType = 0;

  mimeType = self->_mimeType;
  self->_mimeType = 0;

  messageGUID = self->_messageGUID;
  self->_messageGUID = 0;

  guid = self->_guid;
  self->_guid = 0;

  startDate = self->_startDate;
  self->_startDate = 0;

  createdDate = self->_createdDate;
  self->_createdDate = 0;

  filename = self->_filename;
  self->_filename = 0;

  transferDataURL = self->_transferDataURL;
  self->_transferDataURL = 0;

  localURL = self->_localURL;
  self->_localURL = 0;

  temporaryHighQualityLocalURL = self->_temporaryHighQualityLocalURL;
  self->_temporaryHighQualityLocalURL = 0;

  otherPerson = self->_otherPerson;
  self->_otherPerson = 0;

  accountID = self->_accountID;
  self->_accountID = 0;

  errorDescription = self->_errorDescription;
  self->_errorDescription = 0;

  localUserInfo = self->_localUserInfo;
  self->_localUserInfo = 0;

  attachmentSendContexts = self->_attachmentSendContexts;
  self->_attachmentSendContexts = 0;

  transferredFilename = self->_transferredFilename;
  self->_transferredFilename = 0;

  transcoderUserInfo = self->_transcoderUserInfo;
  self->_transcoderUserInfo = 0;

  self->_isSticker = 0;
  adaptiveImageGlyphContentIdentifier = self->_adaptiveImageGlyphContentIdentifier;
  self->_adaptiveImageGlyphContentIdentifier = 0;

  adaptiveImageGlyphContentDescription = self->_adaptiveImageGlyphContentDescription;
  self->_adaptiveImageGlyphContentDescription = 0;

  self->_isScreenshot = 0;
  stickerUserInfo = self->_stickerUserInfo;
  self->_stickerUserInfo = 0;

  attributionInfo = self->_attributionInfo;
  self->_attributionInfo = 0;

  *&self->_hideAttachment = 0;
  self->_isContact = 0;
  self->_updateReason = 0;
  self->_commSafetySensitive = 0;
}

+ (BOOL)genmojiFileTransferShouldDisplayAsPermanentlyFailed:(id)failed
{
  failedCopy = failed;
  v4 = failedCopy;
  if (!failedCopy)
  {
    guid = IMLogHandleForCategory("IMFileTransfer");
    if (os_log_type_enabled(guid, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C4724(guid);
    }

    goto LABEL_23;
  }

  guid = [failedCopy guid];
  transferState = [v4 transferState];
  v7 = 0;
  if (transferState <= 6)
  {
    if (transferState == 5)
    {
      if (([v4 existsAtLocalPath] & 1) == 0)
      {
        v8 = IMLogHandleForCategory("IMFileTransfer");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C451C();
        }

        goto LABEL_22;
      }

      v7 = 0;
    }

    else if (transferState == 6)
    {
      v8 = IMLogHandleForCategory("IMFileTransfer");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C45EC();
      }

      goto LABEL_22;
    }
  }

  else
  {
    switch(transferState)
    {
      case 7:
        v8 = IMLogHandleForCategory("IMFileTransfer");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C4584();
        }

        goto LABEL_22;
      case 8:
        v8 = IMLogHandleForCategory("IMFileTransfer");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C4654();
        }

        goto LABEL_22;
      case 9:
        v8 = IMLogHandleForCategory("IMFileTransfer");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C46BC();
        }

LABEL_22:

LABEL_23:
        v7 = 1;
        break;
    }
  }

  return v7;
}

- (NSURL)shareURL
{
  result = [(NSDictionary *)[(IMFileTransfer *)self attributionInfo] objectForKey:@"cmm-url"];
  if (result)
  {
    v4 = result;
    if ([-[NSDictionary objectForKey:](-[IMFileTransfer attributionInfo](self "attributionInfo")] == 1)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  [(IMFileTransfer *)self _clear];
  v3.receiver = self;
  v3.super_class = IMFileTransfer;
  [(IMFileTransfer *)&v3 dealloc];
}

+ (BOOL)_doesLocalURLRequireArchiving:(id)archiving
{
  path = [archiving path];
  v4 = [path stringByAppendingPathComponent:@"Contents"];
  v5 = [v4 stringByAppendingPathComponent:@"MacOS"];

  v6 = [path stringByAppendingPathComponent:@"Contents"];
  v7 = [v6 stringByAppendingPathComponent:@"MacOS"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:v5])
  {
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [defaultManager2 fileExistsAtPath:v7];

    if ((v10 & 1) == 0)
    {
      v11 = sub_1A870105C(path, 0, &v13);
      goto LABEL_6;
    }
  }

  v11 = 1;
LABEL_6:

  return v11;
}

- (id)_initWithGUID:(id)d filename:(id)filename isDirectory:(BOOL)directory localURL:(id)l account:(id)account otherPerson:(id)person totalBytes:(unint64_t)bytes hfsType:(unsigned int)self0 hfsCreator:(unsigned int)self1 hfsFlags:(unsigned __int16)self2 isIncoming:(BOOL)self3
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  filenameCopy = filename;
  lCopy = l;
  accountCopy = account;
  personCopy = person;
  v24 = [(IMFileTransfer *)self init];
  if (v24)
  {
    im_lastPathComponent = [dCopy im_lastPathComponent];
    v38 = accountCopy;
    v26 = [dCopy isEqualToString:im_lastPathComponent];

    if (v26)
    {
      accountCopy = v38;
    }

    else
    {
      accountCopy = v38;
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          [dCopy im_lastPathComponent];
          *buf = 138412546;
          v40 = dCopy;
          v42 = v41 = 2112;
          v37 = v42;
          _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "tried to init IMFileTransfer with guid that has path specifiers %@. using stripped guid instead %@", buf, 0x16u);
        }
      }

      im_lastPathComponent2 = [dCopy im_lastPathComponent];

      dCopy = im_lastPathComponent2;
    }

    objc_storeStrong(&v24->_guid, dCopy);
    im_lastPathComponent3 = [filenameCopy im_lastPathComponent];
    filename = v24->_filename;
    v24->_filename = im_lastPathComponent3;

    objc_storeStrong(&v24->_accountID, account);
    objc_storeStrong(&v24->_otherPerson, person);
    date = [MEMORY[0x1E695DF00] date];
    createdDate = v24->_createdDate;
    v24->_createdDate = date;

    v24->_isDirectory = directory;
    v24->_hfsType = type;
    v24->_hfsCreator = creator;
    v24->_hfsFlags = flags;
    v24->_totalBytes = bytes;
    v24->_isIncoming = incoming;
    if ([lCopy isFileURL])
    {
      [(IMFileTransfer *)v24 _setLocalURL:lCopy];
    }

    else if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = lCopy;
        _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "tried to init IMFileTransfer with non-local URL: %@", buf, 0xCu);
      }
    }

    *&v24->_needsWrapper = 1;
    adaptiveImageGlyphContentIdentifier = v24->_adaptiveImageGlyphContentIdentifier;
    v24->_adaptiveImageGlyphContentIdentifier = 0;

    adaptiveImageGlyphContentDescription = v24->_adaptiveImageGlyphContentDescription;
    v24->_adaptiveImageGlyphContentDescription = 0;

    v24->_hideAttachment = 0;
    objc_storeStrong(&v24->_originalGUID, dCopy);
    v24->_commSafetySensitive = 0;
    v24->_updateReason = 0;
  }

  return v24;
}

- (void)_setAccount:(id)account otherPerson:(id)person
{
  accountCopy = account;
  personCopy = person;
  if (accountCopy && self->_accountID != accountCopy)
  {
    objc_storeStrong(&self->_accountID, account);
  }

  if (personCopy)
  {
    otherPerson = self->_otherPerson;
    p_otherPerson = &self->_otherPerson;
    if (otherPerson != personCopy)
    {
      objc_storeStrong(p_otherPerson, person);
    }
  }
}

- (void)_setStartDate:(id)date
{
  dateCopy = date;
  p_startDate = &self->_startDate;
  if (self->_startDate != dateCopy)
  {
    v8 = dateCopy;
    objc_storeStrong(p_startDate, date);
    p_startDate = [(NSDate *)v8 timeIntervalSince1970];
    self->_lastAveragedInterval = v7;
  }

  MEMORY[0x1EEE66BB8](p_startDate);
}

- (void)_setCurrentBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes
{
  [(IMFileTransfer *)self setCurrentBytes:bytes];

  MEMORY[0x1EEE66B58](self, sel_setTotalBytes_);
}

- (void)_setAveragedTransferRate:(unint64_t)rate lastAveragedInterval:(double)interval lastAveragedBytes:(unint64_t)bytes
{
  self->_averageTransferRate = rate;
  self->_lastAveragedInterval = interval;
  self->_lastAveragedBytes = bytes;
}

- (void)_setDirectory:(BOOL)directory hfsType:(unsigned int)type hfsCreator:(unsigned int)creator hfsFlags:(unsigned __int16)flags
{
  self->_isDirectory = directory;
  self->_hfsType = type;
  self->_hfsCreator = creator;
  self->_hfsFlags = flags;
}

- (BOOL)_updateWithDictionaryRepresentation:(id)representation
{
  v124 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (self->_guid)
  {
    _dictionaryRepresentation = [(IMFileTransfer *)self _dictionaryRepresentation];
  }

  else
  {
    _dictionaryRepresentation = 0;
  }

  [(IMFileTransfer *)self _clear];
  v5 = [representationCopy objectForKey:@"IMFileTransferGUID"];
  v6 = v5;
  if (v5)
  {
    im_lastPathComponent = [(NSURL *)v5 im_lastPathComponent];
    v8 = [(NSURL *)v6 isEqualToString:im_lastPathComponent];

    if (v8)
    {
      v9 = v6;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          im_lastPathComponent2 = [(NSURL *)v6 im_lastPathComponent];
          *buf = 138412546;
          v121 = v6;
          v122 = 2112;
          v123 = im_lastPathComponent2;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "tried to update IMFileTransfer with guid that has path specifiers %@. using stripped guid instead %@", buf, 0x16u);
        }
      }

      im_lastPathComponent3 = [(NSURL *)v6 im_lastPathComponent];

      v9 = im_lastPathComponent3;
    }
  }

  else
  {
    v9 = 0;
  }

  v115 = v9;
  objc_storeStrong(&self->_guid, v9);
  v13 = [representationCopy objectForKey:@"IMFileTransferMessageGUID"];
  v14 = v13;
  if (v13)
  {
    im_lastPathComponent4 = [(NSURL *)v13 im_lastPathComponent];
    v16 = [(NSURL *)v14 isEqualToString:im_lastPathComponent4];

    if ((v16 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          im_lastPathComponent5 = [(NSURL *)v14 im_lastPathComponent];
          *buf = 138412546;
          v121 = v14;
          v122 = 2112;
          v123 = im_lastPathComponent5;
          _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "tried to update IMFileTransfer with messageGuid that has path specifiers %@. using stripped message guid instead %@", buf, 0x16u);
        }
      }

      im_lastPathComponent6 = [(NSURL *)v14 im_lastPathComponent];

      v14 = im_lastPathComponent6;
    }
  }

  objc_storeStrong(&self->_messageGUID, v14);
  v20 = [representationCopy objectForKey:@"IMFileTransferStateKey"];
  self->_transferState = [v20 integerValue];

  v21 = [representationCopy objectForKey:@"IMFileTransferIsIncomingKey"];
  self->_isIncoming = [v21 BOOLValue];

  v22 = [representationCopy objectForKey:@"IMFileTransferFilenameKey"];
  im_lastPathComponent7 = [v22 im_lastPathComponent];
  filename = self->_filename;
  self->_filename = im_lastPathComponent7;

  v25 = [representationCopy objectForKey:@"IMFileTransferTransferredFilenameKey"];
  im_lastPathComponent8 = [v25 im_lastPathComponent];
  transferredFilename = self->_transferredFilename;
  self->_transferredFilename = im_lastPathComponent8;

  v28 = [representationCopy objectForKey:@"IMFileTransferMIMETypeKey"];
  mimeType = self->_mimeType;
  self->_mimeType = v28;

  v30 = [representationCopy objectForKey:@"IMFileTransferUTITypeKey"];
  utiType = self->_utiType;
  self->_utiType = v30;

  v32 = [representationCopy objectForKey:@"IMFileTransferHFSCreatorKey"];
  self->_hfsCreator = [v32 integerValue];

  v33 = [representationCopy objectForKey:@"IMFileTransferHFSTypeKey"];
  self->_hfsType = [v33 integerValue];

  v34 = [representationCopy objectForKey:@"IMFileTransferHFSFlagsKey"];
  self->_hfsFlags = [v34 integerValue];

  v35 = [representationCopy objectForKey:@"IMFileTransferOtherPersonKey"];
  otherPerson = self->_otherPerson;
  self->_otherPerson = v35;

  v37 = [representationCopy objectForKey:@"IMFileTransferAccountKey"];
  accountID = self->_accountID;
  self->_accountID = v37;

  v39 = [representationCopy objectForKey:@"IMFileTransferCurrentBytesKey"];
  self->_currentBytes = [v39 unsignedLongLongValue];

  v40 = [representationCopy objectForKey:@"IMFileTransferTotalBytesKey"];
  self->_totalBytes = [v40 unsignedLongLongValue];

  v41 = [representationCopy objectForKey:@"IMFileTransferAverageRateKey"];
  self->_averageTransferRate = [v41 unsignedLongLongValue];

  v42 = [representationCopy objectForKey:@"IMFileTransferPreviewGenerationStateKey"];
  self->_previewGenerationState = [v42 unsignedLongLongValue];

  v43 = [representationCopy objectForKey:@"IMFileTransferIsDirectoryKey"];
  self->_isDirectory = [v43 BOOLValue];

  v44 = [representationCopy objectForKey:@"IMFileTransferShouldAttemptToResumeKey"];
  self->_shouldAttemptToResume = [v44 BOOLValue];

  v45 = [representationCopy objectForKey:@"IMFileTransferShouldForceArchive"];
  self->_shouldForceArchive = [v45 BOOLValue];

  v46 = [representationCopy objectForKey:@"IMFileTransferErrorReasonKey"];
  v118 = v46;
  if (v46)
  {
    intValue = [v46 intValue];
  }

  else
  {
    intValue = 15;
    if (self->_transferState != 6)
    {
      intValue = -1;
    }
  }

  self->_error = intValue;
  v48 = [representationCopy objectForKey:{@"IMFileTransferErrorDescriptionKey", v115}];
  errorDescription = self->_errorDescription;
  self->_errorDescription = v48;

  v50 = [representationCopy objectForKey:@"IMFileTransferLocalUserInfoKey"];
  localUserInfo = self->_localUserInfo;
  self->_localUserInfo = v50;

  v52 = [representationCopy objectForKey:@"sIMFileTransferTranscoderUserInfoKey"];
  transcoderUserInfo = self->_transcoderUserInfo;
  self->_transcoderUserInfo = v52;

  v54 = [representationCopy objectForKey:@"sIMFileTransferStickerUserInfoKey"];
  stickerUserInfo = self->_stickerUserInfo;
  self->_stickerUserInfo = v54;

  v56 = [representationCopy objectForKey:@"sIMFileTransferAttributionInfoKey"];
  attributionInfo = self->_attributionInfo;
  self->_attributionInfo = v56;

  if (self->_error == -2)
  {
    self->_error = 18;
  }

  v58 = [representationCopy objectForKey:@"IMFileTransferStartDate"];
  v117 = v58;
  if (v58)
  {
    v59 = MEMORY[0x1E695DF00];
    [(NSDate *)v58 doubleValue];
    v58 = [v59 dateWithTimeIntervalSince1970:?];
  }

  startDate = self->_startDate;
  self->_startDate = v58;

  v61 = [representationCopy objectForKey:@"IMFileTransferCreatedDate"];
  v62 = v61;
  if (v61)
  {
    v63 = MEMORY[0x1E695DF00];
    [v61 doubleValue];
    v64 = [v63 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v64 = 0;
  }

  createdDate = self->_createdDate;
  self->_createdDate = v64;

  v66 = [representationCopy objectForKey:@"IMFileTransferTransferDataURLKey"];
  if (v66)
  {
    v67 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v66];
  }

  else
  {
    v67 = 0;
  }

  transferDataURL = self->_transferDataURL;
  self->_transferDataURL = v67;

  v69 = [representationCopy objectForKey:@"IMFileTransferLocalURLKey"];
  if (v69)
  {
    v70 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v69];
    if ([(NSURL *)v70 isFileURL])
    {
      v71 = v70;
      localURL = self->_localURL;
      self->_localURL = v71;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v73 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v121 = v70;
          _os_log_impl(&dword_1A85E5000, v73, OS_LOG_TYPE_INFO, "tried to update IMFileTransfer with non-local URL: %@", buf, 0xCu);
        }
      }

      localURL = self->_localURL;
      self->_localURL = 0;
    }
  }

  else
  {
    v70 = self->_localURL;
    self->_localURL = 0;
  }

  v74 = [representationCopy objectForKey:@"IMFileTransferTemporaryHighQualityLocalURLKey"];
  if (v74)
  {
    v75 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v74];
    if ([(NSURL *)v75 isFileURL])
    {
      v76 = v75;
      temporaryHighQualityLocalURL = self->_temporaryHighQualityLocalURL;
      self->_temporaryHighQualityLocalURL = v76;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v78 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v121 = v75;
          _os_log_impl(&dword_1A85E5000, v78, OS_LOG_TYPE_INFO, "tried to update IMFileTransfer with non-file transfer temporaryHighQualityLocalURL: %@", buf, 0xCu);
        }
      }

      temporaryHighQualityLocalURL = self->_temporaryHighQualityLocalURL;
      self->_temporaryHighQualityLocalURL = 0;
    }
  }

  else
  {
    v75 = self->_temporaryHighQualityLocalURL;
    self->_temporaryHighQualityLocalURL = 0;
  }

  if (!self->_localURL)
  {
    v79 = [representationCopy objectForKey:@"IMFileTransferLocalPathKey"];
    if (v79)
    {
      [(IMFileTransfer *)self _setLocalPath:v79];
    }
  }

  v80 = [representationCopy objectForKey:@"sIMFileTransferAuxStateWasDowngradedKey"];
  v81 = v80;
  if (v80)
  {
    if (self->_auxStateWasDowngraded)
    {
      bOOLValue = 1;
    }

    else
    {
      bOOLValue = [v80 BOOLValue];
    }

    self->_auxStateWasDowngraded = bOOLValue;
  }

  v83 = [representationCopy objectForKey:@"sIMFileTransferIsAuxImageKey"];

  if (v83)
  {
    v84 = [representationCopy objectForKey:@"sIMFileTransferIsAuxImageKey"];
    bOOLValue2 = [v84 BOOLValue];

    if ((bOOLValue2 & 1) != 0 || self->_auxStateWasDowngraded)
    {
      self->_isAuxImage = bOOLValue2;
    }
  }

  v86 = [representationCopy objectForKey:@"sIMFileTransferIsAuxVideoKey"];

  if (v86)
  {
    v87 = [representationCopy objectForKey:@"sIMFileTransferIsAuxVideoKey"];
    bOOLValue3 = [v87 BOOLValue];

    if ((bOOLValue3 & 1) != 0 || self->_auxStateWasDowngraded)
    {
      self->_isAuxVideo = bOOLValue3;
    }
  }

  v89 = [representationCopy objectForKey:@"sIMFileTransferIsScreenshotKey"];

  if (v89)
  {
    v90 = [representationCopy objectForKey:@"sIMFileTransferIsScreenshotKey"];
    self->_isScreenshot = [v90 BOOLValue];
  }

  v91 = [representationCopy objectForKey:@"sIMFileTransferAudioTranscriptionTextKey"];

  if (v91)
  {
    v92 = [representationCopy objectForKey:@"sIMFileTransferAudioTranscriptionTextKey"];
    v93 = [v92 copy];
    audioTranscriptionText = self->_audioTranscriptionText;
    self->_audioTranscriptionText = v93;
  }

  v95 = [representationCopy objectForKey:@"sIMFileTransferIsStickerKey"];

  if (v95)
  {
    v96 = [representationCopy objectForKey:@"sIMFileTransferIsStickerKey"];
    self->_isSticker = [v96 BOOLValue];
  }

  v97 = [representationCopy objectForKey:@"sIMFileTransferAdaptiveImageGlyphContentIdentifierKey"];
  adaptiveImageGlyphContentIdentifier = self->_adaptiveImageGlyphContentIdentifier;
  self->_adaptiveImageGlyphContentIdentifier = v97;

  v99 = [representationCopy objectForKey:@"sIMFileTransferAdaptiveImageGlyphContentDescriptionKey"];
  adaptiveImageGlyphContentDescription = self->_adaptiveImageGlyphContentDescription;
  self->_adaptiveImageGlyphContentDescription = v99;

  v101 = [representationCopy objectForKey:@"sIMFileTransferHideAttachmentKey"];

  if (v101)
  {
    v102 = [representationCopy objectForKey:@"sIMFileTransferHideAttachmentKey"];
    self->_hideAttachment = [v102 BOOLValue];
  }

  v103 = [representationCopy objectForKey:@"sIMFileTransferCloudKitSyncStateKey"];

  if (v103)
  {
    v104 = [representationCopy objectForKey:@"sIMFileTransferCloudKitSyncStateKey"];
    self->_cloudKitSyncState = [v104 BOOLValue];
  }

  v105 = [representationCopy objectForKey:@"sIMFileTransferIsCommSafetySensitiveKey"];

  if (v105)
  {
    v106 = [representationCopy objectForKey:@"sIMFileTransferIsCommSafetySensitiveKey"];
    self->_commSafetySensitive = [v106 integerValue];
  }

  v107 = [representationCopy objectForKey:@"IMFileTransferUpdateReasonKey"];

  if (v107)
  {
    v108 = [representationCopy objectForKey:@"IMFileTransferUpdateReasonKey"];
    self->_updateReason = [v108 integerValue];
  }

  v109 = [representationCopy objectForKey:@"sIMFileTransferSandboxTokenKey"];
  sandboxToken = self->_sandboxToken;
  self->_sandboxToken = v109;

  if (_dictionaryRepresentation)
  {
    _dictionaryRepresentation2 = [(IMFileTransfer *)self _dictionaryRepresentation];
    v112 = [_dictionaryRepresentation isEqualToDictionary:_dictionaryRepresentation2];

    v113 = v112 ^ 1;
  }

  else
  {
    v113 = 1;
  }

  return v113;
}

+ (id)whitelistedKeys
{
  v6[7] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"IMFileTransferGUID";
  v6[1] = @"IMFileTransferMessageGUID";
  v6[2] = @"IMFileTransferFilenameKey";
  v6[3] = @"IMFileTransferMIMETypeKey";
  v6[4] = @"IMFileTransferUTITypeKey";
  v6[5] = @"IMFileTransferLocalUserInfoKey";
  v6[6] = @"IMFileTransferCreatedDate";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:7];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)_updateWithDictionaryRepresentationForWhitelistedKeys:(id)keys
{
  v4 = MEMORY[0x1E695DFA8];
  keysCopy = keys;
  allKeys = [keysCopy allKeys];
  v10 = [v4 setWithArray:allKeys];

  v7 = +[IMFileTransfer whitelistedKeys];
  [v10 intersectSet:v7];

  allObjects = [v10 allObjects];
  v9 = [keysCopy dictionaryWithValuesForKeys:allObjects];

  [(IMFileTransfer *)self _updateWithDictionaryRepresentation:v9];
}

- (id)_dictionaryToSend
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  guid = self->_guid;
  if (guid)
  {
    CFDictionarySetValue(dictionary, @"IMFileTransferGUID", guid);
  }

  messageGUID = self->_messageGUID;
  if (messageGUID)
  {
    CFDictionarySetValue(v4, @"IMFileTransferMessageGUID", messageGUID);
  }

  filename = self->_filename;
  if (filename)
  {
    CFDictionarySetValue(v4, @"IMFileTransferFilenameKey", filename);
  }

  mimeType = self->_mimeType;
  if (mimeType)
  {
    CFDictionarySetValue(v4, @"IMFileTransferMIMETypeKey", mimeType);
  }

  utiType = self->_utiType;
  if (utiType)
  {
    CFDictionarySetValue(v4, @"IMFileTransferUTITypeKey", utiType);
  }

  localUserInfo = self->_localUserInfo;
  if (localUserInfo)
  {
    CFDictionarySetValue(v4, @"IMFileTransferLocalUserInfoKey", localUserInfo);
  }

  createdDate = self->_createdDate;
  if (createdDate)
  {
    [(NSDate *)createdDate timeIntervalSince1970];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v12)
    {
      CFDictionarySetValue(v4, @"IMFileTransferCreatedDate", v12);
    }
  }

  v13 = IMFileTransferLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Constructed transfer dictionary to send: %@", &v15, 0xCu);
  }

  return v4;
}

- (NSDate)refreshDate
{
  v3 = [(NSDictionary *)self->_localUserInfo objectForKey:@"refresh-date"];
  if (v3 && (-[IMFileTransfer createdDate](self, "createdDate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 compare:v3], v4, v5 != 1))
  {
    createdDate = v3;
  }

  else
  {
    createdDate = [(IMFileTransfer *)self createdDate];
  }

  v7 = createdDate;

  return v7;
}

- (NSString)originalFilename
{
  userInfo = [(IMFileTransfer *)self userInfo];
  v4 = [userInfo objectForKey:@"service"];

  if (v4 && [(__CFString *)IMServiceNameRCS[0] isEqualToString:v4])
  {
    userInfo2 = [(IMFileTransfer *)self userInfo];
    v6 = [userInfo2 objectForKey:@"file"];

    v7 = [v6 objectForKey:@"fileName"];
  }

  else
  {
    v7 = self->_filename;
  }

  return v7;
}

- (void)fixInvalidTransferStateIfNeeded
{
  if (![(IMFileTransfer *)self isFinished]&& ![(IMFileTransfer *)self isInThumbnailState]&& [(IMFileTransfer *)self transferState])
  {
    [(IMFileTransfer *)self _setTransferState:7];

    MEMORY[0x1EEE66B58](self, sel__setError_);
  }
}

- (BOOL)isDownloadExpired
{
  userInfo = [(IMFileTransfer *)self userInfo];
  v4 = [userInfo objectForKey:@"service"];

  if (!v4 || ![(__CFString *)IMServiceNameRCS[0] isEqualToString:v4])
  {
    refreshDate = [(IMFileTransfer *)self refreshDate];
    if (!refreshDate)
    {
      refreshDate = [(IMFileTransfer *)self createdDate];
      if (!refreshDate)
      {
        v12 = 1;
        goto LABEL_12;
      }
    }

    v6 = refreshDate;
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2678400.0];
    v10 = [v7 compare:v6] == 1;
    goto LABEL_8;
  }

  userInfo2 = [(IMFileTransfer *)self userInfo];
  v6 = [userInfo2 objectForKey:@"file"];

  v7 = [v6 objectForKey:@"validUntil"];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF00] now];
    v9 = [v7 compare:v8];

    v10 = v9 == -1;
LABEL_8:
    v12 = v10;
    goto LABEL_11;
  }

  v12 = 1;
LABEL_11:

LABEL_12:
  return v12;
}

- (void)setRefreshDate:(id)date
{
  dateCopy = date;
  v4 = [(NSDictionary *)self->_localUserInfo objectForKey:@"refresh-date"];
  v5 = IMSharedHelperAreObjectsLogicallySame(v4, dateCopy);

  if ((v5 & 1) == 0)
  {
    v6 = [(NSDictionary *)self->_localUserInfo mutableCopy];
    v7 = v6;
    if (dateCopy)
    {
      [(NSDictionary *)v6 setObject:dateCopy forKey:@"refresh-date"];
    }

    else
    {
      [(NSDictionary *)v6 removeObjectForKey:@"refresh-date"];
    }

    localUserInfo = self->_localUserInfo;
    self->_localUserInfo = v7;
  }
}

- (NSString)displayName
{
  defaultHFSFileManager = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
  filename = [(IMFileTransfer *)self filename];
  v5 = [defaultHFSFileManager displayNameOfFileWithName:filename hfsFlags:{-[IMFileTransfer hfsFlags](self, "hfsFlags")}];

  return v5;
}

- (BOOL)existsAtLocalPath
{
  if ([(IMFileTransfer *)self isDownloadingFromRemoteIntent]|| self->_isIncoming && [(IMFileTransfer *)self transferState]!= 5)
  {
    return 0;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  localPath = [(IMFileTransfer *)self localPath];
  v6 = [defaultManager fileExistsAtPath:localPath];

  return v6;
}

- (BOOL)thumbnailExistsAtLocalPath
{
  isInThumbnailState = [(IMFileTransfer *)self isInThumbnailState];
  if (isInThumbnailState)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    localPath = [(IMFileTransfer *)self localPath];
    v6 = [defaultManager fileExistsAtPath:localPath];

    LOBYTE(isInThumbnailState) = v6;
  }

  return isInThumbnailState;
}

- (BOOL)isSticker
{
  stickerUserInfo = [(IMFileTransfer *)self stickerUserInfo];
  v3 = [stickerUserInfo count] != 0;

  return v3;
}

- (BOOL)isContact
{
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  mimeType = [(IMFileTransfer *)self mimeType];
  v5 = [mimeType stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v6 = [v5 length];

  if (v6)
  {
    v7 = *MEMORY[0x1E6963718];
    mimeType2 = [(IMFileTransfer *)self mimeType];
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v7, mimeType2, 0);

    CFAutorelease(PreferredIdentifierForTag);
    IsVCard = IMUTTypeIsVCard(PreferredIdentifierForTag);
  }

  else
  {
    IsVCard = 0;
  }

  return IsVCard;
}

- (BOOL)isAnimojiV2
{
  transcoderUserInfo = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [transcoderUserInfo objectForKey:@"AVIsAnimojiV2"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)wantsAlphaRemoved
{
  transcoderUserInfo = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [transcoderUserInfo objectForKey:@"AVIsRemoveAlpha"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setAdaptiveImageGlyphContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  p_adaptiveImageGlyphContentIdentifier = &self->_adaptiveImageGlyphContentIdentifier;
  if (self->_adaptiveImageGlyphContentIdentifier != identifierCopy)
  {
    objc_storeStrong(p_adaptiveImageGlyphContentIdentifier, identifier);
    p_adaptiveImageGlyphContentIdentifier = [(IMFileTransfer *)self setTranscoderUserInfoIsGenmoji:[(NSString *)self->_adaptiveImageGlyphContentIdentifier length]!= 0];
  }

  MEMORY[0x1EEE66BB8](p_adaptiveImageGlyphContentIdentifier);
}

- (void)setTranscoderUserInfoObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = self->_transcoderUserInfo;
  v8 = [(NSDictionary *)v7 objectForKeyedSubscript:@"isGenmoji"];
  if (([v8 isEqual:objectCopy] & 1) == 0)
  {
    if (v7)
    {
      v9 = [(NSDictionary *)v7 mutableCopy];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v10 = v9;
    if (objectCopy)
    {
      [v9 setObject:objectCopy forKeyedSubscript:keyCopy];
    }

    else
    {
      [v9 removeObjectForKey:keyCopy];
    }

    v11 = [v10 copy];
    transcoderUserInfo = self->_transcoderUserInfo;
    self->_transcoderUserInfo = v11;
  }
}

- (void)setTranscoderUserInfoIsGenmoji:(BOOL)genmoji
{
  if (genmoji)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(IMFileTransfer *)self setTranscoderUserInfoObject:v4 forKey:@"isGenmoji"];
  }

  else
  {

    [(IMFileTransfer *)self setTranscoderUserInfoObject:0 forKey:@"isGenmoji"];
  }
}

- (BOOL)isGenmojiFallback
{
  v2 = [(NSDictionary *)self->_transcoderUserInfo objectForKeyedSubscript:@"isGenmojiFallback"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isGenmoji
{
  v2 = [(NSDictionary *)self->_transcoderUserInfo objectForKeyedSubscript:@"isGenmoji"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsGenmojiFallback:(BOOL)fallback
{
  if (fallback)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(IMFileTransfer *)self setTranscoderUserInfoObject:v4 forKey:@"isGenmojiFallback"];
  }

  else
  {

    [(IMFileTransfer *)self setTranscoderUserInfoObject:0 forKey:@"isGenmojiFallback"];
  }
}

- (BOOL)_hasLegacyPreviewGenerationState
{
  attributionInfo = [(IMFileTransfer *)self attributionInfo];
  HasLegacyState = IMFileTransferAttributionInfoHasLegacyState(attributionInfo);

  return HasLegacyState;
}

- (int64_t)_resolvedPreviewGenerationState
{
  previewGenerationState = self->_previewGenerationState;
  attributionInfo = [(IMFileTransfer *)self attributionInfo];
  type = [(IMFileTransfer *)self type];
  v6 = IMFileTransferPreviewGenerationStateWithStoredState(previewGenerationState, attributionInfo, type);

  return v6;
}

- (void)_migratePreviewGenerationState
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(IMFileTransfer *)self _hasLegacyPreviewGenerationState])
  {
    v3 = IMFileTransferLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      guid = [(IMFileTransfer *)self guid];
      v5 = 138412290;
      v6 = guid;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_DEFAULT, "Migrating transfer GUID %@ to new preview generation state storage", &v5, 0xCu);
    }

    [(IMFileTransfer *)self setPreviewGenerationState:[(IMFileTransfer *)self _resolvedPreviewGenerationState]];
  }
}

- (void)_clearLegacyPreviewGenerationState
{
  v6[2] = *MEMORY[0x1E69E9840];
  if ([(IMFileTransfer *)self _hasLegacyPreviewGenerationState])
  {
    attributionInfo = [(IMFileTransfer *)self attributionInfo];
    v4 = [attributionInfo mutableCopy];

    v6[0] = @"pgens";
    v6[1] = @"pgenp";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
    [v4 removeObjectsForKeys:v5];

    [(IMFileTransfer *)self setAttributionInfo:v4];
  }
}

- (int64_t)previewGenerationVersion
{
  attributionInfo = [(IMFileTransfer *)self attributionInfo];
  v3 = [attributionInfo objectForKeyedSubscript:@"pgenv"];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)setPreviewGenerationVersion:(int64_t)version
{
  attributionInfo = [(IMFileTransfer *)self attributionInfo];
  v6 = [attributionInfo mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v10 = v8;

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  [v10 setObject:v9 forKeyedSubscript:@"pgenv"];

  [(IMFileTransfer *)self setAttributionInfo:v10];
}

- (BOOL)canMarkPurgeable
{
  v37 = *MEMORY[0x1E69E9840];
  filename = [(IMFileTransfer *)self filename];
  pathExtension = [filename pathExtension];

  im_isAudioMessageExtension = [pathExtension im_isAudioMessageExtension];
  filename2 = [(IMFileTransfer *)self filename];
  v7 = [filename2 containsString:@"GroupPhotoImage"];

  im_isPluginPayloadExtension = [pathExtension im_isPluginPayloadExtension];
  attributionInfo = [(IMFileTransfer *)self attributionInfo];
  v10 = [attributionInfo objectForKeyedSubscript:@"bundle-id"];
  v11 = [v10 hasPrefix:@"com.apple.messages.URLBalloonProvider"];

  LOBYTE(v22) = v11;
  v12 = [objc_opt_class() canMarkPurgeableWithCKSyncState:-[IMFileTransfer cloudKitSyncState](self transferState:"cloudKitSyncState") isAudio:-[IMFileTransfer transferState](self isSticker:"transferState") isGroupPhoto:im_isAudioMessageExtension isPluginPayload:-[IMFileTransfer isSticker](self isRichLink:{"isSticker"), v7, im_isPluginPayloadExtension, v22}];
  v13 = IMOffloadingLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    guid = [(IMFileTransfer *)self guid];
    filename3 = [(IMFileTransfer *)self filename];
    cloudKitSyncState = [(IMFileTransfer *)self cloudKitSyncState];
    transferState = [(IMFileTransfer *)self transferState];
    hideAttachment = [(IMFileTransfer *)self hideAttachment];
    attributionInfo2 = [(IMFileTransfer *)self attributionInfo];
    v20 = [attributionInfo2 objectForKeyedSubscript:@"bundle-id"];
    *buf = 138413826;
    v24 = guid;
    v25 = 2112;
    v26 = filename3;
    v27 = 2048;
    v28 = cloudKitSyncState;
    v29 = 2048;
    v30 = transferState;
    v31 = 1024;
    v32 = hideAttachment;
    v33 = 2112;
    v34 = v20;
    v35 = 1024;
    v36 = v12;
    _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "canMarkPurgeable transfer: %@ file: [%@], cloudKitSyncState: [%ld], transferState: [%ld], hideAttachment: [%{BOOL}d], bundleID: [%@], purgeable: [%{BOOL}d]", buf, 0x40u);
  }

  return v12;
}

- (BOOL)canMarkPurgeableIfIsRichLink:(BOOL)link
{
  linkCopy = link;
  filename = [(IMFileTransfer *)self filename];
  pathExtension = [filename pathExtension];

  LOBYTE(linkCopy) = [objc_opt_class() canMarkPurgeableIfIsRichLink:linkCopy isPluginPayload:{objc_msgSend(pathExtension, "im_isPluginPayloadExtension")}];
  return linkCopy;
}

+ (BOOL)canMarkPurgeableWithCKSyncState:(int64_t)state transferState:(int64_t)transferState isAudio:(BOOL)audio isSticker:(BOOL)sticker isGroupPhoto:(BOOL)photo isPluginPayload:(BOOL)payload isRichLink:(BOOL)link
{
  if (state != 1 || transferState != 5 || audio || sticker || photo)
  {
    return 0;
  }

  else
  {
    return [self canMarkPurgeableIfIsRichLink:link isPluginPayload:payload];
  }
}

- (BOOL)isLocation
{
  mimeType = [(IMFileTransfer *)self mimeType];
  v3 = [mimeType isEqualToString:@"text/x-vlocation"];

  return v3;
}

- (BOOL)isRecipeBasedSticker
{
  if (![(IMFileTransfer *)self isSticker])
  {
    return 0;
  }

  stickerUserInfo = [(IMFileTransfer *)self stickerUserInfo];
  v4 = [stickerUserInfo objectForKey:@"srecipe"];
  v5 = [v4 length] != 0;

  return v5;
}

- (BOOL)isAutoloopVideo
{
  transcoderUserInfo = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [transcoderUserInfo objectForKey:@"AVIsAutoloopVideo"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isOpusAudioMessage
{
  transcoderUserInfo = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [transcoderUserInfo objectForKey:@"AVIsOpusAudioMessage"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isHEVCWithAlphaVideo
{
  transcoderUserInfo = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [transcoderUserInfo objectForKey:@"AVIsHEVCWithAlphaVideo"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldNotTranscribeAudio
{
  transcoderUserInfo = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [transcoderUserInfo objectForKey:@"DoNotTranscribeAudio"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setShouldNotTranscribeAudio:(BOOL)audio
{
  if (audio)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(IMFileTransfer *)self setTranscoderUserInfoObject:v4 forKey:@"DoNotTranscribeAudio"];
  }

  else
  {

    [(IMFileTransfer *)self setTranscoderUserInfoObject:0 forKey:@"DoNotTranscribeAudio"];
  }
}

- (int64_t)thumbnailMode
{
  userInfo = [(IMFileTransfer *)self userInfo];
  v3 = [userInfo objectForKey:@"thumbMode"];
  intValue = [v3 intValue];

  return intValue;
}

- (void)setThumbnailMode:(int64_t)mode
{
  v5 = [(NSDictionary *)self->_localUserInfo objectForKey:@"thumbMode"];
  intValue = [v5 intValue];

  if (intValue != mode)
  {
    v7 = [(NSDictionary *)self->_localUserInfo mutableCopy];
    v8 = v7;
    if (mode)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
      [(NSDictionary *)v8 setObject:v9 forKey:@"thumbMode"];
    }

    else
    {
      [(NSDictionary *)v7 removeObjectForKey:@"thumbMode"];
    }

    localUserInfo = self->_localUserInfo;
    self->_localUserInfo = v8;
  }
}

- (BOOL)isTemporaryBackwardCompatibilityAsset
{
  userInfo = [(IMFileTransfer *)self userInfo];
  v3 = [userInfo objectForKey:@"isTemporaryBackwardCompatibilityAsset"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setIsTemporaryBackwardCompatibilityAsset:(BOOL)asset
{
  assetCopy = asset;
  if ([(IMFileTransfer *)self isTemporaryBackwardCompatibilityAsset]!= asset)
  {
    v5 = [(NSDictionary *)self->_localUserInfo mutableCopy];
    v6 = v5;
    if (assetCopy)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [(NSDictionary *)v6 setObject:v7 forKey:@"isTemporaryBackwardCompatibilityAsset"];
    }

    else
    {
      [(NSDictionary *)v5 removeObjectForKey:@"isTemporaryBackwardCompatibilityAsset"];
    }

    localUserInfo = self->_localUserInfo;
    self->_localUserInfo = v6;
  }
}

- (void)_setTransferDataURL:(id)l
{
  lCopy = l;
  transferDataURL = self->_transferDataURL;
  p_transferDataURL = &self->_transferDataURL;
  if (transferDataURL != lCopy)
  {
    v8 = lCopy;
    objc_storeStrong(p_transferDataURL, l);
    lCopy = v8;
  }
}

- (NSString)localPath
{
  localURL = [(IMFileTransfer *)self localURL];
  path = [localURL path];

  return path;
}

- (NSString)temporaryHighQualityLocalPath
{
  temporaryHighQualityLocalURL = [(IMFileTransfer *)self temporaryHighQualityLocalURL];
  path = [temporaryHighQualityLocalURL path];

  return path;
}

- (NSString)permanentHighQualityLocalPath
{
  localPath = [(IMFileTransfer *)self localPath];
  v3 = [localPath __im_filePathWithVariant:@"-hq"];

  return v3;
}

- (void)_setLocalPath:(id)path
{
  if (path)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:0];
    [(IMFileTransfer *)self _setLocalURL:v4];
  }
}

- (void)_setLocalURL:(id)l
{
  lCopy = l;
  v10 = lCopy;
  if (self->_localURL != lCopy)
  {
    objc_storeStrong(&self->_localURL, l);
    lCopy = v10;
  }

  if (lCopy)
  {
    path = [(NSURL *)lCopy path];
    lastPathComponent = [path lastPathComponent];

    filename = self->_filename;
    p_filename = &self->_filename;
    if (filename != lastPathComponent)
    {
      objc_storeStrong(p_filename, lastPathComponent);
    }

    lCopy = v10;
  }
}

- (NSString)mimeType
{
  [(IMFileTransfer *)self _calculateTypeInformation];
  mimeType = self->_mimeType;

  return mimeType;
}

- (NSString)type
{
  [(IMFileTransfer *)self _calculateTypeInformation];
  utiType = self->_utiType;

  return utiType;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  transferState = [(IMFileTransfer *)self transferState];
  cloudKitSyncState = [(IMFileTransfer *)self cloudKitSyncState];
  localURL = [(IMFileTransfer *)self localURL];
  transferredFilename = [(IMFileTransfer *)self transferredFilename];
  guid = [(IMFileTransfer *)self guid];
  error = [(IMFileTransfer *)self error];
  totalBytes = self->_totalBytes;
  createdDate = [(IMFileTransfer *)self createdDate];
  v12 = [v15 stringWithFormat:@"[%@: %p  state: %ld  sync state: %ld  local path: %@  transferred name: %@  guid: %@  error: %d  total bytes: %d  created: %@ commSafety: %d update reason: %ld]", v4, self, transferState, cloudKitSyncState, localURL, transferredFilename, guid, error, totalBytes, createdDate, -[IMFileTransfer commSafetySensitive](self, "commSafetySensitive"), -[IMFileTransfer updateReason](self, "updateReason")];

  return v12;
}

- (unint64_t)totalBytes
{
  if ([(IMFileTransfer *)self transferState]== 5 && !self->_totalBytes)
  {
    localPath = [(IMFileTransfer *)self localPath];
    if ([localPath length])
    {
      defaultHFSFileManager = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
      v8 = 0;
      v5 = [defaultHFSFileManager attributesOfItemAtPath:localPath error:&v8];
      v6 = v8;

      self->_totalBytes = [v5 fileSize];
    }
  }

  return self->_totalBytes;
}

- (unint64_t)currentBytes
{
  if ([(IMFileTransfer *)self transferState]!= 5 || [(IMFileTransfer *)self isDownloadingFromRemoteIntent])
  {
    return self->_currentBytes;
  }

  return MEMORY[0x1EEE66B58](self, sel_totalBytes);
}

+ (id)AuxGUIDFromFileTransferGUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = [@"Aux_" stringByAppendingString:dCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "nil guid passed to AuxGUIDFromFileTransferGUID", v7, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

+ (id)guidByStrippingAuxPrefix:(id)prefix
{
  prefixCopy = prefix;
  v4 = prefixCopy;
  if (prefixCopy)
  {
    v5 = [prefixCopy stringByReplacingOccurrencesOfString:@"Aux_" withString:&stru_1F1BB91F0];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "nil guid passed to guidByStrippingAuxPrefix", v8, 2u);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (int64_t)finalTransferStateForSuccess:(BOOL)success
{
  [(IMFileTransfer *)self thumbnailMode];

  return MEMORY[0x1EEE66B58](IMFileTransfer, sel_finalTransferStateForThumbnailMode_success_);
}

+ (int64_t)finalTransferStateForThumbnailMode:(int64_t)mode success:(BOOL)success
{
  v4 = 9;
  if (success)
  {
    v4 = 5;
  }

  v5 = 5;
  if (!success)
  {
    v5 = 0;
  }

  v6 = 9;
  if (!success)
  {
    v6 = 0;
  }

  if (mode == 1)
  {
    v5 = v6;
  }

  if (mode == 2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

+ (int64_t)thumbnailModeForMode:(int64_t)mode afterDownloadSuccess:(BOOL)success
{
  v4 = mode - 1;
  if (success)
  {
    v4 = mode == 1;
  }

  if (mode)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (int64_t)thumbnailModeAfterDownloadSuccess:(BOOL)success
{
  [(IMFileTransfer *)self thumbnailMode];

  return MEMORY[0x1EEE66B58](IMFileTransfer, sel_thumbnailModeForMode_afterDownloadSuccess_);
}

- (id)createAndPersistLivePhotoBundleIfNecessary
{
  v55 = *MEMORY[0x1E69E9840];
  localPath = [(IMFileTransfer *)self localPath];
  guid = [(IMFileTransfer *)self guid];
  v5 = [localPath __im_livePhotoBundlePathWithGUID:guid];

  if (v5)
  {
    v6 = v5;
    goto LABEL_16;
  }

  v7 = IMFileTransferLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    guid2 = [(IMFileTransfer *)self guid];
    *buf = 138412290;
    *&buf[4] = guid2;
    _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_DEFAULT, "Live Photo bundle path didn't exist for transfer with GUID %@", buf, 0xCu);
  }

  localPath2 = [(IMFileTransfer *)self localPath];
  _auxVideoPathIfItExists = [(IMFileTransfer *)self _auxVideoPathIfItExists];
  v11 = _auxVideoPathIfItExists;
  if (localPath2)
  {
    if (_auxVideoPathIfItExists)
    {
      if (![localPath2 isEqualToString:_auxVideoPathIfItExists])
      {
        stringByDeletingLastPathComponent = [localPath2 stringByDeletingLastPathComponent];
        guid3 = [(IMFileTransfer *)self guid];
        v18 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:guid3];
        v46 = 0;
        v47 = &v46;
        v48 = 0x2020000000;
        v19 = qword_1ED8C9760;
        v49 = qword_1ED8C9760;
        if (!qword_1ED8C9760)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1A8705704;
          v53 = &unk_1E78261C8;
          v54 = &v46;
          v20 = sub_1A8705754();
          v21 = dlsym(v20, "PFLivePhotoBundleExtension");
          *(v54[1] + 24) = v21;
          qword_1ED8C9760 = *(v54[1] + 24);
          v19 = v47[3];
        }

        _Block_object_dispose(&v46, 8);
        if (!v19)
        {
          sub_1A88C02E0();
          __break(1u);
        }

        v22 = *v19;
        v23 = [v18 stringByAppendingPathExtension:v22];

        v46 = 0;
        v47 = &v46;
        v48 = 0x2050000000;
        v24 = qword_1ED8C9680;
        v49 = qword_1ED8C9680;
        if (!qword_1ED8C9680)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1A87058C8;
          v53 = &unk_1E78261C8;
          v54 = &v46;
          sub_1A87058C8(buf);
          v24 = v47[3];
        }

        v25 = v24;
        _Block_object_dispose(&v46, 8);
        v26 = [v24 alloc];
        *buf = *MEMORY[0x1E6960C70];
        *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
        v27 = [v26 initWithPathToVideo:v11 pathToImage:localPath2 imageDisplayTime:buf pairingIdentifier:0];
        v28 = IMFileTransferLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          guid4 = [(IMFileTransfer *)self guid];
          *buf = 138412546;
          *&buf[4] = guid4;
          *&buf[12] = 2112;
          *&buf[14] = v23;
          _os_log_impl(&dword_1A85E5000, v28, OS_LOG_TYPE_DEFAULT, "Creating live photo bundle for transfer %@ at path %@", buf, 0x16u);
        }

        v30 = [MEMORY[0x1E695DFF8] fileURLWithPath:v23];
        v45 = 0;
        v31 = [v27 writeToBundleAtURL:v30 error:&v45];
        v43 = v45;
        if (v31 && ([MEMORY[0x1E696AC08] defaultManager], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "fileExistsAtPath:", v23), v32, (v33 & 1) != 0))
        {
          v34 = IMFileTransferLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            guid5 = [(IMFileTransfer *)self guid];
            *buf = 138412546;
            *&buf[4] = guid5;
            *&buf[12] = 2112;
            *&buf[14] = v23;
            _os_log_impl(&dword_1A85E5000, v34, OS_LOG_TYPE_DEFAULT, "Successfully created live photo bundle for transfer %@ at path %@", buf, 0x16u);
          }

          v42 = v23;
          [v42 im_markFileAsPurgeable:1];
          v50 = *MEMORY[0x1E695DB80];
          v36 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v51 = v36;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];

          v44 = 0;
          [v30 setResourceValues:v37 error:&v44];
          v38 = v44;
          if (v38)
          {
            v39 = IMLogHandleForCategory("IMFileTransfer");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              guid6 = [(IMFileTransfer *)self guid];
              *buf = 138412802;
              *&buf[4] = guid6;
              *&buf[12] = 2112;
              *&buf[14] = v30;
              *&buf[22] = 2112;
              v53 = v38;
              _os_log_error_impl(&dword_1A85E5000, v39, OS_LOG_TYPE_ERROR, "Error setting resource values for transfer %@ at url %@. Error: %@", buf, 0x20u);
            }
          }

          v6 = v42;
        }

        else
        {
          v37 = IMLogHandleForCategory("IMFileTransfer");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            guid7 = [(IMFileTransfer *)self guid];
            *buf = 138412802;
            *&buf[4] = guid7;
            *&buf[12] = 2112;
            *&buf[14] = v23;
            *&buf[22] = 2112;
            v53 = v43;
            _os_log_error_impl(&dword_1A85E5000, v37, OS_LOG_TYPE_ERROR, "Error creating live photo bundle for transfer %@ at path %@. Error: %@", buf, 0x20u);
          }

          v6 = 0;
        }

        goto LABEL_15;
      }

      stringByDeletingLastPathComponent = IMFileTransferLogHandle();
      if (os_log_type_enabled(stringByDeletingLastPathComponent, OS_LOG_TYPE_DEFAULT))
      {
        guid8 = [(IMFileTransfer *)self guid];
        *buf = 138412290;
        *&buf[4] = guid8;
        _os_log_impl(&dword_1A85E5000, stringByDeletingLastPathComponent, OS_LOG_TYPE_DEFAULT, "Live Photo bundle could not be created because the image and video complement paths are the same for transfer with GUID %@", buf, 0xCu);
      }
    }

    else
    {
      stringByDeletingLastPathComponent = IMFileTransferLogHandle();
      if (os_log_type_enabled(stringByDeletingLastPathComponent, OS_LOG_TYPE_DEFAULT))
      {
        guid9 = [(IMFileTransfer *)self guid];
        *buf = 138412290;
        *&buf[4] = guid9;
        _os_log_impl(&dword_1A85E5000, stringByDeletingLastPathComponent, OS_LOG_TYPE_DEFAULT, "Live Photo bundle could not be created because the video complement path didn't exist for transfer with GUID %@", buf, 0xCu);
      }
    }
  }

  else
  {
    stringByDeletingLastPathComponent = IMFileTransferLogHandle();
    if (os_log_type_enabled(stringByDeletingLastPathComponent, OS_LOG_TYPE_DEFAULT))
    {
      guid10 = [(IMFileTransfer *)self guid];
      *buf = 138412546;
      *&buf[4] = guid10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_1A85E5000, stringByDeletingLastPathComponent, OS_LOG_TYPE_DEFAULT, "Live Photo bundle could not be created because the image path didn't exist for transfer with GUID %@, videoComplementPath: %@", buf, 0x16u);
    }
  }

  v6 = 0;
LABEL_15:

LABEL_16:

  return v6;
}

- (id)_auxVideoPathIfItExists
{
  localPath = [(IMFileTransfer *)self localPath];
  stringByDeletingPathExtension = [localPath stringByDeletingPathExtension];

  v5 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"MOV"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  if ((v7 & 1) == 0)
  {
    localPath2 = [(IMFileTransfer *)self localPath];
    stringByDeletingPathExtension2 = [localPath2 stringByDeletingPathExtension];

    v5 = [stringByDeletingPathExtension2 stringByAppendingPathExtension:@"mov"];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    LOBYTE(stringByDeletingPathExtension2) = [defaultManager2 fileExistsAtPath:v5];

    if ((stringByDeletingPathExtension2 & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_isMissingAndDownloadable
{
  _isCloudKitEnabled = [(IMFileTransfer *)self _isCloudKitEnabled];
  existsAtLocalPath = [(IMFileTransfer *)self existsAtLocalPath];
  if (!existsAtLocalPath && !_isCloudKitEnabled)
  {
    existsAtLocalPath = [(IMFileTransfer *)self isDownloadExpired];
  }

  return !existsAtLocalPath;
}

- (void)_resetTransferStateIfAttachmentIsMissingAndDownloadable
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(IMFileTransfer *)self _isMissingAndDownloadable])
  {
    [(IMFileTransfer *)self _setTransferState:0];
    v3 = IMFileTransferLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_DEFAULT, "File not on disk, but in cloudkit or MMCS. Resetting state: %@", &v4, 0xCu);
    }
  }
}

- (void)_setSandboxTokenForExportDownload
{
  v14 = *MEMORY[0x1E69E9840];
  localPath = [(IMFileTransfer *)self localPath];
  stringByDeletingLastPathComponent = [localPath stringByDeletingLastPathComponent];
  [stringByDeletingLastPathComponent UTF8String];
  v5 = sandbox_extension_issue_file();

  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:4];
    free(v5);
  }

  else
  {
    v7 = IMFileTransferLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      localPath2 = [(IMFileTransfer *)self localPath];
      v9 = *__error();
      v10 = 138412546;
      v11 = localPath2;
      v12 = 1024;
      v13 = v9;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension for path %@, errno %d", &v10, 0x12u);
    }

    v6 = 0;
  }

  [(IMFileTransfer *)self setSandboxToken:v6];
}

@end