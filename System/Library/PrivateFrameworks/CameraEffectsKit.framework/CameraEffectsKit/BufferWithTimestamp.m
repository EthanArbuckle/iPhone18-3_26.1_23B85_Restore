@interface BufferWithTimestamp
- (BufferWithTimestamp)initWithBuffer:(__CVBuffer *)a3 timstamp:(double)a4;
@end

@implementation BufferWithTimestamp

- (BufferWithTimestamp)initWithBuffer:(__CVBuffer *)a3 timstamp:(double)a4
{
  self->_timestamp = a4;
  self->_pixelBuffer = a3;
  return self;
}

@end