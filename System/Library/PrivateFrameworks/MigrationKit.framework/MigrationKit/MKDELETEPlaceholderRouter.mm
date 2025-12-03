@interface MKDELETEPlaceholderRouter
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKDELETEPlaceholderRouter

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  headers = [request headers];
  path = [headers path];
  pathComponents = [path pathComponents];
  if ([pathComponents count] < 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [pathComponents objectAtIndexedSubscript:2];
  }

  if ([v7 isEqualToString:@"/"])
  {

    v7 = 0;
  }

  v8 = [[MKPlaceholder alloc] initWithBundleIdentifier:v7];
  [(MKPlaceholder *)v8 uninstall];
}

@end