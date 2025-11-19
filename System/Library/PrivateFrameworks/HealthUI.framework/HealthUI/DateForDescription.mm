@interface DateForDescription
@end

@implementation DateForDescription

void ___DateForDescription_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _DateForDescription_dateFormatter;
  _DateForDescription_dateFormatter = v0;

  [_DateForDescription_dateFormatter setDateFormat:@"yyyy-MMM-dd@HH:mm:ss zzz"];
  v2 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [_DateForDescription_dateFormatter setTimeZone:v2];
}

@end