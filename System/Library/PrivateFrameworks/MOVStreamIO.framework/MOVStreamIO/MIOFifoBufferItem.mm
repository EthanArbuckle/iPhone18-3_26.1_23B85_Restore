@interface MIOFifoBufferItem
- (void)dealloc;
@end

@implementation MIOFifoBufferItem

- (void)dealloc
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    CFRelease(sampleBuffer);
    self->_sampleBuffer = 0;
  }

  taggedBufferGroup = self->_taggedBufferGroup;
  if (taggedBufferGroup)
  {
    CFRelease(taggedBufferGroup);
    self->_taggedBufferGroup = 0;
  }

  v5.receiver = self;
  v5.super_class = MIOFifoBufferItem;
  [(MIOFifoBufferItem *)&v5 dealloc];
}

@end