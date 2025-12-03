@interface MRMutableAudioDataBlock
- (void)setBuffer:(id)buffer;
@end

@implementation MRMutableAudioDataBlock

- (void)setBuffer:(id)buffer
{
  bufferCopy = buffer;
  buffer = self->super._buffer;
  p_buffer = &self->super._buffer;
  if (buffer != bufferCopy)
  {
    v8 = bufferCopy;
    objc_storeStrong(p_buffer, buffer);
    bufferCopy = v8;
  }
}

@end