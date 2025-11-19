@interface RouteMetadata
- (NSString)routeDescription;
@end

@implementation RouteMetadata

- (NSString)routeDescription
{
  if (*(self + 4))
  {

    v2 = sub_1C6016900();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end