@interface OfflineContentManager
- (NSSet)listenableArticleIDs;
- (NSSet)readableArticleIDs;
- (_TtC7NewsUI221OfflineContentManager)init;
- (void)downloadFinishedForRequest:(id)request error:(id)error;
- (void)downloadProgressedForRequest:(id)request contentArchive:(id)archive;
- (void)downloadProgressedForRequest:(id)request progress:(double)progress;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
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
  selfCopy = self;

  sub_219BE2184();

  sub_2198F32C8(v5, MEMORY[0x277D304F8]);

  v3 = sub_219BF5D34();

  return v3;
}

- (NSSet)listenableArticleIDs
{
  selfCopy = self;

  sub_219BE2184();

  v3 = sub_2198F32C8(v8, MEMORY[0x277D313E8]);
  sub_2198E8DD4(v3);
  v5 = v4;

  sub_218845F78(v5);

  v6 = sub_219BF5D34();

  return v6;
}

- (void)downloadProgressedForRequest:(id)request contentArchive:(id)archive
{
  requestCopy = request;
  archiveCopy = archive;
  selfCopy = self;
  sub_2198F0CB4(requestCopy, archiveCopy);
}

- (void)downloadProgressedForRequest:(id)request progress:(double)progress
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = request;
  *(v7 + 32) = progress;
  requestCopy = request;
  selfCopy = self;
  v9 = requestCopy;
  sub_219BE3494();
}

- (void)downloadFinishedForRequest:(id)request error:(id)error
{
  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = request;
  v7[4] = error;
  requestCopy = request;
  selfCopy = self;
  errorCopy = error;
  v13 = selfCopy;
  v11 = requestCopy;
  v12 = errorCopy;
  sub_219BE3494();
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  swift_getObjectType();
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  selfCopy = self;
  sub_219BE3204();
  v8 = sub_219BE2E54();
  sub_219BE2F84();

  v9 = sub_219BE2E54();
  sub_219BE3024();
}

@end