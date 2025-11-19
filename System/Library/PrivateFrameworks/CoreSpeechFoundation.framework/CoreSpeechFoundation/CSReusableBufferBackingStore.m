@interface CSReusableBufferBackingStore
- (BOOL)configureWithBytes:(const void *)a3 length:(unint64_t)a4;
- (CSReusableBufferBackingStore)initWithBuffer:(void *)a3 bufferSize:(unint64_t)a4 deallocator:(id)a5;
- (void)dealloc;
@end

@implementation CSReusableBufferBackingStore

- (BOOL)configureWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (self->_bufferSize >= a4)
    {
      buffer = self->_buffer;
      if (a3)
      {
        memmove(buffer, a3, a4);
      }

      else
      {
        bzero(buffer, a4);
      }

      LOBYTE(v5) = 1;
    }

    else
    {
      v4 = CSLogContextFacilityCoreSpeech;
      v5 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        v10 = 136315138;
        v11 = "[CSReusableBufferBackingStore configureWithBytes:length:]";
        v6 = "%s Failed to allocate buffer since length is larger than configuration";
LABEL_7:
        _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, v6, &v10, 0xCu);
        LOBYTE(v5) = 0;
      }
    }
  }

  else
  {
    v4 = CSLogContextFacilityCoreSpeech;
    v5 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v10 = 136315138;
      v11 = "[CSReusableBufferBackingStore configureWithBytes:length:]";
      v6 = "%s Failed to allocate buffer since length zero";
      goto LABEL_7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)dealloc
{
  deallocator = self->_deallocator;
  if (deallocator)
  {
    deallocator[2](deallocator, a2);
  }

  v4.receiver = self;
  v4.super_class = CSReusableBufferBackingStore;
  [(CSReusableBufferBackingStore *)&v4 dealloc];
}

- (CSReusableBufferBackingStore)initWithBuffer:(void *)a3 bufferSize:(unint64_t)a4 deallocator:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = CSReusableBufferBackingStore;
  v9 = [(CSReusableBufferBackingStore *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_buffer = a3;
    v9->_bufferSize = a4;
    v11 = [v8 copy];
    deallocator = v10->_deallocator;
    v10->_deallocator = v11;
  }

  return v10;
}

@end