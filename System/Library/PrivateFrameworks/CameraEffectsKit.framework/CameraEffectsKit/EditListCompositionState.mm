@interface EditListCompositionState
- ($AC64C642040120CEEAD84DEEACA9A5CE)audioCompTimeRange;
- ($AC64C642040120CEEAD84DEEACA9A5CE)videoCompTimeRange;
- (JFXPlayableElement)clip;
- (id)description;
- (void)setAudioCompTimeRange:(id *)a3;
- (void)setVideoCompTimeRange:(id *)a3;
- (void)swapTrackGroup;
@end

@implementation EditListCompositionState

- (void)swapTrackGroup
{
  v4 = [(EditListCompositionState *)self currentTrackGroup];
  v3 = [(EditListCompositionState *)self alternateTrackGroup];
  [(EditListCompositionState *)self setCurrentTrackGroup:v3];

  [(EditListCompositionState *)self setAlternateTrackGroup:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>\n", v5, self];

  [v6 appendFormat:@"  currentTrackGroup: %@\n", self->_currentTrackGroup];
  [v6 appendFormat:@"  alternateTrackGroup: %@\n", self->_alternateTrackGroup];
  WeakRetained = objc_loadWeakRetained(&self->_clip);
  [v6 appendFormat:@"  clip: %@\n", WeakRetained];

  [v6 appendFormat:@"  overlapLeft: %d\n", self->_overlapLeft];
  [v6 appendFormat:@"  overlapRight: %d\n", self->_overlapRight];
  if (self->_isLastClip)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v6 appendFormat:@"  isLastClip: %@\n", v8];
  if (self->_clipRequiresCA)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v6 appendFormat:@"  clipRequiresCA: %@\n", v9];
  v10 = *&self->_videoCompTimeRange.start.epoch;
  *&range.start.value = *&self->_videoCompTimeRange.start.value;
  *&range.start.epoch = v10;
  *&range.duration.timescale = *&self->_videoCompTimeRange.duration.timescale;
  v11 = CMTimeRangeCopyDescription(0, &range);
  [v6 appendFormat:@"  videoCompTimeRange: %@\n", v11];
  CFRelease(v11);
  v12 = *&self->_audioCompTimeRange.start.epoch;
  *&range.start.value = *&self->_audioCompTimeRange.start.value;
  *&range.start.epoch = v12;
  *&range.duration.timescale = *&self->_audioCompTimeRange.duration.timescale;
  v13 = CMTimeRangeCopyDescription(0, &range);
  [v6 appendFormat:@"  audioCompTimeRange: %@\n", v13];
  CFRelease(v13);
  [v6 appendFormat:@"  audioStartOffset: %d\n", self->_audioStartOffset];
  [v6 appendFormat:@"  audioEndOffset: %d\n", self->_audioEndOffset];

  return v6;
}

- (JFXPlayableElement)clip
{
  WeakRetained = objc_loadWeakRetained(&self->_clip);

  return WeakRetained;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)videoCompTimeRange
{
  v3 = *&self[1].var1.var0;
  *&retstr->var0.var0 = *&self[1].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var3;
  return self;
}

- (void)setVideoCompTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_videoCompTimeRange.duration.timescale = *&a3->var1.var1;
  *&self->_videoCompTimeRange.start.epoch = v4;
  *&self->_videoCompTimeRange.start.value = v3;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)audioCompTimeRange
{
  v3 = *&self[2].var1.var0;
  *&retstr->var0.var0 = *&self[2].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var3;
  return self;
}

- (void)setAudioCompTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_audioCompTimeRange.duration.timescale = *&a3->var1.var1;
  *&self->_audioCompTimeRange.start.epoch = v4;
  *&self->_audioCompTimeRange.start.value = v3;
}

@end