@interface ANFIssueCoverLayoutAttributesFactory
- (_TtC12NewsArticles36ANFIssueCoverLayoutAttributesFactory)init;
- (id)createAttributesWithIssueCover:(id)cover options:(id)options;
@end

@implementation ANFIssueCoverLayoutAttributesFactory

- (id)createAttributesWithIssueCover:(id)cover options:(id)options
{
  coverCopy = cover;
  optionsCopy = options;
  selfCopy = self;
  v9 = sub_1D7B5AC54(optionsCopy);

  return v9;
}

- (_TtC12NewsArticles36ANFIssueCoverLayoutAttributesFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end