@interface ScoringEngine
- (_TtC18NewsScoringService13ScoringEngine)init;
- (void)scoreItems:(id)items environment:(id)environment configurationSet:(int64_t)set completion:(id)completion;
- (void)scoreItemsIn:(id)in environment:(id)environment configurationSet:(int64_t)set completion:(id)completion;
- (void)scoreNotificationItems:(id)items environment:(id)environment completion:(id)completion;
@end

@implementation ScoringEngine

- (void)scoreItems:(id)items environment:(id)environment configurationSet:(int64_t)set completion:(id)completion
{
  v9 = _Block_copy(completion);
  sub_100006EC4(0, &qword_100015868, NTPBFeedPersonalizingItem_ptr);
  v10 = sub_10000A2CC();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = self;
  v12[4] = sub_10000702C;
  v12[5] = v11;
  v12[6] = set;
  selfCopy = self;
  environmentCopy = environment;

  sub_100003200(environmentCopy, sub_100006F68, v12);
}

- (void)scoreItemsIn:(id)in environment:(id)environment configurationSet:(int64_t)set completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  v12[2] = in;
  v12[3] = self;
  v12[4] = sub_100006DA4;
  v12[5] = v11;
  v12[6] = set;
  inCopy = in;
  selfCopy = self;
  v15 = inCopy;
  v17 = selfCopy;
  environmentCopy = environment;

  sub_100003200(environmentCopy, sub_100006DF4, v12);
}

- (void)scoreNotificationItems:(id)items environment:(id)environment completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_100006EC4(0, &qword_1000157E0, NTPBNotificationItem_ptr);
  v8 = sub_10000A2CC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = self;
  v10[4] = sub_10000613C;
  v10[5] = v9;
  selfCopy = self;
  environmentCopy = environment;

  sub_100003200(environmentCopy, sub_10000614C, v10);
}

- (_TtC18NewsScoringService13ScoringEngine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end