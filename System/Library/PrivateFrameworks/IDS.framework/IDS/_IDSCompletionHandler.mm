@interface _IDSCompletionHandler
- (_IDSCompletionHandler)initWithHandler:(id)handler queue:(id)queue;
- (void)dealloc;
@end

@implementation _IDSCompletionHandler

- (_IDSCompletionHandler)initWithHandler:(id)handler queue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  if (_IDSRunningInDaemon())
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B2AD08(self, registration);
    }

    selfCopy = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _IDSCompletionHandler;
    v10 = [(_IDSCompletionHandler *)&v14 init];
    if (v10)
    {
      v11 = [handlerCopy copy];
      handler = v10->_handler;
      v10->_handler = v11;

      [(IDSDelegateInfo *)v10 setQueue:queueCopy];
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  handler = self->_handler;
  self->_handler = 0;

  [(IDSDelegateInfo *)self setQueue:0];
  v4.receiver = self;
  v4.super_class = _IDSCompletionHandler;
  [(_IDSCompletionHandler *)&v4 dealloc];
}

@end