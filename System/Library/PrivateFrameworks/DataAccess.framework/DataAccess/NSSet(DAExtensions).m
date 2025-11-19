@interface NSSet(DAExtensions)
- (id)DACompactDescription;
@end

@implementation NSSet(DAExtensions)

- (id)DACompactDescription
{
  v2 = [MEMORY[0x277CCAB68] stringWithString:@"["];
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    v6 = 1;
    do
    {
      if ((v6 & 1) == 0)
      {
        [v2 appendString:{@", "}];
      }

      v7 = [v5 description];
      [v2 appendString:v7];

      v8 = [v3 nextObject];

      v6 = 0;
      v5 = v8;
    }

    while (v8);
  }

  [v2 appendString:@"]"];

  return v2;
}

@end