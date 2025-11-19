@interface _SYLazyChangeArray
- (_SYLazyChangeArray)initWithSYObjectDataArray:(id)a3 typeArray:(id)a4 decoder:(id)a5;
- (_SYLazyChangeArray)initWithSourceArray:(id)a3 decoder:(id)a4;
- (id)objectAtIndex:(unint64_t)a3;
@end

@implementation _SYLazyChangeArray

- (_SYLazyChangeArray)initWithSourceArray:(id)a3 decoder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
  v10 = 0;
  if (v8 && v9)
  {
    v13.receiver = self;
    v13.super_class = _SYLazyChangeArray;
    v11 = [(_SYLazyChangeArray *)&v13 init];
    self = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_source, a3);
      objc_storeStrong(&self->_decoder, a4);
      self->_compatibilityVersion = 2;
      self = self;
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (_SYLazyChangeArray)initWithSYObjectDataArray:(id)a3 typeArray:(id)a4 decoder:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 count];
  v13 = 0;
  if (v11 && v12)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v16.receiver = self;
      v16.super_class = _SYLazyChangeArray;
      v14 = [(_SYLazyChangeArray *)&v16 init];
      self = v14;
      if (v14)
      {
        objc_storeStrong(&v14->_source, a3);
        objc_storeStrong(&self->_types, a4);
        objc_storeStrong(&self->_decoder, a5);
        self->_isSYObjectDataArray = 1;
        self->_compatibilityVersion = 1;
        self = self;
        v13 = self;
        goto LABEL_9;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"SYChangeSerializer %@ needs to implement SYObjectWithData: to communicate with devices running WatchOS 1.x", v11}];
    }

    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (self->_isSYObjectDataArray)
  {
    decoder = self->_decoder;
    v6 = objc_opt_respondsToSelector();
    v7 = self->_decoder;
    v8 = [(NSArray *)self->_source objectAtIndexedSubscript:a3];
    if (v6)
    {
      v9 = [(NSArray *)self->_types objectAtIndexedSubscript:a3];
      v10 = -[SYChangeSerializer decodeChangeData:fromProtocolVersion:ofType:](v7, "decodeChangeData:fromProtocolVersion:ofType:", v8, 1, [v9 integerValue]);

      goto LABEL_10;
    }

    v14 = [(SYChangeSerializer *)v7 SYObjectWithData:v8];
  }

  else
  {
    compatibilityVersion = self->_compatibilityVersion;
    v12 = [(NSArray *)self->_source objectAtIndexedSubscript:a3];
    v8 = v12;
    v13 = self->_decoder;
    if (compatibilityVersion > 1)
    {
      [v12 changeObjectWithSerializer:v13];
    }

    else
    {
      [v12 changeObjectWithSerializer:v13 encodedByVersion:self->_compatibilityVersion];
    }
    v14 = ;
  }

  v10 = v14;
LABEL_10:

  if (!v10)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [_SYLazyChangeArray objectAtIndex:];
    }

    v15 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_FAULT))
    {
      [_SYLazyChangeArray objectAtIndex:v15];
    }

    v10 = +[SYDegenerateChange degenerateChange];
  }

  return v10;
}

@end