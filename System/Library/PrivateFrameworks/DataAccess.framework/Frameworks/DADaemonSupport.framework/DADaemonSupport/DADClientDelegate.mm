@interface DADClientDelegate
- (DADClient)client;
- (DADClientDelegate)initWithAccountID:(id)a3 client:(id)a4;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)a3;
- (void)userRequestsCancel;
@end

@implementation DADClientDelegate

- (DADClientDelegate)initWithAccountID:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = DADClientDelegate;
  v8 = [(DADClientDelegate *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(DADClientDelegate *)v8 setAccountID:v6];
    [(DADClientDelegate *)v9 setClient:v7];
    v10 = [MEMORY[0x277CCACA8] da_newGUID];
    [(DADClientDelegate *)v9 setDelegateID:v10];
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

- (void)finishWithError:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"DADClientDelegate.m" lineNumber:46 description:@"finishWithError: should be implemented in the subclass"];
}

- (DADClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end