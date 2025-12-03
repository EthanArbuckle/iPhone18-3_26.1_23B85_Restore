@interface MFMutableFilterDataConsumer
- (MFMutableFilterDataConsumer)initWithMainConsumer:(id)consumer;
- (int64_t)appendData:(id)data;
- (void)addDataConsumer:(id)consumer;
- (void)done;
@end

@implementation MFMutableFilterDataConsumer

- (MFMutableFilterDataConsumer)initWithMainConsumer:(id)consumer
{
  consumerCopy = consumer;
  v11.receiver = self;
  v11.super_class = MFMutableFilterDataConsumer;
  v6 = [(MFBaseFilterDataConsumer *)&v11 initWithConsumer:consumerCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mainConsumer, consumer);
    v8 = [[MFLock alloc] initWithName:@"MFMutableFilterDataConsumer Lock" andDelegate:0];
    consumerLock = v7->_consumerLock;
    v7->_consumerLock = v8;

    v7->_isDone = 0;
  }

  return v7;
}

- (void)addDataConsumer:(id)consumer
{
  consumerCopy = consumer;
  [(MFLock *)self->_consumerLock lock];
  data = [(MFGuaranteedCollectingDataConsumer *)self->_mainConsumer data];
  [consumerCopy appendData:data];

  [(NSMutableArray *)self->super._consumers addObject:consumerCopy];
  if (self->_isDone && !self->super._serialAppend)
  {
    [consumerCopy done];
  }

  [(MFLock *)self->_consumerLock unlock];
}

- (int64_t)appendData:(id)data
{
  dataCopy = data;
  [(MFLock *)self->_consumerLock lock];
  v7.receiver = self;
  v7.super_class = MFMutableFilterDataConsumer;
  v5 = [(MFBaseFilterDataConsumer *)&v7 appendData:dataCopy];
  [(MFLock *)self->_consumerLock unlock];

  return v5;
}

- (void)done
{
  [(MFLock *)self->_consumerLock lock];
  v3.receiver = self;
  v3.super_class = MFMutableFilterDataConsumer;
  [(MFBaseFilterDataConsumer *)&v3 done];
  self->_isDone = 1;
  [(MFLock *)self->_consumerLock unlock];
}

@end