@interface DADClientDelegate
- (DADClient)client;
- (DADClientDelegate)initWithAccountID:(id)d client:(id)client;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)error;
- (void)userRequestsCancel;
@end

@implementation DADClientDelegate

- (DADClientDelegate)initWithAccountID:(id)d client:(id)client
{
  dCopy = d;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = DADClientDelegate;
  v8 = [(DADClientDelegate *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(DADClientDelegate *)v8 setAccountID:dCopy];
    [(DADClientDelegate *)v9 setClient:clientCopy];
    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    [(DADClientDelegate *)v9 setDelegateID:da_newGUID];
  }

  return v9;
}

- (void)dealloc
{
  [(DADClientDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = DADClientDelegate;
  [(DADClientDelegate *)&v3 dealloc];
}

- (void)disable
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    [(DADClientDelegate *)self finishWithError:v3];

    v4.receiver = self;
    v4.super_class = DADClientDelegate;
    [(DADisableableObject *)&v4 disable];
  }
}

- (void)userRequestsCancel
{
  [(DADClientDelegate *)self setConsumerCancelled:1];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
  [(DADClientDelegate *)self finishWithError:v3];
}

- (void)finishWithError:(id)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DADClientDelegate.m" lineNumber:46 description:@"finishWithError: should be implemented in the subclass"];
}

- (DADClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end