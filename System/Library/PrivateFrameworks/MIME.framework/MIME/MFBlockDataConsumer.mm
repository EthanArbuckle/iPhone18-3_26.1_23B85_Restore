@interface MFBlockDataConsumer
- (MFBlockDataConsumer)initWithAppendHandler:(id)a3 doneHandler:(id)a4;
- (int64_t)appendData:(id)a3;
- (void)done;
@end

@implementation MFBlockDataConsumer

- (MFBlockDataConsumer)initWithAppendHandler:(id)a3 doneHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MFBlockDataConsumer;
  v8 = [(MFBlockDataConsumer *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    appendHandler = v8->_appendHandler;
    v8->_appendHandler = v9;

    v11 = [v7 copy];
    doneHandler = v8->_doneHandler;
    v8->_doneHandler = v11;
  }

  return v8;
}

- (int64_t)appendData:(id)a3
{
  v4 = a3;
  appendHandler = self->_appendHandler;
  if (appendHandler)
  {
    v6 = appendHandler[2](appendHandler, v4);
  }

  else
  {
    v6 = [v4 length];
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