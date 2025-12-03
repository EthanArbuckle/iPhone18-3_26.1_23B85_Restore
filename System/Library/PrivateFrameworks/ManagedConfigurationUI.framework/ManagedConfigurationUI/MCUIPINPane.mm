@interface MCUIPINPane
- (void)setStyle:(unint64_t)style;
@end

@implementation MCUIPINPane

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    if (style == 1)
    {
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      v5 = *MEMORY[0x277D3FBD0];
      [*(&self->super.super.super.super.super.isa + v5) setBackgroundColor:systemBackgroundColor];

      v6 = *(&self->super.super.super.super.super.isa + v5);
      v8 = MCUILocalizedStringByDevice(@"PIN_MESSAGE_USER_ENROLLMENT");
      v7 = [MEMORY[0x277D74300] MCUIBoldTitleFontWithSize:32.0];
      [v6 setTitle:v8 font:v7];
    }
  }
}

@end