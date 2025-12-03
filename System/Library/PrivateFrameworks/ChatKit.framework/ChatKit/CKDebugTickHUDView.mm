@interface CKDebugTickHUDView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CKDebugTickHUDView

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCountLabel) sizeThatFits_];
  v4 = v3 + 6.0;
  v6 = v5 + 6.0;
  result.height = v6;
  result.width = v4;
  return result;
}

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView)initWithFrame:(CGRect)frame
{
  v4 = OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCountLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCounter) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCountLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCounter) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CKDebugTickHUDView();
  v2 = v5.receiver;
  [(CKDebugTickHUDView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCountLabel];
  [v2 bounds];
  [v3 setFrame_];
}

@end