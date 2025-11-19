@interface HGBuiltinMotionDataProvider
- (NSString)description;
- (_TtC12HeadGestures27HGBuiltinMotionDataProvider)init;
@end

@implementation HGBuiltinMotionDataProvider

- (NSString)description
{
  v2 = self;
  sub_25112FAF4();

  v3 = sub_251130EE8();

  return v3;
}

- (_TtC12HeadGestures27HGBuiltinMotionDataProvider)init
{
  v3 = OBJC_IVAR____TtC12HeadGestures27HGBuiltinMotionDataProvider_cmMotionManager;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(&self->super.super.isa + OBJC_IVAR____TtC12HeadGestures27HGBuiltinMotionDataProvider_samplingRate) = 0x4039000000000000;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HGBuiltinMotionDataProvider();
  return [(HGMotionDataProvider *)&v5 init];
}

@end