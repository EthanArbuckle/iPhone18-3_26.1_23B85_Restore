@interface StringConductor
- (_TtC11MobileTimer15StringConductor)init;
- (void)registerReplyPublisherWithId:(id)a3 timeOut:(double)a4 completion:(id)a5;
- (void)send:(id)a3;
@end

@implementation StringConductor

- (void)registerReplyPublisherWithId:(id)a3 timeOut:(double)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1B20A9A74();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = *(&self->super.isa + OBJC_IVAR____TtC11MobileTimer15StringConductor_conductor);
  v12 = self;
  sub_1B209CB40(v7, v9, sub_1B20A083C, v10);
}

- (void)send:(id)a3
{
  v4 = sub_1B20A9A74();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC11MobileTimer15StringConductor_conductor);
  v9[0] = v4;
  v9[1] = v6;
  v7 = *(*v5 + 136);
  v8 = self;
  v7(v9);
}

- (_TtC11MobileTimer15StringConductor)init
{
  v3 = OBJC_IVAR____TtC11MobileTimer15StringConductor_conductor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F810, &qword_1B20B9990);
  v4 = swift_allocObject();
  v13 = 0;
  v14 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F818, &unk_1B20B9998);
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
  v12.super_class = type metadata accessor for StringConductor();
  return [(StringConductor *)&v12 init];
}

@end