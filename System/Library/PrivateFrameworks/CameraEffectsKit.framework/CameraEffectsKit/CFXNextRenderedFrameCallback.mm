@interface CFXNextRenderedFrameCallback
- (CFXNextRenderedFrameCallback)initWithBlock:(id)block sendAfterRenderTime:(id *)time;
@end

@implementation CFXNextRenderedFrameCallback

- (CFXNextRenderedFrameCallback)initWithBlock:(id)block sendAfterRenderTime:(id *)time
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = CFXNextRenderedFrameCallback;
  v7 = [(CFXNextRenderedFrameCallback *)&v12 init];
  if (v7)
  {
    v8 = [blockCopy copy];
    block = v7->_block;
    v7->_block = v8;

    v10 = *&time->var0;
    v7->_sendAfterRenderTime.epoch = time->var3;
    *&v7->_sendAfterRenderTime.value = v10;
  }

  return v7;
}

@end