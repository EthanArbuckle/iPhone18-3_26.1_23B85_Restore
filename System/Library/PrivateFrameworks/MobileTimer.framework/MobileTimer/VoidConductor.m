@interface VoidConductor
- (_TtC11MobileTimer13VoidConductor)init;
- (void)registerReplyPublisherWithTimeOut:(double)a3 completion:(id)a4;
- (void)send;
@end

@implementation VoidConductor

- (void)registerReplyPublisherWithTimeOut:(double)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC11MobileTimer13VoidConductor_conductor);
  v8 = self;
  sub_1B209E14C(sub_1B20A062C, v6);
}

- (void)send
{
  v2 = *(**(&self->super.isa + OBJC_IVAR____TtC11MobileTimer13VoidConductor_conductor) + 136);
  v3 = self;
  v2();
}

- (_TtC11MobileTimer13VoidConductor)init
{
  v3 = OBJC_IVAR____TtC11MobileTimer13VoidConductor_conductor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F830, &qword_1B20B99B0);
  v4 = swift_allocObject();
  v13 = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F838, &qword_1B20B99B8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1B20A9964();
  v9 = MEMORY[0x1E69E7CD0];
  *(v4 + 2) = v8;
  *(v4 + 3) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v4 + 4) = v10;
  *(&self->super.isa + v3) = v4;
  v12.receiver = self;
  v12.super_class = type metadata accessor for VoidConductor();
  return [(VoidConductor *)&v12 init];
}

@end