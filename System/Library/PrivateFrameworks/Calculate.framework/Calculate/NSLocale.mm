@interface NSLocale
@end

@implementation NSLocale

uint64_t __38__NSLocale_Whitespace__usesWhitespace__block_invoke()
{
  usesWhitespace_nonWhitespaceLanguages = [MEMORY[0x1E695DFA8] setWithObjects:{@"zh", @"ja", @"th", 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end