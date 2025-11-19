@interface NSValue(NUDigest)
- (void)nu_updateDigest:()NUDigest;
@end

@implementation NSValue(NUDigest)

- (void)nu_updateDigest:()NUDigest
{
  sizep[1] = *MEMORY[0x1E69E9840];
  sizep[0] = 0;
  v5 = a1;
  v6 = a3;
  v7 = [a1 objCType];
  NSGetSizeAndAlignment(v7, sizep, 0);
  v8 = sizep - ((sizep[0] + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 getValue:v8];
  [v6 addCString:v7];
  [v6 addCString:":"];
  [v6 addBytes:v8 length:sizep[0]];
}

@end