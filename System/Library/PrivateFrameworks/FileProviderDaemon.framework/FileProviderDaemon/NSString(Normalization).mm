@interface NSString(Normalization)
- (__CFString)getUnicodeNormalization;
@end

@implementation NSString(Normalization)

- (__CFString)getUnicodeNormalization
{
  v2 = [a1 UTF8String];
  v3 = [a1 decomposedStringWithCanonicalMapping];
  v4 = strcmp(v2, [v3 UTF8String]);

  if (!v4)
  {
    return @"D";
  }

  v5 = [a1 precomposedStringWithCanonicalMapping];
  v6 = strcmp(v2, [v5 UTF8String]);

  if (!v6)
  {
    return @"C";
  }

  v7 = [a1 decomposedStringWithCompatibilityMapping];
  v8 = strcmp(v2, [v7 UTF8String]);

  if (!v8)
  {
    return @"KD";
  }

  v9 = [a1 precomposedStringWithCompatibilityMapping];
  v10 = strcmp(v2, [v9 UTF8String]);

  if (v10)
  {
    return @"(undefined)";
  }

  else
  {
    return @"KC";
  }
}

@end