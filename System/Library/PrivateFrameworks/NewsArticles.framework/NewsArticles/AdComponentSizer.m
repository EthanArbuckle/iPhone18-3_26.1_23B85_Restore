@interface AdComponentSizer
- (BOOL)requiresSizeChangeForStateChange:(id)a3 fromState:(id)a4;
- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)a3 inColumnLayout:(id)a4;
- (_TtC12NewsArticles16AdComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7;
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
- (unint64_t)shouldIgnoreMarginsForColumnLayout:(id)a3;
- (unint64_t)shouldIgnoreViewportPaddingForColumnLayout:(id)a3;
@end

@implementation AdComponentSizer

- (_TtC12NewsArticles16AdComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1D7CC4E0C();
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)a3 inColumnLayout:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = self;
  v9 = sub_1D7CC44DC(location, length, v7);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (unint64_t)shouldIgnoreMarginsForColumnLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1D7CC480C(v4, &selRef_ignoreDocumentMargin);

  return v6;
}

- (unint64_t)shouldIgnoreViewportPaddingForColumnLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1D7CC480C(v4, &selRef_ignoreViewportPadding);

  return v6;
}

- (BOOL)requiresSizeChangeForStateChange:(id)a3 fromState:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1D7CC4A54(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8 & 1;
}

@end