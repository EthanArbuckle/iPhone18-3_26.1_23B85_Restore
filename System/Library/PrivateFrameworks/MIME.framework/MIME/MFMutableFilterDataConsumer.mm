@interface MFMutableFilterDataConsumer
- (MFMutableFilterDataConsumer)initWithMainConsumer:(id)a3;
- (int64_t)appendData:(id)a3;
- (void)addDataConsumer:(id)a3;
- (void)done;
@end

@implementation MFMutableFilterDataConsumer

- (MFMutableFilterDataConsumer)initWithMainConsumer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MFMutableFilterDataConsumer;
  v6 = [(MFBaseFilterDataConsumer *)&v11 initWithConsumer:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mainConsumer, a3);
    v8 = [[MFLock alloc] initWithName:@"MFMutableFilterDataConsumer Lock" andDelegate:0];
    consumerLock = v7->_consumerLock;
    v7->_consumerLock = v8;

    v7->_isDone = 0;
  }

  return v7;
}

- (void)addDataConsumer:(id)a3
{
  v5 = a3;
  [(MFLock *)self->_consumerLock lock];
  v4 = [(MFGuaranteedCollectingDataConsumer *)self->_mainConsumer data];
  [v5 appendData:v4];

  [(NSMutableArray *)self->super._consumers addObject:v5];
  if (self->_isDone && !self->super._serialAppend)
  {
    [v5 done];
  }

  [(MFLock *)self->_consumerLock unlock];
}

- (int64_t)appendData:(id)a3
{
  v4 = a3;
  [(MFLock *)self->_consumerLock lock];
  v7.receiver = self;
  v7.super_class = MFMutableFilterDataConsumer;
  v5 = [(MFBaseFilterDataConsumer *)&v7 appendData:v4];
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