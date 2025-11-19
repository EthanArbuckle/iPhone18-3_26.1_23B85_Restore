@interface IMFileTransfer
+ (BOOL)_doesLocalURLRequireArchiving:(id)a3;
+ (BOOL)canMarkPurgeableWithCKSyncState:(int64_t)a3 transferState:(int64_t)a4 isAudio:(BOOL)a5 isSticker:(BOOL)a6 isGroupPhoto:(BOOL)a7 isPluginPayload:(BOOL)a8 isRichLink:(BOOL)a9;
+ (BOOL)genmojiFileTransferShouldDisplayAsPermanentlyFailed:(id)a3;
+ (id)AuxGUIDFromFileTransferGUID:(id)a3;
+ (id)guidByStrippingAuxPrefix:(id)a3;
+ (id)whitelistedKeys;
+ (int64_t)finalTransferStateForThumbnailMode:(int64_t)a3 success:(BOOL)a4;
+ (int64_t)thumbnailModeForMode:(int64_t)a3 afterDownloadSuccess:(BOOL)a4;
- (BOOL)_hasLegacyPreviewGenerationState;
- (BOOL)_isMissingAndDownloadable;
- (BOOL)_updateWithDictionaryRepresentation:(id)a3;
- (BOOL)canMarkPurgeable;
- (BOOL)canMarkPurgeableIfIsRichLink:(BOOL)a3;
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
- (id)_initWithGUID:(id)a3 filename:(id)a4 isDirectory:(BOOL)a5 localURL:(id)a6 account:(id)a7 otherPerson:(id)a8 totalBytes:(unint64_t)a9 hfsType:(unsigned int)a10 hfsCreator:(unsigned int)a11 hfsFlags:(unsigned __int16)a12 isIncoming:(BOOL)a13;
- (id)createAndPersistLivePhotoBundleIfNecessary;
- (id)description;
- (int64_t)_resolvedPreviewGenerationState;
- (int64_t)finalTransferStateForSuccess:(BOOL)a3;
- (int64_t)previewGenerationVersion;
- (int64_t)thumbnailMode;
- (int64_t)thumbnailModeAfterDownloadSuccess:(BOOL)a3;
- (unint64_t)currentBytes;
- (unint64_t)totalBytes;
- (void)_calculateTypeInformation;
- (void)_clear;
- (void)_clearLegacyPreviewGenerationState;
- (void)_migratePreviewGenerationState;
- (void)_resetTransferStateIfAttachmentIsMissingAndDownloadable;
- (void)_setAccount:(id)a3 otherPerson:(id)a4;
- (void)_setAveragedTransferRate:(unint64_t)a3 lastAveragedInterval:(double)a4 lastAveragedBytes:(unint64_t)a5;
- (void)_setCurrentBytes:(unint64_t)a3 totalBytes:(unint64_t)a4;
- (void)_setDirectory:(BOOL)a3 hfsType:(unsigned int)a4 hfsCreator:(unsigned int)a5 hfsFlags:(unsigned __int16)a6;
- (void)_setLocalPath:(id)a3;
- (void)_setLocalURL:(id)a3;
- (void)_setSandboxTokenForExportDownload;
- (void)_setStartDate:(id)a3;
- (void)_setTransferDataURL:(id)a3;
- (void)_updateWithDictionaryRepresentationForWhitelistedKeys:(id)a3;
- (void)dealloc;
- (void)fixInvalidTransferStateIfNeeded;
- (void)setAdaptiveImageGlyphContentIdentifier:(id)a3;
- (void)setIsGenmojiFallback:(BOOL)a3;
- (void)setIsTemporaryBackwardCompatibilityAsset:(BOOL)a3;
- (void)setPreviewGenerationVersion:(int64_t)a3;
- (void)setRefreshDate:(id)a3;
- (void)setShouldNotTranscribeAudio:(BOOL)a3;
- (void)setThumbnailMode:(int64_t)a3;
- (void)setTranscoderUserInfoIsGenmoji:(BOOL)a3;
- (void)setTranscoderUserInfoObject:(id)a3 forKey:(id)a4;
@end

@implementation IMFileTransfer

- (id)_dictionaryRepresentation
{
  [(IMFileTransfer *)self _calculateTypeInformation];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = self->_guid;
  if (v4)
  {
    CFDictionarySetValue(v3, @"IMFileTransferGUID", v4);
  }

  v5 = self->_messageGUID;
  if (v5)
  {
    CFDictionarySetValue(v3, @"IMFileTransferMessageGUID", v5);
  }

  if (self->_transferState)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    if (v6)
    {
      CFDictionarySetValue(v3, @"IMFileTransferStateKey", v6);
    }
  }

  if (self->_isIncoming)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v7)
    {
      CFDictionarySetValue(v3, @"IMFileTransferIsIncomingKey", v7);
    }
  }

  v8 = self->_filename;
  if (v8)
  {
    CFDictionarySetValue(v3, @"IMFileTransferFilenameKey", v8);
  }

  v9 = self->_mimeType;
  if (v9)
  {
    CFDictionarySetValue(v3, @"IMFileTransferMIMETypeKey", v9);
  }

  v10 = self->_utiType;
  if (v10)
  {
    CFDictionarySetValue(v3, @"IMFileTransferUTITypeKey", v10);
  }

  v11 = self->_transferredFilename;
  if (v11)
  {
    CFDictionarySetValue(v3, @"IMFileTransferTransferredFilenameKey", v11);
  }

  if (self->_hfsCreator)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    if (v12)
    {
      CFDictionarySetValue(v3, @"IMFileTransferHFSCreatorKey", v12);
    }
  }

  if (self->_hfsType)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    if (v13)
    {
      CFDictionarySetValue(v3, @"IMFileTransferHFSTypeKey", v13);
    }
  }

  if (self->_hfsFlags)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    if (v14)
    {
      CFDictionarySetValue(v3, @"IMFileTransferHFSFlagsKey", v14);
    }
  }

  v15 = self->_localUserInfo;
  if (v15)
  {
    CFDictionarySetValue(v3, @"IMFileTransferLocalUserInfoKey", v15);
  }

  v16 = self->_transcoderUserInfo;
  if (v16)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferTranscoderUserInfoKey", v16);
  }

  v17 = self->_stickerUserInfo;
  if (v17)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferStickerUserInfoKey", v17);
  }

  v18 = self->_attributionInfo;
  if (v18)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferAttributionInfoKey", v18);
  }

  v19 = self->_otherPerson;
  if (v19)
  {
    CFDictionarySetValue(v3, @"IMFileTransferOtherPersonKey", v19);
  }

  v20 = self->_accountID;
  if (v20)
  {
    CFDictionarySetValue(v3, @"IMFileTransferAccountKey", v20);
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_currentBytes];
  if (v21)
  {
    CFDictionarySetValue(v3, @"IMFileTransferCurrentBytesKey", v21);
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalBytes];
  if (v22)
  {
    CFDictionarySetValue(v3, @"IMFileTransferTotalBytesKey", v22);
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_averageTransferRate];
  if (v23)
  {
    CFDictionarySetValue(v3, @"IMFileTransferAverageRateKey", v23);
  }

  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_auxStateWasDowngraded];
  if (v24)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferAuxStateWasDowngradedKey", v24);
  }

  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAuxVideo];
  if (v25)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferIsAuxVideoKey", v25);
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_isScreenshot];
  if (v26)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferIsScreenshotKey", v26);
  }

  v27 = self->_audioTranscriptionText;
  if (v27)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferAudioTranscriptionTextKey", v27);
  }

  v28 = self->_adaptiveImageGlyphContentIdentifier;
  if (v28)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferAdaptiveImageGlyphContentIdentifierKey", v28);
  }

  v29 = self->_adaptiveImageGlyphContentDescription;
  if (v29)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferAdaptiveImageGlyphContentDescriptionKey", v29);
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAuxImage];
  if (v30)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferIsAuxImageKey", v30);
  }

  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSticker];
  if (v31)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferIsStickerKey", v31);
  }

  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_hideAttachment];
  if (v32)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferHideAttachmentKey", v32);
  }

  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_cloudKitSyncState != 0];
  if (v33)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferCloudKitSyncStateKey", v33);
  }

  v34 = [MEMORY[0x1E696AD98] numberWithInteger:self->_commSafetySensitive];
  if (v34)
  {
    CFDictionarySetValue(v3, @"sIMFileTransferIsCommSafetySensitiveKey", v34);
  }

  v35 = [MEMORY[0x1E696AD98] numberWithInteger:self->_previewGenerationState];
  if (v35)
  {
    CFDictionarySetValue(v3, @"IMFileTransferPreviewGenerationStateKey", v35);
  }

  if (self->_isDirectory)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v36)
    {
      CFDictionarySetValue(v3, @"IMFileTransferIsDirectoryKey", v36);
    }
  }

  if (self->_shouldAttemptToResume)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v37)
    {
      CFDictionarySetValue(v3, @"IMFileTransferShouldAttemptToResumeKey", v37);
    }
  }

  if (self->_shouldForceArchive)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v38)
    {
      CFDictionarySetValue(v3, @"IMFileTransferShouldForceArchive", v38);
    }
  }

  if (self->_error)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    if (v39)
    {
      CFDictionarySetValue(v3, @"IMFileTransferErrorReasonKey", v39);
    }
  }

  v40 = self->_errorDescription;
  if (v40)
  {
    CFDictionarySetValue(v3, @"IMFileTransferErrorDescriptionKey", v40);
  }

  startDate = self->_startDate;
  if (startDate)
  {
    [(NSDate *)startDate timeIntervalSince1970];
    v42 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v42)
    {
      CFDictionarySetValue(v3, @"IMFileTransferStartDate", v42);
    }
  }

  createdDate = self->_createdDate;
  if (createdDate)
  {
    [(NSDate *)createdDate timeIntervalSince1970];
    v44 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v44)
    {
      CFDictionarySetValue(v3, @"IMFileTransferCreatedDate", v44);
    }
  }

  transferDataURL = self->_transferDataURL;
  if (transferDataURL)
  {
    v46 = [(NSURL *)transferDataURL absoluteString];
    if (v46)
    {
      CFDictionarySetValue(v3, @"IMFileTransferTransferDataURLKey", v46);
    }
  }

  localURL = self->_localURL;
  if (localURL)
  {
    v48 = [(NSURL *)localURL absoluteString];
    if (v48)
    {
      CFDictionarySetValue(v3, @"IMFileTransferLocalURLKey", v48);
    }
  }

  temporaryHighQualityLocalURL = self->_temporaryHighQualityLocalURL;
  if (temporaryHighQualityLocalURL)
  {
    v50 = [(NSURL *)temporaryHighQualityLocalURL absoluteString];
    if (v50)
    {
      CFDictionarySetValue(v3, @"IMFileTransferTemporaryHighQualityLocalURLKey", v50);
    }
  }

  sandboxToken = self->_sandboxToken;
  if (sandboxToken)
  {
    v52 = sandboxToken;
    CFDictionarySetValue(v3, @"sIMFileTransferSandboxTokenKey", v52);
  }

  v53 = [MEMORY[0x1E696AD98] numberWithInteger:self->_updateReason];
  if (v53)
  {
    CFDictionarySetValue(v3, @"IMFileTransferUpdateReasonKey", v53);
  }

  v54 = v3;
  return v3;
}

- (void)_calculateTypeInformation
{
  if (!self->_utiType)
  {
    v3 = [(NSString *)self->_filename pathExtension];
    if ([v3 length])
    {
      v4 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
      v5 = [v4 UTITypeOfPath:self->_filename];
      utiType = self->_utiType;
      self->_utiType = v5;
    }
  }

  if (!self->_mimeType)
  {
    v7 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
    v8 = [v7 MIMETypeOfPath:self->_filename];
    mimeType = self->_mimeType;
    self->_mimeType = v8;

    if (!self->_mimeType)
    {
      if (self->_utiType)
      {
        v10 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
        v14 = [v10 pathExtensionForUTIType:self->_utiType];

        v11 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
        v12 = [v11 MIMETypeOfPathExtension:v14];
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

+ (BOOL)genmojiFileTransferShouldDisplayAsPermanentlyFailed:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v5 = IMLogHandleForCategory("IMFileTransfer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C4724(v5);
    }

    goto LABEL_23;
  }

  v5 = [v3 guid];
  v6 = [v4 transferState];
  v7 = 0;
  if (v6 <= 6)
  {
    if (v6 == 5)
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

    else if (v6 == 6)
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
    switch(v6)
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

+ (BOOL)_doesLocalURLRequireArchiving:(id)a3
{
  v3 = [a3 path];
  v4 = [v3 stringByAppendingPathComponent:@"Contents"];
  v5 = [v4 stringByAppendingPathComponent:@"MacOS"];

  v6 = [v3 stringByAppendingPathComponent:@"Contents"];
  v7 = [v6 stringByAppendingPathComponent:@"MacOS"];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v8 fileExistsAtPath:v5])
  {
  }

  else
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 fileExistsAtPath:v7];

    if ((v10 & 1) == 0)
    {
      v11 = sub_1A870105C(v3, 0, &v13);
      goto LABEL_6;
    }
  }

  v11 = 1;
LABEL_6:

  return v11;
}

- (id)_initWithGUID:(id)a3 filename:(id)a4 isDirectory:(BOOL)a5 localURL:(id)a6 account:(id)a7 otherPerson:(id)a8 totalBytes:(unint64_t)a9 hfsType:(unsigned int)a10 hfsCreator:(unsigned int)a11 hfsFlags:(unsigned __int16)a12 isIncoming:(BOOL)a13
{
  v43 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = [(IMFileTransfer *)self init];
  if (v24)
  {
    v25 = [v19 im_lastPathComponent];
    v38 = v22;
    v26 = [v19 isEqualToString:v25];

    if (v26)
    {
      v22 = v38;
    }

    else
    {
      v22 = v38;
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          [v19 im_lastPathComponent];
          *buf = 138412546;
          v40 = v19;
          v42 = v41 = 2112;
          v37 = v42;
          _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "tried to init IMFileTransfer with guid that has path specifiers %@. using stripped guid instead %@", buf, 0x16u);
        }
      }

      v28 = [v19 im_lastPathComponent];

      v19 = v28;
    }

    objc_storeStrong(&v24->_guid, v19);
    v29 = [v20 im_lastPathComponent];
    filename = v24->_filename;
    v24->_filename = v29;

    objc_storeStrong(&v24->_accountID, a7);
    objc_storeStrong(&v24->_otherPerson, a8);
    v31 = [MEMORY[0x1E695DF00] date];
    createdDate = v24->_createdDate;
    v24->_createdDate = v31;

    v24->_isDirectory = a5;
    v24->_hfsType = a10;
    v24->_hfsCreator = a11;
    v24->_hfsFlags = a12;
    v24->_totalBytes = a9;
    v24->_isIncoming = a13;
    if ([v21 isFileURL])
    {
      [(IMFileTransfer *)v24 _setLocalURL:v21];
    }

    else if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = v21;
        _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "tried to init IMFileTransfer with non-local URL: %@", buf, 0xCu);
      }
    }

    *&v24->_needsWrapper = 1;
    adaptiveImageGlyphContentIdentifier = v24->_adaptiveImageGlyphContentIdentifier;
    v24->_adaptiveImageGlyphContentIdentifier = 0;

    adaptiveImageGlyphContentDescription = v24->_adaptiveImageGlyphContentDescription;
    v24->_adaptiveImageGlyphContentDescription = 0;

    v24->_hideAttachment = 0;
    objc_storeStrong(&v24->_originalGUID, v19);
    v24->_commSafetySensitive = 0;
    v24->_updateReason = 0;
  }

  return v24;
}

- (void)_setAccount:(id)a3 otherPerson:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (v10 && self->_accountID != v10)
  {
    objc_storeStrong(&self->_accountID, a3);
  }

  if (v7)
  {
    otherPerson = self->_otherPerson;
    p_otherPerson = &self->_otherPerson;
    if (otherPerson != v7)
    {
      objc_storeStrong(p_otherPerson, a4);
    }
  }
}

- (void)_setStartDate:(id)a3
{
  v5 = a3;
  p_startDate = &self->_startDate;
  if (self->_startDate != v5)
  {
    v8 = v5;
    objc_storeStrong(p_startDate, a3);
    p_startDate = [(NSDate *)v8 timeIntervalSince1970];
    self->_lastAveragedInterval = v7;
  }

  MEMORY[0x1EEE66BB8](p_startDate);
}

- (void)_setCurrentBytes:(unint64_t)a3 totalBytes:(unint64_t)a4
{
  [(IMFileTransfer *)self setCurrentBytes:a3];

  MEMORY[0x1EEE66B58](self, sel_setTotalBytes_);
}

- (void)_setAveragedTransferRate:(unint64_t)a3 lastAveragedInterval:(double)a4 lastAveragedBytes:(unint64_t)a5
{
  self->_averageTransferRate = a3;
  self->_lastAveragedInterval = a4;
  self->_lastAveragedBytes = a5;
}

- (void)_setDirectory:(BOOL)a3 hfsType:(unsigned int)a4 hfsCreator:(unsigned int)a5 hfsFlags:(unsigned __int16)a6
{
  self->_isDirectory = a3;
  self->_hfsType = a4;
  self->_hfsCreator = a5;
  self->_hfsFlags = a6;
}

- (BOOL)_updateWithDictionaryRepresentation:(id)a3
{
  v124 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_guid)
  {
    v119 = [(IMFileTransfer *)self _dictionaryRepresentation];
  }

  else
  {
    v119 = 0;
  }

  [(IMFileTransfer *)self _clear];
  v5 = [v4 objectForKey:@"IMFileTransferGUID"];
  v6 = v5;
  if (v5)
  {
    v7 = [(NSURL *)v5 im_lastPathComponent];
    v8 = [(NSURL *)v6 isEqualToString:v7];

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
          v11 = [(NSURL *)v6 im_lastPathComponent];
          *buf = 138412546;
          v121 = v6;
          v122 = 2112;
          v123 = v11;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "tried to update IMFileTransfer with guid that has path specifiers %@. using stripped guid instead %@", buf, 0x16u);
        }
      }

      v12 = [(NSURL *)v6 im_lastPathComponent];

      v9 = v12;
    }
  }

  else
  {
    v9 = 0;
  }

  v115 = v9;
  objc_storeStrong(&self->_guid, v9);
  v13 = [v4 objectForKey:@"IMFileTransferMessageGUID"];
  v14 = v13;
  if (v13)
  {
    v15 = [(NSURL *)v13 im_lastPathComponent];
    v16 = [(NSURL *)v14 isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [(NSURL *)v14 im_lastPathComponent];
          *buf = 138412546;
          v121 = v14;
          v122 = 2112;
          v123 = v18;
          _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "tried to update IMFileTransfer with messageGuid that has path specifiers %@. using stripped message guid instead %@", buf, 0x16u);
        }
      }

      v19 = [(NSURL *)v14 im_lastPathComponent];

      v14 = v19;
    }
  }

  objc_storeStrong(&self->_messageGUID, v14);
  v20 = [v4 objectForKey:@"IMFileTransferStateKey"];
  self->_transferState = [v20 integerValue];

  v21 = [v4 objectForKey:@"IMFileTransferIsIncomingKey"];
  self->_isIncoming = [v21 BOOLValue];

  v22 = [v4 objectForKey:@"IMFileTransferFilenameKey"];
  v23 = [v22 im_lastPathComponent];
  filename = self->_filename;
  self->_filename = v23;

  v25 = [v4 objectForKey:@"IMFileTransferTransferredFilenameKey"];
  v26 = [v25 im_lastPathComponent];
  transferredFilename = self->_transferredFilename;
  self->_transferredFilename = v26;

  v28 = [v4 objectForKey:@"IMFileTransferMIMETypeKey"];
  mimeType = self->_mimeType;
  self->_mimeType = v28;

  v30 = [v4 objectForKey:@"IMFileTransferUTITypeKey"];
  utiType = self->_utiType;
  self->_utiType = v30;

  v32 = [v4 objectForKey:@"IMFileTransferHFSCreatorKey"];
  self->_hfsCreator = [v32 integerValue];

  v33 = [v4 objectForKey:@"IMFileTransferHFSTypeKey"];
  self->_hfsType = [v33 integerValue];

  v34 = [v4 objectForKey:@"IMFileTransferHFSFlagsKey"];
  self->_hfsFlags = [v34 integerValue];

  v35 = [v4 objectForKey:@"IMFileTransferOtherPersonKey"];
  otherPerson = self->_otherPerson;
  self->_otherPerson = v35;

  v37 = [v4 objectForKey:@"IMFileTransferAccountKey"];
  accountID = self->_accountID;
  self->_accountID = v37;

  v39 = [v4 objectForKey:@"IMFileTransferCurrentBytesKey"];
  self->_currentBytes = [v39 unsignedLongLongValue];

  v40 = [v4 objectForKey:@"IMFileTransferTotalBytesKey"];
  self->_totalBytes = [v40 unsignedLongLongValue];

  v41 = [v4 objectForKey:@"IMFileTransferAverageRateKey"];
  self->_averageTransferRate = [v41 unsignedLongLongValue];

  v42 = [v4 objectForKey:@"IMFileTransferPreviewGenerationStateKey"];
  self->_previewGenerationState = [v42 unsignedLongLongValue];

  v43 = [v4 objectForKey:@"IMFileTransferIsDirectoryKey"];
  self->_isDirectory = [v43 BOOLValue];

  v44 = [v4 objectForKey:@"IMFileTransferShouldAttemptToResumeKey"];
  self->_shouldAttemptToResume = [v44 BOOLValue];

  v45 = [v4 objectForKey:@"IMFileTransferShouldForceArchive"];
  self->_shouldForceArchive = [v45 BOOLValue];

  v46 = [v4 objectForKey:@"IMFileTransferErrorReasonKey"];
  v118 = v46;
  if (v46)
  {
    v47 = [v46 intValue];
  }

  else
  {
    v47 = 15;
    if (self->_transferState != 6)
    {
      v47 = -1;
    }
  }

  self->_error = v47;
  v48 = [v4 objectForKey:{@"IMFileTransferErrorDescriptionKey", v115}];
  errorDescription = self->_errorDescription;
  self->_errorDescription = v48;

  v50 = [v4 objectForKey:@"IMFileTransferLocalUserInfoKey"];
  localUserInfo = self->_localUserInfo;
  self->_localUserInfo = v50;

  v52 = [v4 objectForKey:@"sIMFileTransferTranscoderUserInfoKey"];
  transcoderUserInfo = self->_transcoderUserInfo;
  self->_transcoderUserInfo = v52;

  v54 = [v4 objectForKey:@"sIMFileTransferStickerUserInfoKey"];
  stickerUserInfo = self->_stickerUserInfo;
  self->_stickerUserInfo = v54;

  v56 = [v4 objectForKey:@"sIMFileTransferAttributionInfoKey"];
  attributionInfo = self->_attributionInfo;
  self->_attributionInfo = v56;

  if (self->_error == -2)
  {
    self->_error = 18;
  }

  v58 = [v4 objectForKey:@"IMFileTransferStartDate"];
  v117 = v58;
  if (v58)
  {
    v59 = MEMORY[0x1E695DF00];
    [(NSDate *)v58 doubleValue];
    v58 = [v59 dateWithTimeIntervalSince1970:?];
  }

  startDate = self->_startDate;
  self->_startDate = v58;

  v61 = [v4 objectForKey:@"IMFileTransferCreatedDate"];
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

  v66 = [v4 objectForKey:@"IMFileTransferTransferDataURLKey"];
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

  v69 = [v4 objectForKey:@"IMFileTransferLocalURLKey"];
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

  v74 = [v4 objectForKey:@"IMFileTransferTemporaryHighQualityLocalURLKey"];
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
    v79 = [v4 objectForKey:@"IMFileTransferLocalPathKey"];
    if (v79)
    {
      [(IMFileTransfer *)self _setLocalPath:v79];
    }
  }

  v80 = [v4 objectForKey:@"sIMFileTransferAuxStateWasDowngradedKey"];
  v81 = v80;
  if (v80)
  {
    if (self->_auxStateWasDowngraded)
    {
      v82 = 1;
    }

    else
    {
      v82 = [v80 BOOLValue];
    }

    self->_auxStateWasDowngraded = v82;
  }

  v83 = [v4 objectForKey:@"sIMFileTransferIsAuxImageKey"];

  if (v83)
  {
    v84 = [v4 objectForKey:@"sIMFileTransferIsAuxImageKey"];
    v85 = [v84 BOOLValue];

    if ((v85 & 1) != 0 || self->_auxStateWasDowngraded)
    {
      self->_isAuxImage = v85;
    }
  }

  v86 = [v4 objectForKey:@"sIMFileTransferIsAuxVideoKey"];

  if (v86)
  {
    v87 = [v4 objectForKey:@"sIMFileTransferIsAuxVideoKey"];
    v88 = [v87 BOOLValue];

    if ((v88 & 1) != 0 || self->_auxStateWasDowngraded)
    {
      self->_isAuxVideo = v88;
    }
  }

  v89 = [v4 objectForKey:@"sIMFileTransferIsScreenshotKey"];

  if (v89)
  {
    v90 = [v4 objectForKey:@"sIMFileTransferIsScreenshotKey"];
    self->_isScreenshot = [v90 BOOLValue];
  }

  v91 = [v4 objectForKey:@"sIMFileTransferAudioTranscriptionTextKey"];

  if (v91)
  {
    v92 = [v4 objectForKey:@"sIMFileTransferAudioTranscriptionTextKey"];
    v93 = [v92 copy];
    audioTranscriptionText = self->_audioTranscriptionText;
    self->_audioTranscriptionText = v93;
  }

  v95 = [v4 objectForKey:@"sIMFileTransferIsStickerKey"];

  if (v95)
  {
    v96 = [v4 objectForKey:@"sIMFileTransferIsStickerKey"];
    self->_isSticker = [v96 BOOLValue];
  }

  v97 = [v4 objectForKey:@"sIMFileTransferAdaptiveImageGlyphContentIdentifierKey"];
  adaptiveImageGlyphContentIdentifier = self->_adaptiveImageGlyphContentIdentifier;
  self->_adaptiveImageGlyphContentIdentifier = v97;

  v99 = [v4 objectForKey:@"sIMFileTransferAdaptiveImageGlyphContentDescriptionKey"];
  adaptiveImageGlyphContentDescription = self->_adaptiveImageGlyphContentDescription;
  self->_adaptiveImageGlyphContentDescription = v99;

  v101 = [v4 objectForKey:@"sIMFileTransferHideAttachmentKey"];

  if (v101)
  {
    v102 = [v4 objectForKey:@"sIMFileTransferHideAttachmentKey"];
    self->_hideAttachment = [v102 BOOLValue];
  }

  v103 = [v4 objectForKey:@"sIMFileTransferCloudKitSyncStateKey"];

  if (v103)
  {
    v104 = [v4 objectForKey:@"sIMFileTransferCloudKitSyncStateKey"];
    self->_cloudKitSyncState = [v104 BOOLValue];
  }

  v105 = [v4 objectForKey:@"sIMFileTransferIsCommSafetySensitiveKey"];

  if (v105)
  {
    v106 = [v4 objectForKey:@"sIMFileTransferIsCommSafetySensitiveKey"];
    self->_commSafetySensitive = [v106 integerValue];
  }

  v107 = [v4 objectForKey:@"IMFileTransferUpdateReasonKey"];

  if (v107)
  {
    v108 = [v4 objectForKey:@"IMFileTransferUpdateReasonKey"];
    self->_updateReason = [v108 integerValue];
  }

  v109 = [v4 objectForKey:@"sIMFileTransferSandboxTokenKey"];
  sandboxToken = self->_sandboxToken;
  self->_sandboxToken = v109;

  if (v119)
  {
    v111 = [(IMFileTransfer *)self _dictionaryRepresentation];
    v112 = [v119 isEqualToDictionary:v111];

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

- (void)_updateWithDictionaryRepresentationForWhitelistedKeys:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = [v5 allKeys];
  v10 = [v4 setWithArray:v6];

  v7 = +[IMFileTransfer whitelistedKeys];
  [v10 intersectSet:v7];

  v8 = [v10 allObjects];
  v9 = [v5 dictionaryWithValuesForKeys:v8];

  [(IMFileTransfer *)self _updateWithDictionaryRepresentation:v9];
}

- (id)_dictionaryToSend
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  guid = self->_guid;
  if (guid)
  {
    CFDictionarySetValue(v3, @"IMFileTransferGUID", guid);
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
    v6 = v3;
  }

  else
  {
    v6 = [(IMFileTransfer *)self createdDate];
  }

  v7 = v6;

  return v7;
}

- (NSString)originalFilename
{
  v3 = [(IMFileTransfer *)self userInfo];
  v4 = [v3 objectForKey:@"service"];

  if (v4 && [(__CFString *)IMServiceNameRCS[0] isEqualToString:v4])
  {
    v5 = [(IMFileTransfer *)self userInfo];
    v6 = [v5 objectForKey:@"file"];

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
  v3 = [(IMFileTransfer *)self userInfo];
  v4 = [v3 objectForKey:@"service"];

  if (!v4 || ![(__CFString *)IMServiceNameRCS[0] isEqualToString:v4])
  {
    v11 = [(IMFileTransfer *)self refreshDate];
    if (!v11)
    {
      v11 = [(IMFileTransfer *)self createdDate];
      if (!v11)
      {
        v12 = 1;
        goto LABEL_12;
      }
    }

    v6 = v11;
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2678400.0];
    v10 = [v7 compare:v6] == 1;
    goto LABEL_8;
  }

  v5 = [(IMFileTransfer *)self userInfo];
  v6 = [v5 objectForKey:@"file"];

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

- (void)setRefreshDate:(id)a3
{
  v9 = a3;
  v4 = [(NSDictionary *)self->_localUserInfo objectForKey:@"refresh-date"];
  v5 = IMSharedHelperAreObjectsLogicallySame(v4, v9);

  if ((v5 & 1) == 0)
  {
    v6 = [(NSDictionary *)self->_localUserInfo mutableCopy];
    v7 = v6;
    if (v9)
    {
      [(NSDictionary *)v6 setObject:v9 forKey:@"refresh-date"];
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
  v3 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
  v4 = [(IMFileTransfer *)self filename];
  v5 = [v3 displayNameOfFileWithName:v4 hfsFlags:{-[IMFileTransfer hfsFlags](self, "hfsFlags")}];

  return v5;
}

- (BOOL)existsAtLocalPath
{
  if ([(IMFileTransfer *)self isDownloadingFromRemoteIntent]|| self->_isIncoming && [(IMFileTransfer *)self transferState]!= 5)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [(IMFileTransfer *)self localPath];
  v6 = [v4 fileExistsAtPath:v5];

  return v6;
}

- (BOOL)thumbnailExistsAtLocalPath
{
  v3 = [(IMFileTransfer *)self isInThumbnailState];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [(IMFileTransfer *)self localPath];
    v6 = [v4 fileExistsAtPath:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)isSticker
{
  v2 = [(IMFileTransfer *)self stickerUserInfo];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isContact
{
  v3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [(IMFileTransfer *)self mimeType];
  v5 = [v4 stringByTrimmingCharactersInSet:v3];
  v6 = [v5 length];

  if (v6)
  {
    v7 = *MEMORY[0x1E6963718];
    v8 = [(IMFileTransfer *)self mimeType];
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v7, v8, 0);

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
  v2 = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [v2 objectForKey:@"AVIsAnimojiV2"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)wantsAlphaRemoved
{
  v2 = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [v2 objectForKey:@"AVIsRemoveAlpha"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setAdaptiveImageGlyphContentIdentifier:(id)a3
{
  v5 = a3;
  p_adaptiveImageGlyphContentIdentifier = &self->_adaptiveImageGlyphContentIdentifier;
  if (self->_adaptiveImageGlyphContentIdentifier != v5)
  {
    objc_storeStrong(p_adaptiveImageGlyphContentIdentifier, a3);
    p_adaptiveImageGlyphContentIdentifier = [(IMFileTransfer *)self setTranscoderUserInfoIsGenmoji:[(NSString *)self->_adaptiveImageGlyphContentIdentifier length]!= 0];
  }

  MEMORY[0x1EEE66BB8](p_adaptiveImageGlyphContentIdentifier);
}

- (void)setTranscoderUserInfoObject:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = self->_transcoderUserInfo;
  v8 = [(NSDictionary *)v7 objectForKeyedSubscript:@"isGenmoji"];
  if (([v8 isEqual:v13] & 1) == 0)
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
    if (v13)
    {
      [v9 setObject:v13 forKeyedSubscript:v6];
    }

    else
    {
      [v9 removeObjectForKey:v6];
    }

    v11 = [v10 copy];
    transcoderUserInfo = self->_transcoderUserInfo;
    self->_transcoderUserInfo = v11;
  }
}

- (void)setTranscoderUserInfoIsGenmoji:(BOOL)a3
{
  if (a3)
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isGenmoji
{
  v2 = [(NSDictionary *)self->_transcoderUserInfo objectForKeyedSubscript:@"isGenmoji"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIsGenmojiFallback:(BOOL)a3
{
  if (a3)
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
  v2 = [(IMFileTransfer *)self attributionInfo];
  HasLegacyState = IMFileTransferAttributionInfoHasLegacyState(v2);

  return HasLegacyState;
}

- (int64_t)_resolvedPreviewGenerationState
{
  previewGenerationState = self->_previewGenerationState;
  v4 = [(IMFileTransfer *)self attributionInfo];
  v5 = [(IMFileTransfer *)self type];
  v6 = IMFileTransferPreviewGenerationStateWithStoredState(previewGenerationState, v4, v5);

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
      v4 = [(IMFileTransfer *)self guid];
      v5 = 138412290;
      v6 = v4;
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
    v3 = [(IMFileTransfer *)self attributionInfo];
    v4 = [v3 mutableCopy];

    v6[0] = @"pgens";
    v6[1] = @"pgenp";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
    [v4 removeObjectsForKeys:v5];

    [(IMFileTransfer *)self setAttributionInfo:v4];
  }
}

- (int64_t)previewGenerationVersion
{
  v2 = [(IMFileTransfer *)self attributionInfo];
  v3 = [v2 objectForKeyedSubscript:@"pgenv"];

  v4 = [v3 integerValue];
  return v4;
}

- (void)setPreviewGenerationVersion:(int64_t)a3
{
  v5 = [(IMFileTransfer *)self attributionInfo];
  v6 = [v5 mutableCopy];
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

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v10 setObject:v9 forKeyedSubscript:@"pgenv"];

  [(IMFileTransfer *)self setAttributionInfo:v10];
}

- (BOOL)canMarkPurgeable
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(IMFileTransfer *)self filename];
  v4 = [v3 pathExtension];

  v5 = [v4 im_isAudioMessageExtension];
  v6 = [(IMFileTransfer *)self filename];
  v7 = [v6 containsString:@"GroupPhotoImage"];

  v8 = [v4 im_isPluginPayloadExtension];
  v9 = [(IMFileTransfer *)self attributionInfo];
  v10 = [v9 objectForKeyedSubscript:@"bundle-id"];
  v11 = [v10 hasPrefix:@"com.apple.messages.URLBalloonProvider"];

  LOBYTE(v22) = v11;
  v12 = [objc_opt_class() canMarkPurgeableWithCKSyncState:-[IMFileTransfer cloudKitSyncState](self transferState:"cloudKitSyncState") isAudio:-[IMFileTransfer transferState](self isSticker:"transferState") isGroupPhoto:v5 isPluginPayload:-[IMFileTransfer isSticker](self isRichLink:{"isSticker"), v7, v8, v22}];
  v13 = IMOffloadingLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(IMFileTransfer *)self guid];
    v15 = [(IMFileTransfer *)self filename];
    v16 = [(IMFileTransfer *)self cloudKitSyncState];
    v17 = [(IMFileTransfer *)self transferState];
    v18 = [(IMFileTransfer *)self hideAttachment];
    v19 = [(IMFileTransfer *)self attributionInfo];
    v20 = [v19 objectForKeyedSubscript:@"bundle-id"];
    *buf = 138413826;
    v24 = v14;
    v25 = 2112;
    v26 = v15;
    v27 = 2048;
    v28 = v16;
    v29 = 2048;
    v30 = v17;
    v31 = 1024;
    v32 = v18;
    v33 = 2112;
    v34 = v20;
    v35 = 1024;
    v36 = v12;
    _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "canMarkPurgeable transfer: %@ file: [%@], cloudKitSyncState: [%ld], transferState: [%ld], hideAttachment: [%{BOOL}d], bundleID: [%@], purgeable: [%{BOOL}d]", buf, 0x40u);
  }

  return v12;
}

- (BOOL)canMarkPurgeableIfIsRichLink:(BOOL)a3
{
  v3 = a3;
  v4 = [(IMFileTransfer *)self filename];
  v5 = [v4 pathExtension];

  LOBYTE(v3) = [objc_opt_class() canMarkPurgeableIfIsRichLink:v3 isPluginPayload:{objc_msgSend(v5, "im_isPluginPayloadExtension")}];
  return v3;
}

+ (BOOL)canMarkPurgeableWithCKSyncState:(int64_t)a3 transferState:(int64_t)a4 isAudio:(BOOL)a5 isSticker:(BOOL)a6 isGroupPhoto:(BOOL)a7 isPluginPayload:(BOOL)a8 isRichLink:(BOOL)a9
{
  if (a3 != 1 || a4 != 5 || a5 || a6 || a7)
  {
    return 0;
  }

  else
  {
    return [a1 canMarkPurgeableIfIsRichLink:a9 isPluginPayload:a8];
  }
}

- (BOOL)isLocation
{
  v2 = [(IMFileTransfer *)self mimeType];
  v3 = [v2 isEqualToString:@"text/x-vlocation"];

  return v3;
}

- (BOOL)isRecipeBasedSticker
{
  if (![(IMFileTransfer *)self isSticker])
  {
    return 0;
  }

  v3 = [(IMFileTransfer *)self stickerUserInfo];
  v4 = [v3 objectForKey:@"srecipe"];
  v5 = [v4 length] != 0;

  return v5;
}

- (BOOL)isAutoloopVideo
{
  v2 = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [v2 objectForKey:@"AVIsAutoloopVideo"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isOpusAudioMessage
{
  v2 = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [v2 objectForKey:@"AVIsOpusAudioMessage"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isHEVCWithAlphaVideo
{
  v2 = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [v2 objectForKey:@"AVIsHEVCWithAlphaVideo"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldNotTranscribeAudio
{
  v2 = [(IMFileTransfer *)self transcoderUserInfo];
  v3 = [v2 objectForKey:@"DoNotTranscribeAudio"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setShouldNotTranscribeAudio:(BOOL)a3
{
  if (a3)
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
  v2 = [(IMFileTransfer *)self userInfo];
  v3 = [v2 objectForKey:@"thumbMode"];
  v4 = [v3 intValue];

  return v4;
}

- (void)setThumbnailMode:(int64_t)a3
{
  v5 = [(NSDictionary *)self->_localUserInfo objectForKey:@"thumbMode"];
  v6 = [v5 intValue];

  if (v6 != a3)
  {
    v7 = [(NSDictionary *)self->_localUserInfo mutableCopy];
    v8 = v7;
    if (a3)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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
  v2 = [(IMFileTransfer *)self userInfo];
  v3 = [v2 objectForKey:@"isTemporaryBackwardCompatibilityAsset"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setIsTemporaryBackwardCompatibilityAsset:(BOOL)a3
{
  v3 = a3;
  if ([(IMFileTransfer *)self isTemporaryBackwardCompatibilityAsset]!= a3)
  {
    v5 = [(NSDictionary *)self->_localUserInfo mutableCopy];
    v6 = v5;
    if (v3)
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

- (void)_setTransferDataURL:(id)a3
{
  v5 = a3;
  transferDataURL = self->_transferDataURL;
  p_transferDataURL = &self->_transferDataURL;
  if (transferDataURL != v5)
  {
    v8 = v5;
    objc_storeStrong(p_transferDataURL, a3);
    v5 = v8;
  }
}

- (NSString)localPath
{
  v2 = [(IMFileTransfer *)self localURL];
  v3 = [v2 path];

  return v3;
}

- (NSString)temporaryHighQualityLocalPath
{
  v2 = [(IMFileTransfer *)self temporaryHighQualityLocalURL];
  v3 = [v2 path];

  return v3;
}

- (NSString)permanentHighQualityLocalPath
{
  v2 = [(IMFileTransfer *)self localPath];
  v3 = [v2 __im_filePathWithVariant:@"-hq"];

  return v3;
}

- (void)_setLocalPath:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3 isDirectory:0];
    [(IMFileTransfer *)self _setLocalURL:v4];
  }
}

- (void)_setLocalURL:(id)a3
{
  v5 = a3;
  v10 = v5;
  if (self->_localURL != v5)
  {
    objc_storeStrong(&self->_localURL, a3);
    v5 = v10;
  }

  if (v5)
  {
    v6 = [(NSURL *)v5 path];
    v7 = [v6 lastPathComponent];

    filename = self->_filename;
    p_filename = &self->_filename;
    if (filename != v7)
    {
      objc_storeStrong(p_filename, v7);
    }

    v5 = v10;
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
  v14 = [(IMFileTransfer *)self transferState];
  v5 = [(IMFileTransfer *)self cloudKitSyncState];
  v6 = [(IMFileTransfer *)self localURL];
  v7 = [(IMFileTransfer *)self transferredFilename];
  v8 = [(IMFileTransfer *)self guid];
  v9 = [(IMFileTransfer *)self error];
  totalBytes = self->_totalBytes;
  v11 = [(IMFileTransfer *)self createdDate];
  v12 = [v15 stringWithFormat:@"[%@: %p  state: %ld  sync state: %ld  local path: %@  transferred name: %@  guid: %@  error: %d  total bytes: %d  created: %@ commSafety: %d update reason: %ld]", v4, self, v14, v5, v6, v7, v8, v9, totalBytes, v11, -[IMFileTransfer commSafetySensitive](self, "commSafetySensitive"), -[IMFileTransfer updateReason](self, "updateReason")];

  return v12;
}

- (unint64_t)totalBytes
{
  if ([(IMFileTransfer *)self transferState]== 5 && !self->_totalBytes)
  {
    v3 = [(IMFileTransfer *)self localPath];
    if ([v3 length])
    {
      v4 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
      v8 = 0;
      v5 = [v4 attributesOfItemAtPath:v3 error:&v8];
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

+ (id)AuxGUIDFromFileTransferGUID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [@"Aux_" stringByAppendingString:v3];
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

+ (id)guidByStrippingAuxPrefix:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringByReplacingOccurrencesOfString:@"Aux_" withString:&stru_1F1BB91F0];
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

- (int64_t)finalTransferStateForSuccess:(BOOL)a3
{
  [(IMFileTransfer *)self thumbnailMode];

  return MEMORY[0x1EEE66B58](IMFileTransfer, sel_finalTransferStateForThumbnailMode_success_);
}

+ (int64_t)finalTransferStateForThumbnailMode:(int64_t)a3 success:(BOOL)a4
{
  v4 = 9;
  if (a4)
  {
    v4 = 5;
  }

  v5 = 5;
  if (!a4)
  {
    v5 = 0;
  }

  v6 = 9;
  if (!a4)
  {
    v6 = 0;
  }

  if (a3 == 1)
  {
    v5 = v6;
  }

  if (a3 == 2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

+ (int64_t)thumbnailModeForMode:(int64_t)a3 afterDownloadSuccess:(BOOL)a4
{
  v4 = a3 - 1;
  if (a4)
  {
    v4 = a3 == 1;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (int64_t)thumbnailModeAfterDownloadSuccess:(BOOL)a3
{
  [(IMFileTransfer *)self thumbnailMode];

  return MEMORY[0x1EEE66B58](IMFileTransfer, sel_thumbnailModeForMode_afterDownloadSuccess_);
}

- (id)createAndPersistLivePhotoBundleIfNecessary
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = [(IMFileTransfer *)self localPath];
  v4 = [(IMFileTransfer *)self guid];
  v5 = [v3 __im_livePhotoBundlePathWithGUID:v4];

  if (v5)
  {
    v6 = v5;
    goto LABEL_16;
  }

  v7 = IMFileTransferLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(IMFileTransfer *)self guid];
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_DEFAULT, "Live Photo bundle path didn't exist for transfer with GUID %@", buf, 0xCu);
  }

  v9 = [(IMFileTransfer *)self localPath];
  v10 = [(IMFileTransfer *)self _auxVideoPathIfItExists];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      if (![v9 isEqualToString:v10])
      {
        v12 = [v9 stringByDeletingLastPathComponent];
        v17 = [(IMFileTransfer *)self guid];
        v18 = [v12 stringByAppendingPathComponent:v17];
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
        v27 = [v26 initWithPathToVideo:v11 pathToImage:v9 imageDisplayTime:buf pairingIdentifier:0];
        v28 = IMFileTransferLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(IMFileTransfer *)self guid];
          *buf = 138412546;
          *&buf[4] = v29;
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
            v35 = [(IMFileTransfer *)self guid];
            *buf = 138412546;
            *&buf[4] = v35;
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
              v41 = [(IMFileTransfer *)self guid];
              *buf = 138412802;
              *&buf[4] = v41;
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
            v40 = [(IMFileTransfer *)self guid];
            *buf = 138412802;
            *&buf[4] = v40;
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

      v12 = IMFileTransferLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(IMFileTransfer *)self guid];
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_DEFAULT, "Live Photo bundle could not be created because the image and video complement paths are the same for transfer with GUID %@", buf, 0xCu);
      }
    }

    else
    {
      v12 = IMFileTransferLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(IMFileTransfer *)self guid];
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_DEFAULT, "Live Photo bundle could not be created because the video complement path didn't exist for transfer with GUID %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = IMFileTransferLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(IMFileTransfer *)self guid];
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_DEFAULT, "Live Photo bundle could not be created because the image path didn't exist for transfer with GUID %@, videoComplementPath: %@", buf, 0x16u);
    }
  }

  v6 = 0;
LABEL_15:

LABEL_16:

  return v6;
}

- (id)_auxVideoPathIfItExists
{
  v3 = [(IMFileTransfer *)self localPath];
  v4 = [v3 stringByDeletingPathExtension];

  v5 = [v4 stringByAppendingPathExtension:@"MOV"];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if ((v7 & 1) == 0)
  {
    v8 = [(IMFileTransfer *)self localPath];
    v9 = [v8 stringByDeletingPathExtension];

    v5 = [v9 stringByAppendingPathExtension:@"mov"];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    LOBYTE(v9) = [v10 fileExistsAtPath:v5];

    if ((v9 & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_isMissingAndDownloadable
{
  v3 = [(IMFileTransfer *)self _isCloudKitEnabled];
  v4 = [(IMFileTransfer *)self existsAtLocalPath];
  if (!v4 && !v3)
  {
    v4 = [(IMFileTransfer *)self isDownloadExpired];
  }

  return !v4;
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
      v5 = self;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_DEFAULT, "File not on disk, but in cloudkit or MMCS. Resetting state: %@", &v4, 0xCu);
    }
  }
}

- (void)_setSandboxTokenForExportDownload
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(IMFileTransfer *)self localPath];
  v4 = [v3 stringByDeletingLastPathComponent];
  [v4 UTF8String];
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
      v8 = [(IMFileTransfer *)self localPath];
      v9 = *__error();
      v10 = 138412546;
      v11 = v8;
      v12 = 1024;
      v13 = v9;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension for path %@, errno %d", &v10, 0x12u);
    }

    v6 = 0;
  }

  [(IMFileTransfer *)self setSandboxToken:v6];
}

@end