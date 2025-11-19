@interface FPFSIndexer
- (_TtC18FileProviderDaemon11FPFSIndexer)init;
- (_TtC18FileProviderDaemon11FPFSIndexer)initWithExtension:(id)a3 domain:(id)a4 enabled:(BOOL)a5 supportingIndexAll:(BOOL)a6;
- (void)didDropIndexWithDropReason:(unint64_t)a3;
- (void)dumpStateTo:(id)a3;
- (void)dumpStateTo:(id)a3 withName:(id)a4;
- (void)indexOneBatchWithCompletionHandler:(id)a3;
- (void)pauseIndexingWithCompletionHandler:(id)a3;
- (void)resumeIndexingWithCompletionHandler:(id)a3;
- (void)signalNeedsReindexFromScratchWithDropReason:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation FPFSIndexer

- (void)signalNeedsReindexFromScratchWithDropReason:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1CF757690(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)indexOneBatchWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1CF75A564(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)dumpStateTo:(id)a3 withName:(id)a4
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = a3;
  v7 = self;
  sub_1CF74C2D0(v6);
}

- (void)dumpStateTo:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = sub_1CF9E6888();
  [(FPFSIndexer *)v6 dumpStateTo:v4 withName:v5];
}

- (void)pauseIndexingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1CF74C5C8(sub_1CF067718, v5, &unk_1F4C13058, sub_1CF757EE0, &block_descriptor_68_0);
}

- (void)resumeIndexingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1CF74C5C8(sub_1CF067710, v5, &unk_1F4C12FE0, sub_1CF757ED4, &block_descriptor_58_0);
}

- (_TtC18FileProviderDaemon11FPFSIndexer)initWithExtension:(id)a3 domain:(id)a4 enabled:(BOOL)a5 supportingIndexAll:(BOOL)a6
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

- (void)didDropIndexWithDropReason:(unint64_t)a3
{
  v5 = self;
  v4 = [(FPDDomainIndexer *)v5 state];
  [(FPDDomainIndexerState *)v4 recordIndexDropReason:a3];
}

@end