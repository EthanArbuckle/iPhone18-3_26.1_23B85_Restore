@interface DTActivityTraceTapMemo
- (DTActivityTraceTapMemo)initWithData:(id)data;
- (DTActivityTraceTapMemo)initWithMessage:(id)message;
- (const)getBufferWithLength:(unint64_t *)length;
@end

@implementation DTActivityTraceTapMemo

- (DTActivityTraceTapMemo)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = DTActivityTraceTapMemo;
  v6 = [(DTActivityTraceTapMemo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, data);
    v8 = *&v7->super._supportsPeek;
    *&v7->super._supportsPeek = 0;
  }

  return v7;
}

- (DTActivityTraceTapMemo)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = DTActivityTraceTapMemo;
  v6 = [(DTActivityTraceTapMemo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, message);
  }

  return v7;
}

- (const)getBufferWithLength:(unint64_t *)length
{
  v5 = *&self->super._supportsPeek;
  if (v5)
  {
    v8 = 0;
    result = [v5 getBufferWithReturnedLength:&v8];
    if (length)
    {
      *length = v8;
    }
  }

  else
  {
    message = self->_message;
    if (message)
    {
      if (length)
      {
        *length = [(DTXMessage *)message length];
        message = self->_message;
      }

      return [(DTXMessage *)message bytes];
    }

    else
    {
      result = 0;
      if (length)
      {
        *length = 0;
      }
    }
  }

  return result;
}

@end