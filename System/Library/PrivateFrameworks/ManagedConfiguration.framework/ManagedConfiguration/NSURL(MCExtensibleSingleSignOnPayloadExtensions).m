@interface NSURL(MCExtensibleSingleSignOnPayloadExtensions)
- (id)normalizedURL;
@end

@implementation NSURL(MCExtensibleSingleSignOnPayloadExtensions)

- (id)normalizedURL
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v2 = [v1 scheme];
  v3 = [v2 lowercaseString];
  [v1 setScheme:v3];

  v4 = [v1 host];
  v5 = [v4 lowercaseString];
  [v1 setHost:v5];

  v6 = [v1 path];
  v7 = [v6 length];

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