@interface JFXCompositionItem
+ (id)compositionItemWithClip:(id)a3 timeScale:(int)a4;
+ (id)silenceAsset;
+ (void)mediaserverdCrashed;
- ($AC64C642040120CEEAD84DEEACA9A5CE)sourceTimeRange;
- (JFXCompositionItem)initWithClip:(id)a3 timeScale:(int)a4;
- (id)audioTrackSegmentsLoopedForDestinationTimeRange:(id *)a3;
- (id)audioTrackSegmentsLoopedWithDestinationTime:(id *)a3;
- (id)audioTrackSegmentsWithDestinationTime:(id *)a3;
- (id)audioTrackSegmentsWithDestinationTime:(id *)a3 paddedFromTime:(id *)a4;
- (id)debugDescription;
- (id)emptyTrackSegmentWithDestinationRange:(id *)a3;
- (id)emptyTrackSegmentWithDestinationTime:(id *)a3;
- (id)videoTrackSegmentsWithDestinationRange:(id *)a3;
- (void)dealloc;
- (void)setAudioEndOffset:(id *)a3;
- (void)setAudioStartOffset:(id *)a3;
- (void)setDestinationDuration:(id *)a3;
- (void)setSourceTimeRange:(id *)a3;
@end

@implementation JFXCompositionItem

+ (id)compositionItemWithClip:(id)a3 timeScale:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [v5 mediaType];
  if ((v6 == 1 || v6 == 2) && (v7 = objc_opt_class()) != 0)
  {
    v8 = [[v7 alloc] initWithClip:v5 timeScale:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)mediaserverdCrashed
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:a1 name:@"mediaserverdCrashed" object:0];

  v4 = sEmptyAsset;
  sEmptyAsset = 0;
}

+ (id)silenceAsset
{
  v3 = sEmptyAsset;
  if (!sEmptyAsset)
  {
    v4 = [MEMORY[0x277CCA8D8] jfxBundle];
    v5 = [v4 pathForResource:@"silence" ofType:@"mov"];

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
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      [v10 addObserver:a1 selector:sel_mediaserverdCrashed name:@"mediaserverdCrashed" object:0];
    }

    v3 = sEmptyAsset;
  }

  return v3;
}

- (JFXCompositionItem)initWithClip:(id)a3 timeScale:(int)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = JFXCompositionItem;
  v7 = [(JFXCompositionItem *)&v14 init];
  v8 = v7;
  if (v7)
  {
    [(JFXCompositionItem *)v7 setClip:v6];
    v8->_timeScale = a4;
    CMTimeMake(&start, 0, a4);
    CMTimeMake(&v11, 0, a4);
    CMTimeRangeMake(&v13, &start, &v11);
    v9 = *&v13.start.epoch;
    *&v8->_sourceTimeRange.start.value = *&v13.start.value;
    *&v8->_sourceTimeRange.start.epoch = v9;
    *&v8->_sourceTimeRange.duration.timescale = *&v13.duration.timescale;
    CMTimeMake(&v13.start, [v6 duration], a4);
    *&v8->_destinationDuration.value = *&v13.start.value;
    v8->_destinationDuration.epoch = v13.start.epoch;
    *&v8->_isFreezeFrame = 0;
    v8->_speed = 1.0;
    CMTimeMake(&v13.start, 0, a4);
    *&v8->_audioStartOffset.value = *&v13.start.value;
    v8->_audioStartOffset.epoch = v13.start.epoch;
    CMTimeMake(&v13.start, 0, a4);
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

- (id)emptyTrackSegmentWithDestinationRange:(id *)a3
{
  v3 = *&a3->var0.var3;
  v6[0] = *&a3->var0.var0;
  v6[1] = v3;
  v6[2] = *&a3->var1.var1;
  v4 = [objc_alloc(MEMORY[0x277CE64C0]) initWithTimeRange:v6];

  return v4;
}

- (id)emptyTrackSegmentWithDestinationTime:(id *)a3
{
  v6 = *&a3->var0;
  *v7 = a3->var3;
  *&v7[8] = self->_sourceTimeRange.duration;
  v5[0] = v6;
  v5[1] = *v7;
  v5[2] = *&v7[16];
  v3 = [objc_alloc(MEMORY[0x277CE64C0]) initWithTimeRange:v5];

  return v3;
}

- (id)videoTrackSegmentsWithDestinationRange:(id *)a3
{
  v3 = MEMORY[0x277CBEA60];
  v4 = *&a3->var0.var3;
  v8[0] = *&a3->var0.var0;
  v8[1] = v4;
  v8[2] = *&a3->var1.var1;
  v5 = [(JFXCompositionItem *)self emptyTrackSegmentWithDestinationRange:v8];
  v6 = [v3 arrayWithObject:v5];

  return v6;
}

- (id)audioTrackSegmentsWithDestinationTime:(id *)a3 paddedFromTime:(id *)a4
{
  v6 = *a3;
  v4 = [(JFXCompositionItem *)self audioTrackSegmentsWithDestinationTime:&v6, a4];

  return v4;
}

- (id)audioTrackSegmentsWithDestinationTime:(id *)a3
{
  v3 = MEMORY[0x277CBEA60];
  v7 = *a3;
  v4 = [(JFXCompositionItem *)self emptyTrackSegmentWithDestinationTime:&v7];
  v5 = [v3 arrayWithObject:v4];

  return v5;
}

- (id)audioTrackSegmentsLoopedWithDestinationTime:(id *)a3
{
  v3 = MEMORY[0x277CBEA60];
  v7 = *a3;
  v4 = [(JFXCompositionItem *)self emptyTrackSegmentWithDestinationTime:&v7];
  v5 = [v3 arrayWithObject:v4];

  return v5;
}

- (id)audioTrackSegmentsLoopedForDestinationTimeRange:(id *)a3
{
  v4 = MEMORY[0x277CBEA60];
  v5 = *&a3->var0.var3;
  *&v9.start.value = *&a3->var0.var0;
  *&v9.start.epoch = v5;
  *&v9.duration.timescale = *&a3->var1.var1;
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

- (void)setSourceTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_sourceTimeRange.duration.timescale = *&a3->var1.var1;
  *&self->_sourceTimeRange.start.epoch = v4;
  *&self->_sourceTimeRange.start.value = v3;
}

- (void)setDestinationDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_destinationDuration.epoch = a3->var3;
  *&self->_destinationDuration.value = v3;
}

- (void)setAudioStartOffset:(id *)a3
{
  v3 = *&a3->var0;
  self->_audioStartOffset.epoch = a3->var3;
  *&self->_audioStartOffset.value = v3;
}

- (void)setAudioEndOffset:(id *)a3
{
  v3 = *&a3->var0;
  self->_audioEndOffset.epoch = a3->var3;
  *&self->_audioEndOffset.value = v3;
}

@end