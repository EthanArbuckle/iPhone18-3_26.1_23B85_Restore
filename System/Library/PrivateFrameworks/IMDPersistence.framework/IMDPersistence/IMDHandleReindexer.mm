@interface IMDHandleReindexer
- (IMDHandleReindexer)init;
- (void)reindex;
@end

@implementation IMDHandleReindexer

- (void)reindex
{
  selfCopy = self;
  IMDHandleReindexer.reindex()();
}

- (IMDHandleReindexer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end