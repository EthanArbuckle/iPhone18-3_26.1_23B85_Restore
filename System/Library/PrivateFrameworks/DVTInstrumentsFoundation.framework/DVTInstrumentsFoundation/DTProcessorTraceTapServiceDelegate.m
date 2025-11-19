@interface DTProcessorTraceTapServiceDelegate
+ (void)registerCapabilities:(id)a3;
- (DTProcessorTraceTapServiceDelegate)init;
- (DTProcessorTraceTapServiceDelegate)initWithMessageSender:(id)a3;
- (id)createConfigWithPlist:(id)a3;
- (id)willStartWithConfig:(id)a3;
@end

@implementation DTProcessorTraceTapServiceDelegate

+ (void)registerCapabilities:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static ProcessorTraceTapServiceDelegate.registerCapabilities(_:)(v4);
}

- (DTProcessorTraceTapServiceDelegate)initWithMessageSender:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceTapServiceDelegate_messageSender) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ProcessorTraceTapServiceDelegate();
  v4 = a3;
  return [(DTProcessorTraceTapServiceDelegate *)&v6 init];
}

- (id)createConfigWithPlist:(id)a3
{
  sub_248030AE8();
  v3 = objc_allocWithZone(DTProcessorTraceTapConfig);
  sub_2480078E4(&qword_27EE84128, &unk_24803EF30);
  v4 = [v3 initWithPlist_];
  swift_unknownObjectRelease();

  return v4;
}

- (id)willStartWithConfig:(id)a3
{
  v3 = [objc_allocWithZone(DTTapMessage) init];
  [v3 setKind_];

  return v3;
}

- (DTProcessorTraceTapServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end