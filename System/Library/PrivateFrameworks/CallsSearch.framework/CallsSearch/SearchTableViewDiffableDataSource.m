@interface SearchTableViewDiffableDataSource
- (_TtC11CallsSearch33SearchTableViewDiffableDataSource)init;
- (void)didCompleteSearchFor:(id)a3;
- (void)reloadData;
@end

@implementation SearchTableViewDiffableDataSource

- (void)didCompleteSearchFor:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1CFB78CD8(a3);
  swift_unknownObjectRelease();
}

- (void)reloadData
{
  v2 = self;
  sub_1CFB5E3F4();
}

- (_TtC11CallsSearch33SearchTableViewDiffableDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end