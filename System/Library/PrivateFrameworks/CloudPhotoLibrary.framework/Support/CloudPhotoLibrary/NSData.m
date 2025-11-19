@interface NSData
- (id)cplSummaryDescription;
@end

@implementation NSData

- (id)cplSummaryDescription
{
  v2 = [(NSData *)self base64EncodedStringWithOptions:0];
  v3 = [v2 length];
  if (v3 < 0x33)
  {
    v7 = [NSString stringWithFormat:@"%@", v2];
  }

  else
  {
    v4 = v3;
    v5 = [v2 substringToIndex:25];
    v6 = [v2 substringFromIndex:v4 - 25];
    v7 = [NSString stringWithFormat:@"%@...%@", v5, v6];

    v2 = v5;
  }

  return v7;
}

@end