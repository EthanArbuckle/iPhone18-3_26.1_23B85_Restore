@interface JFXStillCompositionItem
- (JFXStillCompositionItem)initWithClip:(id)clip timeScale:(int)scale;
- (id)audioTrackSegmentsLoopedForDestinationTimeRange:(id *)range;
- (id)audioTrackSegmentsWithDestinationTime:(id *)time;
- (id)audioTrackSegmentsWithDestinationTime:(id *)time paddedFromTime:(id *)fromTime;
- (id)videoTrackSegmentsWithDestinationRange:(id *)range;
@end

@implementation JFXStillCompositionItem

- (JFXStillCompositionItem)initWithClip:(id)clip timeScale:(int)scale
{
  v7.receiver = self;
  v7.super_class = JFXStillCompositionItem;
  v4 = [(JFXMovieCompositionItem *)&v7 initWithClip:clip timeScale:*&scale];
  if (v4)
  {
    v5 = +[JFXCompositionItem silenceAsset];
    [(JFXMovieCompositionItem *)v4 setAsset:v5];
  }

  return v4;
}

- (id)videoTrackSegmentsWithDestinationRange:(id *)range
{
  v3 = MEMORY[0x277CBEA60];
  v4 = *&range->var0.var3;
  v8[0] = *&range->var0.var0;
  v8[1] = v4;
  v8[2] = *&range->var1.var1;
  v5 = [(JFXCompositionItem *)self emptyTrackSegmentWithDestinationRange:v8];
  v6 = [v3 arrayWithObject:v5];

  return v6;
}

- (id)audioTrackSegmentsWithDestinationTime:(id *)time
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (![(JFXCompositionItem *)self isFinalClip])
  {
    v7 = MEMORY[0x277CBEA60];
    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    v8 = [(JFXCompositionItem *)self emptyTrackSegmentWithDestinationTime:&time];
    v9 = [v7 arrayWithObject:v8];
LABEL_14:
    v12 = v9;
    goto LABEL_15;
  }

  [(JFXCompositionItem *)self sourceTimeRange];
  v25 = v23;
  v26 = v24;
  memset(&v22, 0, sizeof(v22));
  asset = [(JFXMovieCompositionItem *)self asset];
  v6 = asset;
  if (asset)
  {
    [asset duration];
  }

  else
  {
    memset(&time, 0, 24);
  }

  CMTimeConvertScale(&v22, &time.start, [(JFXCompositionItem *)self timeScale], kCMTimeRoundingMethod_RoundHalfAwayFromZero);

  time.start = v22;
  *&time2.start.value = v25;
  time2.start.epoch = v26;
  if ((CMTimeCompare(&time.start, &time2.start) & 0x80000000) == 0)
  {
    memset(&time, 0, sizeof(time));
    CMTimeMake(&time2.start, 0, [(JFXCompositionItem *)self timeScale]);
    *&duration.start.value = v25;
    duration.start.epoch = v26;
    CMTimeRangeMake(&time, &time2.start, &duration.start);
    v10 = *MEMORY[0x277CE5DE0];
    *&duration.start.value = *&time->var0;
    duration.start.epoch = time->var3;
    v17.start = time.duration;
    CMTimeRangeMake(&time2, &duration.start, &v17.start);
    duration = time;
    v11 = [(JFXMovieCompositionItem *)self segmentWithCharacteristic:v10 sourceRange:&duration destinationRange:&time2];
    v8 = v11;
    if (v11)
    {
      v27[0] = v11;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    }

    else
    {
      v9 = objc_opt_new();
    }

    goto LABEL_14;
  }

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  memset(&time, 0, sizeof(time));
  memset(&time2, 0, sizeof(time2));
  CMTimeMake(&duration.start, 2, [(JFXCompositionItem *)self timeScale]);
  v17.start = v22;
  CMTimeAdd(&time2.duration, &v17.start, &duration.start);
  *&duration.start.value = v25;
  duration.start.epoch = v26;
  v17.start = time2.duration;
  CMTimeSubtract(&time.duration, &duration.start, &v17.start);
  *&time.start.value = *&time->var0;
  time.start.epoch = time->var3;
  CMTimeMake(&duration.start, 0, [(JFXCompositionItem *)self timeScale]);
  *&time2.start.value = *&duration.start.value;
  time2.start.epoch = duration.start.epoch;
  v13 = objc_alloc(MEMORY[0x277CE64C0]);
  duration = time;
  v14 = [v13 initWithTimeRange:&duration];
  if (v14)
  {
    [v12 addObject:v14];
  }

  *&v17.start.value = *&time->var0;
  v17.start.epoch = time->var3;
  rhs = time.duration;
  CMTimeAdd(&duration.start, &v17.start, &rhs);
  *&time->var0 = *&duration.start.value;
  time->var3 = duration.start.epoch;
  v15 = *MEMORY[0x277CE5DE0];
  *&v17.start.value = *&time->var0;
  v17.start.epoch = time->var3;
  rhs = time2.duration;
  CMTimeRangeMake(&duration, &v17.start, &rhs);
  v17 = time2;
  v8 = [(JFXMovieCompositionItem *)self segmentWithCharacteristic:v15 sourceRange:&v17 destinationRange:&duration];

  if (v8)
  {
    [v12 addObject:v8];
  }

LABEL_15:

  return v12;
}

- (id)audioTrackSegmentsWithDestinationTime:(id *)time paddedFromTime:(id *)fromTime
{
  v6 = *time;
  fromTime = [(JFXStillCompositionItem *)self audioTrackSegmentsWithDestinationTime:&v6, fromTime];

  return fromTime;
}

- (id)audioTrackSegmentsLoopedForDestinationTimeRange:(id *)range
{
  v4 = *&range->var0.var3;
  *&v7.start.value = *&range->var0.var0;
  *&v7.start.epoch = v4;
  *&v7.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v8, &v7);
  v5 = [(JFXStillCompositionItem *)self audioTrackSegmentsWithDestinationTime:&v8];

  return v5;
}

@end