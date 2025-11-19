@interface NSString(CoreCDP)
- (id)replaceToken:()CoreCDP withConfigToken:fallbackToken:;
@end

@implementation NSString(CoreCDP)

- (id)replaceToken:()CoreCDP withConfigToken:fallbackToken:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 containsString:v8])
  {
    v11 = v10;
    if ([v9 length])
    {
      v12 = v9;

      v11 = v12;
    }

    v13 = [a1 stringByReplacingOccurrencesOfString:v8 withString:v11];
  }

  else
  {
    v13 = a1;
  }

  return v13;
}

@end