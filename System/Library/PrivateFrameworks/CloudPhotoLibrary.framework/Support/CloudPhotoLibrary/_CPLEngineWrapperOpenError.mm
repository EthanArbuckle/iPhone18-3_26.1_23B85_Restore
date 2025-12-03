@interface _CPLEngineWrapperOpenError
- (BOOL)shouldTryReopeningWithoutLibrary;
- (_CPLEngineWrapperOpenError)initWithParameters:(id)parameters openError:(id)error;
@end

@implementation _CPLEngineWrapperOpenError

- (_CPLEngineWrapperOpenError)initWithParameters:(id)parameters openError:(id)error
{
  parametersCopy = parameters;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = _CPLEngineWrapperOpenError;
  v9 = [(_CPLEngineWrapperOpenError *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parameters, parameters);
    objc_storeStrong(&v10->_openError, error);
    v11 = +[NSDate date];
    errorDate = v10->_errorDate;
    v10->_errorDate = v11;
  }

  return v10;
}

- (BOOL)shouldTryReopeningWithoutLibrary
{
  if (([(NSError *)self->_openError isCPLErrorWithCode:4]& 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(NSError *)self->_openError isCPLErrorWithCode:1014];
    if (v3)
    {

      LOBYTE(v3) = [(_CPLEngineWrapperOpenError *)self shouldTryReopening];
    }
  }

  return v3;
}

@end