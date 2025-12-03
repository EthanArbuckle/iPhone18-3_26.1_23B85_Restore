@interface _MFDAMSBasicConsumer
- (_MFDAMSBasicConsumer)initWithMaximumSize:(unsigned int)size latency:(double)latency;
- (void)dealloc;
@end

@implementation _MFDAMSBasicConsumer

- (_MFDAMSBasicConsumer)initWithMaximumSize:(unsigned int)size latency:(double)latency
{
  v5.receiver = self;
  v5.super_class = _MFDAMSBasicConsumer;
  return [(MFBufferedQueue *)&v5 initWithMaximumSize:0xFFFFFFFFLL latency:1.79769313e308];
}

- (void)dealloc
{
  [(_MFDAMSBasicConsumer *)self setMonitor:0];
  v3.receiver = self;
  v3.super_class = _MFDAMSBasicConsumer;
  [(_MFDAMSBasicConsumer *)&v3 dealloc];
}

@end