@interface JavaNioChannelsFileLock
- (NSString)description;
- (void)__javaClone;
@end

@implementation JavaNioChannelsFileLock

- (NSString)description
{
  shared = self->shared_;
  size = self->size_;
  position = self->position_;
  return JreStrcat("$J$J$ZC", a2, v2, v3, v4, v5, v6, v7, @"FileLock[position=");
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaNioChannelsFileLock;
  [(JavaNioChannelsFileLock *)&v3 __javaClone];
}

@end