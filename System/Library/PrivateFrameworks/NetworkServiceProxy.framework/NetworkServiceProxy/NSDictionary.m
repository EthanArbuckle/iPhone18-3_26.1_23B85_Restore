@interface NSDictionary
- (id)objectForPlatformSpecificKey:(void *)a1;
@end

@implementation NSDictionary

- (id)objectForPlatformSpecificKey:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 stringByAppendingString:@"-iOS"];
    v6 = [a1 objectForKey:v5];
    if (!v6)
    {
      v6 = [a1 objectForKey:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end