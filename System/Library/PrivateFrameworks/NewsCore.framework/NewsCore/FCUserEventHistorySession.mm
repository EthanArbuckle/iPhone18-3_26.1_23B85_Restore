@interface FCUserEventHistorySession
+ (id)dateFromSessionID:(id)d;
- (FCUserEventHistorySession)init;
- (FCUserEventHistorySession)initWithSessionID:(id)d path:(id)path;
- (NSDate)date;
- (NSString)path;
- (int64_t)size;
@end

@implementation FCUserEventHistorySession

- (NSDate)date
{
  v3 = sub_1B67D877C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___FCUserEventHistorySession_date, v3);
  v8 = sub_1B67D86DC();
  (*(v4 + 8))(v7, v3);

  return v8;
}

+ (id)dateFromSessionID:(id)d
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B328, &qword_1B6815370);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17[-v5];
  v7 = sub_1B67D877C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1B67D964C();
  UserEventHistorySession.ID.init(_:)(v12, v13, v6);
  v14 = type metadata accessor for UserEventHistorySession.ID(0);
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  (*(v8 + 16))(v11, &v6[*(v14 + 20)], v7);
  sub_1B646B8E8(v6);
  v15 = sub_1B67D86DC();
  (*(v8 + 8))(v11, v7);

  return v15;
}

- (FCUserEventHistorySession)initWithSessionID:(id)d path:(id)path
{
  v4 = sub_1B67D964C();
  v6 = v5;
  v7 = sub_1B67D964C();
  return sub_1B64B3C98(v4, v6, v7, v8);
}

- (NSString)path
{
  v2 = (self + OBJC_IVAR___FCUserEventHistorySession_kind);
  if (*(self + OBJC_IVAR___FCUserEventHistorySession_kind + 16))
  {
    result = sub_1B67DA07C();
    __break(1u);
  }

  else
  {
    v4 = *v2;
    v3 = v2[1];

    v5 = sub_1B67D963C();
    sub_1B64B55CC(v4, v3, 0);

    return v5;
  }

  return result;
}

- (int64_t)size
{
  v2 = *(self + OBJC_IVAR___FCUserEventHistorySession_kind);
  if (*(self + OBJC_IVAR___FCUserEventHistorySession_kind + 16))
  {
    return v2;
  }

  v4 = *(self + OBJC_IVAR___FCUserEventHistorySession_kind + 8);
  v5 = objc_opt_self();
  selfCopy = self;
  defaultManager = [v5 defaultManager];
  v8 = sub_1B67D963C();
  v2 = [defaultManager fc:v8 sizeOfItemAtPath:0 error:?];

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

- (FCUserEventHistorySession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end