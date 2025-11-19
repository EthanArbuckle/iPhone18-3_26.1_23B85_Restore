@interface MUURLShorteningSession
- (MUURLShorteningSession)init;
- (MUURLShorteningSession)initWithOriginalURLProvider:(id)a3;
- (MUURLShorteningSession)initWithOriginalURLProvider:(id)a3 configuration:(id)a4;
- (void)preload;
@end

@implementation MUURLShorteningSession

- (MUURLShorteningSession)initWithOriginalURLProvider:(id)a3 configuration:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = sub_1C584F2C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a3);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = qword_1EC17B060;
  v27 = a4;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_1EC17B068);
  v16 = *(v8 + 16);
  v16(self + OBJC_IVAR___MUURLShorteningSession_logger, v15, v7);
  v17 = (&self->super.isa + OBJC_IVAR___MUURLShorteningSession_originalURLProvider);
  *v17 = sub_1C568FC38;
  v17[1] = v13;
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EAD8, &qword_1C586AC20);
  v16(v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v18, v11, v7);
  v21 = (v20 + v19);
  *v21 = sub_1C568FC38;
  v21[1] = v13;
  v22 = v27;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27;
  swift_retain_n();
  v23 = v22;
  *(&self->super.isa + OBJC_IVAR___MUURLShorteningSession_internalShorteningSession) = ItemPreloader.__allocating_init(provider:)(&unk_1C586ADB8, v20);
  v29.receiver = self;
  v29.super_class = ObjectType;
  v24 = [(MUURLShorteningSession *)&v29 init];

  return v24;
}

- (MUURLShorteningSession)initWithOriginalURLProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v10[4] = sub_1C568FA58;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C568D8A4;
  v10[3] = &block_descriptor_59;
  v6 = _Block_copy(v10);

  v7 = [objc_allocWithZone(type metadata accessor for URLShorteningSessionConfiguration()) init];
  v8 = [(MUURLShorteningSession *)self initWithOriginalURLProvider:v6 configuration:v7];

  _Block_release(v6);
  return v8;
}

- (void)preload
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = sub_1C584F8A0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v10 = self;
  sub_1C5659C04(0, 0, v7, &unk_1C586ADB0, v9);
}

- (MUURLShorteningSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end