@interface VCPVideoTrackStandardDecoder
- (VCPVideoTrackStandardDecoder)initWithTrack:(id)track timerange:(id *)timerange withSettings:(id)settings applyTransform:(BOOL)transform;
- (opaqueCMSampleBuffer)copyNextSampleBuffer;
- (void)dealloc;
@end

@implementation VCPVideoTrackStandardDecoder

- (VCPVideoTrackStandardDecoder)initWithTrack:(id)track timerange:(id *)timerange withSettings:(id)settings applyTransform:(BOOL)transform
{
  transformCopy = transform;
  trackCopy = track;
  settingsCopy = settings;
  v30.receiver = self;
  v30.super_class = VCPVideoTrackStandardDecoder;
  v12 = [(VCPVideoTrackDecoder *)&v30 initWithTrack:trackCopy];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x1E6987E78];
    asset = [(AVAssetTrack *)v12->super._track asset];
    v16 = [v14 assetReaderWithAsset:asset error:0];
    assetReader = v13->_assetReader;
    v13->_assetReader = v16;

    v18 = v13->_assetReader;
    if (v18)
    {
      settings = settingsCopy;
      if (!settingsCopy)
      {
        settings = [(VCPVideoTrackDecoder *)v13 settings];
      }

      objc_storeStrong(&v13->_decoderSettings, settings);
      if (!settingsCopy)
      {
      }

      v20 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v13->super._track outputSettings:v13->_decoderSettings];
      trackOutput = v13->_trackOutput;
      v13->_trackOutput = v20;

      v22 = v13->_trackOutput;
      if (v22 && ([(AVAssetReaderTrackOutput *)v22 setAppliesPreferredTrackTransform:transformCopy], [(AVAssetReader *)v13->_assetReader addOutput:v13->_trackOutput], v23 = v13->_assetReader, v24 = *&timerange->var0.var3, v29[0] = *&timerange->var0.var0, v29[1] = v24, v29[2] = *&timerange->var1.var1, [(AVAssetReader *)v23 setTimeRange:v29], [(AVAssetReader *)v13->_assetReader startReading]))
      {
        copyNextSampleBuffer = [(AVAssetReaderTrackOutput *)v13->_trackOutput copyNextSampleBuffer];
        v13->_nextSample = copyNextSampleBuffer;
        if (copyNextSampleBuffer)
        {
          status = 1;
        }

        else
        {
          status = [(AVAssetReader *)v13->_assetReader status];
        }

        v13->_status = status;
        v18 = v13;
      }

      else
      {
        v18 = 0;
      }
    }

    v27 = v18;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)dealloc
{
  nextSample = self->_nextSample;
  if (nextSample)
  {
    CFRelease(nextSample);
  }

  assetReader = self->_assetReader;
  if (assetReader)
  {
    [(AVAssetReader *)assetReader cancelReading];
  }

  v5.receiver = self;
  v5.super_class = VCPVideoTrackStandardDecoder;
  [(VCPVideoTrackStandardDecoder *)&v5 dealloc];
}

- (opaqueCMSampleBuffer)copyNextSampleBuffer
{
  nextSample = self->_nextSample;
  if (!nextSample)
  {
    return 0;
  }

  copyNextSampleBuffer = [(AVAssetReaderTrackOutput *)self->_trackOutput copyNextSampleBuffer];
  self->_nextSample = copyNextSampleBuffer;
  v5 = MEMORY[0x1E6960C70];
  v16 = **&MEMORY[0x1E6960C70];
  if (!copyNextSampleBuffer)
  {
    status = [(AVAssetReader *)self->_assetReader status];
    self->_status = status;
    if (status == AVAssetReaderStatusCompleted)
    {
      track = [(AVAssetReaderTrackOutput *)self->_trackOutput track];
      v8 = track;
      if (track)
      {
        [track timeRange];
      }

      else
      {
        memset(&v14, 0, 48);
      }

      CMTimeRangeGetEnd(&rhs, &v14);
      assetReader = self->_assetReader;
      if (assetReader)
      {
        [(AVAssetReader *)assetReader timeRange];
      }

      else
      {
        memset(&v14, 0, 48);
      }

      CMTimeRangeGetEnd(&v15, &v14);
      v14.duration = v15;
      time2 = rhs;
      v11 = CMTimeCompare(&v14.duration, &time2);
      p_rhs = &rhs;
      if (v11 < 0)
      {
        p_rhs = &v15;
      }

      v16 = *p_rhs;

      goto LABEL_16;
    }

    CFRelease(nextSample);
    return 0;
  }

  CMSampleBufferGetPresentationTimeStamp(&v16, copyNextSampleBuffer);
LABEL_16:
  v14.decodeTimeStamp = *v5;
  CMSampleBufferGetPresentationTimeStamp(&v14.presentationTimeStamp, nextSample);
  time2 = v16;
  rhs = v14.presentationTimeStamp;
  CMTimeSubtract(&v15, &time2, &rhs);
  v14.duration = v15;
  time2.value = 0;
  if (CMSampleBufferCreateCopyWithNewTiming(0, nextSample, 1, &v14, &time2))
  {
    v13 = self->_nextSample;
    if (v13)
    {
      CFRelease(v13);
      self->_nextSample = 0;
    }

    self->_status = 3;
  }

  CFRelease(nextSample);
  return time2.value;
}

@end