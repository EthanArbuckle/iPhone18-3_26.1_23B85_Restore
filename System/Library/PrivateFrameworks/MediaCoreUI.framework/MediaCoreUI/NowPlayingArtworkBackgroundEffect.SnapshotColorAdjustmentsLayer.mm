@interface NowPlayingArtworkBackgroundEffect.SnapshotColorAdjustmentsLayer
- (_TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29129SnapshotColorAdjustmentsLayer)initWithCoder:(id)a3;
- (void)layoutSublayers;
@end

@implementation NowPlayingArtworkBackgroundEffect.SnapshotColorAdjustmentsLayer

- (_TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29129SnapshotColorAdjustmentsLayer)initWithCoder:(id)a3
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
  v3 = [v2 mask];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

@end