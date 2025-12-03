@interface DTProcessorTraceTapServiceDelegate
+ (void)registerCapabilities:(id)capabilities;
- (DTProcessorTraceTapServiceDelegate)init;
- (DTProcessorTraceTapServiceDelegate)initWithMessageSender:(id)sender;
- (id)createConfigWithPlist:(id)plist;
- (id)willStartWithConfig:(id)config;
@end

@implementation DTProcessorTraceTapServiceDelegate

+ (void)registerCapabilities:(id)capabilities
{
  swift_getObjCClassMetadata();
  capabilitiesCopy = capabilities;
  static ProcessorTraceTapServiceDelegate.registerCapabilities(_:)(capabilitiesCopy);
}

- (DTProcessorTraceTapServiceDelegate)initWithMessageSender:(id)sender
{
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceTapServiceDelegate_messageSender) = sender;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ProcessorTraceTapServiceDelegate();
  senderCopy = sender;
  return [(DTProcessorTraceTapServiceDelegate *)&v6 init];
}

- (id)createConfigWithPlist:(id)plist
{
  sub_248030AE8();
  v3 = objc_allocWithZone(DTProcessorTraceTapConfig);
  sub_2480078E4(&qword_27EE84128, &unk_24803EF30);
  initWithPlist_ = [v3 initWithPlist_];
  swift_unknownObjectRelease();

  return initWithPlist_;
}

- (id)willStartWithConfig:(id)config
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