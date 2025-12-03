@interface NSData(CMSJSONWebSignature)
- (uint64_t)initWithBase64URLEncodedString:()CMSJSONWebSignature;
@end

@implementation NSData(CMSJSONWebSignature)

- (uint64_t)initWithBase64URLEncodedString:()CMSJSONWebSignature
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

  if (([v5 length] & 3) != 0)
  {
    do
    {
      v6 = [v5 stringByAppendingString:@"="];

      v5 = v6;
    }

    while (([v6 length] & 3) != 0);
  }

  else
  {
    v6 = v5;
  }

  v7 = [self initWithBase64EncodedString:v6 options:0];

  return v7;
}

@end