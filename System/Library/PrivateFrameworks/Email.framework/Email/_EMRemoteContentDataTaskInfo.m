@interface _EMRemoteContentDataTaskInfo
- (NSString)debugDescription;
- (_EMRemoteContentDataTaskInfo)initWithDataTask:(id)a3 isSynthetic:(BOOL)a4 failOpen:(BOOL)a5 completion:(id)a6;
- (void)finishWithError:(id)a3;
- (void)receiveData:(id)a3;
@end

@implementation _EMRemoteContentDataTaskInfo

- (_EMRemoteContentDataTaskInfo)initWithDataTask:(id)a3 isSynthetic:(BOOL)a4 failOpen:(BOOL)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = _EMRemoteContentDataTaskInfo;
  v13 = [(_EMRemoteContentDataTaskInfo *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_dataTask, a3);
    v15 = [v12 copy];
    completion = v14->_completion;
    v14->_completion = v15;

    v14->_isSynthetic = a4;
    v14->_failOpen = a5;
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

- (void)receiveData:(id)a3
{
  v4 = a3;
  if (self->_completion)
  {
    data = self->_data;
    v8 = v4;
    if (data)
    {
      concat = dispatch_data_create_concat(data, v4);
    }

    else
    {
      concat = v4;
    }

    v7 = self->_data;
    self->_data = concat;

    v4 = v8;
  }
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  completion = self->_completion;
  if (completion)
  {
    v9 = v4;
    if (v4)
    {
      v6 = [(NSURLSessionDataTask *)self->_dataTask response];
      completion[2](completion, 0, v6, v9);
    }

    else
    {
      data = self->_data;
      v6 = [(NSURLSessionDataTask *)self->_dataTask response];
      (completion)[2](completion, data, v6, 0);
    }

    v8 = self->_completion;
    self->_completion = 0;

    v4 = v9;
  }
}

@end