@interface JavaNioChannelsFileChannel_MapMode
+ (void)initialize;
- (void)dealloc;
@end

@implementation JavaNioChannelsFileChannel_MapMode

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioChannelsFileChannel_MapMode;
  [(JavaNioChannelsFileChannel_MapMode *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaNioChannelsFileChannel_MapMode alloc];
    JreStrongAssign(&v2->displayName_, @"PRIVATE");
    JreStrongAssignAndConsume(&JavaNioChannelsFileChannel_MapMode_PRIVATE_, v2);
    v3 = [JavaNioChannelsFileChannel_MapMode alloc];
    JreStrongAssign(&v3->displayName_, @"READ_ONLY");
    JreStrongAssignAndConsume(&JavaNioChannelsFileChannel_MapMode_READ_ONLY_, v3);
    v4 = [JavaNioChannelsFileChannel_MapMode alloc];
    JreStrongAssign(&v4->displayName_, @"READ_WRITE");
    JreStrongAssignAndConsume(&JavaNioChannelsFileChannel_MapMode_READ_WRITE_, v4);
    atomic_store(1u, JavaNioChannelsFileChannel_MapMode__initialized);
  }
}

@end