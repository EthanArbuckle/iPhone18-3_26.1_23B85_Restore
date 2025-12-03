@interface MFBaseFilterDataConsumer
+ (id)filterWithConsumer:(id)consumer;
+ (id)filterWithConsumers:(id)consumers;
- (MFBaseFilterDataConsumer)initWithConsumer:(id)consumer;
- (MFBaseFilterDataConsumer)initWithConsumers:(id)consumers;
- (int64_t)appendData:(id)data;
- (void)done;
@end

@implementation MFBaseFilterDataConsumer

+ (id)filterWithConsumers:(id)consumers
{
  consumersCopy = consumers;
  v5 = [[self alloc] initWithConsumers:consumersCopy];

  return v5;
}

+ (id)filterWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = [[self alloc] initWithConsumer:consumerCopy];

  return v5;
}

- (MFBaseFilterDataConsumer)initWithConsumers:(id)consumers
{
  consumersCopy = consumers;
  v5 = [(MFBaseFilterDataConsumer *)self init];
  if (v5)
  {
    v6 = [consumersCopy mutableCopy];
    consumers = v5->_consumers;
    v5->_consumers = v6;
  }

  return v5;
}

- (MFBaseFilterDataConsumer)initWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&consumerCopy count:1];
  v5 = [(MFBaseFilterDataConsumer *)self initWithConsumers:v4];

  return v5;
}

- (int64_t)appendData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  if (!self->_serialAppend)
  {
    v15 = [(NSMutableArray *)self->_consumers count];
    if (v15 < 1)
    {
      v8 = 0;
      goto LABEL_27;
    }

    v8 = 0;
    v16 = v15 + 1;
    while (1)
    {
      v10 = [(NSMutableArray *)self->_consumers objectAtIndex:v16 - 2];
      v17 = [v10 appendData:dataCopy];
      v18 = v17;
      if (v17)
      {
        if (v17 < 0)
        {
          [(NSMutableArray *)self->_consumers removeObjectAtIndex:v16 - 2];
          v8 = v18;
LABEL_26:

          goto LABEL_27;
        }
      }

      else
      {
        [v10 done];
        [(NSMutableArray *)self->_consumers removeObjectAtIndex:v16 - 2];
      }

      if (!v8)
      {
        v8 = [dataCopy length];
      }

      if (--v16 <= 1)
      {
        goto LABEL_27;
      }
    }
  }

  v6 = v5;
  bytes = [dataCopy bytes];
  v8 = 0;
  while ([(NSMutableArray *)self->_consumers count]&& v6 != v8)
  {
    v10 = [(NSMutableArray *)self->_consumers objectAtIndex:0];
    v11 = v6 - v8;
    v12 = [[MFData alloc] initWithBytesNoCopy:bytes + v8 length:v6 - v8 freeWhenDone:0];
    v13 = [v10 appendData:v12];
    v14 = v13;
    if (v13)
    {
      if (v13 < 0)
      {
        [(NSMutableArray *)self->_consumers removeObjectAtIndex:0];
        v8 = v14;
LABEL_25:

        goto LABEL_26;
      }

      v8 += v13;
      if (v13 < v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      [v10 done];
      [(NSMutableArray *)self->_consumers removeObjectAtIndex:0];
    }
  }

LABEL_27:

  return v8;
}

- (void)done
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_consumers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(v3);
      }

      [*(*(&v8 + 1) + 8 * v6) done];
      if (self->_serialAppend)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end