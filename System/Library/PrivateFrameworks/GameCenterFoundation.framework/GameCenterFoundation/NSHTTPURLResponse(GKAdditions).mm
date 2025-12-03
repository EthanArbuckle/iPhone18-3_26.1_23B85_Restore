@interface NSHTTPURLResponse(GKAdditions)
- (id)getSAPSignature;
@end

@implementation NSHTTPURLResponse(GKAdditions)

- (id)getSAPSignature
{
  allHeaderFields = [self allHeaderFields];
  v2 = [allHeaderFields objectForKey:@"x-gk-sap-signature"];

  return v2;
}

@end