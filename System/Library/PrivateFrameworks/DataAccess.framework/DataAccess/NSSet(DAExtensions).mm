@interface NSSet(DAExtensions)
- (id)DACompactDescription;
@end

@implementation NSSet(DAExtensions)

- (id)DACompactDescription
{
  v2 = [MEMORY[0x277CCAB68] stringWithString:@"["];
  objectEnumerator = [self objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v5 = nextObject;
    v6 = 1;
    do
    {
      if ((v6 & 1) == 0)
      {
        [v2 appendString:{@", "}];
      }

      v7 = [v5 description];
      [v2 appendString:v7];

      nextObject2 = [objectEnumerator nextObject];

      v6 = 0;
      v5 = nextObject2;
    }

    while (nextObject2);
  }

  [v2 appendString:@"]"];

  return v2;
}

@end