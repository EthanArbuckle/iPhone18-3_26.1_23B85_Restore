@interface DOCActionToolBarItem
- (_TtC26DocumentManagerExecutables20DOCActionToolBarItem)init;
- (_TtC26DocumentManagerExecutables20DOCActionToolBarItem)initWithCoder:(id)coder;
@end

@implementation DOCActionToolBarItem

- (_TtC26DocumentManagerExecutables20DOCActionToolBarItem)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_docAction) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_onSelectedItems) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCActionToolBarItem();
  return [(DOCActionToolBarItem *)&v3 init];
}

- (_TtC26DocumentManagerExecutables20DOCActionToolBarItem)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_docAction) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_onSelectedItems) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCActionToolBarItem();
  coderCopy = coder;
  v5 = [(DOCActionToolBarItem *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end