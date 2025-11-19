@interface HDCMSwimData
- (NSString)description;
- (NSUUID)sourceId;
- (_TtC12HealthDaemon12HDCMSwimData)init;
- (id)init:(id)a3 safeSwimData:(id)a4;
- (int64_t)strokeType;
@end

@implementation HDCMSwimData

- (NSUUID)sourceId
{
  v3 = MEMORY[0x277CC95F0];
  sub_2289DED0C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  sub_2289DF21C(self + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, &v14 - v6, &qword_27D8630C0, v3);
  v8 = sub_22911B8DC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_22911B8BC();
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  return v11;
}

- (int64_t)strokeType
{
  v2 = self;
  v3 = sub_2289DDE04();

  return v3;
}

- (id)init:(id)a3 safeSwimData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_2289DEE2C(v5, v6);

  return v7;
}

- (NSString)description
{
  v2 = self;
  sub_2289DDF14();

  v3 = sub_22911C34C();

  return v3;
}

- (_TtC12HealthDaemon12HDCMSwimData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end