@interface CADEmulatedSecurityScopedURLWrapper
- (CADEmulatedSecurityScopedURLWrapper)initWithOriginalURL:(id)l;
@end

@implementation CADEmulatedSecurityScopedURLWrapper

- (CADEmulatedSecurityScopedURLWrapper)initWithOriginalURL:(id)l
{
  lCopy = l;
  v5 = [[CADEmulatedURL alloc] initWithOriginalURL:lCopy];

  v8.receiver = self;
  v8.super_class = CADEmulatedSecurityScopedURLWrapper;
  v6 = [(NSSecurityScopedURLWrapper *)&v8 initWithURL:v5];

  return v6;
}

@end