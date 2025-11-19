@interface CFXNextRenderedFrameCallback
- (CFXNextRenderedFrameCallback)initWithBlock:(id)a3 sendAfterRenderTime:(id *)a4;
@end

@implementation CFXNextRenderedFrameCallback

- (CFXNextRenderedFrameCallback)initWithBlock:(id)a3 sendAfterRenderTime:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CFXNextRenderedFrameCallback;
  v7 = [(CFXNextRenderedFrameCallback *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    block = v7->_block;
    v7->_block = v8;

    v10 = *&a4->var0;
    v7->_sendAfterRenderTime.epoch = a4->var3;
    *&v7->_sendAfterRenderTime.value = v10;
  }

  return v7;
}

@end