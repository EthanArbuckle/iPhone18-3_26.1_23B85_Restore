@interface CPLEngineWrapperStatus
- (CPLEngineWrapperStatus)initWithCoder:(id)coder;
- (CPLEngineWrapperStatus)initWithParameters:(id)parameters clientCount:(unint64_t)count isOpened:(BOOL)opened openError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLEngineWrapperStatus

- (CPLEngineWrapperStatus)initWithParameters:(id)parameters clientCount:(unint64_t)count isOpened:(BOOL)opened openError:(id)error
{
  parametersCopy = parameters;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = CPLEngineWrapperStatus;
  v13 = [(CPLEngineWrapperStatus *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_parameters, parameters);
    v14->_clientCount = count;
    v14->_opened = opened;
    v15 = [errorCopy copy];
    openError = v14->_openError;
    v14->_openError = v15;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  parameters = self->_parameters;
  coderCopy = coder;
  [coderCopy encodeObject:parameters forKey:@"parameters"];
  [coderCopy encodeInteger:self->_clientCount forKey:@"clientCount"];
  [coderCopy encodeBool:self->_opened forKey:@"opened"];
  cplSafeErrorForXPC = [(NSError *)self->_openError cplSafeErrorForXPC];
  [coderCopy encodeObject:cplSafeErrorForXPC forKey:@"openError"];
}

- (CPLEngineWrapperStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"clientCount"];
    v7 = [coderCopy decodeBoolForKey:@"opened"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"openError"];
    self = [(CPLEngineWrapperStatus *)self initWithParameters:v5 clientCount:v6 isOpened:v7 openError:v8];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end