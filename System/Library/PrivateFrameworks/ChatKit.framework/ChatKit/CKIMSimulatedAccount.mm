@interface CKIMSimulatedAccount
- (void)setLoginHandle:(id)a3;
@end

@implementation CKIMSimulatedAccount

- (void)setLoginHandle:(id)a3
{
  objc_storeStrong(&self->_loginHandle, a3);
  v5 = a3;
  v6 = [v5 ID];

  [(CKIMSimulatedAccount *)self setLogin:v6];
}

@end