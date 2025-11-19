@interface NSURL
- (id)_URLByInsertingUser:(id)a3;
@end

@implementation NSURL

- (id)_URLByInsertingUser:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, v4, @"%", @"@?:#", 0x8000100u)) != 0)
  {
    v6 = v5;
    v7 = [(NSURL *)self scheme];
    v8 = [(NSURL *)self host];
    v9 = [(NSURL *)self port];
    v10 = [(NSURL *)self path];
    v11 = [NSString stringWithFormat:@"%@://%@@%@:%@%@", v7, v6, v8, v9, v10];
    v12 = [NSURL URLWithString:v11];

    CFRelease(v6);
  }

  else
  {
    v12 = self;
  }

  return v12;
}

@end