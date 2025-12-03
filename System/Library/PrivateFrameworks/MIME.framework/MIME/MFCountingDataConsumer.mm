@interface MFCountingDataConsumer
- (int64_t)appendData:(id)data;
@end

@implementation MFCountingDataConsumer

- (int64_t)appendData:(id)data
{
  v5.receiver = self;
  v5.super_class = MFCountingDataConsumer;
  result = [(MFNullDataConsumer *)&v5 appendData:data];
  if (result >= 1)
  {
    self->_count += result;
  }

  return result;
}

@end