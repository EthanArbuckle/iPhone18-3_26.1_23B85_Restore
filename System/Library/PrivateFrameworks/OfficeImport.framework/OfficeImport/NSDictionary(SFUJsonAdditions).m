@interface NSDictionary(SFUJsonAdditions)
- (uint64_t)sfu_appendJsonStringToString:()SFUJsonAdditions;
@end

@implementation NSDictionary(SFUJsonAdditions)

- (uint64_t)sfu_appendJsonStringToString:()SFUJsonAdditions
{
  [a3 appendString:@"{"];
  v5 = [a1 keyEnumerator];
  v6 = [a1 count];
  v7 = [v5 nextObject];
  if (v7)
  {
    v8 = v7;
    v9 = 1;
    do
    {
      [v8 sfu_appendJsonStringToString:a3];
      [a3 appendString:@":"];
      [objc_msgSend(a1 objectForKey:{v8), "sfu_appendJsonStringToString:", a3}];
      if (v9 < v6)
      {
        [a3 appendString:{@", "}];
      }

      v8 = [v5 nextObject];
      ++v9;
    }

    while (v8);
  }

  return [a3 appendString:@"}"];
}

@end