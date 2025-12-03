@interface FMAVPlayerView
+ (Class)layerClass;
- (NSString)accessibilityAssetName;
- (NSString)description;
- (_TtC11FMFindingUI14FMAVPlayerView)initWithFrame:(CGRect)frame;
- (void)dealloc;
@end

@implementation FMAVPlayerView

+ (Class)layerClass
{
  sub_24A50D7EC(0, &qword_27EF50F48, 0x277CE65D8);

  return swift_getObjCClassFromMetadata();
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetManager);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for FMAVPlayerView();
  [(FMAVPlayerView *)&v4 dealloc];
}

- (NSString)description
{
  selfCopy = self;
  sub_24A59F3F4();

  v3 = sub_24A62EBE4();

  return v3;
}

- (_TtC11FMFindingUI14FMAVPlayerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)accessibilityAssetName
{
  if (*(&self->super.super._responderFlags + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName))
  {
    v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName);
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_assetName);

    v4 = sub_24A62EBE4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end