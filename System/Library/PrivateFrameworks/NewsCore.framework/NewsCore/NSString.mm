@interface NSString
- (id)_NTPBCKIdentifierWithType:(uint64_t)a1;
@end

@implementation NSString

uint64_t __49__NSString_FCAdditions__fc_isValidColorHexString__block_invoke()
{
  _MergedGlobals_215 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^#?(([0-9A-F]{2}){3 options:4}|([0-9A-F]){3})$" error:{1, 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_NTPBCKIdentifierWithType:(uint64_t)a1
{
  if (a1)
  {
    v4 = objc_opt_new();
    [v4 setName:a1];
    [v4 setType:a2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end