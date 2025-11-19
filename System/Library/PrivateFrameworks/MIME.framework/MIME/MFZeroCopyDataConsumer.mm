@interface MFZeroCopyDataConsumer
- (MFZeroCopyDataConsumer)init;
- (int64_t)appendData:(id)a3;
@end

@implementation MFZeroCopyDataConsumer

- (MFZeroCopyDataConsumer)init
{
  v6.receiver = self;
  v6.super_class = MFZeroCopyDataConsumer;
  v2 = [(MFZeroCopyDataConsumer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dataHolder = v2->_dataHolder;
    v2->_dataHolder = v3;
  }

  return v2;
}

- (int64_t)appendData:(id)a3
{
  v4 = a3;
  if (self->_done)
  {
    v5 = -1;
  }

  else
  {
    [(MFDataHolder *)self->_dataHolder addData:v4];
    v5 = [v4 length];
  }

  return v5;
}

@end