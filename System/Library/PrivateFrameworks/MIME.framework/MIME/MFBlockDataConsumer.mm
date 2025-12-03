@interface MFBlockDataConsumer
- (MFBlockDataConsumer)initWithAppendHandler:(id)handler doneHandler:(id)doneHandler;
- (int64_t)appendData:(id)data;
- (void)done;
@end

@implementation MFBlockDataConsumer

- (MFBlockDataConsumer)initWithAppendHandler:(id)handler doneHandler:(id)doneHandler
{
  handlerCopy = handler;
  doneHandlerCopy = doneHandler;
  v14.receiver = self;
  v14.super_class = MFBlockDataConsumer;
  v8 = [(MFBlockDataConsumer *)&v14 init];
  if (v8)
  {
    v9 = [handlerCopy copy];
    appendHandler = v8->_appendHandler;
    v8->_appendHandler = v9;

    v11 = [doneHandlerCopy copy];
    doneHandler = v8->_doneHandler;
    v8->_doneHandler = v11;
  }

  return v8;
}

- (int64_t)appendData:(id)data
{
  dataCopy = data;
  appendHandler = self->_appendHandler;
  if (appendHandler)
  {
    v6 = appendHandler[2](appendHandler, dataCopy);
  }

  else
  {
    v6 = [dataCopy length];
  }

  v7 = v6;

  return v7;
}

- (void)done
{
  doneHandler = self->_doneHandler;
  if (doneHandler)
  {
    doneHandler[2](doneHandler, a2);
  }

  appendHandler = self->_appendHandler;
  self->_appendHandler = 0;

  v5 = self->_doneHandler;
  self->_doneHandler = 0;
}

@end