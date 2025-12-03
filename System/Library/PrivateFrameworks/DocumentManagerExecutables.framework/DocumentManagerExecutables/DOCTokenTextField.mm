@interface DOCTokenTextField
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (NSString)text;
- (UIFont)font;
- (_TtC26DocumentManagerExecutables17DOCTokenTextField)initWithFrame:(CGRect)frame;
- (void)deleteBackward;
- (void)setFont:(id)font;
- (void)setText:(id)text;
- (void)textDidChange:(id)change;
@end

@implementation DOCTokenTextField

- (UIFont)font
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCTokenTextField();
  font = [(DOCTokenTextField *)&v4 font];

  return font;
}

- (void)setFont:(id)font
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCTokenTextField();
  fontCopy = font;
  v5 = v8.receiver;
  [(DOCTokenTextField *)&v8 setFont:fontCopy];
  v6 = DOCTokenTextField.tokenChainView.getter();
  font = [v5 font];
  specialized DOCTokenChainView.font.setter(font);
}

- (NSString)text
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCTokenTextField();
  v2 = v10.receiver;
  text = [(DOCTokenTextField *)&v10 text];
  if (text)
  {
    v4 = text;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = MEMORY[0x24C1FAD20](v5, v7);
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (void)setText:(id)text
{
  if (text)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    selfCopy = self;
    v8 = MEMORY[0x24C1FAD20](v4, v6);
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCTokenTextField();
  [(DOCTokenTextField *)&v10 setText:v8];

  (*((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x90))();
}

- (_TtC26DocumentManagerExecutables17DOCTokenTextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField_dataSource) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenContainerContainerView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___suggestionLabel) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCTokenTextField();
  height = [(DOCTokenTextField *)&v10 initWithFrame:x, y, width, height];
  DOCTokenTextField.commonInit()();

  return height;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = DOCTokenTextField.canPerformAction(_:withSender:)(action, v10);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  return v8 & 1;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  @objc DOCTokenTextField.textRect(forBounds:)(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, &selRef_textRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  @objc DOCTokenTextField.textRect(forBounds:)(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, &selRef_editingRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)deleteBackward
{
  selfCopy = self;
  DOCTokenTextField.deleteBackward()();
}

- (void)textDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  specialized DOCTokenTextField.textDidChange(_:)();
}

@end