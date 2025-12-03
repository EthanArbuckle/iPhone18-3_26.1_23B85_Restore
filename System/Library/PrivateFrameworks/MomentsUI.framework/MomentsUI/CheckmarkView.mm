@interface CheckmarkView
- (_TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView)initWithCoder:(id)coder;
- (_TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView)initWithCoder:(id)coder;
@end

@implementation CheckmarkView

- (_TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView____lazy_storage___buttonView) = 0;
  v4 = OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView_checkmarkColor;
  *(&self->super.super.super.super.isa + v4) = [objc_opt_self() systemBlueColor];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView_isSelected) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView____lazy_storage___buttonView) = 0;
  v4 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor;
  *(&self->super.super.super.isa + v4) = [objc_opt_self() systemBlueColor];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_isSelected) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end