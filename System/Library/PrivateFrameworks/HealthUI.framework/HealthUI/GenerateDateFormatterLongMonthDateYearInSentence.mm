@interface GenerateDateFormatterLongMonthDateYearInSentence
@end

@implementation GenerateDateFormatterLongMonthDateYearInSentence

uint64_t ___GenerateDateFormatterLongMonthDateYearInSentence_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterLongMonthDateYearInSentence___dateFormatter;
  _GenerateDateFormatterLongMonthDateYearInSentence___dateFormatter = v0;

  [_GenerateDateFormatterLongMonthDateYearInSentence___dateFormatter setDateStyle:3];
  [_GenerateDateFormatterLongMonthDateYearInSentence___dateFormatter setTimeStyle:0];
  v2 = _GenerateDateFormatterLongMonthDateYearInSentence___dateFormatter;

  return [v2 setFormattingContext:5];
}

@end