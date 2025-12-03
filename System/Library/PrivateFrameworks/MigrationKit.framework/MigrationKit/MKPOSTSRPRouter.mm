@interface MKPOSTSRPRouter
- (MKPOSTSRPRouter)initWithSRP:(id)p;
- (MKPOSTSRPRouterDelegate)delegate;
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKPOSTSRPRouter

- (MKPOSTSRPRouter)initWithSRP:(id)p
{
  pCopy = p;
  v9.receiver = self;
  v9.super_class = MKPOSTSRPRouter;
  v6 = [(MKPOSTSRPRouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_srp, p);
  }

  return v7;
}

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  body = [request body];
  if (![body length])
  {
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MKGETSRPPrecheckRouter server:v9 didReceiveRequest:? response:?];
    }

    goto LABEL_8;
  }

  v15 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:body options:0 error:&v15];
  v8 = v15;
  if (v8)
  {
    v9 = v8;
    v10 = +[MKLog log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MKPOSTSRPPrecheckRouter server:v9 didReceiveRequest:v10 response:?];
    }

LABEL_8:
    goto LABEL_9;
  }

  v12 = [v7 objectForKey:@"pubkey"];
  v13 = [v7 objectForKey:@"proof"];
  v14 = [(MKSRPServer *)self->_srp generateSharedKey:v12 proofOfMatch:v13];

  if (v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained routerDidAuthenticateClient:self];
    goto LABEL_10;
  }

LABEL_9:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routerDidRejectClient:self];
LABEL_10:
}

- (MKPOSTSRPRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end