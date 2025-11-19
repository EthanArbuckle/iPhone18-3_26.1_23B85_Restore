@interface Font
@end

@implementation Font

uint64_t ___Font_block_invoke()
{
  _Font_font = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB970]];

  return MEMORY[0x1EEE66BB8]();
}

@end