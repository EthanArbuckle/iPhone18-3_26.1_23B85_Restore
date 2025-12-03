@interface JFXCompositionItem
+ (id)compositionItemWithClip:(id)clip timeScale:(int)scale;
+ (id)silenceAsset;
+ (void)mediaserverdCrashed;
- ($AC64C642040120CEEAD84DEEACA9A5CE)sourceTimeRange;
- (JFXCompositionItem)initWithClip:(id)clip timeScale:(int)scale;
- (id)audioTrackSegmentsLoopedForDestinationTimeRange:(id *)range;
- (id)audioTrackSegmentsLoopedWithDestinationTime:(id *)time;
- (id)audioTrackSegmentsWithDestinationTime:(id *)time;
- (id)audioTrackSegmentsWithDestinationTime:(id *)time paddedFromTime:(id *)fromTime;
- (id)debugDescription;
- (id)emptyTrackSegmentWithDestinationRange:(id *)range;
- (id)emptyTrackSegmentWithDestinationTime:(id *)time;
- (id)videoTrackSegmentsWithDestinationRange:(id *)range;
- (void)dealloc;
- (void)setAudioEndOffset:(id *)offset;
- (void)setAudioStartOffset:(id *)offset;
- (void)setDestinationDuration:(id *)duration;
- (void)setSourceTimeRange:(id *)range;
@end

@implementation JFXCompositionItem

+ (id)compositionItemWithClip:(id)clip timeScale:(int)scale
{
  v4 = *&scale;
  clipCopy = clip;
  mediaType = [clipCopy mediaType];
  if ((mediaType == 1 || mediaType == 2) && (v7 = objc_opt_class()) != 0)
  {
    v8 = [[v7 alloc] initWithClip:clipCopy timeScale:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)mediaserverdCrashed
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"mediaserverdCrashed" object:0];

  v4 = sEmptyAsset;
  sEmptyAsset = 0;
}

+ (id)silenceAsset
{
  v3 = sEmptyAsset;
  if (!sEmptyAsset)
  {
    jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
    v5 = [jfxBundle pathForResource:@"silence" ofType:@"mov"];

    if (v5)
    {
      v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
      if (v6)
      {
        v7 = v6;
        v8 = [objc_alloc(MEMORY[0x277CE6650]) initWithURL:v6 options:0];
        v9 = sEmptyAsset;
        sEmptyAsset = v8;
      }
    }

    if (sEmptyAsset)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_mediaserverdCrashed name:@"mediaserverdCrashed" object:0];
    }

    v3 = sEmptyAsset;
  }

  return v3;
}

- (JFXCompositionItem)initWithClip:(id)clip timeScale:(int)scale
{
  clipCopy = clip;
  v14.receiver = self;
  v14.super_class = JFXCompositionItem;
  v7 = [(JFXCompositionItem *)&v14 init];
  v8 = v7;
  if (v7)
  {
    [(JFXCompositionItem *)v7 setClip:clipCopy];
    v8->_timeScale = scale;
    CMTimeMake(&start, 0, scale);
    CMTimeMake(&v11, 0, scale);
    CMTimeRangeMake(&v13, &start, &v11);
    v9 = *&v13.start.epoch;
    *&v8->_sourceTimeRange.start.value = *&v13.start.value;
    *&v8->_sourceTimeRange.start.epoch = v9;
    *&v8->_sourceTimeRange.duration.timescale = *&v13.duration.timescale;
    CMTimeMake(&v13.start, [clipCopy duration], scale);
    *&v8->_destinationDuration.value = *&v13.start.value;
    v8->_destinationDuration.epoch = v13.start.epoch;
    *&v8->_isFreezeFrame = 0;
    v8->_speed = 1.0;
    CMTimeMake(&v13.start, 0, scale);
    *&v8->_audioStartOffset.value = *&v13.start.value;
    v8->_audioStartOffset.epoch = v13.start.epoch;
    CMTimeMake(&v13.start, 0, scale);
    *&v8->_audioEndOffset.value = *&v13.start.value;
    v8->_audioEndOffset.epoch = v13.start.epoch;
  }

  return v8;
}

- (void)dealloc
{
  [(JFXCompositionItem *)self setClip:0];
  v3.receiver = self;
  v3.super_class = JFXCompositionItem;
  [(JFXCompositionItem *)&v3 dealloc];
}

- (id)emptyTrackSegmentWithDestinationRange:(id *)range
{
  v3 = *&range->var0.var3;
  v6[0] = *&range->var0.var0;
  v6[1] = v3;
  v6[2] = *&range->var1.var1;
  v4 = [objc_alloc(MEMORY[0x277CE64C0]) initWithTimeRange:v6];

  return v4;
}

- (id)emptyTrackSegmentWithDestinationTime:(id *)time
{
  v6 = *&time->var0;
  *v7 = time->var3;
  *&v7[8] = self->_sourceTimeRange.duration;
  v5[0] = v6;
  v5[1] = *v7;
  v5[2] = *&v7[16];
  v3 = [objc_alloc(MEMORY[0x277CE64C0]) initWithTimeRange:v5];

  return v3;
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

- (id)audioTrackSegmentsWithDestinationTime:(id *)time paddedFromTime:(id *)fromTime
{
  v6 = *time;
  fromTime = [(JFXCompositionItem *)self audioTrackSegmentsWithDestinationTime:&v6, fromTime];

  return fromTime;
}

- (id)audioTrackSegmentsWithDestinationTime:(id *)time
{
  v3 = MEMORY[0x277CBEA60];
  v7 = *time;
  v4 = [(JFXCompositionItem *)self emptyTrackSegmentWithDestinationTime:&v7];
  v5 = [v3 arrayWithObject:v4];

  return v5;
}

- (id)audioTrackSegmentsLoopedWithDestinationTime:(id *)time
{
  v3 = MEMORY[0x277CBEA60];
  v7 = *time;
  v4 = [(JFXCompositionItem *)self emptyTrackSegmentWithDestinationTime:&v7];
  v5 = [v3 arrayWithObject:v4];

  return v5;
}

- (id)audioTrackSegmentsLoopedForDestinationTimeRange:(id *)range
{
  v4 = MEMORY[0x277CBEA60];
  v5 = *&range->var0.var3;
  *&v9.start.value = *&range->var0.var0;
  *&v9.start.epoch = v5;
  *&v9.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v10, &v9);
  v6 = [(JFXCompositionItem *)self emptyTrackSegmentWithDestinationTime:&v10];
  v7 = [v4 arrayWithObject:v6];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%p> %@ : {\n\tsourceTimeRange start:\t%d\n\tsourceTimeRange end:\t%d\n}", self, v5, self->_sourceTimeRange.start.value, self->_sourceTimeRange.duration.value + self->_sourceTimeRange.start.value];

  return v6;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)sourceTimeRange
{
  v3 = *&self[2].var1.var0;
  *&retstr->var0.var0 = *&self[2].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var3;
  return self;
}

- (void)setSourceTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_sourceTimeRange.duration.timescale = *&range->var1.var1;
  *&self->_sourceTimeRange.start.epoch = v4;
  *&self->_sourceTimeRange.start.value = v3;
}

- (void)setDestinationDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_destinationDuration.epoch = duration->var3;
  *&self->_destinationDuration.value = v3;
}

- (void)setAudioStartOffset:(id *)offset
{
  v3 = *&offset->var0;
  self->_audioStartOffset.epoch = offset->var3;
  *&self->_audioStartOffset.value = v3;
}

- (void)setAudioEndOffset:(id *)offset
{
  v3 = *&offset->var0;
  self->_audioEndOffset.epoch = offset->var3;
  *&self->_audioEndOffset.value = v3;
}

@end