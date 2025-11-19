@interface CKFooterButtonsContainer
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKFooterButtonsContainer)initWithActions:(id)a3 type:(int64_t)a4;
- (CKFooterButtonsContainer)initWithCoder:(id)a3;
- (CKFooterButtonsContainer)initWithFrame:(CGRect)a3;
- (void)configureWithActions:(id)a3;
@end

@implementation CKFooterButtonsContainer

- (CKFooterButtonsContainer)initWithActions:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  if (a3)
  {
    type metadata accessor for FooterButtonAction();
    v5 = sub_190D57180();
  }

  v7 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
  *(&self->super.super.super.isa + v7) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(&self->super.super.super.isa + OBJC_IVAR___CKFooterButtonsContainer_buttons) = MEMORY[0x1E69E7CC0];
  v10.receiver = self;
  v10.super_class = type metadata accessor for FooterButtonsContainer();
  v8 = [(CKFooterButtonsContainer *)&v10 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_190CD61C8(v5, a4);

  return v8;
}

- (void)configureWithActions:(id)a3
{
  type metadata accessor for FooterButtonAction();
  v4 = sub_190D57180();
  v5 = self;
  sub_190CD5FEC(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_190CD6D0C();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CKFooterButtonsContainer)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(&self->super.super.super.isa + OBJC_IVAR___CKFooterButtonsContainer_buttons) = MEMORY[0x1E69E7CC0];
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CKFooterButtonsContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end