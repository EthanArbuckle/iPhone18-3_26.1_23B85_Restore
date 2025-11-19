@interface BWPrewarmResourceConfiguration
+ (id)newResourceConfigWithSharedMetalAllocator:(id)a3;
- (void)dealloc;
- (void)initWithSharedMetalAllocatorBackend:(void *)a1;
@end

@implementation BWPrewarmResourceConfiguration

+ (id)newResourceConfigWithSharedMetalAllocator:(id)a3
{
  v4 = [BWPrewarmResourceConfiguration alloc];

  return [(BWPrewarmResourceConfiguration *)v4 initWithSharedMetalAllocatorBackend:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPrewarmResourceConfiguration;
  [(BWPrewarmResourceConfiguration *)&v3 dealloc];
}

- (void)initWithSharedMetalAllocatorBackend:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = BWPrewarmResourceConfiguration;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[1] = a2;
  }

  return v3;
}

@end