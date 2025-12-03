@interface DashboardPresenter
+ (void)presentLeaderboardsFrom:(id)from request:(id)request gameRecord:(id)record leaderboard:(id)leaderboard leaderboardSet:(id)set animated:(BOOL)animated;
+ (void)processLeaderboardRequestFrom:(id)from request:(id)request gameRecord:(id)record;
- (GKGameRecord)gameRecord;
- (NSIndexPath)scrollToIndexPath;
- (NSString)title;
- (_TtC12GameCenterUI18DashboardPresenter)initWithPlayerId:(id)id;
- (void)fetchDashboardRequiredDataWithForce:(BOOL)force;
- (void)handleViewDidLoad;
- (void)presentAchievementsFrom:(id)from request:(id)request gameRecord:(id)record;
- (void)presentChallengesFrom:(id)from gameRecord:(id)record shouldShowPlayForChallenge:(BOOL)challenge;
- (void)presentLeaderboardsFrom:(id)from request:(id)request gameBundleID:(id)d;
- (void)presentPlayerProfileFrom:(id)from request:(id)request animated:(BOOL)animated;
- (void)setDisplayInSplitView:(BOOL)view;
- (void)setGameRecord:(id)record;
- (void)setScrollToIndexPath:(id)path;
- (void)updateSnapshot;
@end

@implementation DashboardPresenter

- (NSString)title
{
  selfCopy = self;
  sub_24E03C064();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (GKGameRecord)gameRecord
{
  v2 = sub_24E263168();

  return v2;
}

- (void)setGameRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  sub_24E2631F4(record);
}

- (void)setDisplayInSplitView:(BOOL)view
{
  selfCopy = self;
  sub_24E2607C0(view);
}

- (NSIndexPath)scrollToIndexPath
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_24E263A58();
  v5 = sub_24E343518();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    v6 = sub_24E343488();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v6;
}

- (void)setScrollToIndexPath:(id)path
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (path)
  {
    sub_24E343498();
    v8 = sub_24E343518();
    v9 = 0;
  }

  else
  {
    v8 = sub_24E343518();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  selfCopy = self;
  sub_24E263B8C(v7);
}

- (void)handleViewDidLoad
{
  selfCopy = self;
  sub_24E260410();
}

- (void)fetchDashboardRequiredDataWithForce:(BOOL)force
{
  selfCopy = self;
  sub_24E2604EC(force);
}

- (void)updateSnapshot
{
  selfCopy = self;
  sub_24E263294();
}

+ (void)processLeaderboardRequestFrom:(id)from request:(id)request gameRecord:(id)record
{
  swift_getObjCClassMetadata();
  fromCopy = from;
  requestCopy = request;
  recordCopy = record;
  sub_24E260A60(fromCopy, request, recordCopy);
}

+ (void)presentLeaderboardsFrom:(id)from request:(id)request gameRecord:(id)record leaderboard:(id)leaderboard leaderboardSet:(id)set animated:(BOOL)animated
{
  fromCopy = from;
  requestCopy = request;
  recordCopy = record;
  leaderboardCopy = leaderboard;
  setCopy = set;
  sub_24E267464();
}

- (void)presentLeaderboardsFrom:(id)from request:(id)request gameBundleID:(id)d
{
  sub_24E347CF8();
  fromCopy = from;
  requestCopy = request;
  selfCopy = self;
  sub_24E260928();
}

- (void)presentAchievementsFrom:(id)from request:(id)request gameRecord:(id)record
{
  fromCopy = from;
  requestCopy = request;
  recordCopy = record;
  selfCopy = self;
  sub_24E260D0C();
}

- (void)presentChallengesFrom:(id)from gameRecord:(id)record shouldShowPlayForChallenge:(BOOL)challenge
{
  fromCopy = from;
  recordCopy = record;
  selfCopy = self;
  sub_24E2611A8();
}

- (void)presentPlayerProfileFrom:(id)from request:(id)request animated:(BOOL)animated
{
  fromCopy = from;
  requestCopy = request;
  selfCopy = self;
  sub_24E2614D4();
}

- (_TtC12GameCenterUI18DashboardPresenter)initWithPlayerId:(id)id
{
  if (id)
  {
    sub_24E347CF8();
  }

  sub_24E26858C();
}

@end