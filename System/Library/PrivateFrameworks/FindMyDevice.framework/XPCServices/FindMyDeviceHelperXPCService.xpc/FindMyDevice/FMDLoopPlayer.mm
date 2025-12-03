@interface FMDLoopPlayer
- (FMDLoopPlayer)initWithPlayer:(id)player;
- (id)_audioMixForVolumeRampingWithDuration:(double)duration toneAsset:(id)asset toneAssetDuration:(double)assetDuration itemIndex:(unint64_t)index;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playbackInLoopWithURL:(id)l;
- (void)startObservingPlayerAndItem;
- (void)stop;
- (void)stopObservingPlayerAndItem;
@end

@implementation FMDLoopPlayer

- (FMDLoopPlayer)initWithPlayer:(id)player
{
  playerCopy = player;
  v8.receiver = self;
  v8.super_class = FMDLoopPlayer;
  v5 = [(FMDLoopPlayer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDLoopPlayer *)v5 setPlayer:playerCopy];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (off_10001E6C0 == context)
  {
    v20 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
    unsignedIntegerValue = [v20 unsignedIntegerValue];

    if (unsignedIntegerValue == 2)
    {
      v22 = objectCopy;
      v17 = sub_1000070C0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        error = [v22 error];
        LODWORD(v28) = 138412290;
        *(&v28 + 4) = error;
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
    if (off_10001E6C8 == context)
    {
      v23 = objectCopy;
      items = [v23 items];
      v25 = [items count];

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
          audioMix = [v26 audioMix];

          if (!audioMix)
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

    if (off_10001E6D0 == context)
    {
      v14 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
      unsignedIntegerValue2 = [v14 unsignedIntegerValue];

      if (unsignedIntegerValue2 == 2)
      {
        v16 = objectCopy;
        v17 = sub_1000070C0();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          error = [v16 currentItem];
          v18Error = [error error];
          LODWORD(v28) = 138412290;
          *(&v28 + 4) = v18Error;
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

- (void)playbackInLoopWithURL:(id)l
{
  lCopy = l;
  v5 = [AVURLAsset assetWithURL:lCopy];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000018D4;
  v12[3] = &unk_1000144A0;
  objc_copyWeak(&v15, &location);
  v6 = v5;
  v13 = v6;
  selfCopy = self;
  __asm { FMOV            V0.2D, #5.0 }

  v16 = _Q0;
  [v6 loadValuesAsynchronouslyForKeys:&off_100018250 completionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (id)_audioMixForVolumeRampingWithDuration:(double)duration toneAsset:(id)asset toneAssetDuration:(double)assetDuration itemIndex:(unint64_t)index
{
  assetCopy = asset;
  if (duration <= 0.00000011920929 || (v11 = index * assetDuration, v11 >= duration))
  {
    v26 = 0;
  }

  else
  {
    if (v11 + assetDuration <= duration)
    {
      durationCopy = v11 + assetDuration;
    }

    else
    {
      durationCopy = duration;
    }

    v13 = v11 / duration;
    *&v13 = v11 / duration;
    [(FMDLoopPlayer *)self _adjustAudioVolumeForOptimalRampingPerception:v13];
    v16 = v15;
    v14 = durationCopy / duration;
    *&v17 = v14;
    [(FMDLoopPlayer *)self _adjustAudioVolumeForOptimalRampingPerception:v17];
    v19 = v18;
    v20 = sub_1000070C0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138545666;
      selfCopy = self;
      v34 = 2050;
      durationCopy2 = duration;
      v36 = 2114;
      v37 = assetCopy;
      v38 = 2050;
      assetDurationCopy = assetDuration;
      v40 = 2050;
      indexCopy = index;
      v42 = 2050;
      v43 = v16;
      v44 = 2050;
      v45 = v19;
      v46 = 2050;
      v47 = durationCopy - v11;
      v48 = 2050;
      v49 = index * assetDuration;
      v50 = 2050;
      v51 = durationCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@: _audioMixForVolumeRampingWithDuration:(%{public}f) toneAsset:(%{public}@) toneAssetDuration:(%{public}f) itemIndex:(%{public}lu): Ramping volume from %{public}f to %{public}f over %{public}f seconds, between overall playback timestamps %{public}f and %{public}f.", buf, 0x66u);
    }

    v21 = [assetCopy tracksWithMediaType:AVMediaTypeAudio];
    firstObject = [v21 firstObject];

    v23 = [AVMutableAudioMixInputParameters audioMixInputParametersWithTrack:firstObject];
    CMTimeMakeWithSeconds(&duration, durationCopy - v11, 600);
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