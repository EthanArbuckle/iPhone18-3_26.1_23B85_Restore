@interface IMSimulatedAccount
- (void)setLoginHandle:(id)handle;
@end

@implementation IMSimulatedAccount

- (void)setLoginHandle:(id)handle
{
  handleCopy = handle;
  if (self->_loginHandle != handleCopy)
  {
    v10 = handleCopy;
    objc_storeStrong(&self->_loginHandle, handle);
    v8 = objc_msgSend_ID(v10, v6, v7);
    objc_msgSend_setLogin_(self, v9, v8);

    handleCopy = v10;
  }
}

@end