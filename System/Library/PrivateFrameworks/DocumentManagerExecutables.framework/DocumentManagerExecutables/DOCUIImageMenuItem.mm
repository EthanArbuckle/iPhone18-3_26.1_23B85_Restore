@interface DOCUIImageMenuItem
- (_TtC26DocumentManagerExecutables18DOCUIImageMenuItem)initWithCoder:(id)a3;
@end

@implementation DOCUIImageMenuItem

- (_TtC26DocumentManagerExecutables18DOCUIImageMenuItem)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCUIImageMenuItem_longTitle);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCUIImageMenuItem();
  v5 = a3;
  v6 = [(DOCUIImageMenuItem *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end