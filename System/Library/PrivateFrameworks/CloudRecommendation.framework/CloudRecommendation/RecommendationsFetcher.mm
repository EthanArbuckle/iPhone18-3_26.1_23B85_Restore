@interface RecommendationsFetcher
+ (_TtC19CloudRecommendation22RecommendationsFetcher)shared;
- (_TtC19CloudRecommendation22RecommendationsFetcher)init;
- (void)fetchClientRecommendationsAsyncFor:(ACAccount *)for shouldIgnoreCache:(BOOL)cache completionHandler:(id)handler;
- (void)fetchClientRecommendationsFor:(id)for shouldIgnoreCache:(BOOL)cache completion:(id)completion;
- (void)fetchCompletedRecommendationsFor:(ACAccount *)for shouldIgnoreCache:(BOOL)cache completionHandler:(id)handler;
- (void)fetchCompletedRecommendationsFor:(id)for shouldIgnoreCache:(BOOL)cache completion:(id)completion;
- (void)fetchRulesFor:(ACAccount *)for shouldIgnoreCache:(BOOL)cache completionHandler:(id)handler;
- (void)fetchRulesetsAsyncFor:(ACAccount *)for shouldIgnoreCache:(BOOL)cache completionHandler:(id)handler;
- (void)fetchRulesetsFor:(id)for shouldIgnoreCache:(BOOL)cache completion:(id)completion;
- (void)fetchServerRecommendationsAsyncFor:(ACAccount *)for shouldIgnoreCache:(BOOL)cache completionHandler:(id)handler;
- (void)fetchServerRecommendationsFor:(id)for shouldIgnoreCache:(BOOL)cache completion:(id)completion;
- (void)refreshCacheFor:(id)for;
- (void)refreshCacheFor:(id)for completion:(id)completion;
@end

@implementation RecommendationsFetcher

+ (_TtC19CloudRecommendation22RecommendationsFetcher)shared
{
  if (qword_27ED979C0 != -1)
  {
    swift_once();
  }

  v3 = qword_27ED97BD8;

  return v3;
}

- (void)refreshCacheFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_2439F6940(forCopy, 0, 0);
}

- (void)refreshCacheFor:(id)for completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_243A06184;
  }

  else
  {
    v7 = 0;
  }

  forCopy = for;
  selfCopy = self;
  sub_2439F6940(forCopy, v6, v7);
  sub_2439F5390(v6);
}

- (void)fetchServerRecommendationsFor:(id)for shouldIgnoreCache:(BOOL)cache completion:(id)completion
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_243A069D8;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_243A0D5DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = self;
  *(v15 + 40) = for;
  *(v15 + 48) = cache;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  forCopy = for;
  selfCopy = self;
  sub_2439F8390(0, 0, v11, &unk_243A10060, v15);
}

- (void)fetchServerRecommendationsAsyncFor:(ACAccount *)for shouldIgnoreCache:(BOOL)cache completionHandler:(id)handler
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = for;
  *(v13 + 24) = cache;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_243A0D5DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_243A10048;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_243A10050;
  v16[5] = v15;
  forCopy = for;
  selfCopy = self;
  sub_243A02CF8(0, 0, v11, &unk_243A10058, v16);
}

- (void)fetchRulesetsFor:(id)for shouldIgnoreCache:(BOOL)cache completion:(id)completion
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_243A05FC4;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_243A0D5DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = self;
  *(v15 + 40) = for;
  *(v15 + 48) = cache;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  forCopy = for;
  selfCopy = self;
  sub_2439F8390(0, 0, v11, &unk_243A10038, v15);
}

- (void)fetchRulesFor:(ACAccount *)for shouldIgnoreCache:(BOOL)cache completionHandler:(id)handler
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = for;
  *(v13 + 24) = cache;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_243A0D5DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_243A10020;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_243A10028;
  v16[5] = v15;
  forCopy = for;
  selfCopy = self;
  sub_243A02CF8(0, 0, v11, &unk_243A10030, v16);
}

- (void)fetchRulesetsAsyncFor:(ACAccount *)for shouldIgnoreCache:(BOOL)cache completionHandler:(id)handler
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = for;
  *(v13 + 24) = cache;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_243A0D5DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_243A10000;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_243A10008;
  v16[5] = v15;
  forCopy = for;
  selfCopy = self;
  sub_243A02CF8(0, 0, v11, &unk_243A10010, v16);
}

- (void)fetchCompletedRecommendationsFor:(id)for shouldIgnoreCache:(BOOL)cache completion:(id)completion
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_243A069D8;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_243A0D5DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = self;
  *(v15 + 40) = for;
  *(v15 + 48) = cache;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  forCopy = for;
  selfCopy = self;
  sub_2439F8390(0, 0, v11, &unk_243A0FFF0, v15);
}

- (void)fetchCompletedRecommendationsFor:(ACAccount *)for shouldIgnoreCache:(BOOL)cache completionHandler:(id)handler
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = for;
  *(v13 + 24) = cache;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_243A0D5DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_243A0FFD8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_243A0FFE0;
  v16[5] = v15;
  forCopy = for;
  selfCopy = self;
  sub_243A02CF8(0, 0, v11, &unk_243A0FFE8, v16);
}

- (void)fetchClientRecommendationsFor:(id)for shouldIgnoreCache:(BOOL)cache completion:(id)completion
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_243A05D70;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_243A0D5DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = self;
  *(v15 + 40) = for;
  *(v15 + 48) = cache;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  forCopy = for;
  selfCopy = self;
  sub_2439F8390(0, 0, v11, &unk_243A0FFC8, v15);
}

- (void)fetchClientRecommendationsAsyncFor:(ACAccount *)for shouldIgnoreCache:(BOOL)cache completionHandler:(id)handler
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = for;
  *(v13 + 24) = cache;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_243A0D5DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_243A0FF88;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_243A0FF98;
  v16[5] = v15;
  forCopy = for;
  selfCopy = self;
  sub_243A02CF8(0, 0, v11, &unk_243A0FFA8, v16);
}

- (_TtC19CloudRecommendation22RecommendationsFetcher)init
{
  v3 = OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers;
  type metadata accessor for DataFetchers();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_2439F60DC(MEMORY[0x277D84F90]);
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for RecommendationsFetcher();
  return [(RecommendationsFetcher *)&v6 init];
}

@end