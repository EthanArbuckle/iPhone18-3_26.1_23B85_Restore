@interface NTKMonogramComplication
- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
@end

@implementation NTKMonogramComplication

- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v5 = a4;
  v6 = [a3 monogram];
  v7 = [v5 monogram];

  if (v6 == v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [v6 isEqualToString:v7] ^ 1;
  }

  return v8;
}

@end