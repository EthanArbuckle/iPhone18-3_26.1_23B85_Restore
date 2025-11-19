@interface MRMutableAudioDataBlock
- (void)setBuffer:(id)a3;
@end

@implementation MRMutableAudioDataBlock

- (void)setBuffer:(id)a3
{
  v5 = a3;
  buffer = self->super._buffer;
  p_buffer = &self->super._buffer;
  if (buffer != v5)
  {
    v8 = v5;
    objc_storeStrong(p_buffer, a3);
    v5 = v8;
  }
}

@end