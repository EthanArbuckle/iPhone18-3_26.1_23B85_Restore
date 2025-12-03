@interface MKGETSRPPrecheckRouter
- (MKGETSRPPrecheckRouter)initWithPrecheck:(id)precheck;
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKGETSRPPrecheckRouter

- (MKGETSRPPrecheckRouter)initWithPrecheck:(id)precheck
{
  precheckCopy = precheck;
  v9.receiver = self;
  v9.super_class = MKGETSRPPrecheckRouter;
  v6 = [(MKGETSRPPrecheckRouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_precheck, precheck);
  }

  return v7;
}

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  responseCopy = response;
  hostname = [requestCopy hostname];
  if ([hostname length])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = [(MKSRPPrecheck *)self->_precheck serverForKey:hostname];
    if (v11)
    {
      v12 = v11;
      v13 = +[MKLog log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        hostname2 = [requestCopy hostname];
        *buf = 138477827;
        v24 = hostname2;
        _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "srp for hostname is currently being used. hostname=%{private}@", buf, 0xCu);
      }

      v15 = 0;
    }

    else
    {
      [(MKSRPPrecheck *)self->_precheck setServerForKey:hostname];
      v12 = [(MKSRPPrecheck *)self->_precheck serverForKey:hostname];
      v21 = 0;
      v22 = 0;
      [v12 generateSalt:&v22 pubkey:&v21];
      v13 = v22;
      v16 = v21;
      if (-[NSObject length](v13, "length") && [v16 length])
      {
        [v10 setObject:v13 forKeyedSubscript:@"salt"];
        [v10 setObject:v16 forKeyedSubscript:@"pubkey"];
        v15 = 1;
      }

      else
      {
        v17 = +[MKLog log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [MKGETSRPPrecheckRouter server:v17 didReceiveRequest:? response:?];
        }

        [(MKSRPPrecheck *)self->_precheck removeServerForKey:hostname];
        v15 = 0;
      }
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v15];
    [v10 setObject:v18 forKeyedSubscript:@"success"];

    v19 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:0 error:0];
    [responseCopy setBody:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end