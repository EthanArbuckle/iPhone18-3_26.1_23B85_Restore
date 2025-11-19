@interface MFDataMessageStore
- (MFDataMessageStore)initWithData:(id)a3;
- (id)_cachedBodyDataForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)bodyDataForMessage:(id)a3 isComplete:(BOOL *)a4 isPartial:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
- (id)headerDataForMessage:(id)a3 downloadIfNecessary:(BOOL)a4;
- (id)message;
- (void)setStoragePath:(id)a3;
@end

@implementation MFDataMessageStore

- (MFDataMessageStore)initWithData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MFDataMessageStore;
  v6 = [(MFMessageStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v8 = v7;
  }

  return v7;
}

- (void)setStoragePath:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  storagePath = self->_storagePath;
  self->_storagePath = v4;
}

- (id)message
{
  messageClass = self->_messageClass;
  if (!messageClass)
  {
    messageClass = objc_opt_class();
    self->_messageClass = messageClass;
  }

  v4 = objc_alloc_init(messageClass);
  [v4 setMessageStore:self];

  return v4;
}

- (id)headerDataForMessage:(id)a3 downloadIfNecessary:(BOOL)a4
{
  v5 = a3;
  v6 = [(NSData *)self->_data bytes];
  v7 = [(NSData *)self->_data length];
  if (v7)
  {
    v8 = 0;
    v9 = ~v6;
    while (1)
    {
      v11 = *v6++;
      v10 = v11;
      if ((v8 & 1) != 0 && v10 == 10)
      {
        break;
      }

      v8 = (v10 == 10) & ~v8;
      --v9;
      if (!--v7)
      {
        goto LABEL_6;
      }
    }

    v13 = [MFData dataWithBytes:[(NSData *)self->_data bytes] length:-v9 - [(NSData *)self->_data bytes]];
  }

  else
  {
LABEL_6:
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1D36B2000, v12, OS_LOG_TYPE_DEFAULT, "#Warning NSDataMessageStore: couldn't find body", v15, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)bodyDataForMessage:(id)a3 isComplete:(BOOL *)a4 isPartial:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  v9 = a3;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = [(NSData *)self->_data bytes];
  v11 = [(NSData *)self->_data length];
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 1;
    v14 = &v13[-v11];
    while ((v12 & 1) == 0 || *(v13 - 1) != 10)
    {
      v12 = (*(v13 - 1) == 10) & ~v12;
      ++v14;
      ++v13;
      if (!--v11)
      {
        goto LABEL_8;
      }
    }

    if (a4)
    {
      *a4 = 1;
    }

    v16 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v13 length:-[NSData bytes](self->_data freeWhenDone:{"bytes") - v14, 0}];
  }

  else
  {
LABEL_8:
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 0;
      _os_log_impl(&dword_1D36B2000, v15, OS_LOG_TYPE_DEFAULT, "#Warning NSDataMessageStore: couldn't find body", v18, 2u);
    }

    v16 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v16;
}

- (id)_cachedBodyDataForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v4 = [(MFDataMessageStore *)self bodyDataForMessage:a3 isComplete:0 isPartial:0 downloadIfNecessary:0];

  return v4;
}

@end