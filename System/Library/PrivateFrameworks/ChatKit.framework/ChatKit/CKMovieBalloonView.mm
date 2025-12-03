@interface CKMovieBalloonView
- (BOOL)isCodecTypeAllowed:(unsigned int)allowed;
- (id)createAVAssetAndValidateCodec;
- (id)description;
- (void)cleanupPlayerIfNeeded;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)tapGestureRecognized:(id)recognized;
- (void)videoDidReachEnd:(id)end;
@end

@implementation CKMovieBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect
{
  effectCopy = effect;
  orientationCopy = orientation;
  v11.receiver = self;
  v11.super_class = CKMovieBalloonView;
  objectCopy = object;
  [(CKImageBalloonView *)&v11 configureForMediaObject:objectCopy previewWidth:orientationCopy orientation:effectCopy hasInvisibleInkEffect:width];
  [(CKMovieBalloonView *)self setMediaObject:objectCopy, v11.receiver, v11.super_class];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKMovieBalloonView;
  [(CKImageBalloonView *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKMovieBalloonView;
  v4 = [(CKImageBalloonView *)&v8 description];
  mediaObject = [(CKMovieBalloonView *)self mediaObject];
  v6 = [v3 stringWithFormat:@"%@ mediaObject: %@", v4, mediaObject];

  return v6;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = CKMovieBalloonView;
  [(CKImageBalloonView *)&v28 layoutSubviews];
  avPlayerLayer = [(CKMovieBalloonView *)self avPlayerLayer];
  [(CKMovieBalloonView *)self bounds];
  [avPlayerLayer setFrame:?];

  avPlayerLayer2 = [(CKMovieBalloonView *)self avPlayerLayer];

  if (avPlayerLayer2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    [(CKBalloonView *)self balloonDescriptor];
    videoPlayerMaskLayer = self->_videoPlayerMaskLayer;
    if (!videoPlayerMaskLayer)
    {
      v6 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
      v16 = v24;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      v12 = v20;
      v13 = v21;
      v14 = v22;
      v15 = v23;
      v7 = [(CKBalloonMaskLayer *)v6 initWithDescriptor:&v12];
      v8 = self->_videoPlayerMaskLayer;
      self->_videoPlayerMaskLayer = v7;

      videoPlayerMaskLayer = self->_videoPlayerMaskLayer;
    }

    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v12 = v20;
    v13 = v21;
    v14 = v22;
    v15 = v23;
    [(CKBalloonMaskLayer *)videoPlayerMaskLayer updateDescriptor:&v12];
    v9 = self->_videoPlayerMaskLayer;
    avPlayerLayer3 = [(CKMovieBalloonView *)self avPlayerLayer];
    [avPlayerLayer3 setMask:v9];

    avPlayerLayer4 = [(CKMovieBalloonView *)self avPlayerLayer];
    [avPlayerLayer4 bounds];
    [(CKBalloonMaskLayer *)self->_videoPlayerMaskLayer setFrame:?];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKMovieBalloonView;
  [(CKImageBalloonView *)&v3 prepareForReuse];
  [(CKMovieBalloonView *)self cleanupPlayerIfNeeded];
}

- (void)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = CKMovieBalloonView;
  [(CKImageBalloonView *)&v5 prepareForDisplay];
  avPlayerLayer = [(CKMovieBalloonView *)self avPlayerLayer];
  if (avPlayerLayer)
  {
    layer = [(CKMovieBalloonView *)self layer];
    [layer addSublayer:avPlayerLayer];
  }
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  avPlayerLayer = [(CKMovieBalloonView *)self avPlayerLayer];
  if (avPlayerLayer)
  {
    [(CKMovieBalloonView *)self cleanupPlayerIfNeeded];
    delegate = [(CKBalloonView *)self delegate];
    mediaObject = [(CKMovieBalloonView *)self mediaObject];
    [delegate balloonView:self mediaObjectDidFinishPlaying:mediaObject];
  }

  else
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    delegate = [v8 playButtonImage];

    [(CKMovieBalloonView *)self bounds];
    [(CKMovieBalloonView *)self alignmentRectForFrame:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [delegate size];
    v18 = v17;
    v20 = v19;
    if (CKMainScreenScale_once_50 != -1)
    {
      [CKMovieBalloonView tapGestureRecognized:];
    }

    if (*&CKMainScreenScale_sMainScreenScale_50 == 0.0)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = *&CKMainScreenScale_sMainScreenScale_50;
    }

    mediaObject = [(CKMovieBalloonView *)self createAVAssetAndValidateCodec];
    if (!mediaObject && IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "CKMovieBalloonView: Failed to create AVAsset and/or validate codec", buf, 2u);
      }
    }

    isObscured = [(CKObscurableBalloonView *)self isObscured];
    v24 = +[CKUIBehavior sharedBehaviors];
    playsInlineVideo = [v24 playsInlineVideo];

    if (mediaObject && !isObscured && playsInlineVideo && ([recognizedCopy locationInView:self], v41.x = v26, v41.y = v27, v42.origin.x = floor((v10 + (v14 - v18) * 0.5) * v21) / v21, v42.origin.y = floor((v12 + (v16 - v20) * 0.5) * v21) / v21, v42.size.width = v18, v42.size.height = v20, CGRectContainsPoint(v42, v41)))
    {
      v28 = [MEMORY[0x1E69880B0] playerItemWithAsset:mediaObject];
      [(CKMovieBalloonView *)self setAVPlayerItem:v28];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_videoDidReachEnd_ name:*MEMORY[0x1E6987A10] object:v28];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_videoDidReachEnd_ name:*MEMORY[0x1E6987A20] object:v28];

      v31 = [MEMORY[0x1E6988098] playerWithPlayerItem:v28];
      [(CKMovieBalloonView *)self setAVPlayer:v31];
      v32 = [MEMORY[0x1E69880E0] playerLayerWithPlayer:v31];
      [v32 setVideoGravity:*MEMORY[0x1E69874F0]];
      [v32 setPreferredDynamicRange:*MEMORY[0x1E6979298]];
      [(CKMovieBalloonView *)self bounds];
      [v32 setFrame:?];
      [(CKMovieBalloonView *)self setAVPlayerLayer:v32];
      layer = [(CKMovieBalloonView *)self layer];
      [layer addSublayer:v32];

      invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
      [invisibleInkEffectController setSuspended:1];

      v35 = +[CKAudioSessionController shareInstance];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __43__CKMovieBalloonView_tapGestureRecognized___block_invoke;
      v38[3] = &unk_1E72EBA18;
      v39 = v31;
      v36 = v31;
      [v35 activateWithOptions:1 completion:v38];
    }

    else
    {
      v37.receiver = self;
      v37.super_class = CKMovieBalloonView;
      [(CKImageBalloonView *)&v37 tapGestureRecognized:recognizedCopy];
    }
  }
}

- (BOOL)isCodecTypeAllowed:(unsigned int)allowed
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v12 = 67109888;
      v13 = HIBYTE(allowed);
      v14 = 1024;
      v15 = BYTE2(allowed);
      v16 = 1024;
      v17 = BYTE1(allowed);
      v18 = 1024;
      allowedCopy3 = allowed;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Validating Video CodecType: '%c%c%c%c'", &v12, 0x1Au);
    }
  }

  if (allowed == 1748121139)
  {
    v5 = 1;
LABEL_11:
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 67109888;
        v13 = HIBYTE(allowed);
        v14 = 1024;
        v15 = BYTE2(allowed);
        v16 = 1024;
        v17 = BYTE1(allowed);
        v18 = 1024;
        allowedCopy3 = allowed;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Video CodecType '%c%c%c%c' is allowed", &v12, 0x1Au);
      }
    }
  }

  else
  {
    v6 = -1;
    v7 = &dword_190DD0DA4;
    while (v6 != 4)
    {
      v8 = *v7++;
      ++v6;
      if (v8 == allowed)
      {
        v5 = v6 < 5;
        goto LABEL_11;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 67109888;
        v13 = HIBYTE(allowed);
        v14 = 1024;
        v15 = BYTE2(allowed);
        v16 = 1024;
        v17 = BYTE1(allowed);
        v18 = 1024;
        allowedCopy3 = allowed;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CKMovieBalloonView: Video CodecType '%c%c%c%c' is not allowed", &v12, 0x1Au);
      }
    }

    return 0;
  }

  return v5;
}

- (id)createAVAssetAndValidateCodec
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Creating AVAsset…", buf, 2u);
    }
  }

  v39[0] = *MEMORY[0x1E69874C0];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  mediaObject = [(CKMovieBalloonView *)self mediaObject];
  fileURL = [mediaObject fileURL];

  v5 = CKAVURLAssetForURLWithAllowableTypeCategories(fileURL, v29);
  pathExtension = [fileURL pathExtension];
  tracks = [v5 tracks];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = pathExtension;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Validating FileType: %@", buf, 0xCu);
    }
  }

  v7 = [tracks count] == 0;
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = pathExtension;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "CKMovieBalloonView: Unsupported FileType: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = pathExtension;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Supported FileType: %@", buf, 0xCu);
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = tracks;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v11)
    {
      v12 = *v33;
      v13 = *MEMORY[0x1E6987608];
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          if ([v15 isEnabled])
          {
            mediaType = [v15 mediaType];
            v17 = [mediaType isEqual:v13];

            if (v17)
            {
              formatDescriptions = [v15 formatDescriptions];
              v20 = [formatDescriptions count];
              if (v20)
              {
                v21 = 0;
                while (1)
                {
                  v22 = [formatDescriptions objectAtIndexedSubscript:v21];

                  if (![(CKMovieBalloonView *)self isCodecTypeAllowed:CMFormatDescriptionGetMediaSubType(v22)])
                  {
                    break;
                  }

                  if (v20 == ++v21)
                  {
                    goto LABEL_34;
                  }
                }

                processInfo = [MEMORY[0x1E696AE30] processInfo];
                processName = [processInfo processName];
                IMLogSimulateCrashForProcess();

                v5 = 0;
              }

LABEL_34:

              goto LABEL_35;
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_35:
  }

  v25 = IMOSLoggingEnabled();
  if (v5)
  {
    if (!v25)
    {
      goto LABEL_45;
    }

    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Succesfully created AVAsset", buf, 2u);
    }
  }

  else
  {
    if (!v25)
    {
      goto LABEL_45;
    }

    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "CKMovieBalloonView: Failed to create AVAsset", buf, 2u);
    }
  }

LABEL_45:

  return v5;
}

- (void)videoDidReachEnd:(id)end
{
  [(CKMovieBalloonView *)self cleanupPlayerIfNeeded];
  delegate = [(CKBalloonView *)self delegate];
  mediaObject = [(CKMovieBalloonView *)self mediaObject];
  [delegate balloonView:self mediaObjectDidFinishPlaying:mediaObject];
}

- (void)cleanupPlayerIfNeeded
{
  avPlayerItem = [(CKMovieBalloonView *)self avPlayerItem];
  if (avPlayerItem)
  {
    v9 = avPlayerItem;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E6987A10] object:v9];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x1E6987A20] object:v9];

    avPlayerLayer = [(CKMovieBalloonView *)self avPlayerLayer];
    [avPlayerLayer removeFromSuperlayer];
    [(CKMovieBalloonView *)self setAVPlayerItem:0];
    [(CKMovieBalloonView *)self setAVPlayer:0];
    [(CKMovieBalloonView *)self setAVPlayerLayer:0];
    invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
    [invisibleInkEffectController setSuspended:0];

    v8 = +[CKAudioSessionController shareInstance];
    [v8 deactivate];

    avPlayerItem = v9;
  }
}

@end