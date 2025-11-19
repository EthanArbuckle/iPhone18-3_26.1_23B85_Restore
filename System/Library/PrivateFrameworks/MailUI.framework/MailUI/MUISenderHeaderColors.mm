@interface MUISenderHeaderColors
- (MUISenderHeaderColors)initWithContrastingBackgroundColor:(id)a3 textColor:(id)a4 secondaryTextColor:(id)a5;
- (UIColor)contrastingBackgroundColor;
- (UIColor)secondaryTextColor;
- (UIColor)textColor;
- (void)setContrastingBackgroundColor:(id)a3;
- (void)setSecondaryTextColor:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation MUISenderHeaderColors

- (UIColor)contrastingBackgroundColor
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUISenderHeaderColors.contrastingBackgroundColor.getter();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setContrastingBackgroundColor:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214C7CFB4(a3);
  MEMORY[0x277D82BD8](self);
}

- (UIColor)textColor
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUISenderHeaderColors.textColor.getter();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setTextColor:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214C7D2B4(a3);
  MEMORY[0x277D82BD8](self);
}

- (UIColor)secondaryTextColor
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUISenderHeaderColors.secondaryTextColor.getter();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setSecondaryTextColor:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214C7D5B4(a3);
  MEMORY[0x277D82BD8](self);
}

- (MUISenderHeaderColors)initWithContrastingBackgroundColor:(id)a3 textColor:(id)a4 secondaryTextColor:(id)a5
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  return MUISenderHeaderColors.init(contrastingBackgroundColor:textColor:secondaryTextColor:)(a3, a4, a5);
}

@end