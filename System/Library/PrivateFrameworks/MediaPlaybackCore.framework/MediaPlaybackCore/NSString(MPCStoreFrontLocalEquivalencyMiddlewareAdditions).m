@interface NSString(MPCStoreFrontLocalEquivalencyMiddlewareAdditions)
- (id)MPC_storeFrontIdentifierKey;
@end

@implementation NSString(MPCStoreFrontLocalEquivalencyMiddlewareAdditions)

- (id)MPC_storeFrontIdentifierKey
{
  v2 = [a1 rangeOfString:{@", "}];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = a1;
  }

  else
  {
    v3 = [a1 substringToIndex:v2];
  }

  return v3;
}

@end