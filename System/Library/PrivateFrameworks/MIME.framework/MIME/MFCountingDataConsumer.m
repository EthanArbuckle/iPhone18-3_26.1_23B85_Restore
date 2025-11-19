@interface MFCountingDataConsumer
- (int64_t)appendData:(id)a3;
@end

@implementation MFCountingDataConsumer

- (int64_t)appendData:(id)a3
{
  v5.receiver = self;
  v5.super_class = MFCountingDataConsumer;
  result = [(MFNullDataConsumer *)&v5 appendData:a3];
  if (result >= 1)
  {
    self->_count += result;
  }

  return result;
}

@end