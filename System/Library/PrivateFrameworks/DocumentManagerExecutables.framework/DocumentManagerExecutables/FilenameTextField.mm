@interface FilenameTextField
- (BOOL)becomeFirstResponder;
- (BOOL)isEnabled;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (_TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField)initWithCoder:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation FilenameTextField

- (_TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField_prefersInitiallySelectedText) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField_hasEverBeenFirstResponder) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FilenameTextField();
  return [(FilenameTextField *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FilenameTextField();
  v4 = v5.receiver;
  [(FilenameTextField *)&v5 setEnabled:v3];
  FilenameTextField.updateTextFieldBackground()();
}

- (void)buildMenuWithBuilder:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FilenameTextField();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(FilenameTextField *)&v5 buildMenuWithBuilder:a3];
  [a3 removeMenuForIdentifier_];
  [a3 removeMenuForIdentifier_];
  [a3 removeMenuForIdentifier_];
  swift_unknownObjectRelease();
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  v3 = FilenameTextField.becomeFirstResponder()();

  return v3 & 1;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  @objc FilenameTextField.textRect(forBounds:)(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, &selRef_textRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  @objc FilenameTextField.textRect(forBounds:)(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, &selRef_editingRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if ([(FilenameTextField *)v8 isEnabled]|| (v9 = [(FilenameTextField *)v8 rightView]) == 0)
  {
    v13.receiver = v8;
    v13.super_class = type metadata accessor for FilenameTextField();
    v11 = [(FilenameTextField *)&v13 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v10 = v9;
    [(FilenameTextField *)v8 convertPoint:v9 toCoordinateSpace:x, y];
    v11 = [v10 hitTest:v7 withEvent:?];
  }

  return v11;
}

@end