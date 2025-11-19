@interface CRHomeScreenStyleData
+ (id)luminanceKey;
+ (id)saturationKey;
+ (id)styleTypeKey;
+ (id)styleVariantKey;
+ (id)variationKey;
- (BOOL)isEqual:(id)a3;
- (CRHomeScreenStyleData)init;
- (CRHomeScreenStyleData)initWithBSXPCCoder:(id)a3;
- (CRHomeScreenStyleData)initWithCoder:(id)a3;
- (CRHomeScreenStyleData)initWithStyleType:(int64_t)a3 styleVariant:(int64_t)a4 variation:(double)a5 luminance:(double)a6 saturation:(double)a7;
- (NSDictionary)asDictionary;
- (NSString)description;
- (double)luminance;
- (double)saturation;
- (double)variation;
- (id)copyWithZone:(void *)a3;
- (int64_t)styleType;
- (int64_t)styleVariant;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLuminance:(double)a3;
- (void)setSaturation:(double)a3;
- (void)setStyleType:(int64_t)a3;
- (void)setStyleVariant:(int64_t)a3;
- (void)setVariation:(double)a3;
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

- (void)setStyleType:(int64_t)a3
{
  v5 = OBJC_IVAR___CRHomeScreenStyleData_styleType;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)styleVariant
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_styleVariant;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setStyleVariant:(int64_t)a3
{
  v5 = OBJC_IVAR___CRHomeScreenStyleData_styleVariant;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)variation
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_variation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVariation:(double)a3
{
  v5 = OBJC_IVAR___CRHomeScreenStyleData_variation;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)luminance
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_luminance;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLuminance:(double)a3
{
  v5 = OBJC_IVAR___CRHomeScreenStyleData_luminance;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)saturation
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_saturation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSaturation:(double)a3
{
  v5 = OBJC_IVAR___CRHomeScreenStyleData_saturation;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (CRHomeScreenStyleData)initWithStyleType:(int64_t)a3 styleVariant:(int64_t)a4 variation:(double)a5 luminance:(double)a6 saturation:(double)a7
{
  *(&self->super.isa + OBJC_IVAR___CRHomeScreenStyleData_styleType) = a3;
  *(&self->super.isa + OBJC_IVAR___CRHomeScreenStyleData_styleVariant) = a4;
  *(&self->super.isa + OBJC_IVAR___CRHomeScreenStyleData_variation) = a5;
  *(&self->super.isa + OBJC_IVAR___CRHomeScreenStyleData_luminance) = a6;
  *(&self->super.isa + OBJC_IVAR___CRHomeScreenStyleData_saturation) = a7;
  v8.receiver = self;
  v8.super_class = CRHomeScreenStyleData;
  return [(CRHomeScreenStyleData *)&v8 init];
}

- (NSDictionary)asDictionary
{
  v2 = self;
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

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C8254EA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CRHomeScreenStyleData.isEqual(_:)(v8);

  sub_1C824D6D8(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  CRHomeScreenStyleData.description.getter();

  v3 = sub_1C8254DF4();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  v4 = [(CRHomeScreenStyleData *)v3 styleType];
  v5 = [(CRHomeScreenStyleData *)v3 styleVariant];
  [(CRHomeScreenStyleData *)v3 variation];
  v7 = v6;
  [(CRHomeScreenStyleData *)v3 luminance];
  v9 = v8;
  [(CRHomeScreenStyleData *)v3 saturation];
  v11 = [objc_allocWithZone(CRHomeScreenStyleData) initWithStyleType:v4 styleVariant:v5 variation:v7 luminance:v9 saturation:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRHomeScreenStyleData.encode(with:)(v4);
}

- (CRHomeScreenStyleData)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1C824D7C8(v3);

  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  CRHomeScreenStyleData.encode(withBSXPCCoder:)(a3);
  swift_unknownObjectRelease();
}

- (CRHomeScreenStyleData)initWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_1C824D9E4(a3);
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