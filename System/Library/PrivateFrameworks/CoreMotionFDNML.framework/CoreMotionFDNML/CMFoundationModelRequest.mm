@interface CMFoundationModelRequest
- (_TtC15CoreMotionFDNML24CMFoundationModelRequest)init;
- (void)addArrayWithName:(const char *)name type:(unsigned __int8)type shape:(const unsigned int *)shape dimensions:(unsigned __int8)dimensions byteArray:(const char *)array byteLength:(unint64_t)length;
- (void)setModelName:(const char *)name;
- (void)setTimestamp:(unint64_t)timestamp;
@end

@implementation CMFoundationModelRequest

- (_TtC15CoreMotionFDNML24CMFoundationModelRequest)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0xE000000000000000;
  v3[3] = sub_245F6D310(MEMORY[0x277D84F90]);
  v4 = v3 + *(type metadata accessor for CoreMotionFoundationModel_Request(0) + 28);
  sub_245F765C8();
  v6.receiver = self;
  v6.super_class = type metadata accessor for CMFoundationModelRequest(0);
  return [(CMFoundationModelRequest *)&v6 init];
}

- (void)addArrayWithName:(const char *)name type:(unsigned __int8)type shape:(const unsigned int *)shape dimensions:(unsigned __int8)dimensions byteArray:(const char *)array byteLength:(unint64_t)length
{
  selfCopy = self;
  sub_245F69400(name, type, shape, dimensions, array, length);
}

- (void)setTimestamp:(unint64_t)timestamp
{
  v5 = OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request;
  swift_beginAccess();
  *(&self->super.isa + v5) = timestamp;
}

- (void)setModelName:(const char *)name
{
  selfCopy = self;
  v4 = sub_245F768B8();
  v6 = v5;
  v7 = selfCopy + OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request;
  swift_beginAccess();
  v8 = *(v7 + 2);
  *(v7 + 1) = v4;
  *(v7 + 2) = v6;
}

@end