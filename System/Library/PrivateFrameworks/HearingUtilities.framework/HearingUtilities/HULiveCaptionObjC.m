@interface HULiveCaptionObjC
- (HULiveCaptionObjC)init;
- (HULiveCaptionObjC)initWithRootObject:(id)a3;
- (id)text;
- (int64_t)resultType;
@end

@implementation HULiveCaptionObjC

- (HULiveCaptionObjC)initWithRootObject:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___HULiveCaptionObjC_rootObject) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HULiveCaptionObjC();
  v4 = a3;
  return [(HULiveCaptionObjC *)&v6 init];
}

- (id)text
{
  v2 = *(&self->super.isa + OBJC_IVAR___HULiveCaptionObjC_rootObject);
  v3 = self;
  sub_1DA67E4F4();

  v4 = sub_1DA67E574();

  return v4;
}

- (int64_t)resultType
{
  v2 = *(&self->super.isa + OBJC_IVAR___HULiveCaptionObjC_rootObject);
  v3 = self;
  sub_1DA67E4E4();
  v4 = sub_1DA67E544();

  return v4;
}

- (HULiveCaptionObjC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end