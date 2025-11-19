@interface PBUILivePhotoPlayerLiveWallpaperView
- (PBUILivePhotoPlayerLiveWallpaperView)init;
- (int64_t)playbackState;
- (void)_subclass_updateForForcingPlayback:(BOOL)a3;
@end

@implementation PBUILivePhotoPlayerLiveWallpaperView

- (PBUILivePhotoPlayerLiveWallpaperView)init
{
  v9.receiver = self;
  v9.super_class = PBUILivePhotoPlayerLiveWallpaperView;
  v2 = [(PBUILivePhotoPlayerLiveWallpaperView *)&v9 init];
  if (v2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = getISLiveWallpaperUIViewClass_softClass;
    v14 = getISLiveWallpaperUIViewClass_softClass;
    if (!getISLiveWallpaperUIViewClass_softClass)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getISLiveWallpaperUIViewClass_block_invoke;
      v10[3] = &unk_278361F18;
      v10[4] = &v11;
      __getISLiveWallpaperUIViewClass_block_invoke(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    v5 = objc_alloc_init(v3);
    liveWallpaperView = v2->_liveWallpaperView;
    v2->_liveWallpaperView = v5;

    v7 = [(ISLiveWallpaperUIView *)v2->_liveWallpaperView player];
    [(PBUILivePhotoPlayerView *)v2 _common_configurePlayer:v7];

    [(PBUILivePhotoPlayerView *)v2 _common_configurePlayerView:v2->_liveWallpaperView];
  }

  return v2;
}

- (int64_t)playbackState
{
  v2 = [(ISLiveWallpaperUIView *)self->_liveWallpaperView player];
  v3 = [v2 isPlaying];

  if (v3)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (void)_subclass_updateForForcingPlayback:(BOOL)a3
{
  v4 = [(ISLiveWallpaperUIView *)self->_liveWallpaperView player];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__PBUILivePhotoPlayerLiveWallpaperView__subclass_updateForForcingPlayback___block_invoke;
  v5[3] = &__block_descriptor_33_e31_v16__0__ISLiveWallpaperPlayer_8l;
  v6 = a3;
  [v4 performChanges:v5];
}

void __75__PBUILivePhotoPlayerLiveWallpaperView__subclass_updateForForcingPlayback___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setTouching:v3];
  v4 = 400.0;
  if (!*(a1 + 32))
  {
    v4 = 0.0;
  }

  [v5 setForce:v4];
}

@end