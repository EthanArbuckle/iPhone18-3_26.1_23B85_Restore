@interface CKFooterButtonsContainer
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKFooterButtonsContainer)initWithActions:(id)actions type:(int64_t)type;
- (CKFooterButtonsContainer)initWithCoder:(id)coder;
- (CKFooterButtonsContainer)initWithFrame:(CGRect)frame;
- (void)configureWithActions:(id)actions;
@end

@implementation CKFooterButtonsContainer

- (CKFooterButtonsContainer)initWithActions:(id)actions type:(int64_t)type
{
  actionsCopy = actions;
  if (actions)
  {
    type metadata accessor for FooterButtonAction();
    actionsCopy = sub_190D57180();
  }

  v7 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
  *(&self->super.super.super.isa + v7) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(&self->super.super.super.isa + OBJC_IVAR___CKFooterButtonsContainer_buttons) = MEMORY[0x1E69E7CC0];
  v10.receiver = self;
  v10.super_class = type metadata accessor for FooterButtonsContainer();
  v8 = [(CKFooterButtonsContainer *)&v10 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_190CD61C8(actionsCopy, type);

  return v8;
}

- (void)configureWithActions:(id)actions
{
  type metadata accessor for FooterButtonAction();
  v4 = sub_190D57180();
  selfCopy = self;
  sub_190CD5FEC(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_190CD6D0C();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CKFooterButtonsContainer)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(&self->super.super.super.isa + OBJC_IVAR___CKFooterButtonsContainer_buttons) = MEMORY[0x1E69E7CC0];
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CKFooterButtonsContainer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end