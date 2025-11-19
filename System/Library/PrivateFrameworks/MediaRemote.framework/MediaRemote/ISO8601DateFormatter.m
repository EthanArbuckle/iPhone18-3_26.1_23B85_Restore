@interface ISO8601DateFormatter
@end

@implementation ISO8601DateFormatter

void ___ISO8601DateFormatter_block_invoke()
{
  v1 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v0 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v1 setTimeZone:v0];
}

@end