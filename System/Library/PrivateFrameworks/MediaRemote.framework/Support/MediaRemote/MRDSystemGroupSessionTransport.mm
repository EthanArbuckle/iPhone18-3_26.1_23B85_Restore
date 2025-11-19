@interface MRDSystemGroupSessionTransport
- (MRDSystemGroupSessionTransport)init;
- (MRDSystemGroupSessionTransport)initWithSessionIdentifier:(id)a3;
- (MRDeviceInfo)deviceInfo;
- (NSArray)subscribedPlayerPaths;
- (NSString)description;
- (NSString)hostname;
- (NSString)name;
- (id)createConnectionWithUserInfo:(id)a3;
@end

@implementation MRDSystemGroupSessionTransport

- (MRDSystemGroupSessionTransport)initWithSessionIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = &self->MRExternalDeviceTransport_opaque[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier];
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SystemGroupSessionTransport();
  return [(MRDSystemGroupSessionTransport *)&v8 init];
}

- (NSString)description
{
  v2 = self;
  SystemGroupSessionTransport.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (MRDeviceInfo)deviceInfo
{
  v3 = objc_allocWithZone(MRDeviceInfo);
  v4 = self;
  v5 = [v3 init];
  v6 = [(MRDSystemGroupSessionTransport *)v4 name];
  [v5 setName:v6];

  v7 = *&v4->MRExternalDeviceTransport_opaque[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier];
  v8 = *&v4->sessionIdentifier[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier];
  v9 = String._bridgeToObjectiveC()();
  [v5 setDeviceUID:v9];

  return v5;
}

- (NSArray)subscribedPlayerPaths
{
  if (qword_10052B5D8 != -1)
  {
    swift_once();
  }

  sub_100234414();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSString)name
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)hostname
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)createConnectionWithUserInfo:(id)a3
{
  if (a3)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = self;
  v5 = _s12mediaremoted27SystemGroupSessionTransportC16createConnection8userInfoSo016MRExternalDeviceeG0CSgSDys11AnyHashableVypGSg_tF_0();

  return v5;
}

- (MRDSystemGroupSessionTransport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end