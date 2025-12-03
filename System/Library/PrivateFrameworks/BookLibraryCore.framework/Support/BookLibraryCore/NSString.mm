@interface NSString
- (BOOL)bl_isInVolume:(id)volume;
- (id)numberFromDecimalDigits;
- (id)numberFromHexDigits;
@end

@implementation NSString

- (BOOL)bl_isInVolume:(id)volume
{
  volumeCopy = volume;
  if ([(NSString *)self length]&& (memset(&v8, 0, 512), !statfs([(NSString *)self fileSystemRepresentation:0], &v8)))
  {
    v6 = [NSString stringWithUTF8String:v8.f_mntonname];
    v5 = [v6 isEqualToString:volumeCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)numberFromHexDigits
{
  v3 = [(NSString *)self length];
  if (v3)
  {
    v7 = 0;
    v4 = [NSScanner scannerWithString:self];
    v5 = [v4 scanHexLongLong:&v7];

    v3 = 0;
    if (v5)
    {
      v3 = [NSNumber numberWithUnsignedLongLong:v7];
    }
  }

  return v3;
}

- (id)numberFromDecimalDigits
{
  if ([(NSString *)self length])
  {
    v3 = objc_opt_new();
    [v3 setNumberStyle:1];
    v4 = [v3 numberFromString:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end