@interface DOCNotifyingStackView
- (_TtC26DocumentManagerExecutablesP33_D3F4F15D4D1E39DDD74E719D0B18933C21DOCNotifyingStackView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutablesP33_D3F4F15D4D1E39DDD74E719D0B18933C21DOCNotifyingStackView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation DOCNotifyingStackView

- (void)layoutSubviews
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in DOCNotifyingStackView.layoutSubviews();
  *(v5 + 24) = v4;
  v8[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_147;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (_TtC26DocumentManagerExecutablesP33_D3F4F15D4D1E39DDD74E719D0B18933C21DOCNotifyingStackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D3F4F15D4D1E39DDD74E719D0B18933C21DOCNotifyingStackView_stackViewDidLayoutSubviews);
  v9 = type metadata accessor for DOCNotifyingStackView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(DOCNotifyingStackView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutablesP33_D3F4F15D4D1E39DDD74E719D0B18933C21DOCNotifyingStackView)initWithCoder:(id)coder
{
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D3F4F15D4D1E39DDD74E719D0B18933C21DOCNotifyingStackView_stackViewDidLayoutSubviews);
  v6 = type metadata accessor for DOCNotifyingStackView();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(DOCNotifyingStackView *)&v8 initWithCoder:coder];
}

@end