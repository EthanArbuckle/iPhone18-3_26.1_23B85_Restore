@interface FilenameTextField
- (BOOL)becomeFirstResponder;
- (BOOL)isEnabled;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (_TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField)initWithCoder:(id)coder;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)buildMenuWithBuilder:(id)builder;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation FilenameTextField

- (_TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField)initWithCoder:(id)coder
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FilenameTextField();
  v4 = v5.receiver;
  [(FilenameTextField *)&v5 setEnabled:enabledCopy];
  FilenameTextField.updateTextFieldBackground()();
}

- (void)buildMenuWithBuilder:(id)builder
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FilenameTextField();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(FilenameTextField *)&v5 buildMenuWithBuilder:builder];
  [builder removeMenuForIdentifier_];
  [builder removeMenuForIdentifier_];
  [builder removeMenuForIdentifier_];
  swift_unknownObjectRelease();
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v3 = FilenameTextField.becomeFirstResponder()();

  return v3 & 1;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  @objc FilenameTextField.textRect(forBounds:)(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, &selRef_textRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  @objc FilenameTextField.textRect(forBounds:)(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, &selRef_editingRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  if ([(FilenameTextField *)selfCopy isEnabled]|| (v9 = [(FilenameTextField *)selfCopy rightView]) == 0)
  {
    v13.receiver = selfCopy;
    v13.super_class = type metadata accessor for FilenameTextField();
    v11 = [(FilenameTextField *)&v13 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v10 = v9;
    [(FilenameTextField *)selfCopy convertPoint:v9 toCoordinateSpace:x, y];
    v11 = [v10 hitTest:eventCopy withEvent:?];
  }

  return v11;
}

@end