@interface JavaNioChannelsSpiAbstractInterruptibleChannel_ChannelCloser
- (void)__javaClone;
- (void)run;
@end

@implementation JavaNioChannelsSpiAbstractInterruptibleChannel_ChannelCloser

- (void)run
{
  atomic_store(1u, objc_loadWeak(&self->this$0_) + 8);
  Weak = objc_loadWeak(&self->this$0_);
  sub_10024AB74(Weak);
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaNioChannelsSpiAbstractInterruptibleChannel_ChannelCloser;
  [(JavaNioChannelsSpiAbstractInterruptibleChannel_ChannelCloser *)&v3 __javaClone];
}

@end