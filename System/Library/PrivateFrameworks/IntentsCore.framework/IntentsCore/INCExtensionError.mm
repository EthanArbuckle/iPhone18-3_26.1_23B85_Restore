@interface INCExtensionError
- (INCExtensionError)initWithErrorCode:(int64_t)code underlyingError:(id)error;
@end

@implementation INCExtensionError

- (INCExtensionError)initWithErrorCode:(int64_t)code underlyingError:(id)error
{
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = INCExtensionError;
  v7 = [(INCExtensionError *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_errorCode = code;
    v9 = [errorCopy copy];
    underlyingError = v8->_underlyingError;
    v8->_underlyingError = v9;
  }

  return v8;
}

@end