@interface XavierScoringService
- (_TtC19NewsPersonalization20XavierScoringService)init;
- (double)decayedPublisherDiversificationPenalty;
- (id)limitItemsByMinimumItemQuality:(id)quality;
- (id)rankTagIDsDescending:(id)descending;
- (id)scoresForTagIDs:(id)ds;
- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set;
- (void)fetchAggregateMapForPersonalizingItem:(id)item completion:(id)completion;
- (void)prepareForUseWithCompletionHandler:(id)handler;
@end

@implementation XavierScoringService

- (_TtC19NewsPersonalization20XavierScoringService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set
{
  v8 = sub_1C6D79170();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
  v13 = sub_1C6D79780();
  sub_1C6D1B320();
  v15 = *(v14 + 48);
  FCFeedPersonalizationConfigurationSet.headlineContext.getter(set, v12);
  v16 = sub_1C6D791A0();
  v17 = MEMORY[0x1E69B5B98];
  if (set != 3)
  {
    v17 = MEMORY[0x1E69B5BA0];
  }

  (*(*(v16 - 8) + 104))(&v12[v15], *v17, v16);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B5A08], v8);
  selfCopy = self;
  XavierScoringService.score(items:context:)(v13, v12);

  (*(v9 + 8))(v12, v8);
  optionsCopy = options;
  sub_1C6D79040();
  v19 = sub_1C6D797A0();

  v20 = sub_1C6B6DEB4(v19);

  return v20;
}

- (void)fetchAggregateMapForPersonalizingItem:(id)item completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C6D1B6D4(item, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (id)limitItemsByMinimumItemQuality:(id)quality
{
  sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
  v4 = sub_1C6D79780();
  selfCopy = self;
  XavierScoringService.limitItems(byMinimumItemQuality:)(v4);

  v6 = sub_1C6D79760();

  return v6;
}

- (void)prepareForUseWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  XavierScoringService.prepareForUse(completionHandler:)(sub_1C6D1B6C4, v5);
}

- (double)decayedPublisherDiversificationPenalty
{
  selfCopy = self;
  v3 = XavierScoringService.decayedPublisherDiversificationPenalty()();

  return v3;
}

- (id)rankTagIDsDescending:(id)descending
{
  if (descending)
  {
    v4 = sub_1C6D79780();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v10.value._rawValue = v4;
  v6 = XavierScoringService.rankTagIDsDescending(_:)(v10);

  if (v6)
  {
    v7 = sub_1C6D79760();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)scoresForTagIDs:(id)ds
{
  if (ds)
  {
    v4 = sub_1C6D79780();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v10.value._rawValue = v4;
  v6 = XavierScoringService.scores(forTagIDs:)(v10);

  if (v6)
  {
    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    v7 = sub_1C6D79480();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end