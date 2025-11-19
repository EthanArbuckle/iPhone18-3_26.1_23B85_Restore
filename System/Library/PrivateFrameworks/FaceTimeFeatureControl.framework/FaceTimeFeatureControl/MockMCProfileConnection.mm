@interface MockMCProfileConnection
- (BOOL)isVideoConferencingRemoteControlAllowed;
- (_TtC22FaceTimeFeatureControl23MockMCProfileConnection)init;
@end

@implementation MockMCProfileConnection

- (BOOL)isVideoConferencingRemoteControlAllowed
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC22FaceTimeFeatureControl23MockMCProfileConnection_onIsVideoConferencingRemoteControlAllowed);
  v2 = *(&self->super._observers + OBJC_IVAR____TtC22FaceTimeFeatureControl23MockMCProfileConnection_onIsVideoConferencingRemoteControlAllowed);
  v4 = self;

  LOBYTE(v3) = v3(v5);

  return v3 & 1;
}

- (_TtC22FaceTimeFeatureControl23MockMCProfileConnection)init
{
  v2 = (self + OBJC_IVAR____TtC22FaceTimeFeatureControl23MockMCProfileConnection_onIsVideoConferencingRemoteControlAllowed);
  *v2 = sub_24A9B281C;
  v2[1] = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MockMCProfileConnection();
  return [(MockMCProfileConnection *)&v4 init];
}

@end