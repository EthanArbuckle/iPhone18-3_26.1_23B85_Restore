@interface NSURL
- (id)_URLByInsertingUser:(id)user;
@end

@implementation NSURL

- (id)_URLByInsertingUser:(id)user
{
  userCopy = user;
  if (userCopy && (v5 = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, userCopy, @"%", @"@?:#", 0x8000100u)) != 0)
  {
    v6 = v5;
    scheme = [(NSURL *)self scheme];
    host = [(NSURL *)self host];
    port = [(NSURL *)self port];
    path = [(NSURL *)self path];
    v11 = [NSString stringWithFormat:@"%@://%@@%@:%@%@", scheme, v6, host, port, path];
    selfCopy = [NSURL URLWithString:v11];

    CFRelease(v6);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end