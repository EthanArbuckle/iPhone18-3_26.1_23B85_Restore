@interface DTActivityTraceTapMemo
- (DTActivityTraceTapMemo)initWithData:(id)a3;
- (DTActivityTraceTapMemo)initWithMessage:(id)a3;
- (const)getBufferWithLength:(unint64_t *)a3;
@end

@implementation DTActivityTraceTapMemo

- (DTActivityTraceTapMemo)initWithData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = DTActivityTraceTapMemo;
  v6 = [(DTActivityTraceTapMemo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
    v8 = *&v7->super._supportsPeek;
    *&v7->super._supportsPeek = 0;
  }

  return v7;
}

- (DTActivityTraceTapMemo)initWithMessage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DTActivityTraceTapMemo;
  v6 = [(DTActivityTraceTapMemo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, a3);
  }

  return v7;
}

- (const)getBufferWithLength:(unint64_t *)a3
{
  v5 = *&self->super._supportsPeek;
  if (v5)
  {
    v8 = 0;
    result = [v5 getBufferWithReturnedLength:&v8];
    if (a3)
    {
      *a3 = v8;
    }
  }

  else
  {
    message = self->_message;
    if (message)
    {
      if (a3)
      {
        *a3 = [(DTXMessage *)message length];
        message = self->_message;
      }

      return [(DTXMessage *)message bytes];
    }

    else
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  return result;
}

@end