@interface PADAVFrame
- (id)pixelBuffer;
- (void)setTimestamp:(id *)a3;
@end

@implementation PADAVFrame

- (id)pixelBuffer
{
  WeakRetained = objc_loadWeakRetained(&self->_pixelBuffer);

  return WeakRetained;
}

- (void)setTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_timestamp.epoch = a3->var3;
  *&self->_timestamp.value = v3;
}

@end