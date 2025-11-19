@interface DashboardActivityFeedPresenter
- (NSIndexPath)scrollToIndexPath;
- (NSString)title;
- (_TtC12GameCenterUI30DashboardActivityFeedPresenter)initWithPlayerId:(id)a3;
- (void)loadMoreActivityFeedWithContinuationToken:(id)a3;
- (void)setScrollToIndexPath:(id)a3;
- (void)updateSnapshot;
@end

@implementation DashboardActivityFeedPresenter

- (NSString)title
{
  v2 = self;
  sub_24E2B5160();

  v3 = sub_24E347CB8();

  return v3;
}

- (NSIndexPath)scrollToIndexPath
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_24E2B5AA4(&v8 - v3);
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
  sub_24E2B5BD8(v7);
}

- (void)updateSnapshot
{
  v2 = self;
  sub_24E2B7644();
}

- (void)loadMoreActivityFeedWithContinuationToken:(id)a3
{
  sub_24E347CF8();
  v4 = self;
  sub_24E2B52B0();
}

- (_TtC12GameCenterUI30DashboardActivityFeedPresenter)initWithPlayerId:(id)a3
{
  if (a3)
  {
    sub_24E347CF8();
  }

  sub_24E2B7AC4();
}

@end