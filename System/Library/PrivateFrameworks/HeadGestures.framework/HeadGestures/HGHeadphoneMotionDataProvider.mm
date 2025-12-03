@interface HGHeadphoneMotionDataProvider
- (NSString)description;
- (_TtC12HeadGestures29HGHeadphoneMotionDataProvider)init;
- (void)headphoneMotionManagerDidConnect:(id)connect;
- (void)headphoneMotionManagerDidDisconnect:(id)disconnect;
@end

@implementation HGHeadphoneMotionDataProvider

- (NSString)description
{
  selfCopy = self;
  sub_2511066C8();

  v3 = sub_251130EE8();

  return v3;
}

- (void)headphoneMotionManagerDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  sub_2511072C8();
}

- (void)headphoneMotionManagerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_25110741C();
}

- (_TtC12HeadGestures29HGHeadphoneMotionDataProvider)init
{
  v3 = OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_cmMotionManager;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CC1CB0]) init];
  *(&self->super.super.isa + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_headphoneConnected) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HGHeadphoneMotionDataProvider();
  return [(HGMotionDataProvider *)&v5 init];
}

@end