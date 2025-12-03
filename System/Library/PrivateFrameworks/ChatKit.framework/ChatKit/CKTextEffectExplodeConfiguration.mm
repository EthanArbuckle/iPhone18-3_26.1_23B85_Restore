@interface CKTextEffectExplodeConfiguration
+ (id)defaultConfiguration;
- (_TtC7ChatKit32CKTextEffectExplodeConfiguration)init;
- (_TtC7ChatKit32CKTextEffectExplodeConfiguration)initWithSourceColor:(id)color targetColor:(id)targetColor;
@end

@implementation CKTextEffectExplodeConfiguration

+ (id)defaultConfiguration
{
  v2 = [objc_allocWithZone(type metadata accessor for CKTextEffectExplodeConfiguration()) init];

  return v2;
}

- (_TtC7ChatKit32CKTextEffectExplodeConfiguration)initWithSourceColor:(id)color targetColor:(id)targetColor
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_sourceColor) = color;
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_targetColor) = targetColor;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CKTextEffectExplodeConfiguration();
  colorCopy = color;
  targetColorCopy = targetColor;
  return [(CKTextEffectExplodeConfiguration *)&v9 init];
}

- (_TtC7ChatKit32CKTextEffectExplodeConfiguration)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_sourceColor) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_targetColor) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKTextEffectExplodeConfiguration();
  return [(CKTextEffectExplodeConfiguration *)&v3 init];
}

@end