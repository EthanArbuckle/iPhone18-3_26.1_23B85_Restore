@interface NowPlayingArtworkBackgroundEffect.LiveColorAdjustmentsLayer
- (_TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer)initWithCoder:(id)coder;
- (_TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer)initWithLayer:(id)layer;
@end

@implementation NowPlayingArtworkBackgroundEffect.LiveColorAdjustmentsLayer

- (_TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer)initWithLayer:(id)layer
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  v5 = (self + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_dimmingMatrix);
  *v5 = xmmword_1C5BE49F0;
  v5[1] = xmmword_1C5BE4A00;
  v5[2] = xmmword_1C5BE4A10;
  v5[3] = xmmword_1C5BE4A20;
  v5[4] = xmmword_1C5BDA780;
  v6 = (self + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_saturationMatrix);
  CAColorMatrixMakeSaturation();
  v7 = v17;
  v6[2] = v16;
  v6[3] = v7;
  v6[4] = v18;
  v8 = v15;
  *v6 = v14;
  v6[1] = v8;
  __swift_project_boxed_opaque_existential_0(v13, v13[3]);
  v9 = sub_1C5BCBDD4();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(NowPlayingArtworkBackgroundEffect.LiveColorAdjustmentsLayer *)&v12 initWithLayer:v9];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v10;
}

- (_TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_dimmingMatrix);
  *v3 = xmmword_1C5BE49F0;
  v3[1] = xmmword_1C5BE4A00;
  v3[2] = xmmword_1C5BE4A10;
  v3[3] = xmmword_1C5BE4A20;
  v3[4] = xmmword_1C5BDA780;
  v4 = (self + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_saturationMatrix);
  CAColorMatrixMakeSaturation();
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  *v4 = v6;
  v4[1] = v7;
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

@end