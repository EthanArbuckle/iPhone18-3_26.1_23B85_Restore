@interface FAFamilyChecklistRankingConfigOperation
- (_TtC13familycircled39FAFamilyChecklistRankingConfigOperation)initWithNetworkService:(id)a3;
- (void)familyChecklistRankingConfigWith:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation FAFamilyChecklistRankingConfigOperation

- (_TtC13familycircled39FAFamilyChecklistRankingConfigOperation)initWithNetworkService:(id)a3
{
  v4 = OBJC_IVAR____TtC13familycircled39FAFamilyChecklistRankingConfigOperation_kFAFamilyChecklistRankingConfigURLEndpoint;
  v5 = a3;
  *(&self->super.super.isa + v4) = String._bridgeToObjectiveC()();
  if (qword_1000B7F30 != -1)
  {
    swift_once();
  }

  v6 = static FAFamilyChecklistRankingConfigCache.shared;
  v7 = (self + OBJC_IVAR____TtC13familycircled39FAFamilyChecklistRankingConfigOperation_cache);
  v7[3] = type metadata accessor for FAFamilyChecklistRankingConfigCache();
  v7[4] = &protocol witness table for FAFamilyChecklistRankingConfigCache;
  *v7 = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FAFamilyChecklistRankingConfigOperation();

  v8 = [(FANetworkClient *)&v10 initWithNetworkService:v5];

  return v8;
}

- (void)familyChecklistRankingConfigWith:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008C8A8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008C7F0;
  v16[5] = v15;
  v17 = self;
  sub_100071FE8(0, 0, v11, &unk_10008C6E0, v16);
}

@end