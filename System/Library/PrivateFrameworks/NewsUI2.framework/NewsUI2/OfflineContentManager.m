@interface OfflineContentManager
- (NSSet)listenableArticleIDs;
- (NSSet)readableArticleIDs;
- (_TtC7NewsUI221OfflineContentManager)init;
- (void)downloadFinishedForRequest:(id)a3 error:(id)a4;
- (void)downloadProgressedForRequest:(id)a3 contentArchive:(id)a4;
- (void)downloadProgressedForRequest:(id)a3 progress:(double)a4;
- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4;
@end

@implementation OfflineContentManager

- (_TtC7NewsUI221OfflineContentManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSSet)readableArticleIDs
{
  v2 = self;

  sub_219BE2184();

  sub_2198F32C8(v5, MEMORY[0x277D304F8]);

  v3 = sub_219BF5D34();

  return v3;
}

- (NSSet)listenableArticleIDs
{
  v2 = self;

  sub_219BE2184();

  v3 = sub_2198F32C8(v8, MEMORY[0x277D313E8]);
  sub_2198E8DD4(v3);
  v5 = v4;

  sub_218845F78(v5);

  v6 = sub_219BF5D34();

  return v6;
}

- (void)downloadProgressedForRequest:(id)a3 contentArchive:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2198F0CB4(v6, v7);
}

- (void)downloadProgressedForRequest:(id)a3 progress:(double)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v8 = a3;
  v10 = self;
  v9 = v8;
  sub_219BE3494();
}

- (void)downloadFinishedForRequest:(id)a3 error:(id)a4
{
  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = a3;
  v7[4] = a4;
  v8 = a3;
  v9 = self;
  v10 = a4;
  v13 = v9;
  v11 = v8;
  v12 = v10;
  sub_219BE3494();
}

- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4
{
  swift_getObjectType();
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = self;
  sub_219BE3204();
  v8 = sub_219BE2E54();
  sub_219BE2F84();

  v9 = sub_219BE2E54();
  sub_219BE3024();
}

@end