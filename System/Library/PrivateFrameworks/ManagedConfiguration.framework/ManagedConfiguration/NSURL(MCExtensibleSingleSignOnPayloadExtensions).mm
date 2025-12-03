@interface NSURL(MCExtensibleSingleSignOnPayloadExtensions)
- (id)normalizedURL;
@end

@implementation NSURL(MCExtensibleSingleSignOnPayloadExtensions)

- (id)normalizedURL
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  scheme = [v1 scheme];
  lowercaseString = [scheme lowercaseString];
  [v1 setScheme:lowercaseString];

  host = [v1 host];
  lowercaseString2 = [host lowercaseString];
  [v1 setHost:lowercaseString2];

  path = [v1 path];
  v7 = [path length];

  if (!v7)
  {
    [v1 setPath:@"/"];
  }

  [v1 setQuery:0];
  [v1 setFragment:0];
  v8 = [v1 URL];

  return v8;
}

@end