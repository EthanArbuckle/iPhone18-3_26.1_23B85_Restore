@interface ToolbarIssueCoverButton
- (BOOL)isHighlighted;
- (_TtC12NewsArticles23ToolbarIssueCoverButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ToolbarIssueCoverButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ToolbarIssueCoverButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(ToolbarIssueCoverButton *)&v9 setHighlighted:highlightedCopy];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_1D7AA16B0;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D79FE25C;
  v8[3] = &block_descriptor_10;
  v7 = _Block_copy(v8);

  [v5 animateWithDuration:v7 animations:0.3];
  _Block_release(v7);
}

- (_TtC12NewsArticles23ToolbarIssueCoverButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end