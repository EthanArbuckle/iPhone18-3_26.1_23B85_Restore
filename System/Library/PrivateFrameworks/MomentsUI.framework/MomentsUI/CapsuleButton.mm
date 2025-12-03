@interface CapsuleButton
- (_TtC9MomentsUI13CapsuleButton)initWithCoder:(id)coder;
- (_TtC9MomentsUI13CapsuleButton)initWithFrame:(CGRect)frame;
@end

@implementation CapsuleButton

- (_TtC9MomentsUI13CapsuleButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI13CapsuleButton_buttonTapped);
  *v7 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CapsuleButton();
  height = [(CapsuleButton *)&v10 initWithFrame:x, y, width, height];
  CapsuleButton.sharedInit()();

  return height;
}

- (_TtC9MomentsUI13CapsuleButton)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI13CapsuleButton_buttonTapped);
  *v4 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  v4[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CapsuleButton();
  coderCopy = coder;
  v6 = [(CapsuleButton *)&v10 initWithCoder:coderCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    CapsuleButton.sharedInit()();
  }

  return v7;
}

@end