@interface ANFIssueCoverViewProvider
- (_TtC12NewsArticles25ANFIssueCoverViewProvider)init;
- (id)viewForIssueCover:(id)a3;
- (void)presentIssueCover:(id)a3 onView:(id)a4 options:(id)a5;
@end

@implementation ANFIssueCoverViewProvider

- (id)viewForIssueCover:(id)a3
{
  v3 = [objc_allocWithZone(sub_1D7D2F0CC()) initWithFrame_];

  return v3;
}

- (void)presentIssueCover:(id)a3 onView:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D7A06FA8(v9, v10);
}

- (_TtC12NewsArticles25ANFIssueCoverViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end