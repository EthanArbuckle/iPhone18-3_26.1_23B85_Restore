@interface NTKMonogramComplication
- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
@end

@implementation NTKMonogramComplication

- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  toContextCopy = toContext;
  monogram = [context monogram];
  monogram2 = [toContextCopy monogram];

  if (monogram == monogram2)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [monogram isEqualToString:monogram2] ^ 1;
  }

  return v8;
}

@end