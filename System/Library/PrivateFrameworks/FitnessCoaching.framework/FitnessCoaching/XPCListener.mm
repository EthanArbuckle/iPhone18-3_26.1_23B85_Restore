@interface XPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC15FitnessCoaching11XPCListener)init;
- (void)dealloc;
- (void)transportMessage:(unint64_t)a3 data:(NSData *)a4 completion:(id)a5;
- (void)transportRequest:(unint64_t)a3 data:(NSData *)a4 completion:(id)a5;
@end

@implementation XPCListener

- (_TtC15FitnessCoaching11XPCListener)init
{
  v2 = objc_allocWithZone(type metadata accessor for XPCListener());
  v3 = XPCListener.init(machServiceName:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)dealloc
{
  v2 = qword_2813BC690;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_2277E2374();
  __swift_project_value_buffer(v4, qword_2813BC698);
  v5._countAndFlagsBits = 0x6164696C61766E69;
  v5._object = 0xEC00000029286574;
  v6._object = 0x80000002277EA0E0;
  v6._countAndFlagsBits = 0xD00000000000005BLL;
  Logger.trace(file:function:)(v6, v5);
  v7 = OBJC_IVAR____TtC15FitnessCoaching11XPCListener_listener;
  [*(&v3->super.isa + OBJC_IVAR____TtC15FitnessCoaching11XPCListener_listener) setDelegate_];
  [*(&v3->super.isa + v7) invalidate];
  v8.receiver = v3;
  v8.super_class = type metadata accessor for XPCListener();
  [(XPCListener *)&v8 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC15FitnessCoaching11XPCListener_requiredEntitlements);
  v6 = a4;
  v7 = self;
  v8 = sub_2277D1F78(v6, v5);
  if (v8)
  {
    sub_2277D0538(v6);
  }

  return v8 & 1;
}

- (void)transportMessage:(unint64_t)a3 data:(NSData *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2277E2624();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2277E74A0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2277E74A8;
  v17[5] = v16;
  v18 = a4;
  v19 = self;
  sub_2277D1C8C(0, 0, v12, &unk_2277E74B0, v17);
}

- (void)transportRequest:(unint64_t)a3 data:(NSData *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2277E2624();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2277E7458;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2277E7468;
  v17[5] = v16;
  v18 = a4;
  v19 = self;
  sub_2277D1C8C(0, 0, v12, &unk_2277E7478, v17);
}

@end