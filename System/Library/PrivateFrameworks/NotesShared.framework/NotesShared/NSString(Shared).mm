@interface NSString(Shared)
- (id)ic_quotedString;
@end

@implementation NSString(Shared)

- (id)ic_quotedString
{
  v2 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"QUOTED_TITLE_FORMAT", @"“%@”", 0, 1);
  v3 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v2, self];

  return v3;
}

@end