@interface _SYLazyChangeArray
- (_SYLazyChangeArray)initWithSYObjectDataArray:(id)array typeArray:(id)typeArray decoder:(id)decoder;
- (_SYLazyChangeArray)initWithSourceArray:(id)array decoder:(id)decoder;
- (id)objectAtIndex:(unint64_t)index;
@end

@implementation _SYLazyChangeArray

- (_SYLazyChangeArray)initWithSourceArray:(id)array decoder:(id)decoder
{
  arrayCopy = array;
  decoderCopy = decoder;
  v9 = [arrayCopy count];
  selfCopy = 0;
  if (decoderCopy && v9)
  {
    v13.receiver = self;
    v13.super_class = _SYLazyChangeArray;
    v11 = [(_SYLazyChangeArray *)&v13 init];
    self = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_source, array);
      objc_storeStrong(&self->_decoder, decoder);
      self->_compatibilityVersion = 2;
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (_SYLazyChangeArray)initWithSYObjectDataArray:(id)array typeArray:(id)typeArray decoder:(id)decoder
{
  arrayCopy = array;
  typeArrayCopy = typeArray;
  decoderCopy = decoder;
  v12 = [arrayCopy count];
  selfCopy = 0;
  if (decoderCopy && v12)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v16.receiver = self;
      v16.super_class = _SYLazyChangeArray;
      v14 = [(_SYLazyChangeArray *)&v16 init];
      self = v14;
      if (v14)
      {
        objc_storeStrong(&v14->_source, array);
        objc_storeStrong(&self->_types, typeArray);
        objc_storeStrong(&self->_decoder, decoder);
        self->_isSYObjectDataArray = 1;
        self->_compatibilityVersion = 1;
        self = self;
        selfCopy = self;
        goto LABEL_9;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"SYChangeSerializer %@ needs to implement SYObjectWithData: to communicate with devices running WatchOS 1.x", decoderCopy}];
    }

    selfCopy = 0;
  }

LABEL_9:

  return selfCopy;
}

- (id)objectAtIndex:(unint64_t)index
{
  if (self->_isSYObjectDataArray)
  {
    decoder = self->_decoder;
    v6 = objc_opt_respondsToSelector();
    v7 = self->_decoder;
    v8 = [(NSArray *)self->_source objectAtIndexedSubscript:index];
    if (v6)
    {
      v9 = [(NSArray *)self->_types objectAtIndexedSubscript:index];
      v10 = -[SYChangeSerializer decodeChangeData:fromProtocolVersion:ofType:](v7, "decodeChangeData:fromProtocolVersion:ofType:", v8, 1, [v9 integerValue]);

      goto LABEL_10;
    }

    v14 = [(SYChangeSerializer *)v7 SYObjectWithData:v8];
  }

  else
  {
    compatibilityVersion = self->_compatibilityVersion;
    v12 = [(NSArray *)self->_source objectAtIndexedSubscript:index];
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