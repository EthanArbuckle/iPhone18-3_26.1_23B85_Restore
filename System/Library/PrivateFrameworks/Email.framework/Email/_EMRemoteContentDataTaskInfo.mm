@interface _EMRemoteContentDataTaskInfo
- (NSString)debugDescription;
- (_EMRemoteContentDataTaskInfo)initWithDataTask:(id)task isSynthetic:(BOOL)synthetic failOpen:(BOOL)open completion:(id)completion;
- (void)finishWithError:(id)error;
- (void)receiveData:(id)data;
@end

@implementation _EMRemoteContentDataTaskInfo

- (_EMRemoteContentDataTaskInfo)initWithDataTask:(id)task isSynthetic:(BOOL)synthetic failOpen:(BOOL)open completion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  v18.receiver = self;
  v18.super_class = _EMRemoteContentDataTaskInfo;
  v13 = [(_EMRemoteContentDataTaskInfo *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_dataTask, task);
    v15 = [completionCopy copy];
    completion = v14->_completion;
    v14->_completion = v15;

    v14->_isSynthetic = synthetic;
    v14->_failOpen = open;
  }

  return v14;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = &stru_1F45FD218;
  if (self->_isSynthetic)
  {
    v5 = @" (synthetic)";
  }

  return [v3 stringWithFormat:@"<%@: %@>%@ %@", v4, self, v5, self->_dataTask];
}

- (void)receiveData:(id)data
{
  dataCopy = data;
  if (self->_completion)
  {
    data = self->_data;
    v8 = dataCopy;
    if (data)
    {
      concat = dispatch_data_create_concat(data, dataCopy);
    }

    else
    {
      concat = dataCopy;
    }

    v7 = self->_data;
    self->_data = concat;

    dataCopy = v8;
  }
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completion = self->_completion;
  if (completion)
  {
    v9 = errorCopy;
    if (errorCopy)
    {
      response = [(NSURLSessionDataTask *)self->_dataTask response];
      completion[2](completion, 0, response, v9);
    }

    else
    {
      data = self->_data;
      response = [(NSURLSessionDataTask *)self->_dataTask response];
      (completion)[2](completion, data, response, 0);
    }

    v8 = self->_completion;
    self->_completion = 0;

    errorCopy = v9;
  }
}

@end