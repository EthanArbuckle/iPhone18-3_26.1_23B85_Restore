@interface NowPlayingArtworkBackgroundEffect.SnapshotColorAdjustmentsLayer
- (_TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29129SnapshotColorAdjustmentsLayer)initWithCoder:(id)coder;
- (void)layoutSublayers;
@end

@implementation NowPlayingArtworkBackgroundEffect.SnapshotColorAdjustmentsLayer

- (_TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29129SnapshotColorAdjustmentsLayer)initWithCoder:(id)coder
{
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)layoutSublayers
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(NowPlayingArtworkBackgroundEffect.SnapshotColorAdjustmentsLayer *)&v5 layoutSublayers];
  mask = [v2 mask];
  if (mask)
  {
    v4 = mask;
    [v2 bounds];
    [v4 setFrame_];
  }
}

@end