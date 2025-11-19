@interface NSHTTPURLResponse(GKAdditions)
- (id)getSAPSignature;
@end

@implementation NSHTTPURLResponse(GKAdditions)

- (id)getSAPSignature
{
  v1 = [a1 allHeaderFields];
  v2 = [v1 objectForKey:@"x-gk-sap-signature"];

  return v2;
}

@end