@interface UtilityProgram
- (_TtC19HomeUtilityServices14UtilityProgram)init;
- (_TtC19HomeUtilityServices14UtilityProgram)initWithProgramID:(id)a3 programDescription:(id)a4 enrollmentStatus:(id)a5;
@end

@implementation UtilityProgram

- (_TtC19HomeUtilityServices14UtilityProgram)initWithProgramID:(id)a3 programDescription:(id)a4 enrollmentStatus:(id)a5
{
  v6 = sub_20E0091D4();
  v8 = v7;
  v9 = sub_20E0091D4();
  v11 = v10;
  v12 = sub_20E0091D4();
  v13 = (self + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programID);
  *v13 = v6;
  v13[1] = v8;
  v14 = (self + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programDescription);
  *v14 = v9;
  v14[1] = v11;
  v15 = (self + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_enrollmentStatus);
  *v15 = v12;
  v15[1] = v16;
  v18.receiver = self;
  v18.super_class = type metadata accessor for UtilityProgram();
  return [(UtilityProgram *)&v18 init];
}

- (_TtC19HomeUtilityServices14UtilityProgram)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end