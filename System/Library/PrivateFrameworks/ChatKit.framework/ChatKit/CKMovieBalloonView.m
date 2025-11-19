@interface CKMovieBalloonView
- (BOOL)isCodecTypeAllowed:(unsigned int)a3;
- (id)createAVAssetAndValidateCodec;
- (id)description;
- (void)cleanupPlayerIfNeeded;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)tapGestureRecognized:(id)a3;
- (void)videoDidReachEnd:(id)a3;
@end

@implementation CKMovieBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11.receiver = self;
  v11.super_class = CKMovieBalloonView;
  v10 = a3;
  [(CKImageBalloonView *)&v11 configureForMediaObject:v10 previewWidth:v7 orientation:v6 hasInvisibleInkEffect:a4];
  [(CKMovieBalloonView *)self setMediaObject:v10, v11.receiver, v11.super_class];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v5 = [(CKMovieBalloonView *)self mediaObject];
  v6 = [v3 stringWithFormat:@"%@ mediaObject: %@", v4, v5];

  return v6;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = CKMovieBalloonView;
  [(CKImageBalloonView *)&v28 layoutSubviews];
  v3 = [(CKMovieBalloonView *)self avPlayerLayer];
  [(CKMovieBalloonView *)self bounds];
  [v3 setFrame:?];

  v4 = [(CKMovieBalloonView *)self avPlayerLayer];

  if (v4)
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
    v10 = [(CKMovieBalloonView *)self avPlayerLayer];
    [v10 setMask:v9];

    v11 = [(CKMovieBalloonView *)self avPlayerLayer];
    [v11 bounds];
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
  v3 = [(CKMovieBalloonView *)self avPlayerLayer];
  if (v3)
  {
    v4 = [(CKMovieBalloonView *)self layer];
    [v4 addSublayer:v3];
  }
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = [(CKMovieBalloonView *)self avPlayerLayer];
  if (v5)
  {
    [(CKMovieBalloonView *)self cleanupPlayerIfNeeded];
    v6 = [(CKBalloonView *)self delegate];
    v7 = [(CKMovieBalloonView *)self mediaObject];
    [v6 balloonView:self mediaObjectDidFinishPlaying:v7];
  }

  else
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    v6 = [v8 playButtonImage];

    [(CKMovieBalloonView *)self bounds];
    [(CKMovieBalloonView *)self alignmentRectForFrame:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v6 size];
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

    v7 = [(CKMovieBalloonView *)self createAVAssetAndValidateCodec];
    if (!v7 && IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "CKMovieBalloonView: Failed to create AVAsset and/or validate codec", buf, 2u);
      }
    }

    v23 = [(CKObscurableBalloonView *)self isObscured];
    v24 = +[CKUIBehavior sharedBehaviors];
    v25 = [v24 playsInlineVideo];

    if (v7 && !v23 && v25 && ([v4 locationInView:self], v41.x = v26, v41.y = v27, v42.origin.x = floor((v10 + (v14 - v18) * 0.5) * v21) / v21, v42.origin.y = floor((v12 + (v16 - v20) * 0.5) * v21) / v21, v42.size.width = v18, v42.size.height = v20, CGRectContainsPoint(v42, v41)))
    {
      v28 = [MEMORY[0x1E69880B0] playerItemWithAsset:v7];
      [(CKMovieBalloonView *)self setAVPlayerItem:v28];
      v29 = [MEMORY[0x1E696AD88] defaultCenter];
      [v29 addObserver:self selector:sel_videoDidReachEnd_ name:*MEMORY[0x1E6987A10] object:v28];

      v30 = [MEMORY[0x1E696AD88] defaultCenter];
      [v30 addObserver:self selector:sel_videoDidReachEnd_ name:*MEMORY[0x1E6987A20] object:v28];

      v31 = [MEMORY[0x1E6988098] playerWithPlayerItem:v28];
      [(CKMovieBalloonView *)self setAVPlayer:v31];
      v32 = [MEMORY[0x1E69880E0] playerLayerWithPlayer:v31];
      [v32 setVideoGravity:*MEMORY[0x1E69874F0]];
      [v32 setPreferredDynamicRange:*MEMORY[0x1E6979298]];
      [(CKMovieBalloonView *)self bounds];
      [v32 setFrame:?];
      [(CKMovieBalloonView *)self setAVPlayerLayer:v32];
      v33 = [(CKMovieBalloonView *)self layer];
      [v33 addSublayer:v32];

      v34 = [(CKBalloonView *)self invisibleInkEffectController];
      [v34 setSuspended:1];

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
      [(CKImageBalloonView *)&v37 tapGestureRecognized:v4];
    }
  }
}

- (BOOL)isCodecTypeAllowed:(unsigned int)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v12 = 67109888;
      v13 = HIBYTE(a3);
      v14 = 1024;
      v15 = BYTE2(a3);
      v16 = 1024;
      v17 = BYTE1(a3);
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Validating Video CodecType: '%c%c%c%c'", &v12, 0x1Au);
    }
  }

  if (a3 == 1748121139)
  {
    v5 = 1;
LABEL_11:
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 67109888;
        v13 = HIBYTE(a3);
        v14 = 1024;
        v15 = BYTE2(a3);
        v16 = 1024;
        v17 = BYTE1(a3);
        v18 = 1024;
        v19 = a3;
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
      if (v8 == a3)
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
        v13 = HIBYTE(a3);
        v14 = 1024;
        v15 = BYTE2(a3);
        v16 = 1024;
        v17 = BYTE1(a3);
        v18 = 1024;
        v19 = a3;
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
  v4 = [(CKMovieBalloonView *)self mediaObject];
  v31 = [v4 fileURL];

  v5 = CKAVURLAssetForURLWithAllowableTypeCategories(v31, v29);
  v28 = [v31 pathExtension];
  v30 = [v5 tracks];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v28;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Validating FileType: %@", buf, 0xCu);
    }
  }

  v7 = [v30 count] == 0;
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v28;
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
        v38 = v28;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Supported FileType: %@", buf, 0xCu);
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = v30;
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
            v16 = [v15 mediaType];
            v17 = [v16 isEqual:v13];

            if (v17)
            {
              v19 = [v15 formatDescriptions];
              v20 = [v19 count];
              if (v20)
              {
                v21 = 0;
                while (1)
                {
                  v22 = [v19 objectAtIndexedSubscript:v21];

                  if (![(CKMovieBalloonView *)self isCodecTypeAllowed:CMFormatDescriptionGetMediaSubType(v22)])
                  {
                    break;
                  }

                  if (v20 == ++v21)
                  {
                    goto LABEL_34;
                  }
                }

                v23 = [MEMORY[0x1E696AE30] processInfo];
                v24 = [v23 processName];
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

- (void)videoDidReachEnd:(id)a3
{
  [(CKMovieBalloonView *)self cleanupPlayerIfNeeded];
  v5 = [(CKBalloonView *)self delegate];
  v4 = [(CKMovieBalloonView *)self mediaObject];
  [v5 balloonView:self mediaObjectDidFinishPlaying:v4];
}

- (void)cleanupPlayerIfNeeded
{
  v3 = [(CKMovieBalloonView *)self avPlayerItem];
  if (v3)
  {
    v9 = v3;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x1E6987A10] object:v9];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x1E6987A20] object:v9];

    v6 = [(CKMovieBalloonView *)self avPlayerLayer];
    [v6 removeFromSuperlayer];
    [(CKMovieBalloonView *)self setAVPlayerItem:0];
    [(CKMovieBalloonView *)self setAVPlayer:0];
    [(CKMovieBalloonView *)self setAVPlayerLayer:0];
    v7 = [(CKBalloonView *)self invisibleInkEffectController];
    [v7 setSuspended:0];

    v8 = +[CKAudioSessionController shareInstance];
    [v8 deactivate];

    v3 = v9;
  }
}

@end