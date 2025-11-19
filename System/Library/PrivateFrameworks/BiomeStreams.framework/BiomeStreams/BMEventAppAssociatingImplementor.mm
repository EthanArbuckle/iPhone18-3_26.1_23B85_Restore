@interface BMEventAppAssociatingImplementor
- (BOOL)isValidWithContext:(id)a3 error:(id *)a4;
@end

@implementation BMEventAppAssociatingImplementor

- (BOOL)isValidWithContext:(id)a3 error:(id *)a4
{
  v4 = [(BMEventAppAssociatingImplementor *)self bundleID:a3];
  v5 = v4 != 0;

  return v5;
}

@end