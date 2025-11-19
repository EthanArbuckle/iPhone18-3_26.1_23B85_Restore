@interface EditableLabelView
- (BOOL)textFieldShouldReturn:(id)a3;
- (UIColor)tintColor;
- (_TtC9MomentsUI17EditableLabelView)initWithCoder:(id)a3;
- (_TtC9MomentsUI17EditableLabelView)initWithFrame:(CGRect)a3;
- (void)editTitle:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation EditableLabelView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EditableLabelView();
  v2 = [(EditableLabelView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for EditableLabelView();
  v4 = a3;
  v5 = v8.receiver;
  [(EditableLabelView *)&v8 setTintColor:v4];
  v6 = EditableLabelView.textField.getter();
  v7 = [v5 tintColor];
  [v6 setTintColor_];
}

- (_TtC9MomentsUI17EditableLabelView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_newTitle);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_isEditing) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___label) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)editTitle:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_isEditing) = 1;
  v3 = self;
  EditableLabelView.isEditing.didset();
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  EditableLabelView.textFieldShouldReturn(_:)(v4);

  return 1;
}

- (_TtC9MomentsUI17EditableLabelView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end