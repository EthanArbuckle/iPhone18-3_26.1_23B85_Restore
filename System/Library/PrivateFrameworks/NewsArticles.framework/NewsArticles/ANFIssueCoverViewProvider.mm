@interface ANFIssueCoverViewProvider
- (_TtC12NewsArticles25ANFIssueCoverViewProvider)init;
- (id)viewForIssueCover:(id)cover;
- (void)presentIssueCover:(id)cover onView:(id)view options:(id)options;
@end

@implementation ANFIssueCoverViewProvider

- (id)viewForIssueCover:(id)cover
{
  initWithFrame_ = [objc_allocWithZone(sub_1D7D2F0CC()) initWithFrame_];

  return initWithFrame_;
}

- (void)presentIssueCover:(id)cover onView:(id)view options:(id)options
{
  coverCopy = cover;
  viewCopy = view;
  optionsCopy = options;
  selfCopy = self;
  sub_1D7A06FA8(viewCopy, optionsCopy);
}

- (_TtC12NewsArticles25ANFIssueCoverViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end