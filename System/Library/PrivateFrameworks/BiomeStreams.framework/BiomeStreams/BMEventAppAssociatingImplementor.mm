@interface BMEventAppAssociatingImplementor
- (BOOL)isValidWithContext:(id)context error:(id *)error;
@end

@implementation BMEventAppAssociatingImplementor

- (BOOL)isValidWithContext:(id)context error:(id *)error
{
  v4 = [(BMEventAppAssociatingImplementor *)self bundleID:context];
  v5 = v4 != 0;

  return v5;
}

@end