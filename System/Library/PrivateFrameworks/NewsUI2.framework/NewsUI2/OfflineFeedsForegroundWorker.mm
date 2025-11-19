@interface OfflineFeedsForegroundWorker
- (_TtC7NewsUI228OfflineFeedsForegroundWorker)init;
- (void)audioPlaylistDidChange:(id)a3;
- (void)networkReachabilityConnectivityDidChange:(id)a3;
- (void)readingHistory:(id)a3 didAddArticlesWithIDs:(id)a4;
- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6;
@end

@implementation OfflineFeedsForegroundWorker

- (_TtC7NewsUI228OfflineFeedsForegroundWorker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  MEMORY[0x28223BE20](updated);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0;
  swift_storeEnumTagMultiPayload();
  v10 = self;
  sub_2187B6648(v11, v9);

  sub_2187B6BC4(v9, type metadata accessor for OfflineFeedUpdateCondition);
}

- (void)readingHistory:(id)a3 didAddArticlesWithIDs:(id)a4
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  MEMORY[0x28223BE20](updated);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = xmmword_219C43530;
  swift_storeEnumTagMultiPayload();
  v8 = self;
  sub_2187B6648(&v9, v7);

  sub_2187B6BC4(v7, type metadata accessor for OfflineFeedUpdateCondition);
}

- (void)audioPlaylistDidChange:(id)a3
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  MEMORY[0x28223BE20](updated);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = xmmword_219C43570;
  swift_storeEnumTagMultiPayload();
  v7 = self;
  sub_2187B6648(&v8, v6);

  sub_2187B6BC4(v6, type metadata accessor for OfflineFeedUpdateCondition);
}

- (void)networkReachabilityConnectivityDidChange:(id)a3
{
  if (a3)
  {
    v3 = self;
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