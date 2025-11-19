@interface JavaNioChannelsSelectionKey
- (id)attachWithId:(id)a3;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaNioChannelsSelectionKey

- (id)attachWithId:(id)a3
{
  p_attachment = &self->attachment_;
  v4 = atomic_load(p_attachment);
  JreVolatileStrongAssign(p_attachment, a3);
  return v4;
}

- (void)dealloc
{
  JreReleaseVolatile(&self->attachment_);
  v3.receiver = self;
  v3.super_class = JavaNioChannelsSelectionKey;
  [(JavaNioChannelsSelectionKey *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaNioChannelsSelectionKey;
  [(JavaNioChannelsSelectionKey *)&v3 __javaClone];
  JreRetainVolatile(&self->attachment_);
}

@end