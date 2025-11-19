@interface PBUILivePhotoPlayerLivePhotoView
- (PBUILivePhotoPlayerLivePhotoView)init;
- (int64_t)playbackState;
- (void)_subclass_updateForForcingPlayback:(BOOL)a3;
@end

@implementation PBUILivePhotoPlayerLivePhotoView

- (PBUILivePhotoPlayerLivePhotoView)init
{
  v9.receiver = self;
  v9.super_class = PBUILivePhotoPlayerLivePhotoView;
  v2 = [(PBUILivePhotoPlayerLivePhotoView *)&v9 init];
  if (v2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = getISLivePhotoUIViewClass_softClass;
    v14 = getISLivePhotoUIViewClass_softClass;
    if (!getISLivePhotoUIViewClass_softClass)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getISLivePhotoUIViewClass_block_invoke;
      v10[3] = &unk_278361F18;
      v10[4] = &v11;
      __getISLivePhotoUIViewClass_block_invoke(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    v5 = objc_alloc_init(v3);
    livePhotoView = v2->_livePhotoView;
    v2->_livePhotoView = v5;

    v7 = [(ISLivePhotoUIView *)v2->_livePhotoView player];
    [(PBUILivePhotoPlayerView *)v2 _common_configurePlayer:v7];

    [(PBUILivePhotoPlayerView *)v2 _common_configurePlayerView:v2->_livePhotoView];
  }

  return v2;
}

- (int64_t)playbackState
{
  v2 = [(ISLivePhotoUIView *)self->_livePhotoView player];
  v3 = [v2 currentPlaybackStyle];

  if ((v3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_21E70D250[v3 - 1];
  }
}

- (void)_subclass_updateForForcingPlayback:(BOOL)a3
{
  v3 = a3;
  v4 = [(ISLivePhotoUIView *)self->_livePhotoView player];
  v5 = v4;
  if (v3)
  {
    [v4 startPlaybackWithStyleWhenReady:1];
  }

  else
  {
    [v4 stopPlayback];
  }
}

@end