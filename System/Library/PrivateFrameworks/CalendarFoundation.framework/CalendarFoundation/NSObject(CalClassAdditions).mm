@interface NSObject(CalClassAdditions)
- (BOOL)isNull;
- (id)CalClassName;
- (void)performBlockOnMainThreadSynchronously:()CalClassAdditions;
@end

@implementation NSObject(CalClassAdditions)

- (id)CalClassName
{
  v0 = objc_opt_class();
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:class_getName(v0)];

  return v1;
}

- (BOOL)isNull
{
  v2 = [MEMORY[0x1E695DFB0] null];
  v3 = v2 == a1;

  return v3;
}

- (void)performBlockOnMainThreadSynchronously:()CalClassAdditions
{
  v3 = MEMORY[0x1E696AF00];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

@end