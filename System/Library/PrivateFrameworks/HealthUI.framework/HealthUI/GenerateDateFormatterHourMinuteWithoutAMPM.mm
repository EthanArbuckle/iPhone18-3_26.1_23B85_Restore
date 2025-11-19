@interface GenerateDateFormatterHourMinuteWithoutAMPM
@end

@implementation GenerateDateFormatterHourMinuteWithoutAMPM

uint64_t ___GenerateDateFormatterHourMinuteWithoutAMPM_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterHourMinuteWithoutAMPM___dateFormatter;
  _GenerateDateFormatterHourMinuteWithoutAMPM___dateFormatter = v0;

  [_GenerateDateFormatterHourMinuteWithoutAMPM___dateFormatter setLocalizedDateFormatFromTemplate:@"j:mm a"];
  [_GenerateDateFormatterHourMinuteWithoutAMPM___dateFormatter setAMSymbol:&stru_1F42FFBE0];
  v2 = _GenerateDateFormatterHourMinuteWithoutAMPM___dateFormatter;

  return [v2 setPMSymbol:&stru_1F42FFBE0];
}

@end