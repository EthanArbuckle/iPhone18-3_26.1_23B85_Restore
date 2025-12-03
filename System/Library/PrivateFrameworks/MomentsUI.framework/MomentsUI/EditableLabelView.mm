@interface EditableLabelView
- (BOOL)textFieldShouldReturn:(id)return;
- (UIColor)tintColor;
- (_TtC9MomentsUI17EditableLabelView)initWithCoder:(id)coder;
- (_TtC9MomentsUI17EditableLabelView)initWithFrame:(CGRect)frame;
- (void)editTitle:(id)title;
- (void)setTintColor:(id)color;
@end

@implementation EditableLabelView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EditableLabelView();
  tintColor = [(EditableLabelView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for EditableLabelView();
  colorCopy = color;
  v5 = v8.receiver;
  [(EditableLabelView *)&v8 setTintColor:colorCopy];
  v6 = EditableLabelView.textField.getter();
  tintColor = [v5 tintColor];
  [v6 setTintColor_];
}

- (_TtC9MomentsUI17EditableLabelView)initWithCoder:(id)coder
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

- (void)editTitle:(id)title
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_isEditing) = 1;
  selfCopy = self;
  EditableLabelView.isEditing.didset();
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  EditableLabelView.textFieldShouldReturn(_:)(returnCopy);

  return 1;
}

- (_TtC9MomentsUI17EditableLabelView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end