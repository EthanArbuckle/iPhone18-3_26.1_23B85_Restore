@interface NSString(GC)
- (uint64_t)gc_countOfOccurrencesOfString:()GC options:;
@end

@implementation NSString(GC)

- (uint64_t)gc_countOfOccurrencesOfString:()GC options:
{
  v6 = a3;
  v7 = [self length];
  v8 = 0;
  v9 = -1;
  while (v6)
  {
    v10 = [self rangeOfString:v6 options:a4 range:{v8, v7 - v8}];
    v8 = v10 + v11;
    ++v9;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:

  return v9;
}

@end