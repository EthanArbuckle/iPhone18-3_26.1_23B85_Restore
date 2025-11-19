@interface DashboardPresenter
+ (void)presentLeaderboardsFrom:(id)a3 request:(id)a4 gameRecord:(id)a5 leaderboard:(id)a6 leaderboardSet:(id)a7 animated:(BOOL)a8;
+ (void)processLeaderboardRequestFrom:(id)a3 request:(id)a4 gameRecord:(id)a5;
- (GKGameRecord)gameRecord;
- (NSIndexPath)scrollToIndexPath;
- (NSString)title;
- (_TtC12GameCenterUI18DashboardPresenter)initWithPlayerId:(id)a3;
- (void)fetchDashboardRequiredDataWithForce:(BOOL)a3;
- (void)handleViewDidLoad;
- (void)presentAchievementsFrom:(id)a3 request:(id)a4 gameRecord:(id)a5;
- (void)presentChallengesFrom:(id)a3 gameRecord:(id)a4 shouldShowPlayForChallenge:(BOOL)a5;
- (void)presentLeaderboardsFrom:(id)a3 request:(id)a4 gameBundleID:(id)a5;
- (void)presentPlayerProfileFrom:(id)a3 request:(id)a4 animated:(BOOL)a5;
- (void)setDisplayInSplitView:(BOOL)a3;
- (void)setGameRecord:(id)a3;
- (void)setScrollToIndexPath:(id)a3;
- (void)updateSnapshot;
@end

@implementation DashboardPresenter

- (NSString)title
{
  v2 = self;
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

- (void)setGameRecord:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E2631F4(a3);
}

- (void)setDisplayInSplitView:(BOOL)a3
{
  v4 = self;
  sub_24E2607C0(a3);
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

- (void)setScrollToIndexPath:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (a3)
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
  v10 = self;
  sub_24E263B8C(v7);
}

- (void)handleViewDidLoad
{
  v2 = self;
  sub_24E260410();
}

- (void)fetchDashboardRequiredDataWithForce:(BOOL)a3
{
  v4 = self;
  sub_24E2604EC(a3);
}

- (void)updateSnapshot
{
  v2 = self;
  sub_24E263294();
}

+ (void)processLeaderboardRequestFrom:(id)a3 request:(id)a4 gameRecord:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_24E260A60(v8, a4, v10);
}

+ (void)presentLeaderboardsFrom:(id)a3 request:(id)a4 gameRecord:(id)a5 leaderboard:(id)a6 leaderboardSet:(id)a7 animated:(BOOL)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  sub_24E267464();
}

- (void)presentLeaderboardsFrom:(id)a3 request:(id)a4 gameBundleID:(id)a5
{
  sub_24E347CF8();
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_24E260928();
}

- (void)presentAchievementsFrom:(id)a3 request:(id)a4 gameRecord:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_24E260D0C();
}

- (void)presentChallengesFrom:(id)a3 gameRecord:(id)a4 shouldShowPlayForChallenge:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_24E2611A8();
}

- (void)presentPlayerProfileFrom:(id)a3 request:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_24E2614D4();
}

- (_TtC12GameCenterUI18DashboardPresenter)initWithPlayerId:(id)a3
{
  if (a3)
  {
    sub_24E347CF8();
  }

  sub_24E26858C();
}

@end