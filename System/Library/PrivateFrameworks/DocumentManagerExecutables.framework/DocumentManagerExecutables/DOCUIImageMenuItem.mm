@interface DOCUIImageMenuItem
- (_TtC26DocumentManagerExecutables18DOCUIImageMenuItem)initWithCoder:(id)coder;
@end

@implementation DOCUIImageMenuItem

- (_TtC26DocumentManagerExecutables18DOCUIImageMenuItem)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCUIImageMenuItem_longTitle);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCUIImageMenuItem();
  coderCopy = coder;
  v6 = [(DOCUIImageMenuItem *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end