@interface CMFoundationModelRequest
- (_TtC15CoreMotionFDNML24CMFoundationModelRequest)init;
- (void)addArrayWithName:(const char *)a3 type:(unsigned __int8)a4 shape:(const unsigned int *)a5 dimensions:(unsigned __int8)a6 byteArray:(const char *)a7 byteLength:(unint64_t)a8;
- (void)setModelName:(const char *)a3;
- (void)setTimestamp:(unint64_t)a3;
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

- (void)addArrayWithName:(const char *)a3 type:(unsigned __int8)a4 shape:(const unsigned int *)a5 dimensions:(unsigned __int8)a6 byteArray:(const char *)a7 byteLength:(unint64_t)a8
{
  v14 = self;
  sub_245F69400(a3, a4, a5, a6, a7, a8);
}

- (void)setTimestamp:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)setModelName:(const char *)a3
{
  v3 = self;
  v4 = sub_245F768B8();
  v6 = v5;
  v7 = v3 + OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request;
  swift_beginAccess();
  v8 = *(v7 + 2);
  *(v7 + 1) = v4;
  *(v7 + 2) = v6;
}

@end