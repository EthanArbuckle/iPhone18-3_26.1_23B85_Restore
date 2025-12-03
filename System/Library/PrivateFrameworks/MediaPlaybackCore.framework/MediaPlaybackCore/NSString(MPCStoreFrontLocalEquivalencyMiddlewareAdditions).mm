@interface NSString(MPCStoreFrontLocalEquivalencyMiddlewareAdditions)
- (id)MPC_storeFrontIdentifierKey;
@end

@implementation NSString(MPCStoreFrontLocalEquivalencyMiddlewareAdditions)

- (id)MPC_storeFrontIdentifierKey
{
  v2 = [self rangeOfString:{@", "}];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self substringToIndex:v2];
  }

  return selfCopy;
}

@end