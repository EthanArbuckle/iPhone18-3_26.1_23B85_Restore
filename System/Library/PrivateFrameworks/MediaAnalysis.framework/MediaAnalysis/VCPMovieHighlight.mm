@interface VCPMovieHighlight
- ($AFC8CF76A46F37F9FB23C20884F4FD99)timerange;
- (CGRect)bestPlaybackCrop;
- (VCPMovieHighlight)initWithTimeRange:(id *)range;
- (void)checkAutoPlayable;
- (void)copyScoresFrom:(id)from;
- (void)mergeSegment:(id)segment;
- (void)setTimerange:(id *)timerange;
@end

@implementation VCPMovieHighlight

- (VCPMovieHighlight)initWithTimeRange:(id *)range
{
  v11.receiver = self;
  v11.super_class = VCPMovieHighlight;
  v4 = [(VCPMovieHighlight *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&range->var0.var0;
    v7 = *&range->var0.var3;
    *(v4 + 168) = *&range->var1.var1;
    *(v4 + 152) = v7;
    *(v4 + 136) = v6;
    v8 = *(MEMORY[0x1E695F050] + 16);
    *(v4 + 104) = *MEMORY[0x1E695F050];
    *(v4 + 120) = v8;
    v9 = v4;
  }

  return v5;
}

- (void)mergeSegment:(id)segment
{
  segmentCopy = segment;
  score = self->_score;
  time.start = self->_timerange.duration;
  Seconds = CMTimeGetSeconds(&time.start);
  [segmentCopy score];
  v8 = v7;
  if (segmentCopy)
  {
    [segmentCopy timerange];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  lhs.start = time.duration;
  v9 = CMTimeGetSeconds(&lhs.start);
  if (segmentCopy)
  {
    [segmentCopy timerange];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  *&lhs.start.value = *&self->_timerange.duration.value;
  lhs.start.epoch = self->_timerange.duration.epoch;
  v29.start = time.duration;
  CMTimeAdd(&v31, &lhs.start, &v29.start);
  v10 = CMTimeGetSeconds(&v31);
  v11 = *&self->_timerange.start.epoch;
  *&lhs.start.value = *&self->_timerange.start.value;
  *&lhs.start.epoch = v11;
  *&lhs.duration.timescale = *&self->_timerange.duration.timescale;
  if (segmentCopy)
  {
    [segmentCopy timerange];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  CMTimeRangeGetUnion(&time, &lhs, &v29);
  v12 = Seconds * score;
  v13 = v9 * v8;
  v14 = v10;
  v15 = *&time.start.epoch;
  *&self->_timerange.start.value = *&time.start.value;
  *&self->_timerange.start.epoch = v15;
  *&self->_timerange.duration.timescale = *&time.duration.timescale;
  if (v14 <= 0.0)
  {
    self->_score = 0.0;
    v20 = 0.0;
  }

  else
  {
    self->_score = (v12 + v13) / v14;
    averageScore = self->_averageScore;
    *&lhs.start.value = *&self->_timerange.duration.value;
    lhs.start.epoch = self->_timerange.duration.epoch;
    v17 = CMTimeGetSeconds(&lhs.start);
    [segmentCopy averageScore];
    v19 = v18;
    if (segmentCopy)
    {
      [segmentCopy timerange];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    lhs.start = time.duration;
    v20 = (CMTimeGetSeconds(&lhs.start) * v19 + averageScore * v17) / v14;
  }

  self->_averageScore = v20;
  if (v12 >= v13)
  {
    descriptor = self->_descriptor;
  }

  else
  {
    descriptor = [segmentCopy descriptor];
  }

  descriptor = self->_descriptor;
  self->_descriptor = descriptor;

  [(VCPVideoKeyFrame *)self->_keyFrame score];
  v24 = v23;
  keyFrame = [segmentCopy keyFrame];
  [keyFrame score];
  if (v24 >= v26)
  {
    keyFrame2 = self->_keyFrame;
  }

  else
  {
    keyFrame2 = [segmentCopy keyFrame];
  }

  keyFrame = self->_keyFrame;
  self->_keyFrame = keyFrame2;

  self->_isAutoPlayable |= [segmentCopy isAutoPlayable];
}

- (void)copyScoresFrom:(id)from
{
  fromCopy = from;
  [fromCopy score];
  self->_score = v4;
  [fromCopy averageScore];
  self->_averageScore = v5;
  [fromCopy junkScore];
  self->_junkScore = v6;
  [fromCopy qualityScore];
  self->_qualityScore = v7;
  [fromCopy expressionScore];
  self->_expressionScore = v8;
  [fromCopy actionScore];
  self->_actionScore = v9;
  [fromCopy voiceScore];
  self->_voiceScore = v10;
  [fromCopy humanActionScore];
  self->_humanActionScore = v11;
  [fromCopy humanPoseScore];
  self->_humanPoseScore = v12;
  self->_isAutoPlayable = [fromCopy isAutoPlayable];
  self->_isSettlingOK = [fromCopy isSettlingOK];
  [fromCopy autoplayScore];
  self->_autoplayScore = v13;
  [fromCopy motionScore];
  self->_motionScore = v14;
  [fromCopy exposureChangeScore];
  self->_exposureChangeScore = v15;
}

- (void)checkAutoPlayable
{
  if (self->_score < 0.4 || self->_actionScore < 0.4 && self->_humanActionScore < 0.3)
  {
    v3 = 0;
  }

  else
  {
    duration = self->_timerange.duration;
    v3 = CMTimeGetSeconds(&duration) > 1.0;
  }

  self->_isAutoPlayable = v3;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)timerange
{
  v3 = *&self[3].var0.var1;
  *&retstr->var0.var0 = *&self[2].var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var1.var0;
  return self;
}

- (void)setTimerange:(id *)timerange
{
  v3 = *&timerange->var0.var0;
  v4 = *&timerange->var0.var3;
  *&self->_timerange.duration.timescale = *&timerange->var1.var1;
  *&self->_timerange.start.epoch = v4;
  *&self->_timerange.start.value = v3;
}

- (CGRect)bestPlaybackCrop
{
  x = self->_bestPlaybackCrop.origin.x;
  y = self->_bestPlaybackCrop.origin.y;
  width = self->_bestPlaybackCrop.size.width;
  height = self->_bestPlaybackCrop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end