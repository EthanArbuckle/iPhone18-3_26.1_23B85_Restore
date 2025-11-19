@interface FMDLoopPlayer
- (FMDLoopPlayer)initWithPlayer:(id)a3;
- (id)_audioMixForVolumeRampingWithDuration:(double)a3 toneAsset:(id)a4 toneAssetDuration:(double)a5 itemIndex:(unint64_t)a6;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playbackInLoopWithURL:(id)a3;
- (void)startObservingPlayerAndItem;
- (void)stop;
- (void)stopObservingPlayerAndItem;
@end

@implementation FMDLoopPlayer

- (FMDLoopPlayer)initWithPlayer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FMDLoopPlayer;
  v5 = [(FMDLoopPlayer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDLoopPlayer *)v5 setPlayer:v4];
  }

  return v6;
}

- (void)stop
{
  [(AVQueuePlayer *)self->_player setVibrationPattern:0];
  [(AVQueuePlayer *)self->_player pause];
  [(FMDLoopPlayer *)self stopObservingPlayerAndItem];
  player = self->_player;

  [(AVQueuePlayer *)player removeAllItems];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (off_10001E6C0 == a6)
  {
    v20 = [v12 objectForKey:NSKeyValueChangeNewKey];
    v21 = [v20 unsignedIntegerValue];

    if (v21 == 2)
    {
      v22 = v11;
      v17 = sub_1000070C0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v22 error];
        LODWORD(v28) = 138412290;
        *(&v28 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDLoopPlayer: End looping since player has failed with error %@", &v28, 0xCu);
        goto LABEL_10;
      }

LABEL_19:

      [(FMDLoopPlayer *)self stop];
LABEL_20:
    }
  }

  else
  {
    if (off_10001E6C8 == a6)
    {
      v23 = v11;
      v24 = [v23 items];
      v25 = [v24 count];

      if (v25)
      {
        v26 = [v13 objectForKeyedSubscript:NSKeyValueChangeOldKey];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = *&kCMTimeZero.value;
          epoch = kCMTimeZero.epoch;
          [v26 seekToTime:&v28 completionHandler:0];
          [(FMDLoopPlayer *)self stopObservingPlayerAndItem];
          v27 = [v26 audioMix];

          if (!v27)
          {
            [v23 insertItem:v26 afterItem:0];
          }

          [(FMDLoopPlayer *)self startObservingPlayerAndItem];
        }

        goto LABEL_20;
      }

      v17 = sub_1000070C0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDLoopPlayer: Play queue emptied out due to bad player item. End looping.", &v28, 2u);
      }

      goto LABEL_19;
    }

    if (off_10001E6D0 == a6)
    {
      v14 = [v12 objectForKey:NSKeyValueChangeNewKey];
      v15 = [v14 unsignedIntegerValue];

      if (v15 == 2)
      {
        v16 = v11;
        v17 = sub_1000070C0();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 currentItem];
          v19 = [v18 error];
          LODWORD(v28) = 138412290;
          *(&v28 + 4) = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDLoopPlayer: End looping since player item has failed with error %@", &v28, 0xCu);

LABEL_10:
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }
  }
}

- (void)startObservingPlayerAndItem
{
  if (!self->_addedObservers)
  {
    [(AVQueuePlayer *)self->_player addObserver:self forKeyPath:@"status" options:1 context:off_10001E6C0];
    [(AVQueuePlayer *)self->_player addObserver:self forKeyPath:@"currentItem" options:2 context:off_10001E6C8];
    [(AVQueuePlayer *)self->_player addObserver:self forKeyPath:@"currentItem.status" options:1 context:off_10001E6D0];
    self->_addedObservers = 1;
  }
}

- (void)stopObservingPlayerAndItem
{
  if (self->_addedObservers)
  {
    [(AVQueuePlayer *)self->_player removeObserver:self forKeyPath:@"status" context:off_10001E6C0];
    [(AVQueuePlayer *)self->_player removeObserver:self forKeyPath:@"currentItem" context:off_10001E6C8];
    [(AVQueuePlayer *)self->_player removeObserver:self forKeyPath:@"currentItem.status" context:off_10001E6D0];
    self->_addedObservers = 0;
  }
}

- (void)playbackInLoopWithURL:(id)a3
{
  v4 = a3;
  v5 = [AVURLAsset assetWithURL:v4];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000018D4;
  v12[3] = &unk_1000144A0;
  objc_copyWeak(&v15, &location);
  v6 = v5;
  v13 = v6;
  v14 = self;
  __asm { FMOV            V0.2D, #5.0 }

  v16 = _Q0;
  [v6 loadValuesAsynchronouslyForKeys:&off_100018250 completionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (id)_audioMixForVolumeRampingWithDuration:(double)a3 toneAsset:(id)a4 toneAssetDuration:(double)a5 itemIndex:(unint64_t)a6
{
  v10 = a4;
  if (a3 <= 0.00000011920929 || (v11 = a6 * a5, v11 >= a3))
  {
    v26 = 0;
  }

  else
  {
    if (v11 + a5 <= a3)
    {
      v12 = v11 + a5;
    }

    else
    {
      v12 = a3;
    }

    v13 = v11 / a3;
    *&v13 = v11 / a3;
    [(FMDLoopPlayer *)self _adjustAudioVolumeForOptimalRampingPerception:v13];
    v16 = v15;
    v14 = v12 / a3;
    *&v17 = v14;
    [(FMDLoopPlayer *)self _adjustAudioVolumeForOptimalRampingPerception:v17];
    v19 = v18;
    v20 = sub_1000070C0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138545666;
      v33 = self;
      v34 = 2050;
      v35 = a3;
      v36 = 2114;
      v37 = v10;
      v38 = 2050;
      v39 = a5;
      v40 = 2050;
      v41 = a6;
      v42 = 2050;
      v43 = v16;
      v44 = 2050;
      v45 = v19;
      v46 = 2050;
      v47 = v12 - v11;
      v48 = 2050;
      v49 = a6 * a5;
      v50 = 2050;
      v51 = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@: _audioMixForVolumeRampingWithDuration:(%{public}f) toneAsset:(%{public}@) toneAssetDuration:(%{public}f) itemIndex:(%{public}lu): Ramping volume from %{public}f to %{public}f over %{public}f seconds, between overall playback timestamps %{public}f and %{public}f.", buf, 0x66u);
    }

    v21 = [v10 tracksWithMediaType:AVMediaTypeAudio];
    v22 = [v21 firstObject];

    v23 = [AVMutableAudioMixInputParameters audioMixInputParametersWithTrack:v22];
    CMTimeMakeWithSeconds(&duration, v12 - v11, 600);
    v29 = kCMTimeZero;
    CMTimeRangeMake(buf, &v29, &duration);
    *&v24 = v16;
    *&v25 = v19;
    [v23 setVolumeRampFromStartVolume:buf toEndVolume:v24 timeRange:v25];
    v26 = +[AVMutableAudioMix audioMix];
    v31 = v23;
    v27 = [NSArray arrayWithObjects:&v31 count:1];
    [v26 setInputParameters:v27];
  }

  return v26;
}

@end