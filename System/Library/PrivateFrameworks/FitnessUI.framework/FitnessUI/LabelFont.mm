@interface LabelFont
@end

@implementation LabelFont

uint64_t ___LabelFont_block_invoke()
{
  _LabelFont_font = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB970]];

  return MEMORY[0x1EEE66BB8]();
}

@end