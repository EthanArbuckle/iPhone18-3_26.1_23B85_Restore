@interface DOCGoToTextField
- (NSArray)keyCommands;
- (UIResponder)nextResponder;
- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField)initWithFrame:(CGRect)a3;
@end

@implementation DOCGoToTextField

- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField_customPlaceholderColor) = 0;
  v7 = self + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField_customBlendMode;
  *v7 = 0;
  v7[4] = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField_coresponder) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCGoToTextField();
  return [(DOCTokenTextField *)&v9 initWithFrame:x, y, width, height];
}

- (NSArray)keyCommands
{
  v2 = self;
  DOCGoToTextField.keyCommands.getter();
  v4 = v3;

  if (v4)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (UIResponder)nextResponder
{
  v2 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField_coresponder);
  v3 = v2;
  if (!v2)
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for DOCGoToTextField();
    v3 = [(DOCGoToTextField *)&v6 nextResponder];
  }

  v4 = v2;

  return v3;
}

@end