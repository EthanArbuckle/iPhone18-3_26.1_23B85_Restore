@interface NSDictionary
- (id)objectForPlatformSpecificKey:(void *)key;
@end

@implementation NSDictionary

- (id)objectForPlatformSpecificKey:(void *)key
{
  v3 = a2;
  v4 = v3;
  if (key)
  {
    v5 = [v3 stringByAppendingString:@"-iOS"];
    v6 = [key objectForKey:v5];
    if (!v6)
    {
      v6 = [key objectForKey:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end