@interface PADAVFrame
- (id)pixelBuffer;
- (void)setTimestamp:(id *)timestamp;
@end

@implementation PADAVFrame

- (id)pixelBuffer
{
  WeakRetained = objc_loadWeakRetained(&self->_pixelBuffer);

  return WeakRetained;
}

- (void)setTimestamp:(id *)timestamp
{
  v3 = *&timestamp->var0;
  self->_timestamp.epoch = timestamp->var3;
  *&self->_timestamp.value = v3;
}

@end