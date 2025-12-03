@interface HULiveCaptionObjC
- (HULiveCaptionObjC)init;
- (HULiveCaptionObjC)initWithRootObject:(id)object;
- (id)text;
- (int64_t)resultType;
@end

@implementation HULiveCaptionObjC

- (HULiveCaptionObjC)initWithRootObject:(id)object
{
  *(&self->super.isa + OBJC_IVAR___HULiveCaptionObjC_rootObject) = object;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HULiveCaptionObjC();
  objectCopy = object;
  return [(HULiveCaptionObjC *)&v6 init];
}

- (id)text
{
  v2 = *(&self->super.isa + OBJC_IVAR___HULiveCaptionObjC_rootObject);
  selfCopy = self;
  sub_1DA67E4F4();

  v4 = sub_1DA67E574();

  return v4;
}

- (int64_t)resultType
{
  v2 = *(&self->super.isa + OBJC_IVAR___HULiveCaptionObjC_rootObject);
  selfCopy = self;
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