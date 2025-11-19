@interface ScoringEngine
- (_TtC18NewsScoringService13ScoringEngine)init;
- (void)scoreItems:(id)a3 environment:(id)a4 configurationSet:(int64_t)a5 completion:(id)a6;
- (void)scoreItemsIn:(id)a3 environment:(id)a4 configurationSet:(int64_t)a5 completion:(id)a6;
- (void)scoreNotificationItems:(id)a3 environment:(id)a4 completion:(id)a5;
@end

@implementation ScoringEngine

- (void)scoreItems:(id)a3 environment:(id)a4 configurationSet:(int64_t)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  sub_100006EC4(0, &qword_100015868, NTPBFeedPersonalizingItem_ptr);
  v10 = sub_10000A2CC();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = self;
  v12[4] = sub_10000702C;
  v12[5] = v11;
  v12[6] = a5;
  v14 = self;
  v13 = a4;

  sub_100003200(v13, sub_100006F68, v12);
}

- (void)scoreItemsIn:(id)a3 environment:(id)a4 configurationSet:(int64_t)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = self;
  v12[4] = sub_100006DA4;
  v12[5] = v11;
  v12[6] = a5;
  v13 = a3;
  v14 = self;
  v15 = v13;
  v17 = v14;
  v16 = a4;

  sub_100003200(v16, sub_100006DF4, v12);
}

- (void)scoreNotificationItems:(id)a3 environment:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_100006EC4(0, &qword_1000157E0, NTPBNotificationItem_ptr);
  v8 = sub_10000A2CC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = self;
  v10[4] = sub_10000613C;
  v10[5] = v9;
  v12 = self;
  v11 = a4;

  sub_100003200(v11, sub_10000614C, v10);
}

- (_TtC18NewsScoringService13ScoringEngine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end