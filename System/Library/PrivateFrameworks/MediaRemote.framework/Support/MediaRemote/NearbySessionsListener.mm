@interface NearbySessionsListener
+ (id)createForHomePodWithDelegate:(id)a3;
+ (id)createWithDelegate:(id)a3;
- (_TtC12mediaremoted22NearbySessionsListener)init;
@end

@implementation NearbySessionsListener

+ (id)createWithDelegate:(id)a3
{
  v4 = sub_1001BC5A8(&unk_1005219D0, &unk_10044EC80);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v7 = NearbyInvitationScanner.init(provider:)();
  v8 = objc_allocWithZone(type metadata accessor for NearbySessionsListenerImplementation());
  v9 = sub_1001C9974(v7, 0, a3);

  return v9;
}

+ (id)createForHomePodWithDelegate:(id)a3
{
  v4 = objc_allocWithZone(type metadata accessor for NearbyInvitationParameters());
  swift_unknownObjectRetain();
  v5 = NearbyInvitationParameters.init(serviceName:browserType:route:)();
  v6 = sub_1001BC5A8(&unk_1005219D0, &unk_10044EC80);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = v5;
  v10 = NearbyInvitationScanner.init(provider:configuration:)();
  v11 = objc_allocWithZone(type metadata accessor for NearbySessionsListenerImplementation());
  v12 = sub_1001C9974(v10, 1, a3);

  return v12;
}

- (_TtC12mediaremoted22NearbySessionsListener)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NearbySessionsListener();
  return [(NearbySessionsListener *)&v3 init];
}

@end