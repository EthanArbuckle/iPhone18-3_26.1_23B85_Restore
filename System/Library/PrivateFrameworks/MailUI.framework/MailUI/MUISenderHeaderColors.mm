@interface MUISenderHeaderColors
- (MUISenderHeaderColors)initWithContrastingBackgroundColor:(id)color textColor:(id)textColor secondaryTextColor:(id)secondaryTextColor;
- (UIColor)contrastingBackgroundColor;
- (UIColor)secondaryTextColor;
- (UIColor)textColor;
- (void)setContrastingBackgroundColor:(id)color;
- (void)setSecondaryTextColor:(id)color;
- (void)setTextColor:(id)color;
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

- (void)setContrastingBackgroundColor:(id)color
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](color);
  MEMORY[0x277D82BE0](self);
  sub_214C7CFB4(color);
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

- (void)setTextColor:(id)color
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](color);
  MEMORY[0x277D82BE0](self);
  sub_214C7D2B4(color);
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

- (void)setSecondaryTextColor:(id)color
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](color);
  MEMORY[0x277D82BE0](self);
  sub_214C7D5B4(color);
  MEMORY[0x277D82BD8](self);
}

- (MUISenderHeaderColors)initWithContrastingBackgroundColor:(id)color textColor:(id)textColor secondaryTextColor:(id)secondaryTextColor
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](color);
  MEMORY[0x277D82BE0](textColor);
  MEMORY[0x277D82BE0](secondaryTextColor);
  return MUISenderHeaderColors.init(contrastingBackgroundColor:textColor:secondaryTextColor:)(color, textColor, secondaryTextColor);
}

@end