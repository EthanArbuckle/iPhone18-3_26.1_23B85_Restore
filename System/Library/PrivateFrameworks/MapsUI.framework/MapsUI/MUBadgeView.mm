@interface MUBadgeView
- (MUBadgeView)initWithCoder:(id)coder;
- (NSString)badgeString;
@end

@implementation MUBadgeView

- (MUBadgeView)initWithCoder:(id)coder
{
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (NSString)badgeString
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___MUBadgeView_label);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    sub_1C584F660();
  }

  else
  {
  }

  v6 = sub_1C584F630();

  return v6;
}

@end