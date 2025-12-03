@interface BWDeferredContainerPixelBufferWrapper
- (void)dealloc;
- (void)initWithPixelBuffer:(void *)buffer owner:;
@end

@implementation BWDeferredContainerPixelBufferWrapper

- (void)dealloc
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  [(BWDeferredContainerPixelBufferPoolWrapper *)self->_owner signal];

  if (*v3 == 1)
  {
    kdebug_trace();
  }

  v4.receiver = self;
  v4.super_class = BWDeferredContainerPixelBufferWrapper;
  [(BWDeferredContainerPixelBufferWrapper *)&v4 dealloc];
}

- (void)initWithPixelBuffer:(void *)buffer owner:
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = BWDeferredContainerPixelBufferWrapper;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = buffer;
    objc_setAssociatedObject(a2, @"pixelBufferWrapper", v5, 0x301);
  }

  return v5;
}

@end