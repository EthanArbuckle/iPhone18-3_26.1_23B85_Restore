@interface CKAudioMediaObject
+ (id)UTITypes;
+ (id)generateThumbnailForPowerLevelsFromMetadata:(id)a3 color:(id)a4;
+ (id)generateThumbnailForWidth:(double)a3 color:(id)a4 powerLevels:(id)a5 fileURL:(id)a6;
+ (id)generateWaveformFromPowerLevels:(double *)a3 powerLevelsCount:(unint64_t)a4 color:(id)a5;
+ (void)_cachePowerLevels:(id)a3 forKey:(id)a4;
+ (void)normalizedPowerLevelsForPowerValues:(id)a3 powerLevelsCount:(unint64_t)a4 powerLevels:(double *)a5;
- (BOOL)isAudioMessage;
- (BOOL)isPreviewable;
- (BOOL)shouldBeQuickLooked;
- (BOOL)shouldSuppressPreview;
- (BOOL)shouldSuppressPreviewForUntrustedSender;
- (BOOL)writePreviewMetadata:(id)a3 toURL:(id)a4 error:(id *)a5;
- (Class)balloonViewClass;
- (Class)replyContextBalloonViewClass;
- (NSArray)powerLevels;
- (double)duration;
- (id)attachmentSummary:(unint64_t)a3;
- (id)composeWaveformForWidth:(double)a3 orientation:(char)a4 withColor:(id)a5;
- (id)generatePlaceholderThumbnailForWidth:(double)a3 withColor:(id)a4;
- (id)generatePreviewFromThumbnail:(id)a3 width:(double)a4 orientation:(char)a5;
- (id)generatePreviewFromThumbnail:(id)a3 width:(double)a4 orientation:(char)a5 withColor:(id)a6;
- (id)generateThumbnailForWidth:(double)a3 withColor:(id)a4;
- (id)pasteboardItemProvider;
- (id)previewItemTitle;
- (id)previewMetadataWithContentsOfURL:(id)a3 error:(id *)a4;
- (id)savedPreviewFromURL:(id)a3 forOrientation:(char)a4;
- (id)temporaryWaveformWithWidth:(double)a3 orientation:(char)a4;
- (id)waveformForOrientation:(char)a3;
- (void)restorePreviewMetadataFromDict:(id)a3;
- (void)savePreview:(id)a3 toURL:(id)a4 forOrientation:(char)a5;
- (void)setPowerLevels:(id)a3;
@end

@implementation CKAudioMediaObject

+ (id)UTITypes
{
  v2 = [MEMORY[0x1E6988168] audiovisualTypes];
  v3 = [v2 indexesOfObjectsPassingTest:&__block_literal_global_67];
  v4 = [v2 objectsAtIndexes:v3];

  return v4;
}

- (id)attachmentSummary:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Audio Files" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

- (BOOL)shouldSuppressPreview
{
  if ([(CKAudioMediaObject *)self shouldSuppressPreviewForUntrustedSender])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CKAudioMediaObject;
  return [(CKMediaObject *)&v4 shouldSuppressPreview];
}

- (BOOL)shouldSuppressPreviewForUntrustedSender
{
  v3 = [(CKMediaObject(Display) *)self senderContext];
  v4 = v3;
  if (v3 && ([v3 isFromMe] & 1) != 0 || (-[CKMediaObject messageContext](self, "messageContext"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5) || (-[CKMediaObject messageContext](self, "messageContext"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isFromMe"), v6, (v7 & 1) != 0) || -[CKAudioMediaObject hasBeenPlayed](self, "hasBeenPlayed"))
  {
    v8 = 0;
  }

  else
  {
    v10 = self;
    v11 = [(CKMediaObject *)v10 fileURL];
    v12 = [(CKAudioMediaObject *)v10 previewMetadataFilenameExtension];
    v13 = IMAttachmentPreviewMetadataFileURL();

    v14 = [(CKMediaObject *)v10 transfer];
    LODWORD(v12) = [v14 isFileURLFinalized];

    if (v12 && ([MEMORY[0x1E696AC08] defaultManager], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "path"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "fileExistsAtPath:", v16), v16, v15, v17))
    {
      [(CKAudioMediaObject *)v10 setHasBeenPlayed:1];
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)pasteboardItemProvider
{
  v3 = [(CKMediaObject *)self fileURL];
  v4 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithContentsOfURL:v3];
  v5 = [(CKMediaObject *)self filename];
  if ([(CKAudioMediaObject *)self isAudioMessage])
  {
    if ([(CKMediaObject *)self isFromMe])
    {
      v6 = CKFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"AUDIO_MESSAGE_SAVE" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      v6 = [(CKMediaObject *)self senderHandle];
      v8 = MEMORY[0x1E696AEC0];
      v9 = CKFrameworkBundle();
      v10 = [v9 localizedStringForKey:@"AUDIO_MESSAGE_VOICE_MEMO_LABEL" value:&stru_1F04268F8 table:@"ChatKit"];
      v11 = [v6 name];
      if (v11)
      {
        [v6 name];
      }

      else
      {
        [v6 displayID];
      }
      v12 = ;
      v13 = [v8 stringWithFormat:v10, v12];

      v14 = [MEMORY[0x1E69DC668] sharedApplication];
      v15 = [v14 userInterfaceLayoutDirection];

      if (v15 == 1)
      {
        v16 = @"\u200F";
      }

      else
      {
        v16 = @"\u200E";
      }

      v7 = [(__CFString *)v16 stringByAppendingString:v13];
    }

    v5 = v7;
  }

  [v4 setSuggestedName:v5];

  return v4;
}

- (double)duration
{
  v3 = 0.0;
  if (![(CKAudioMediaObject *)self shouldSuppressPreviewForUntrustedSender])
  {
    if ([(CKMediaObject *)self generatePreviewOutOfProcess]&& [(CKAudioMediaObject *)self isAudioMessage])
    {
      v4 = [(CKMediaObject *)self previewMetadata];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = [(CKMediaObject *)self previewMetadata];
        [(CKAudioMediaObject *)self restorePreviewMetadataFromDict:v6];
        [(CKAudioMediaObject *)self durationFromMetadata];
        v3 = v7;
      }
    }

    else
    {
      v10.receiver = self;
      v10.super_class = CKAudioMediaObject;
      [(CKAVMediaObject *)&v10 duration];
      return v8;
    }
  }

  return v3;
}

+ (void)_cachePowerLevels:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v5 = a4;
  if (v12 && v5)
  {
    if (!sPowerLevelDictionary)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
      v7 = sPowerLevelDictionary;
      sPowerLevelDictionary = v6;
    }

    if (!sPowerLevelKeyArray)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
      v9 = sPowerLevelKeyArray;
      sPowerLevelKeyArray = v8;
    }

    v10 = [sPowerLevelDictionary objectForKeyedSubscript:v5];

    if (v10)
    {
      [sPowerLevelDictionary removeObjectForKey:v5];
    }

    else if ([sPowerLevelKeyArray count] >= 5)
    {
      v11 = [sPowerLevelKeyArray objectAtIndexedSubscript:0];
      [sPowerLevelDictionary removeObjectForKey:v11];
      [sPowerLevelKeyArray removeFirstObject];
    }

    [sPowerLevelDictionary setObject:v12 forKeyedSubscript:v5];
    [sPowerLevelKeyArray addObject:v5];
  }
}

- (NSArray)powerLevels
{
  v2 = [(CKMediaObject *)self transferGUID];
  v3 = [CKAudioMediaObject _cachedPowerLevelsForKey:v2];

  return v3;
}

- (void)setPowerLevels:(id)a3
{
  v4 = a3;
  v5 = [(CKMediaObject *)self transferGUID];
  [CKAudioMediaObject _cachePowerLevels:v4 forKey:v5];
}

- (BOOL)isPreviewable
{
  if ([(CKAudioMediaObject *)self shouldSuppressPreview])
  {
    return 0;
  }

  return [(CKAudioMediaObject *)self isAudioMessage];
}

- (BOOL)isAudioMessage
{
  v2 = [(CKMediaObject *)self messageContext];
  v3 = [v2 isAudioMessage];

  return v3;
}

- (Class)balloonViewClass
{
  if ([(CKAudioMediaObject *)self isAudioMessage])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [v3 audioBalloonViewClass];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CKAudioMediaObject;
    v4 = [(CKMediaObject *)&v6 balloonViewClass];
  }

  return v4;
}

- (Class)replyContextBalloonViewClass
{
  [(CKAudioMediaObject *)self isAudioMessage];
  v2 = objc_opt_class();

  return v2;
}

- (void)restorePreviewMetadataFromDict:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"duration"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v5 objectForKey:@"powerLevels"];
    v10 = v9;
    if (v8 != 0.0 && v9 != 0)
    {
      [(CKAudioMediaObject *)self setDurationFromMetadata:v8];
      [(CKAudioMediaObject *)self setPowerLevelsFromMetadata:v10];
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [(CKMediaObject *)self transferGUID];
          v14 = [(CKMediaObject *)self filename];
          *buf = 134218754;
          v23 = self;
          v24 = 2112;
          v25 = v13;
          v26 = 2112;
          v27 = v14;
          v28 = 2112;
          v29 = v5;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_DEBUG, "[%p, %@, %@] duration and power levels restored from metadataDict %@.", buf, 0x2Au);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v15 = [(CKMediaObject *)self transferGUID];
        v20 = [(CKMediaObject *)self filename];
        _CKLog();
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(CKMediaObject *)self transferGUID];
      v18 = [(CKMediaObject *)self filename];
      *buf = 134218754;
      v23 = self;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "[%p, %@, %@] error restoring duration and power levels from metadataDict %@.", buf, 0x2Au);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v19 = [(CKMediaObject *)self transferGUID];
    v21 = [(CKMediaObject *)self filename];
    _CKLog();
  }
}

- (id)temporaryWaveformWithWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v31 = self;
      v32 = 1024;
      v33 = v4;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "%@ previewForOrientation:%d", buf, 0x12u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v27 = self;
    v29 = v4;
    _CKLog();
  }

  v8 = [(CKMediaObject *)self transfer:v27];
  if ([v8 isFileDataReady] & 1) != 0 || (objc_msgSend(v8, "isRestoring"))
  {
    if ([(CKMediaObject *)self generatePreviewOutOfProcess])
    {
      [(CKAudioMediaObject *)self durationFromMetadata];
      if (v9 == 0.0 || ([(CKAudioMediaObject *)self powerLevelsFromMetadata], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
      {
        v12 = [(CKMediaObject *)self previewMetadata];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = [(CKMediaObject *)self previewMetadata];
          [(CKAudioMediaObject *)self restorePreviewMetadataFromDict:v14];
        }
      }
    }

    v15 = [(CKAudioMediaObject *)self generateThumbnailForWidth:a3];
    v16 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v15 width:v4 orientation:a3];

    if (v16)
    {
      goto LABEL_36;
    }

    v17 = +[CKUIBehavior sharedBehaviors];
    v18 = [v17 defaultWaveformImage];

    if (v18)
    {
      [v18 size];
      v16 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v18 width:v4 orientation:?];

      if (v16)
      {
LABEL_36:
        v25 = v16;
        goto LABEL_39;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_DEBUG, "Failed to load default waveform image from assets", buf, 2u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog();
      }
    }

    v24 = [(CKAudioMediaObject *)self generatePlaceholderThumbnailForWidth:a3];
    v16 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v24 width:v4 orientation:a3];

    goto LABEL_36;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = self;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_DEBUG, "%@ isn't previewable.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v28 = self;
    _CKLog();
  }

  v20 = +[CKUIBehavior sharedBehaviors];
  v21 = [v20 defaultWaveformImage];

  if (v21)
  {
    v22 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v21 width:v4 orientation:a3];
  }

  else
  {
    v22 = 0;
  }

  v25 = v22;

LABEL_39:

  return v25;
}

- (id)waveformForOrientation:(char)a3
{
  v3 = a3;
  v80 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CKMediaObject *)self transferGUID];
      v7 = [(CKMediaObject *)self filename];
      *buf = 134218754;
      v73 = self;
      v74 = 2112;
      v75 = v6;
      v76 = 2112;
      v77 = v7;
      v78 = 1024;
      v79 = v3;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "[%p, %@, %@] previewForOrientation:%d", buf, 0x26u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v8 = [(CKMediaObject *)self transferGUID];
    v62 = [(CKMediaObject *)self filename];
    v63 = v3;
    v58 = self;
    v61 = v8;
    _CKLog();
  }

  v9 = [(CKMediaObject *)self transfer:v58];
  if ([v9 isFileDataReady] & 1) != 0 || (objc_msgSend(v9, "isRestoring"))
  {
    if ([(CKMediaObject *)self generatePreviewOutOfProcess])
    {
      [(CKAudioMediaObject *)self durationFromMetadata];
      if (v10 == 0.0 || ([(CKAudioMediaObject *)self powerLevelsFromMetadata], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
      {
        v13 = [(CKMediaObject *)self previewMetadata];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = [(CKMediaObject *)self previewMetadata];
          [(CKAudioMediaObject *)self restorePreviewMetadataFromDict:v15];
        }
      }
    }

    v16 = [(CKMediaObject *)self previewCacheKeyWithOrientation:v3];
    v17 = [(CKMediaObject *)self previewDispatchCache];
    v18 = [v17 cachedPreviewForKey:v16];

    if (v18)
    {
      v19 = v18;
LABEL_78:
      v26 = v19;
LABEL_79:

      goto LABEL_80;
    }

    v20 = [(CKMediaObject *)self transfer];
    v21 = [v20 isFileURLFinalized];

    if (v21)
    {
      v22 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:v3 extension:@"png" generateIntermediaries:0];
      v23 = [(CKAudioMediaObject *)self savedPreviewFromURL:v22 forOrientation:v3];
      if (v23)
      {
        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(2);
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v73 = self;
            _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_DEBUG, "%@ preview read from disk.", buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          v59 = self;
          _CKLog();
        }

        v25 = [(CKMediaObject *)self previewDispatchCache];
        [v25 setCachedPreview:v23 key:v16];

        v26 = v23;
        goto LABEL_79;
      }
    }

    v28 = +[CKUIBehavior sharedBehaviors];
    [v28 previewMaxWidth];
    v30 = v29;

    if (![(CKMediaObject *)self generatePreviewOutOfProcess]|| [(CKMediaObject *)self generatePreviewOutOfProcess]&& ([(CKAudioMediaObject *)self durationFromMetadata], v31 != 0.0) && ([(CKAudioMediaObject *)self powerLevelsFromMetadata], v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 == 0, v32, !v33))
    {
      v34 = +[CKUIBehavior sharedBehaviors];
      [(CKAudioMediaObject *)self duration];
      [v34 transcriptWaveformWidthForDuration:?];
      v30 = v35;

      [(CKAudioMediaObject *)self duration];
      v37 = v36;
      v38 = +[CKUIBehavior sharedBehaviors];
      [v38 waveformMaxWidthDuration];
      v40 = v37 > v39;

      v41 = IMOSLoggingEnabled();
      if (v40)
      {
        if (v41)
        {
          CKLogCStringForType(2);
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v73 = self;
            _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_DEBUG, "%@ duration is long. Generate waveform in background.", buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          v59 = self;
          _CKLog();
        }

        v43 = [(CKMediaObject *)self previewDispatchCache];
        v44 = [v43 isGeneratingPreviewForKey:v16];

        if ((v44 & 1) == 0)
        {
          v45 = [(CKMediaObject *)self previewDispatchCache];
          v67[0] = MEMORY[0x1E69E9820];
          v67[1] = 3221225472;
          v67[2] = __45__CKAudioMediaObject_waveformForOrientation___block_invoke_273;
          v67[3] = &unk_1E72F00B0;
          v67[4] = self;
          *&v67[5] = v30;
          v68 = v3;
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __45__CKAudioMediaObject_waveformForOrientation___block_invoke_278;
          v64[3] = &unk_1E72EBBC0;
          v64[4] = self;
          v65 = v16;
          v66 = v3;
          [v45 enqueueGenerationBlock:v67 completion:v64 withPriority:0 forKey:v65];
        }
      }

      else
      {
        if (v41)
        {
          CKLogCStringForType(2);
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v73 = self;
            _os_log_impl(&dword_19020E000, v46, OS_LOG_TYPE_DEBUG, "%@ duration is short. Generate waveform sychronously.", buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          v59 = self;
          _CKLog();
        }

        v47 = [(CKAudioMediaObject *)self generateThumbnailForWidth:v30, v59];
        v48 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v47 width:v3 orientation:v30];

        if (v48)
        {
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(2);
            v49 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v73 = self;
              _os_log_impl(&dword_19020E000, v49, OS_LOG_TYPE_DEBUG, "Finished generating preview for %@", buf, 0xCu);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
          {
            v60 = self;
            _CKLog();
          }

          v50 = [(CKMediaObject *)self previewDispatchCache];
          [v50 setCachedPreview:v48 key:v16];

          v51 = [(CKMediaObject *)self previewDispatchCache];
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = __45__CKAudioMediaObject_waveformForOrientation___block_invoke;
          v69[3] = &unk_1E72F0088;
          v69[4] = self;
          v71 = v3;
          v52 = v48;
          v70 = v52;
          [v51 enqueueSaveBlock:v69 forMediaObject:self withPriority:0];

          goto LABEL_77;
        }
      }
    }

    v53 = +[CKUIBehavior sharedBehaviors];
    v54 = [v53 defaultWaveformImage];

    if (v54)
    {
      [v54 size];
      v52 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v54 width:v3 orientation:?];

      if (v52)
      {
LABEL_77:
        v19 = v52;
        goto LABEL_78;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v55, OS_LOG_TYPE_DEBUG, "Failed to load default waveform image from assets", buf, 2u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog();
      }
    }

    v56 = [(CKAudioMediaObject *)self generatePlaceholderThumbnailForWidth:v30];
    v52 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v56 width:v3 orientation:v30];

    goto LABEL_77;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v73 = self;
      _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_DEBUG, "%@ isn't previewable.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  v26 = 0;
LABEL_80:

  return v26;
}

void __45__CKAudioMediaObject_waveformForOrientation___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Saving waveform for %@ to disk.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = *(a1 + 32);
    _CKLog();
  }

  v6 = [*(a1 + 32) previewCachesFileURLWithOrientation:*(a1 + 48) extension:@"png" generateIntermediaries:{1, v7}];
  [v3 savePreview:*(a1 + 40) toURL:v6 forOrientation:*(a1 + 48)];
}

id __45__CKAudioMediaObject_waveformForOrientation___block_invoke_273(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Starting background generation of waveform for %@.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v10 = *(a1 + 32);
    _CKLog();
  }

  v6 = *(a1 + 32);
  v7 = [v6 generateThumbnailForWidth:{*(a1 + 40), v10}];
  v8 = [v6 generatePreviewFromThumbnail:v7 width:*(a1 + 48) orientation:*(a1 + 40)];

  return v8;
}

void __45__CKAudioMediaObject_waveformForOrientation___block_invoke_278(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CKAudioMediaObject_waveformForOrientation___block_invoke_2;
  block[3] = &unk_1E72EBBC0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __45__CKAudioMediaObject_waveformForOrientation___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) previewDispatchCache];
  v3 = [v2 cachedPreviewForKey:*(a1 + 40)];

  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Finished generating preview for %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v7 = *(a1 + 32);
      _CKLog();
    }

    v6 = [*(a1 + 32) previewDispatchCache];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__CKAudioMediaObject_waveformForOrientation___block_invoke_279;
    v8[3] = &unk_1E72F0088;
    v8[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    v9 = v3;
    [v6 enqueueSaveBlock:v8 forMediaObject:*(a1 + 32) withPriority:0];

    [*(a1 + 32) postPreviewDidChangeNotifications];
  }
}

void __45__CKAudioMediaObject_waveformForOrientation___block_invoke_279(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Saving waveform for %@ to disk.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = *(a1 + 32);
    _CKLog();
  }

  v6 = [*(a1 + 32) previewCachesFileURLWithOrientation:*(a1 + 48) extension:@"png" generateIntermediaries:{1, v7}];
  [v3 savePreview:*(a1 + 40) toURL:v6 forOrientation:*(a1 + 48)];
}

- (id)composeWaveformForWidth:(double)a3 orientation:(char)a4 withColor:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(CKAudioMediaObject *)self generateThumbnailForWidth:v8 withColor:a3];
  v10 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v9 width:v5 orientation:v8 withColor:a3];

  if (!v10)
  {
    v11 = [(CKAudioMediaObject *)self generatePlaceholderThumbnailForWidth:v8 withColor:a3];
    v10 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v11 width:v5 orientation:v8 withColor:a3];
  }

  return v10;
}

- (id)generatePreviewFromThumbnail:(id)a3 width:(double)a4 orientation:(char)a5
{
  v5 = a5;
  v8 = a3;
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 theme];
  v11 = v10;
  if (v5 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  v13 = [v10 waveformColorForColorType:v12];

  v14 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v8 width:v5 orientation:v13 withColor:a4];

  return v14;
}

- (id)generatePreviewFromThumbnail:(id)a3 width:(double)a4 orientation:(char)a5 withColor:(id)a6
{
  v6 = a3;
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v6 imageWithAlignmentRectInsets:{0.0, 0.0, 0.0, objc_msgSend(v7, "waveformGapWidth")}];

  return v8;
}

- (void)savePreview:(id)a3 toURL:(id)a4 forOrientation:(char)a5
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [(CKMediaObject *)self fileManager];
    v10 = [v8 path];
    v11 = [v9 fileExistsAtPath:v10];

    if ((v11 & 1) == 0)
    {
      v12 = v7;
      v13 = v8;
      im_perform_with_task_assertion();
    }
  }
}

void __55__CKAudioMediaObject_savePreview_toURL_forOrientation___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CKCreatePNGRepresentationFromUIImageFilterTypeNone(*(a1 + 32));
  CKFreeSpaceWriteDataToURL(v2, *(a1 + 40), 1);
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      *buf = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "%@ preview saved to %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }
}

- (id)savedPreviewFromURL:(id)a3 forOrientation:(char)a4
{
  v8.receiver = self;
  v8.super_class = CKAudioMediaObject;
  v4 = [(CKMediaObject *)&v8 savedPreviewFromURL:a3 forOrientation:a4];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v4 imageWithAlignmentRectInsets:{0.0, 0.0, 0.0, objc_msgSend(v5, "waveformGapWidth")}];

  return v6;
}

- (id)generateThumbnailForWidth:(double)a3 withColor:(id)a4
{
  v6 = a4;
  v7 = [(CKMediaObject *)self generatePreviewOutOfProcess];
  v8 = [(CKAudioMediaObject *)self powerLevels];
  if (v7)
  {
    v9 = [CKAudioMediaObject generateThumbnailForWidth:v6 color:v8 powerLevels:0 fileURL:a3];

    if (!v9 && [(CKAudioMediaObject *)self shouldSuppressPreviewForUntrustedSender])
    {
      v10 = 0;
      goto LABEL_8;
    }

    v11 = [(CKAudioMediaObject *)self powerLevelsFromMetadata];
    v10 = [CKAudioMediaObject generateThumbnailForWidth:v6 color:v11 powerLevels:0 fileURL:a3];
  }

  else
  {
    v11 = [(CKMediaObject *)self fileURL];
    v10 = [CKAudioMediaObject generateThumbnailForWidth:v6 color:v8 powerLevels:v11 fileURL:a3];
    v9 = v8;
  }

LABEL_8:

  return v10;
}

+ (void)normalizedPowerLevelsForPowerValues:(id)a3 powerLevelsCount:(unint64_t)a4 powerLevels:(double *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v36 = &v36;
  v39 = a4;
  MEMORY[0x1EEE9AC00](v7);
  v8 = &v36 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, 8 * a4);
  bzero(a5, 8 * a4);
  bzero(v8, 8 * a4);
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v41;
    v14 = v39 - 1;
    v37 = a5 + 2;
    v38 = xmmword_190DD06F0;
    do
    {
      v15 = 0;
      v16 = v11;
      do
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v40 + 1) + 8 * v15) floatValue];
        v18 = v17;
        v19 = v12 * v39;
        v20 = [v7 count];
        if (v19 / v20 >= v14)
        {
          v11 = v14;
        }

        else
        {
          v11 = v19 / v20;
        }

        v21 = *&v8[8 * v11];
        v22 = v18 * v18 + a5[v11] * a5[v11] * v21;
        v23 = v21 + 1;
        v24 = sqrt(v22 / v23);
        a5[v11] = v24;
        v25 = v11 - v16;
        v26 = v11 == v16 || v16 + 1 >= v11;
        v27 = v38;
        if (!v26)
        {
          v28 = a5[v16];
          v29 = v24 - v28;
          v30 = ((v29 / v25) + v28);
          v31 = v25 & 0xFFFFFFFFFFFFFFFELL;
          v32 = vdupq_n_s64(v11 + ~v16 - 1);
          v33 = &v37[v16];
          v34 = 1;
          do
          {
            v35 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v34 - 1), v27)));
            if (v35.i8[0])
            {
              *(v33 - 1) = v30;
            }

            if (v35.i8[4])
            {
              *v33 = v30;
            }

            v34 += 2;
            v33 += 2;
            v31 -= 2;
          }

          while (v31);
        }

        *&v8[8 * v11] = v23;
        ++v12;
        ++v15;
        v16 = v11;
      }

      while (v15 != v10);
      v10 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v10);
  }
}

+ (id)generateThumbnailForWidth:(double)a3 color:(id)a4 powerLevels:(id)a5 fileURL:(id)a6
{
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = (a3 / [v12 waveformPowerLevelWidthIncrement]);

  if (v13)
  {
    bzero(v15 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v13);
    if ([v10 count])
    {
      [CKAudioMediaObject normalizedPowerLevelsForPowerValues:v10 powerLevelsCount:v13 powerLevels:v15 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
LABEL_4:
      v13 = [CKAudioMediaObject generateWaveformFromPowerLevels:v15 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0) powerLevelsCount:v13 color:v9];
      goto LABEL_8;
    }

    if (v11 && CKWaveformPowerLevelsForFileURL(v11, v15 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13))
    {
      goto LABEL_4;
    }

    v13 = 0;
  }

LABEL_8:

  return v13;
}

+ (id)generateThumbnailForPowerLevelsFromMetadata:(id)a3 color:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 count])
  {
    v7 = [v5 count];
    v8 = v14 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v8, 8 * v7);
    bzero(v8, 8 * v7);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [v5 objectAtIndex:i];
        [v10 floatValue];
        *&v8[8 * i] = v11;
      }
    }

    v12 = [CKAudioMediaObject generateWaveformFromPowerLevels:v8 powerLevelsCount:v7 color:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)generateWaveformFromPowerLevels:(double *)a3 powerLevelsCount:(unint64_t)a4 color:(id)a5
{
  v7 = a5;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 waveformMinLinearPowerLevel];
  v10 = v9;

  if (a4)
  {
    v11 = a3;
    v12 = a4;
    v13 = 1.0;
    do
    {
      if (*v11 < 1.0)
      {
        v10 = 0.0;
      }

      v14 = fmax(*v11 - v10, 0.0);
      *v11++ = v14;
      if (v13 < v14)
      {
        v13 = v14;
      }

      --v12;
    }

    while (v12);
    v15 = a3;
    v16 = a4;
    do
    {
      *v15 = *v15 / v13;
      ++v15;
      --v16;
    }

    while (v16);
  }

  v17 = CKWaveformWithPowerLevels(a3, a4, v7);

  return v17;
}

- (id)previewMetadataWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:a3];
  v6 = v5;
  if (a4 && !v5)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:4 userInfo:0];
  }

  return v6;
}

- (BOOL)writePreviewMetadata:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 writeToURL:v8 atomically:1];
    if ((v9 & 1) == 0)
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CKAudioMediaObject writePreviewMetadata:v8 toURL:v10 error:?];
      }

      if (a5)
      {
        v11 = 9;
LABEL_11:
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:v11 userInfo:0];
      }
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKAudioMediaObject writePreviewMetadata:v12 toURL:? error:?];
    }

    v9 = 0;
    if (a5)
    {
      v11 = 13;
      goto LABEL_11;
    }
  }

  return v9;
}

- (BOOL)shouldBeQuickLooked
{
  v3 = [(CKMediaObject *)self messageContext];
  v4 = [v3 isAudioMessage];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CKAudioMediaObject;
  return [(CKMediaObject *)&v6 shouldBeQuickLooked];
}

- (id)previewItemTitle
{
  v3 = [(CKMediaObject *)self filename];
  if ([v3 isEqualToString:@"Audio Message.caf"])
  {

LABEL_4:
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"PREVIEW_TITLE_AUDIO_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

    goto LABEL_6;
  }

  v4 = [(CKMediaObject *)self filename];
  v5 = [v4 isEqualToString:@"Audio Message.amr"];

  if (v5)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)generatePlaceholderThumbnailForWidth:(double)a3 withColor:(id)a4
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CKAudioMediaObject_generatePlaceholderThumbnailForWidth_withColor___block_invoke;
  block[3] = &unk_1E72EBA18;
  v6 = v5;
  v23 = v6;
  if (generatePlaceholderThumbnailForWidth_withColor__once != -1)
  {
    dispatch_once(&generatePlaceholderThumbnailForWidth_withColor__once, block);
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = a3 / [v7 waveformPowerLevelWidthIncrement];

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 waveformHeight];
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 waveformPowerLevelWidthIncrement];

  v14 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v14 scale];
  v16 = v15;

  v17 = [generatePlaceholderThumbnailForWidth_withColor__sMaxWidthPlaceholderWaveform CGImage];
  v25.origin.x = *MEMORY[0x1E695EFF8];
  v25.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v25.size.width = v8 * v13 * v16;
  v25.size.height = v11 * v16;
  v18 = CGImageCreateWithImageInRect(v17, v25);
  if (v18)
  {
    v19 = v18;
    v20 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v18 scale:0 orientation:v16];
    CFRelease(v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __69__CKAudioMediaObject_generatePlaceholderThumbnailForWidth_withColor___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 waveformMaxPowerLevelsCount];

  v4 = v7 - ((8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, 8 * v3);
  bzero(v4, 8 * v3);
  v5 = CKWaveformWithPowerLevels(v4, v3, *(a1 + 32));
  v6 = generatePlaceholderThumbnailForWidth_withColor__sMaxWidthPlaceholderWaveform;
  generatePlaceholderThumbnailForWidth_withColor__sMaxWidthPlaceholderWaveform = v5;
}

- (void)writePreviewMetadata:(uint64_t)a1 toURL:(NSObject *)a2 error:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed writing metadata to: %@", &v2, 0xCu);
}

@end