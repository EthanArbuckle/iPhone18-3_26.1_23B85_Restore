@interface OfflineFeedsForegroundWorker
- (_TtC7NewsUI228OfflineFeedsForegroundWorker)init;
- (void)audioPlaylistDidChange:(id)change;
- (void)networkReachabilityConnectivityDidChange:(id)change;
- (void)readingHistory:(id)history didAddArticlesWithIDs:(id)ds;
- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level;
@end

@implementation OfflineFeedsForegroundWorker

- (_TtC7NewsUI228OfflineFeedsForegroundWorker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  MEMORY[0x28223BE20](updated);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0;
  swift_storeEnumTagMultiPayload();
  selfCopy = self;
  sub_2187B6648(v11, v9);

  sub_2187B6BC4(v9, type metadata accessor for OfflineFeedUpdateCondition);
}

- (void)readingHistory:(id)history didAddArticlesWithIDs:(id)ds
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  MEMORY[0x28223BE20](updated);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = xmmword_219C43530;
  swift_storeEnumTagMultiPayload();
  selfCopy = self;
  sub_2187B6648(&v9, v7);

  sub_2187B6BC4(v7, type metadata accessor for OfflineFeedUpdateCondition);
}

- (void)audioPlaylistDidChange:(id)change
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  MEMORY[0x28223BE20](updated);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = xmmword_219C43570;
  swift_storeEnumTagMultiPayload();
  selfCopy = self;
  sub_2187B6648(&v8, v6);

  sub_2187B6BC4(v6, type metadata accessor for OfflineFeedUpdateCondition);
}

- (void)networkReachabilityConnectivityDidChange:(id)change
{
  if (change)
  {
    selfCopy = self;
    if ([swift_unknownObjectRetain() isNetworkReachable])
    {
      sub_2187B6134();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

@end