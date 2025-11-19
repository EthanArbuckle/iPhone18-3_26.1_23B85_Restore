@interface DOCFilenameView
- (_TtC26DocumentManagerExecutables15DOCFilenameView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables15DOCFilenameView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation DOCFilenameView

- (_TtC26DocumentManagerExecutables15DOCFilenameView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle) = *MEMORY[0x277D76A20];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates) = MEMORY[0x277D84FA0];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(DOCFilenameView *)&v3 layoutSubviews];
  DOCFilenameView.updateStackLayout()();
  DOCFilenameView.updateTextFieldIfPossible()();
}

- (_TtC26DocumentManagerExecutables15DOCFilenameView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end