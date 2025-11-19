@interface GenerateDateFormatterHourWithoutAMPM
@end

@implementation GenerateDateFormatterHourWithoutAMPM

uint64_t ___GenerateDateFormatterHourWithoutAMPM_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterHourWithoutAMPM___dateFormatter;
  _GenerateDateFormatterHourWithoutAMPM___dateFormatter = v0;

  [_GenerateDateFormatterHourWithoutAMPM___dateFormatter setLocalizedDateFormatFromTemplate:@"j"];
  [_GenerateDateFormatterHourWithoutAMPM___dateFormatter setAMSymbol:&stru_1F42FFBE0];
  v2 = _GenerateDateFormatterHourWithoutAMPM___dateFormatter;

  return [v2 setPMSymbol:&stru_1F42FFBE0];
}

@end