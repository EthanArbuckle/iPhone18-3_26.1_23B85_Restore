@interface SearchTableViewDiffableDataSource
- (_TtC11CallsSearch33SearchTableViewDiffableDataSource)init;
- (void)didCompleteSearchFor:(id)for;
- (void)reloadData;
@end

@implementation SearchTableViewDiffableDataSource

- (void)didCompleteSearchFor:(id)for
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CFB78CD8(for);
  swift_unknownObjectRelease();
}

- (void)reloadData
{
  selfCopy = self;
  sub_1CFB5E3F4();
}

- (_TtC11CallsSearch33SearchTableViewDiffableDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end