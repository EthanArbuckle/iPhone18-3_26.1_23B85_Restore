@interface CapsuleButton
- (_TtC9MomentsUI13CapsuleButton)initWithCoder:(id)a3;
- (_TtC9MomentsUI13CapsuleButton)initWithFrame:(CGRect)a3;
@end

@implementation CapsuleButton

- (_TtC9MomentsUI13CapsuleButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI13CapsuleButton_buttonTapped);
  *v7 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CapsuleButton();
  v8 = [(CapsuleButton *)&v10 initWithFrame:x, y, width, height];
  CapsuleButton.sharedInit()();

  return v8;
}

- (_TtC9MomentsUI13CapsuleButton)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI13CapsuleButton_buttonTapped);
  *v4 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  v4[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CapsuleButton();
  v5 = a3;
  v6 = [(CapsuleButton *)&v10 initWithCoder:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    CapsuleButton.sharedInit()();
  }

  return v7;
}

@end