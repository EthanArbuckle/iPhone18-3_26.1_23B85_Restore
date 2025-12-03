@interface BufferWithTimestamp
- (BufferWithTimestamp)initWithBuffer:(__CVBuffer *)buffer timstamp:(double)timstamp;
@end

@implementation BufferWithTimestamp

- (BufferWithTimestamp)initWithBuffer:(__CVBuffer *)buffer timstamp:(double)timstamp
{
  self->_timestamp = timstamp;
  self->_pixelBuffer = buffer;
  return self;
}

@end