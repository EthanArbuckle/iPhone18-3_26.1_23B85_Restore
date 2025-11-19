@interface JavaNioChannelsSpiAbstractSelectionKey
- (JavaNioChannelsSpiAbstractSelectionKey)init;
- (void)cancel;
@end

@implementation JavaNioChannelsSpiAbstractSelectionKey

- (JavaNioChannelsSpiAbstractSelectionKey)init
{
  JavaNioChannelsSelectionKey_init(self);
  self->isValid_ = 1;
  return self;
}

- (void)cancel
{
  if (self->isValid_)
  {
    self->isValid_ = 0;
    v3 = [(JavaNioChannelsSelectionKey *)self selector];
    objc_opt_class();
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [v3 cancelWithJavaNioChannelsSelectionKey:self];
  }
}

@end