@interface VCPVideoTrackStandardDecoder
- (VCPVideoTrackStandardDecoder)initWithTrack:(id)a3 timerange:(id *)a4 withSettings:(id)a5 applyTransform:(BOOL)a6;
- (opaqueCMSampleBuffer)copyNextSampleBuffer;
- (void)dealloc;
@end

@implementation VCPVideoTrackStandardDecoder

- (VCPVideoTrackStandardDecoder)initWithTrack:(id)a3 timerange:(id *)a4 withSettings:(id)a5 applyTransform:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = VCPVideoTrackStandardDecoder;
  v12 = [(VCPVideoTrackDecoder *)&v30 initWithTrack:v10];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x1E6987E78];
    v15 = [(AVAssetTrack *)v12->super._track asset];
    v16 = [v14 assetReaderWithAsset:v15 error:0];
    assetReader = v13->_assetReader;
    v13->_assetReader = v16;

    v18 = v13->_assetReader;
    if (v18)
    {
      v19 = v11;
      if (!v11)
      {
        v19 = [(VCPVideoTrackDecoder *)v13 settings];
      }

      objc_storeStrong(&v13->_decoderSettings, v19);
      if (!v11)
      {
      }

      v20 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v13->super._track outputSettings:v13->_decoderSettings];
      trackOutput = v13->_trackOutput;
      v13->_trackOutput = v20;

      v22 = v13->_trackOutput;
      if (v22 && ([(AVAssetReaderTrackOutput *)v22 setAppliesPreferredTrackTransform:v6], [(AVAssetReader *)v13->_assetReader addOutput:v13->_trackOutput], v23 = v13->_assetReader, v24 = *&a4->var0.var3, v29[0] = *&a4->var0.var0, v29[1] = v24, v29[2] = *&a4->var1.var1, [(AVAssetReader *)v23 setTimeRange:v29], [(AVAssetReader *)v13->_assetReader startReading]))
      {
        v25 = [(AVAssetReaderTrackOutput *)v13->_trackOutput copyNextSampleBuffer];
        v13->_nextSample = v25;
        if (v25)
        {
          v26 = 1;
        }

        else
        {
          v26 = [(AVAssetReader *)v13->_assetReader status];
        }

        v13->_status = v26;
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

  v4 = [(AVAssetReaderTrackOutput *)self->_trackOutput copyNextSampleBuffer];
  self->_nextSample = v4;
  v5 = MEMORY[0x1E6960C70];
  v16 = **&MEMORY[0x1E6960C70];
  if (!v4)
  {
    v6 = [(AVAssetReader *)self->_assetReader status];
    self->_status = v6;
    if (v6 == AVAssetReaderStatusCompleted)
    {
      v7 = [(AVAssetReaderTrackOutput *)self->_trackOutput track];
      v8 = v7;
      if (v7)
      {
        [v7 timeRange];
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

  CMSampleBufferGetPresentationTimeStamp(&v16, v4);
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