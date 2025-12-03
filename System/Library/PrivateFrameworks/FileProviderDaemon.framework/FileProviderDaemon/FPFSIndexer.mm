@interface FPFSIndexer
- (_TtC18FileProviderDaemon11FPFSIndexer)init;
- (_TtC18FileProviderDaemon11FPFSIndexer)initWithExtension:(id)extension domain:(id)domain enabled:(BOOL)enabled supportingIndexAll:(BOOL)all;
- (void)didDropIndexWithDropReason:(unint64_t)reason;
- (void)dumpStateTo:(id)to;
- (void)dumpStateTo:(id)to withName:(id)name;
- (void)indexOneBatchWithCompletionHandler:(id)handler;
- (void)pauseIndexingWithCompletionHandler:(id)handler;
- (void)resumeIndexingWithCompletionHandler:(id)handler;
- (void)signalNeedsReindexFromScratchWithDropReason:(unint64_t)reason completionHandler:(id)handler;
@end

@implementation FPFSIndexer

- (void)signalNeedsReindexFromScratchWithDropReason:(unint64_t)reason completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  selfCopy = self;
  sub_1CF757690(reason, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)indexOneBatchWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_1CF75A564(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)dumpStateTo:(id)to withName:(id)name
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  toCopy = to;
  selfCopy = self;
  sub_1CF74C2D0(toCopy);
}

- (void)dumpStateTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  v5 = sub_1CF9E6888();
  [(FPFSIndexer *)selfCopy dumpStateTo:toCopy withName:v5];
}

- (void)pauseIndexingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1CF74C5C8(sub_1CF067718, v5, &unk_1F4C13058, sub_1CF757EE0, &block_descriptor_68_0);
}

- (void)resumeIndexingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1CF74C5C8(sub_1CF067710, v5, &unk_1F4C12FE0, sub_1CF757ED4, &block_descriptor_58_0);
}

- (_TtC18FileProviderDaemon11FPFSIndexer)initWithExtension:(id)extension domain:(id)domain enabled:(BOOL)enabled supportingIndexAll:(BOOL)all
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18FileProviderDaemon11FPFSIndexer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didDropIndexWithDropReason:(unint64_t)reason
{
  selfCopy = self;
  state = [(FPDDomainIndexer *)selfCopy state];
  [(FPDDomainIndexerState *)state recordIndexDropReason:reason];
}

@end