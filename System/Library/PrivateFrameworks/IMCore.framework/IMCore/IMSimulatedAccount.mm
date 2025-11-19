@interface IMSimulatedAccount
- (void)setLoginHandle:(id)a3;
@end

@implementation IMSimulatedAccount

- (void)setLoginHandle:(id)a3
{
  v5 = a3;
  if (self->_loginHandle != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_loginHandle, a3);
    v8 = objc_msgSend_ID(v10, v6, v7);
    objc_msgSend_setLogin_(self, v9, v8);

    v5 = v10;
  }
}

@end