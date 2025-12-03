@interface NUChannelNullFormat
- (BOOL)isEqualToChannelFormat:(id)format;
- (unint64_t)hash;
@end

@implementation NUChannelNullFormat

- (BOOL)isEqualToChannelFormat:(id)format
{
  formatCopy = format;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = NUChannelNullFormat;
  return 0x83B93E1C51 * [(NUChannelFormat *)&v3 hash];
}

@end