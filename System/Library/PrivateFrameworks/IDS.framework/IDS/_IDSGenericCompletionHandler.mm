@interface _IDSGenericCompletionHandler
- (_IDSGenericCompletionHandler)initWithHandler:(id)a3 queue:(id)a4;
- (void)dealloc;
@end

@implementation _IDSGenericCompletionHandler

- (_IDSGenericCompletionHandler)initWithHandler:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_IDSRunningInDaemon())
  {
    v8 = +[IDSLogging general];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v8);
    }

    v9 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _IDSGenericCompletionHandler;
    v10 = [(_IDSGenericCompletionHandler *)&v14 init];
    if (v10)
    {
      v11 = [v6 copy];
      handler = v10->_handler;
      v10->_handler = v11;

      [(IDSDelegateInfo *)v10 setQueue:v7];
    }

    self = v10;
    v9 = self;
  }

  return v9;
}

- (void)dealloc
{
  handler = self->_handler;
  self->_handler = 0;

  [(IDSDelegateInfo *)self setQueue:0];
  v4.receiver = self;
  v4.super_class = _IDSGenericCompletionHandler;
  [(_IDSGenericCompletionHandler *)&v4 dealloc];
}

@end