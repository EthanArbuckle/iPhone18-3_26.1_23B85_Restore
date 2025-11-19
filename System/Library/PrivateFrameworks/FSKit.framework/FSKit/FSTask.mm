@interface FSTask
- (FSTask)initWithCoder:(id)a3;
- (FSTask)initWithMessageConnection:(id)a3 taskID:(id)a4;
- (void)didCompleteWithError:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSTask

- (void)didCompleteWithError:(id)a3
{
  [(FSMessageConnection *)self->_connection didCompleteWithError:a3 completionHandler:&__block_literal_global_3];

  [(FSTask *)self setCancellationHandler:0];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [v5 encodeObject:self->_connection forKey:@"FSTask.MessageConnection"];
  [v5 encodeObject:self->_taskID forKey:@"FSTask.TaskID"];
}

- (FSTask)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v9);
  }

  if ([v4 containsValueForKey:@"FSTask.MessageConnection"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.MessageConnection"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.TaskID"];
    self = [(FSTask *)self initWithMessageConnection:v5 taskID:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (FSTask)initWithMessageConnection:(id)a3 taskID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FSTask;
  v9 = [(FSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_taskID, a4);
  }

  return v10;
}

@end