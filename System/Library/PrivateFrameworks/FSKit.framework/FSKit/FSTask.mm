@interface FSTask
- (FSTask)initWithCoder:(id)coder;
- (FSTask)initWithMessageConnection:(id)connection taskID:(id)d;
- (void)didCompleteWithError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSTask

- (void)didCompleteWithError:(id)error
{
  [(FSMessageConnection *)self->_connection didCompleteWithError:error completionHandler:&__block_literal_global_3];

  [(FSTask *)self setCancellationHandler:0];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [coderCopy encodeObject:self->_connection forKey:@"FSTask.MessageConnection"];
  [coderCopy encodeObject:self->_taskID forKey:@"FSTask.TaskID"];
}

- (FSTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v9);
  }

  if ([coderCopy containsValueForKey:@"FSTask.MessageConnection"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.MessageConnection"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.TaskID"];
    self = [(FSTask *)self initWithMessageConnection:v5 taskID:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FSTask)initWithMessageConnection:(id)connection taskID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = FSTask;
  v9 = [(FSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_taskID, d);
  }

  return v10;
}

@end