@interface NSDate(ISO8601)
- (id)ISO8601String;
@end

@implementation NSDate(ISO8601)

- (id)ISO8601String
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC80]);
  [v2 setFormatOptions:{objc_msgSend(v2, "formatOptions") | 0x800}];
  v3 = [v2 stringFromDate:self];

  return v3;
}

@end