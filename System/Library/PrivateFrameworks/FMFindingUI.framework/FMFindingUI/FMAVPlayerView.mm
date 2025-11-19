@interface FMAVPlayerView
+ (Class)layerClass;
- (NSString)accessibilityAssetName;
- (NSString)description;
- (_TtC11FMFindingUI14FMAVPlayerView)initWithFrame:(CGRect)a3;
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
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for FMAVPlayerView();
  [(FMAVPlayerView *)&v4 dealloc];
}

- (NSString)description
{
  v2 = self;
  sub_24A59F3F4();

  v3 = sub_24A62EBE4();

  return v3;
}

- (_TtC11FMFindingUI14FMAVPlayerView)initWithFrame:(CGRect)a3
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