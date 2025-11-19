@interface NSBundle(GC)
+ (id)GameControllerFoundationBundle;
+ (id)GameControllerFrameworkBundle;
+ (id)gc_bundleForExecutableAtPath:()GC;
+ (id)gc_bundleForExecutableAtURL:()GC;
@end

@implementation NSBundle(GC)

+ (id)GameControllerFoundationBundle
{
  if (GameControllerFoundationBundle_onceToken != -1)
  {
    +[NSBundle(GC) GameControllerFoundationBundle];
  }

  v1 = GameControllerFoundationBundle_Bundle;

  return v1;
}

+ (id)GameControllerFrameworkBundle
{
  if (GameControllerFrameworkBundle_onceToken != -1)
  {
    +[NSBundle(GC) GameControllerFrameworkBundle];
  }

  v1 = GameControllerFrameworkBundle_Bundle;

  return v1;
}

+ (id)gc_bundleForExecutableAtURL:()GC
{
  v0 = _CFBundleCopyBundleURLForExecutableURL();
  if (v0)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleWithURL:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (id)gc_bundleForExecutableAtPath:()GC
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v3 = [a1 gc_bundleForExecutableAtURL:v2];

  return v3;
}

@end