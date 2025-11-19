@interface GenerateDateFormatterHourShortAMPM
@end

@implementation GenerateDateFormatterHourShortAMPM

uint64_t ___GenerateDateFormatterHourShortAMPM_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterHourShortAMPM___dateFormatter;
  _GenerateDateFormatterHourShortAMPM___dateFormatter = v0;

  v2 = _GenerateDateFormatterHourShortAMPM___dateFormatter;

  return [v2 setLocalizedDateFormatFromTemplate:@"j a"];
}

@end