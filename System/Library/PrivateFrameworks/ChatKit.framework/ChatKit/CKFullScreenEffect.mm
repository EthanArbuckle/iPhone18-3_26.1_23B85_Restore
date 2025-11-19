@interface CKFullScreenEffect
+ (id)_monochromeDimmingFilterWithType:(int)a3;
+ (id)tapBackFilter;
- (BOOL)_supportsSoundEffects;
- (BOOL)effectIsDark;
- (CKFullScreenEffectDelegate)delegate;
- (int)_filterTypeForCell:(id)a3 caresAboutOrientation:(BOOL *)a4 orientation:(char *)a5;
- (void)_audioSessionOptionsWillChange:(id)a3;
- (void)_didPrepareSoundEffect;
- (void)_ensureAudioPlayer;
- (void)animateFiltersForCell:(id)a3;
- (void)applyMessageFiltersToCells:(id)a3;
- (void)applyMessageFiltersToTriggeringCell:(id)a3;
- (void)audioController:(id)a3 mediaObjectProgressDidChange:(id)a4 currentTime:(double)a5 duration:(double)a6;
- (void)clearMessageFiltersFromCells:(id)a3;
- (void)dealloc;
- (void)playSoundEffect;
- (void)prepareSoundEffect;
- (void)stopSoundEffect;
@end

@implementation CKFullScreenEffect

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = +[CKAudioSessionController shareInstance];
  [v3 removeObserver:self name:@"CKAudioSessionControllerSessionOptionsWillChangeNotification" object:v4];

  v5.receiver = self;
  v5.super_class = CKFullScreenEffect;
  [(CKFullScreenEffect *)&v5 dealloc];
}

- (int)_filterTypeForCell:(id)a3 caresAboutOrientation:(BOOL *)a4 orientation:(char *)a5
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    [v9 setAnimatingInDarkEffect:{-[CKFullScreenEffect effectIsDark](self, "effectIsDark")}];
    v10 = [v9 balloonView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (a4)
      {
        *a4 = 1;
      }

      v12 = 3;
      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v14 = [v9 balloonView];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    if (v15 & 1) != 0 || ([v9 balloonView], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v17 = objc_opt_isKindOfClass(), v16, (v17))
    {
      if (a4)
      {
        *a4 = 1;
      }

      v12 = 0;
      if (!a5)
      {
        goto LABEL_7;
      }

LABEL_6:
      v13 = [v9 balloonView];
      *a5 = [v13 orientation];

LABEL_7:
      goto LABEL_31;
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 4;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 5;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v12 = 1;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = 1;
          }

          else
          {
            v12 = 999;
          }
        }
      }
    }
  }

LABEL_31:

  return v12;
}

- (void)applyMessageFiltersToCells:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a3;
  v20 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v20)
  {
    v19 = *v28;
    do
    {
      v4 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v4;
        v5 = *(*(&v27 + 1) + 8 * v4);
        v26 = 0;
        v6 = [(CKFullScreenEffect *)self _filterTypeForCell:v5 caresAboutOrientation:&v26 + 1 orientation:&v26];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = [(CKFullScreenEffect *)self messageFilters];
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * i);
              if ([v12 type] == v6)
              {
                if (HIBYTE(v26) == 1 && [v12 direction])
                {
                  v13 = v26;
                  if (v26)
                  {
                    goto LABEL_17;
                  }

                  if ([v12 direction] != 2)
                  {
                    v13 = v26;
LABEL_17:
                    if (v13 != 1 || [v12 direction] != 1)
                    {
                      continue;
                    }
                  }
                }

                v14 = [(CKFullScreenEffect *)self identifier];
                v15 = [v14 isEqualToString:@"com.apple.messages.effect.CKEchoEffect"];

                if (v15 && ((objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
                {
                  [(CKFullScreenEffect *)self animateFiltersForCell:v5];
                }

                [v5 addFilter:v12];
                continue;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
          }

          while (v9);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v16 = [v5 contentView];
          v17 = [v16 layer];
          [v17 setAllowsGroupBlending:0];
        }

        v4 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }
}

- (void)animateFiltersForCell:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6979390] animationWithKeyPath:@"filters.colorMatrix.inputColorMatrix"];
  v5 = MEMORY[0x1E695DEC8];
  *v37 = 1065353216;
  *&v37[4] = 0uLL;
  *&v37[20] = 0x3F80000000000000;
  *&v37[28] = 0uLL;
  *&v37[44] = 0x3F80000000000000uLL;
  *&v37[60] = 0;
  *&v37[68] = 0;
  *&v37[72] = 1065353216;
  v6 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v37];
  *v37 = xmmword_190DD0B70;
  *&v37[16] = xmmword_190DD0B80;
  *&v37[32] = xmmword_190DD0B90;
  *&v37[48] = xmmword_190DD0BA0;
  *&v37[64] = xmmword_190DD0BB0;
  v7 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v37];
  *v37 = xmmword_190DD0B70;
  *&v37[16] = xmmword_190DD0B80;
  *&v37[32] = xmmword_190DD0B90;
  *&v37[48] = xmmword_190DD0BA0;
  *&v37[64] = xmmword_190DD0BB0;
  v8 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v37];
  *v37 = 1065353216;
  *&v37[12] = 0;
  *&v37[4] = 0;
  *&v37[20] = 0x3F80000000000000;
  *&v37[28] = 0uLL;
  *&v37[44] = 0x3F80000000000000uLL;
  *&v37[60] = 0;
  *&v37[68] = 0;
  *&v37[72] = 1065353216;
  v9 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v37];
  v10 = [v5 arrayWithObjects:{v6, v7, v8, v9, 0}];

  v11 = MEMORY[0x1E695DEC8];
  LODWORD(v12) = 1008981770;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  LODWORD(v14) = 1041865114;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  LODWORD(v16) = 0.75;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  LODWORD(v18) = 1065185444;
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v20 = [v11 arrayWithObjects:{v13, v15, v17, v19, 0}];

  v21 = MEMORY[0x1E695DEC8];
  v22 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  v23 = [v21 arrayWithObjects:{v22, 0}];

  v36 = v10;
  [v4 setValues:v10];
  [v4 setKeyTimes:v20];
  [v4 setTimingFunctions:v23];
  [v4 setDuration:4.5];
  v24 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  v25 = MEMORY[0x1E695DEC8];
  LODWORD(v26) = 1.0;
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  v28 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  v29 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  LODWORD(v30) = 1.0;
  v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  v32 = [v25 arrayWithObjects:{v27, v28, v29, v31, 0}];

  [v24 setValues:v32];
  [v24 setKeyTimes:v20];
  [v24 setTimingFunctions:v23];
  [v24 setDuration:4.5];
  if (objc_opt_respondsToSelector())
  {
    v33 = [v3 imageView];
LABEL_5:
    v34 = v33;
    [v33 addAnimation:v4 forKey:@"matrixAnimation"];
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v33 = [v3 balloonView];
    goto LABEL_5;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v34 = [v3 statusButton];
  v35 = [v34 layer];
  [v35 addAnimation:v24 forKey:@"opacityFade"];

LABEL_6:
LABEL_7:
}

- (void)applyMessageFiltersToTriggeringCell:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CKFullScreenEffect *)self messageFilters];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 type] == 6)
        {
          v11 = v4;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 balloonView];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [v11 addFilter:v10 fromTriggeringMessage:1];
            }
          }

          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)clearMessageFiltersFromCells:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [v8 clearFilters];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }
                }
              }
            }
          }
        }

        v9 = [v8 contentView];
        v10 = [v9 layer];
        [v10 setAllowsGroupBlending:1];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_ensureAudioPlayer
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(CKFullScreenEffect *)self _supportsSoundEffects]&& !self->_audioController)
  {
    v3 = [(CKFullScreenEffect *)self soundEffectFileURL];
    if (v3)
    {
      v4 = [[CKFullScreenEffectMediaObject alloc] initWithFullScreenEffectAudioFileURL:v3];
      v5 = [CKAudioController alloc];
      v12[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      v7 = [(CKAudioController *)v5 initWithMediaObjects:v6 conversation:0];
      audioController = self->_audioController;
      self->_audioController = v7;

      if ([(CKFullScreenEffect *)self soundEffectHasHapticTrack])
      {
        v9 = CKSupportsAdvancedHaptics();
      }

      else
      {
        v9 = 0;
      }

      [(CKAudioController *)self->_audioController setShouldUseAVPlayer:v9];
      [(CKAudioController *)self->_audioController setDelegate:self];
      [(CKAudioController *)self->_audioController setShouldStopPlayingWhenSilent:1];
      [(CKAudioController *)self->_audioController setShouldDuckOthers:1];
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v11 = +[CKAudioSessionController shareInstance];
      [v10 addObserver:self selector:sel__audioSessionOptionsWillChange_ name:@"CKAudioSessionControllerSessionOptionsWillChangeNotification" object:v11];
    }
  }
}

- (void)prepareSoundEffect
{
  if ([(CKFullScreenEffect *)self _supportsSoundEffects]&& ([(CKFullScreenEffect *)self soundEffectFileURL], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    [(CKFullScreenEffect *)self _ensureAudioPlayer];
    audioController = self->_audioController;

    [(CKAudioController *)audioController prepareToPlay];
  }

  else
  {

    [(CKFullScreenEffect *)self _didPrepareSoundEffect];
  }
}

- (void)playSoundEffect
{
  if ([(CKFullScreenEffect *)self _isPlaySoundEnabled])
  {
    [(CKFullScreenEffect *)self _ensureAudioPlayer];
    self->_currentVolume = 0.0;
    audioController = self->_audioController;

    [(CKAudioController *)audioController play];
  }
}

- (void)stopSoundEffect
{
  if ([(CKFullScreenEffect *)self _isPlaySoundEnabled])
  {
    [(CKAudioController *)self->_audioController pause];
    audioController = self->_audioController;

    [(CKAudioController *)audioController stop];
  }
}

- (void)audioController:(id)a3 mediaObjectProgressDidChange:(id)a4 currentTime:(double)a5 duration:(double)a6
{
  if (self->_currentVolume <= 1.0)
  {
    [(CKAudioController *)self->_audioController setVolume:a3, a4];
    v7 = self->_currentVolume + 0.2;
    self->_currentVolume = v7;
  }
}

- (void)_didPrepareSoundEffect
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CKFullScreenEffect__didPrepareSoundEffect__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __44__CKFullScreenEffect__didPrepareSoundEffect__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 fullScreenEffectDidPrepareSoundEffect:*(a1 + 32)];
  }
}

- (void)_audioSessionOptionsWillChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CKAudioSessionControllerSessionNotificationOptionsKey"];

  if (v5 && ([v5 unsignedIntegerValue] & 2) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__CKFullScreenEffect__audioSessionOptionsWillChange___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)_supportsSoundEffects
{
  if (_supportsSoundEffects_onceToken != -1)
  {
    [CKFullScreenEffect _supportsSoundEffects];
  }

  return _supportsSoundEffects_supportsSoundEffects;
}

- (BOOL)effectIsDark
{
  v6 = 0.0;
  v7 = 0.0;
  v3 = [(CKFullScreenEffect *)self backgroundColor];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CKFullScreenEffect *)self backgroundColor];
  [v4 getHue:0 saturation:0 brightness:&v7 alpha:&v6];

  return v7 < 0.5 && v6 > 0.5;
}

+ (id)_monochromeDimmingFilterWithType:(int)a3
{
  v3 = *&a3;
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979888]];
  [v4 setValue:&unk_1F04E87D8 forKey:@"inputBias"];
  [v4 setValue:&unk_1F04E87E8 forKey:@"inputAmount"];
  v5 = objc_alloc_init(CKFullscreenEffectMessageFilter);
  [(CKFullscreenEffectMessageFilter *)v5 setType:v3];
  [(CKFullscreenEffectMessageFilter *)v5 setContentAlpha:0.300000012];
  v8[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(CKFullscreenEffectMessageFilter *)v5 setBalloonFilters:v6];

  return v5;
}

+ (id)tapBackFilter
{
  v2 = objc_alloc_init(CKFullscreenEffectMessageFilter);
  [(CKFullscreenEffectMessageFilter *)v2 setType:4];
  [(CKFullscreenEffectMessageFilter *)v2 setContentAlpha:0.0];

  return v2;
}

- (CKFullScreenEffectDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end