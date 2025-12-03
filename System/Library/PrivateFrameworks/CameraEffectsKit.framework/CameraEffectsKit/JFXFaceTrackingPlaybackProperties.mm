@interface JFXFaceTrackingPlaybackProperties
- ($AC64C642040120CEEAD84DEEACA9A5CE)mediaTimeRange;
- (BOOL)containsMediaTime:(id *)time forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation;
- (JFXFaceTrackingPlaybackProperties)initWithFaceTrackableMediaTimeRange:(id *)range forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation faceTrackingTransform:(id)transform arMetadata:(id)metadata;
- (JFXFaceTrackingPlaybackProperties)initWithNonFaceTrackableMediaTimeRange:(id *)range;
@end

@implementation JFXFaceTrackingPlaybackProperties

- (JFXFaceTrackingPlaybackProperties)initWithNonFaceTrackableMediaTimeRange:(id *)range
{
  v7.receiver = self;
  v7.super_class = JFXFaceTrackingPlaybackProperties;
  result = [(JFXFaceTrackingPlaybackProperties *)&v7 init];
  if (result)
  {
    result->_canTrackFace = 0;
    v5 = *&range->var0.var0;
    v6 = *&range->var0.var3;
    *&result->_mediaTimeRange.duration.timescale = *&range->var1.var1;
    *&result->_mediaTimeRange.start.epoch = v6;
    *&result->_mediaTimeRange.start.value = v5;
    result->_mediaInterfaceOrientationForDisplay = 0;
  }

  return result;
}

- (JFXFaceTrackingPlaybackProperties)initWithFaceTrackableMediaTimeRange:(id *)range forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation faceTrackingTransform:(id)transform arMetadata:(id)metadata
{
  transformCopy = transform;
  metadataCopy = metadata;
  v18.receiver = self;
  v18.super_class = JFXFaceTrackingPlaybackProperties;
  v13 = [(JFXFaceTrackingPlaybackProperties *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_canTrackFace = 1;
    v13->_mediaInterfaceOrientationForDisplay = orientation;
    objc_storeStrong(&v13->_faceTrackingTransform, transform);
    v15 = *&range->var0.var0;
    v16 = *&range->var0.var3;
    *&v14->_mediaTimeRange.duration.timescale = *&range->var1.var1;
    *&v14->_mediaTimeRange.start.epoch = v16;
    *&v14->_mediaTimeRange.start.value = v15;
    objc_storeStrong(&v14->_arMetadata, metadata);
  }

  return v14;
}

- (BOOL)containsMediaTime:(id *)time forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation
{
  if ([(JFXFaceTrackingPlaybackProperties *)self canTrackFace])
  {
    [(JFXFaceTrackingPlaybackProperties *)self mediaTimeRange];
    v9 = *time;
    v7 = CMTimeRangeContainsTime(&range, &v9);
    if (v7)
    {
      LOBYTE(v7) = [(JFXFaceTrackingPlaybackProperties *)self mediaInterfaceOrientationForDisplay]== orientation;
    }
  }

  else
  {
    [(JFXFaceTrackingPlaybackProperties *)self mediaTimeRange];
    v9 = *time;
    LOBYTE(v7) = CMTimeRangeContainsTime(&range, &v9) != 0;
  }

  return v7;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)mediaTimeRange
{
  v3 = *&self[1].var0.var1;
  *&retstr->var0.var0 = *&self->var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var0;
  return self;
}

@end