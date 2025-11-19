@interface _MFDAMSBasicConsumer
- (_MFDAMSBasicConsumer)initWithMaximumSize:(unsigned int)a3 latency:(double)a4;
- (void)dealloc;
@end

@implementation _MFDAMSBasicConsumer

- (_MFDAMSBasicConsumer)initWithMaximumSize:(unsigned int)a3 latency:(double)a4
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