@interface RGBLivenessCameraPreview
+ (Class)layerClass;
- (_TtC18CoreIDVRGBLiveness24RGBLivenessCameraPreview)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation RGBLivenessCameraPreview

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v5 = sub_245728A8C(&OBJC_IVAR____TtC18CoreIDVRGBLiveness24RGBLivenessCameraPreview____lazy_storage___regionOfInterestLayer, sub_245728AF0);
  [v5 removeAllAnimations];

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(RGBLivenessCameraPreview *)&v6 dealloc];
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_245728ED0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_245729360();
}

+ (Class)layerClass
{
  sub_2456E730C(0, &qword_27EE25078, 0x277CE5B68);

  return swift_getObjCClassFromMetadata();
}

- (_TtC18CoreIDVRGBLiveness24RGBLivenessCameraPreview)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end