@interface CADEmulatedSecurityScopedURLWrapper
- (CADEmulatedSecurityScopedURLWrapper)initWithOriginalURL:(id)a3;
@end

@implementation CADEmulatedSecurityScopedURLWrapper

- (CADEmulatedSecurityScopedURLWrapper)initWithOriginalURL:(id)a3
{
  v4 = a3;
  v5 = [[CADEmulatedURL alloc] initWithOriginalURL:v4];

  v8.receiver = self;
  v8.super_class = CADEmulatedSecurityScopedURLWrapper;
  v6 = [(NSSecurityScopedURLWrapper *)&v8 initWithURL:v5];

  return v6;
}

@end