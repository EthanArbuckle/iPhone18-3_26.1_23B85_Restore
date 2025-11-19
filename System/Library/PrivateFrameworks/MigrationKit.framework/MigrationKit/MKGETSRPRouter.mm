@interface MKGETSRPRouter
- (MKGETSRPRouter)initWithSRP:(id)a3;
- (MKGETSRPRouterDelegate)delegate;
- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5;
@end

@implementation MKGETSRPRouter

- (MKGETSRPRouter)initWithSRP:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKGETSRPRouter;
  v6 = [(MKGETSRPRouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_srp, a3);
  }

  return v7;
}

- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a5;
  srp = self->_srp;
  v14 = 0;
  v15 = 0;
  [(MKSRPServer *)srp generateSalt:&v15 pubkey:&v14];
  v8 = v15;
  v9 = v14;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v16[0] = @"salt";
    v16[1] = @"pubkey";
    v17[0] = v8;
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:0 error:0];
    [v6 setBody:v11];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained routerDidRevokeEncryptionKey:self];
  }

  else
  {
    v10 = +[MKLog log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MKGETSRPPrecheckRouter server:v10 didReceiveRequest:? response:?];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (MKGETSRPRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end