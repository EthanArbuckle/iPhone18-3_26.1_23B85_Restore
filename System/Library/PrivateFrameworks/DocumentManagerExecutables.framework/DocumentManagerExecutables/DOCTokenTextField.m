@interface DOCTokenTextField
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (NSString)text;
- (UIFont)font;
- (_TtC26DocumentManagerExecutables17DOCTokenTextField)initWithFrame:(CGRect)a3;
- (void)deleteBackward;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
- (void)textDidChange:(id)a3;
@end

@implementation DOCTokenTextField

- (UIFont)font
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCTokenTextField();
  v2 = [(DOCTokenTextField *)&v4 font];

  return v2;
}

- (void)setFont:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCTokenTextField();
  v4 = a3;
  v5 = v8.receiver;
  [(DOCTokenTextField *)&v8 setFont:v4];
  v6 = DOCTokenTextField.tokenChainView.getter();
  v7 = [v5 font];
  specialized DOCTokenChainView.font.setter(v7);
}

- (NSString)text
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCTokenTextField();
  v2 = v10.receiver;
  v3 = [(DOCTokenTextField *)&v10 text];
  if (v3)
  {
    v4 = v3;
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

- (void)setText:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    v7 = self;
    v8 = MEMORY[0x24C1FAD20](v4, v6);
  }

  else
  {
    v9 = self;
    v8 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCTokenTextField();
  [(DOCTokenTextField *)&v10 setText:v8];

  (*((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x90))();
}

- (_TtC26DocumentManagerExecutables17DOCTokenTextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField_dataSource) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenContainerContainerView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___suggestionLabel) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCTokenTextField();
  v8 = [(DOCTokenTextField *)&v10 initWithFrame:x, y, width, height];
  DOCTokenTextField.commonInit()();

  return v8;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = DOCTokenTextField.canPerformAction(_:withSender:)(a3, v10);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  return v8 & 1;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  @objc DOCTokenTextField.textRect(forBounds:)(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, &selRef_textRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  @objc DOCTokenTextField.textRect(forBounds:)(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, &selRef_editingRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)deleteBackward
{
  v2 = self;
  DOCTokenTextField.deleteBackward()();
}

- (void)textDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCTokenTextField.textDidChange(_:)();
}

@end