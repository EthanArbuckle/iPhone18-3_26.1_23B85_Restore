@interface MRDSystemGroupSessionTransport
- (MRDSystemGroupSessionTransport)init;
- (MRDSystemGroupSessionTransport)initWithSessionIdentifier:(id)identifier;
- (MRDeviceInfo)deviceInfo;
- (NSArray)subscribedPlayerPaths;
- (NSString)description;
- (NSString)hostname;
- (NSString)name;
- (id)createConnectionWithUserInfo:(id)info;
@end

@implementation MRDSystemGroupSessionTransport

- (MRDSystemGroupSessionTransport)initWithSessionIdentifier:(id)identifier
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
  selfCopy = self;
  SystemGroupSessionTransport.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (MRDeviceInfo)deviceInfo
{
  v3 = objc_allocWithZone(MRDeviceInfo);
  selfCopy = self;
  v5 = [v3 init];
  name = [(MRDSystemGroupSessionTransport *)selfCopy name];
  [v5 setName:name];

  v7 = *&selfCopy->MRExternalDeviceTransport_opaque[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier];
  v8 = *&selfCopy->sessionIdentifier[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier];
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

- (id)createConnectionWithUserInfo:(id)info
{
  if (info)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
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