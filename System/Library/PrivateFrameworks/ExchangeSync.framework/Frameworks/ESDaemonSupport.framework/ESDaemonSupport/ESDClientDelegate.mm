@interface ESDClientDelegate
- (ESDClient)client;
- (ESDClientDelegate)initWithAccountID:(id)d client:(id)client;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)error;
- (void)userRequestsCancel;
@end

@implementation ESDClientDelegate

- (ESDClientDelegate)initWithAccountID:(id)d client:(id)client
{
  dCopy = d;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = ESDClientDelegate;
  v8 = [(ESDClientDelegate *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(ESDClientDelegate *)v8 setAccountID:dCopy];
    [(ESDClientDelegate *)v9 setClient:clientCopy];
    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    [(ESDClientDelegate *)v9 setDelegateID:da_newGUID];
  }

  return v9;
}

- (void)dealloc
{
  [(ESDClientDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = ESDClientDelegate;
  [(ESDClientDelegate *)&v3 dealloc];
}

- (void)disable
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    [(ESDClientDelegate *)self finishWithError:v3];

    v4.receiver = self;
    v4.super_class = ESDClientDelegate;
    [(DADisableableObject *)&v4 disable];
  }
}

- (void)userRequestsCancel
{
  [(ESDClientDelegate *)self setConsumerCancelled:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
  [(ESDClientDelegate *)self finishWithError:v3];
}

- (void)finishWithError:(id)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ESDClientDelegate.m" lineNumber:46 description:@"finishWithError: should be implemented in the subclass"];
}

- (ESDClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end