@interface FPURLOperationLocator(Daemon)
- (id)startAccessingLocator;
@end

@implementation FPURLOperationLocator(Daemon)

- (id)startAccessingLocator
{
  asURL = [self asURL];
  v2 = asURL;
  if (asURL && [asURL startAccessingSecurityScopedResource])
  {
    v3 = MEMORY[0x1E69672A0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__FPURLOperationLocator_Daemon__startAccessingLocator__block_invoke;
    v6[3] = &unk_1E83BE068;
    v7 = v2;
    v4 = [v3 tokenWithBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end