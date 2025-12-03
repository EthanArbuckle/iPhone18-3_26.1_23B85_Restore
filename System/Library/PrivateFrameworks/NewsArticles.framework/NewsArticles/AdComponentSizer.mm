@interface AdComponentSizer
- (BOOL)requiresSizeChangeForStateChange:(id)change fromState:(id)state;
- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)range inColumnLayout:(id)layout;
- (_TtC12NewsArticles16AdComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options;
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
- (unint64_t)shouldIgnoreMarginsForColumnLayout:(id)layout;
- (unint64_t)shouldIgnoreViewportPaddingForColumnLayout:(id)layout;
@end

@implementation AdComponentSizer

- (_TtC12NewsArticles16AdComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D7CC4E0C();
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)range inColumnLayout:(id)layout
{
  length = range.length;
  location = range.location;
  layoutCopy = layout;
  selfCopy = self;
  v9 = sub_1D7CC44DC(location, length, layoutCopy);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (unint64_t)shouldIgnoreMarginsForColumnLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  v6 = sub_1D7CC480C(layoutCopy, &selRef_ignoreDocumentMargin);

  return v6;
}

- (unint64_t)shouldIgnoreViewportPaddingForColumnLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  v6 = sub_1D7CC480C(layoutCopy, &selRef_ignoreViewportPadding);

  return v6;
}

- (BOOL)requiresSizeChangeForStateChange:(id)change fromState:(id)state
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1D7CC4A54(change, state);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8 & 1;
}

@end