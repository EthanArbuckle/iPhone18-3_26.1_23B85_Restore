@interface DOCViewController
- (_TtC26DocumentManagerExecutables17DOCViewController)init;
- (_TtC26DocumentManagerExecutables17DOCViewController)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables17DOCViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation DOCViewController

- (_TtC26DocumentManagerExecutables17DOCViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCViewController_appearStateTracker;
  type metadata accessor for DOCAppearStateTracker();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 18) = 0;
  *(&self->super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables17DOCViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCViewController_appearStateTracker;
  type metadata accessor for DOCAppearStateTracker();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 18) = 0;
  *(&self->super.super.super.isa + v5) = v6;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables17DOCViewController)init
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCViewController_appearStateTracker;
  type metadata accessor for DOCAppearStateTracker();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 18) = 0;
  *(&self->super.super.super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCViewController();
  return [(DOCViewController *)&v6 initWithNibName:0 bundle:0];
}

@end