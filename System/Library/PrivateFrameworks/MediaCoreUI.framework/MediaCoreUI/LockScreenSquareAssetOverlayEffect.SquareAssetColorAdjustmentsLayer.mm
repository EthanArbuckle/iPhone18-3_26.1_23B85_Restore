@interface LockScreenSquareAssetOverlayEffect.SquareAssetColorAdjustmentsLayer
- (_TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A32SquareAssetColorAdjustmentsLayer)init;
- (_TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A32SquareAssetColorAdjustmentsLayer)initWithCoder:(id)coder;
- (_TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A32SquareAssetColorAdjustmentsLayer)initWithLayer:(id)layer;
@end

@implementation LockScreenSquareAssetOverlayEffect.SquareAssetColorAdjustmentsLayer

- (_TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A32SquareAssetColorAdjustmentsLayer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(LockScreenColorAdjustmentsLayer *)&v3 init];
}

- (_TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A32SquareAssetColorAdjustmentsLayer)initWithLayer:(id)layer
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v5 = sub_1C5BCBDD4();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(LockScreenColorAdjustmentsLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

- (_TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A32SquareAssetColorAdjustmentsLayer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(LockScreenColorAdjustmentsLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end