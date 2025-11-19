@interface INCExtensionError
- (INCExtensionError)initWithErrorCode:(int64_t)a3 underlyingError:(id)a4;
@end

@implementation INCExtensionError

- (INCExtensionError)initWithErrorCode:(int64_t)a3 underlyingError:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = INCExtensionError;
  v7 = [(INCExtensionError *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_errorCode = a3;
    v9 = [v6 copy];
    underlyingError = v8->_underlyingError;
    v8->_underlyingError = v9;
  }

  return v8;
}

@end