@interface ULBiomeEventLocationSemantic
- (NSUUID)loiIdentifier;
- (_TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic)init;
- (_TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic)initWithTimestamp:(id)timestamp starting:(BOOL)starting locationType:(int)type loiIdentifier:(id)identifier;
@end

@implementation ULBiomeEventLocationSemantic

- (NSUUID)loiIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_2591F56BC(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier, &v13 - v5);
  v7 = sub_2592121D0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_259212170();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (_TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic)initWithTimestamp:(id)timestamp starting:(BOOL)starting locationType:(int)type loiIdentifier:(id)identifier
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_259212160();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212140();
  if (identifier)
  {
    sub_259212190();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_2592121D0();
  (*(*(v20 - 8) + 56))(v13, v19, 1, v20);
  (*(v15 + 16))(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_timestamp, v18, v14);
  *(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_starting) = starting;
  *(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_locationType) = type;
  sub_2591F56BC(v13, self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier);
  v21 = type metadata accessor for ULBiomeEventLocationSemantic(0);
  v24.receiver = self;
  v24.super_class = v21;
  v22 = [(ULBiomeEvent *)&v24 init];
  sub_2591F572C(v13);
  (*(v15 + 8))(v18, v14);
  return v22;
}

- (_TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end