@interface HMDActionSetResponse
+ (id)responsesFromSerializedResponses:(id)a3;
+ (id)serializeWithResponses:(id)a3;
- (HMDActionSetResponse)init;
- (HMDActionSetResponse)initWithActionSetUUID:(id)a3 state:(BOOL)a4;
- (NSUUID)actionSetUUID;
- (id)serialize;
@end

@implementation HMDActionSetResponse

- (NSUUID)actionSetUUID
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_229609A64(self + OBJC_IVAR___HMDActionSetResponse_internalActionSetUUID, v10);
  if (v11)
  {
    sub_229543C58(v10, v12);
    swift_dynamicCast();
    v9 = sub_22A4DB77C();
    (*(v4 + 8))(v7, v3);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (HMDActionSetResponse)initWithActionSetUUID:(id)a3 state:(BOOL)a4
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v11 = (self + OBJC_IVAR___HMDActionSetResponse_internalActionSetUUID);
  v11[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v7 + 16))(boxed_opaque_existential_1, v10, v6);
  *(&self->super.super.isa + OBJC_IVAR___HMDActionSetResponse_state) = a4;
  v15.receiver = self;
  v15.super_class = HMDActionSetResponse;
  v13 = [(HMDActionSetResponse *)&v15 init];
  (*(v7 + 8))(v10, v6);
  return v13;
}

+ (id)responsesFromSerializedResponses:(id)a3
{
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v3 = sub_22A4DD49C();
  sub_229609AD4(v3);

  type metadata accessor for HMDActionSetResponse(v4);
  v5 = sub_22A4DD81C();

  return v5;
}

+ (id)serializeWithResponses:(id)a3
{
  type metadata accessor for HMDActionSetResponse(a1);
  v3 = sub_22A4DD83C();
  sub_229609E08(v3);

  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v4 = sub_22A4DD47C();

  return v4;
}

- (id)serialize
{
  v2 = self;
  sub_229609760();

  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v3 = sub_22A4DD47C();

  return v3;
}

- (HMDActionSetResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end