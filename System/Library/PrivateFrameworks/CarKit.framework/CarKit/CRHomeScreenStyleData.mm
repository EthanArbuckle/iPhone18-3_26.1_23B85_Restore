@interface CRHomeScreenStyleData
+ (id)luminanceKey;
+ (id)saturationKey;
+ (id)styleTypeKey;
+ (id)styleVariantKey;
+ (id)variationKey;
- (BOOL)isEqual:(id)equal;
- (CRHomeScreenStyleData)init;
- (CRHomeScreenStyleData)initWithBSXPCCoder:(id)coder;
- (CRHomeScreenStyleData)initWithCoder:(id)coder;
- (CRHomeScreenStyleData)initWithStyleType:(int64_t)type styleVariant:(int64_t)variant variation:(double)variation luminance:(double)luminance saturation:(double)saturation;
- (NSDictionary)asDictionary;
- (NSString)description;
- (double)luminance;
- (double)saturation;
- (double)variation;
- (id)copyWithZone:(void *)zone;
- (int64_t)styleType;
- (int64_t)styleVariant;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setLuminance:(double)luminance;
- (void)setSaturation:(double)saturation;
- (void)setStyleType:(int64_t)type;
- (void)setStyleVariant:(int64_t)variant;
- (void)setVariation:(double)variation;
@end

@implementation CRHomeScreenStyleData

+ (id)styleTypeKey
{
  v2 = sub_1C8254DF4();

  return v2;
}

+ (id)styleVariantKey
{
  v2 = sub_1C8254DF4();

  return v2;
}

+ (id)variationKey
{
  v2 = sub_1C8254DF4();

  return v2;
}

+ (id)luminanceKey
{
  v2 = sub_1C8254DF4();

  return v2;
}

+ (id)saturationKey
{
  v2 = sub_1C8254DF4();

  return v2;
}

- (int64_t)styleType
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_styleType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setStyleType:(int64_t)type
{
  v5 = OBJC_IVAR___CRHomeScreenStyleData_styleType;
  swift_beginAccess();
  *(&self->super.isa + v5) = type;
}

- (int64_t)styleVariant
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_styleVariant;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setStyleVariant:(int64_t)variant
{
  v5 = OBJC_IVAR___CRHomeScreenStyleData_styleVariant;
  swift_beginAccess();
  *(&self->super.isa + v5) = variant;
}

- (double)variation
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_variation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVariation:(double)variation
{
  v5 = OBJC_IVAR___CRHomeScreenStyleData_variation;
  swift_beginAccess();
  *(&self->super.isa + v5) = variation;
}

- (double)luminance
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_luminance;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLuminance:(double)luminance
{
  v5 = OBJC_IVAR___CRHomeScreenStyleData_luminance;
  swift_beginAccess();
  *(&self->super.isa + v5) = luminance;
}

- (double)saturation
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_saturation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSaturation:(double)saturation
{
  v5 = OBJC_IVAR___CRHomeScreenStyleData_saturation;
  swift_beginAccess();
  *(&self->super.isa + v5) = saturation;
}

- (CRHomeScreenStyleData)initWithStyleType:(int64_t)type styleVariant:(int64_t)variant variation:(double)variation luminance:(double)luminance saturation:(double)saturation
{
  *(&self->super.isa + OBJC_IVAR___CRHomeScreenStyleData_styleType) = type;
  *(&self->super.isa + OBJC_IVAR___CRHomeScreenStyleData_styleVariant) = variant;
  *(&self->super.isa + OBJC_IVAR___CRHomeScreenStyleData_variation) = variation;
  *(&self->super.isa + OBJC_IVAR___CRHomeScreenStyleData_luminance) = luminance;
  *(&self->super.isa + OBJC_IVAR___CRHomeScreenStyleData_saturation) = saturation;
  v8.receiver = self;
  v8.super_class = CRHomeScreenStyleData;
  return [(CRHomeScreenStyleData *)&v8 init];
}

- (NSDictionary)asDictionary
{
  selfCopy = self;
  v3 = CRHomeScreenStyleData.asDictionary.getter();

  if (v3)
  {
    v4 = sub_1C8254DD4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C8254EA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRHomeScreenStyleData.isEqual(_:)(v8);

  sub_1C824D6D8(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  CRHomeScreenStyleData.description.getter();

  v3 = sub_1C8254DF4();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  styleType = [(CRHomeScreenStyleData *)selfCopy styleType];
  styleVariant = [(CRHomeScreenStyleData *)selfCopy styleVariant];
  [(CRHomeScreenStyleData *)selfCopy variation];
  v7 = v6;
  [(CRHomeScreenStyleData *)selfCopy luminance];
  v9 = v8;
  [(CRHomeScreenStyleData *)selfCopy saturation];
  v11 = [objc_allocWithZone(CRHomeScreenStyleData) initWithStyleType:styleType styleVariant:styleVariant variation:v7 luminance:v9 saturation:v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRHomeScreenStyleData.encode(with:)(coderCopy);
}

- (CRHomeScreenStyleData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1C824D7C8(coderCopy);

  return v4;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  CRHomeScreenStyleData.encode(withBSXPCCoder:)(coder);
  swift_unknownObjectRelease();
}

- (CRHomeScreenStyleData)initWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  v4 = sub_1C824D9E4(coder);
  swift_unknownObjectRelease();
  return v4;
}

- (CRHomeScreenStyleData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end