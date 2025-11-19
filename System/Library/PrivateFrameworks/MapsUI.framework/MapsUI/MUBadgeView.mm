@interface MUBadgeView
- (MUBadgeView)initWithCoder:(id)a3;
- (NSString)badgeString;
@end

@implementation MUBadgeView

- (MUBadgeView)initWithCoder:(id)a3
{
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (NSString)badgeString
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___MUBadgeView_label);
  v3 = self;
  v4 = [v2 text];
  if (v4)
  {
    v5 = v4;
    sub_1C584F660();
  }

  else
  {
  }

  v6 = sub_1C584F630();

  return v6;
}

@end