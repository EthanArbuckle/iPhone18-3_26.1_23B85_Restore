@interface NSString(Normalization)
- (__CFString)getUnicodeNormalization;
@end

@implementation NSString(Normalization)

- (__CFString)getUnicodeNormalization
{
  uTF8String = [self UTF8String];
  decomposedStringWithCanonicalMapping = [self decomposedStringWithCanonicalMapping];
  v4 = strcmp(uTF8String, [decomposedStringWithCanonicalMapping UTF8String]);

  if (!v4)
  {
    return @"D";
  }

  precomposedStringWithCanonicalMapping = [self precomposedStringWithCanonicalMapping];
  v6 = strcmp(uTF8String, [precomposedStringWithCanonicalMapping UTF8String]);

  if (!v6)
  {
    return @"C";
  }

  decomposedStringWithCompatibilityMapping = [self decomposedStringWithCompatibilityMapping];
  v8 = strcmp(uTF8String, [decomposedStringWithCompatibilityMapping UTF8String]);

  if (!v8)
  {
    return @"KD";
  }

  precomposedStringWithCompatibilityMapping = [self precomposedStringWithCompatibilityMapping];
  v10 = strcmp(uTF8String, [precomposedStringWithCompatibilityMapping UTF8String]);

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