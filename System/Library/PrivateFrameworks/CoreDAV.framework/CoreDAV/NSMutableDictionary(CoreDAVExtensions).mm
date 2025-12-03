@interface NSMutableDictionary(CoreDAVExtensions)
- (void)CDVAddObjectsAndKeys:()CoreDAVExtensions;
@end

@implementation NSMutableDictionary(CoreDAVExtensions)

- (void)CDVAddObjectsAndKeys:()CoreDAVExtensions
{
  v12 = a3;
  if (v12)
  {
    [self setObject:v12 forKey:a9];
    v19 = &a11;
    v13 = a10;
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      do
      {
        v16 = v15;
        v15 = *v19;

        [self setObject:v14 forKey:v15];
        v17 = v19 + 1;
        v19 += 2;
        v18 = *v17;

        v14 = v18;
      }

      while (v18);
    }
  }
}

@end