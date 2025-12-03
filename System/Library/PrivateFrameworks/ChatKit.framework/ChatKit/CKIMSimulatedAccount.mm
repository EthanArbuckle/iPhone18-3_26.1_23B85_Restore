@interface CKIMSimulatedAccount
- (void)setLoginHandle:(id)handle;
@end

@implementation CKIMSimulatedAccount

- (void)setLoginHandle:(id)handle
{
  objc_storeStrong(&self->_loginHandle, handle);
  handleCopy = handle;
  v6 = [handleCopy ID];

  [(CKIMSimulatedAccount *)self setLogin:v6];
}

@end