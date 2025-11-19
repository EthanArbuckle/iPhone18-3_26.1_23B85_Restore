@interface RecommendationsController
- (_TtC21CloudRecommendationUI25RecommendationsController)initWithAccount:(id)a3;
- (_TtP21CloudRecommendationUI40RecommendationSubtitleControllerDelegate_)subtitleControllerDelegate;
- (void)accountDidChange:(id)a3;
- (void)fetchAllWithShouldRefreshBreakout:(BOOL)a3;
- (void)refresh;
- (void)refreshEligibleRecommendationsWithShouldSendDisplayedStatus:(BOOL)a3 shouldRefreshBreakout:(BOOL)a4;
@end

@implementation RecommendationsController

- (_TtP21CloudRecommendationUI40RecommendationSubtitleControllerDelegate_)subtitleControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC21CloudRecommendationUI25RecommendationsController)initWithAccount:(id)a3
{
  sub_243AC1408();
  v5 = a3;
  v6 = sub_243AC13F8();
  v7 = type metadata accessor for RecommendationsController();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_243A45F9C(v5, v6, 0);

  v11 = *(*self + 48);
  v12 = *(*self + 52);
  swift_deallocPartialClassInstance();
  return v10;
}

- (void)fetchAllWithShouldRefreshBreakout:(BOOL)a3
{
  v3 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;

  sub_243A35794();
  sub_243A35030(0, v3);
  v9 = *(self + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
  v10 = sub_243AC2A98();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  swift_retain_n();
  sub_243A3306C(0, 0, v8, &unk_243AC58B0, v11);
}

- (void)refresh
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;

  sub_243A35030(0, 1);
  v7 = *(self + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
  v8 = sub_243AC2A98();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  swift_retain_n();
  sub_243A3306C(0, 0, v6, &unk_243AC58A8, v9);
}

- (void)refreshEligibleRecommendationsWithShouldSendDisplayedStatus:(BOOL)a3 shouldRefreshBreakout:(BOOL)a4
{

  sub_243A34E44(a3, a4);
}

- (void)accountDidChange:(id)a3
{
  v3 = sub_243AC10C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC10A8();

  sub_243A43EDC(v7);

  (*(v4 + 8))(v7, v3);
}

@end