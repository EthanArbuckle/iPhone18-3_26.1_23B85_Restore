@interface CPLEngineWrapperStatus
- (CPLEngineWrapperStatus)initWithCoder:(id)a3;
- (CPLEngineWrapperStatus)initWithParameters:(id)a3 clientCount:(unint64_t)a4 isOpened:(BOOL)a5 openError:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLEngineWrapperStatus

- (CPLEngineWrapperStatus)initWithParameters:(id)a3 clientCount:(unint64_t)a4 isOpened:(BOOL)a5 openError:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = CPLEngineWrapperStatus;
  v13 = [(CPLEngineWrapperStatus *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_parameters, a3);
    v14->_clientCount = a4;
    v14->_opened = a5;
    v15 = [v12 copy];
    openError = v14->_openError;
    v14->_openError = v15;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  parameters = self->_parameters;
  v5 = a3;
  [v5 encodeObject:parameters forKey:@"parameters"];
  [v5 encodeInteger:self->_clientCount forKey:@"clientCount"];
  [v5 encodeBool:self->_opened forKey:@"opened"];
  v6 = [(NSError *)self->_openError cplSafeErrorForXPC];
  [v5 encodeObject:v6 forKey:@"openError"];
}

- (CPLEngineWrapperStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"clientCount"];
    v7 = [v4 decodeBoolForKey:@"opened"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"openError"];
    self = [(CPLEngineWrapperStatus *)self initWithParameters:v5 clientCount:v6 isOpened:v7 openError:v8];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end