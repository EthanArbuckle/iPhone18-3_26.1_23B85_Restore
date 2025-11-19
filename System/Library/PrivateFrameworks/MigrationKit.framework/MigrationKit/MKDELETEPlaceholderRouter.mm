@interface MKDELETEPlaceholderRouter
- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5;
@end

@implementation MKDELETEPlaceholderRouter

- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5
{
  v9 = [a4 headers];
  v5 = [v9 path];
  v6 = [v5 pathComponents];
  if ([v6 count] < 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:2];
  }

  if ([v7 isEqualToString:@"/"])
  {

    v7 = 0;
  }

  v8 = [[MKPlaceholder alloc] initWithBundleIdentifier:v7];
  [(MKPlaceholder *)v8 uninstall];
}

@end