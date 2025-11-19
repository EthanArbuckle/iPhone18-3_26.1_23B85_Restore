@interface _HMFObjectObserverInternal
- (void)dealloc;
@end

@implementation _HMFObjectObserverInternal

- (void)dealloc
{
  deallocationBlock = self->_deallocationBlock;
  if (deallocationBlock)
  {
    deallocationBlock[2](deallocationBlock, a2);
  }

  v4.receiver = self;
  v4.super_class = _HMFObjectObserverInternal;
  [(_HMFObjectObserverInternal *)&v4 dealloc];
}

@end