@interface UIFont
@end

@implementation UIFont

void __36__UIFont_IC__ic_fontWithSingleLineA__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69B7A48]);
  v1 = ic_fontWithSingleLineA_singleLineACache;
  ic_fontWithSingleLineA_singleLineACache = v0;

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  ic_fontWithSingleLineA_disableSingleLineA = [v2 BOOLForKey:*MEMORY[0x1E69B7B00]];
}

@end